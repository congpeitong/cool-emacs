;; 计算中国农历的年份，用于org中
(defun grass-emacs/calc-chinese-year (year)
  (let* ((cycle (/ (+ year 2637) 60.0))
         (year  (- (+ year 2637) (* 60 (truncate cycle)))))
    (list  (+ 1 (floor cycle)) year))

  )

;; 从 Bitwarden 中读取密码
(defun grass-emacs/get-bitwarden-password (name)
  "根据name从rbw（Bitwarden 非官方 cli 客户端） 中读取密码"
  (let (
        (out (shell-command-to-string (concat "echo -n `rbw get " name "`")))
        )
    (if (string-prefix-p "rbw get: couldn't find entry for" out) (error "没找到对应的密码") out)
    ))


;; Delete the current file
(defun kylin-delete-this-file ()
  "Delete the current file, and kill the buffer."
  (interactive)
  (unless (buffer-file-name)
    (error "No file is currently being edited"))
  (when (yes-or-no-p (format "Really delete '%s'?"
                             (file-name-nondirectory buffer-file-name)))
    (delete-file (buffer-file-name))
    (kill-this-buffer)))

;; Rename current file
(defun kylin-rename-this-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (unless filename
      (error "Buffer '%s' is not visiting a file!" name))
    (progn
      (when (file-exists-p filename)
        (rename-file filename new-name 1))
      (set-visited-file-name new-name)
      (rename-buffer new-name))))


;; Browse current HTML file
(defun kylin-browse-current-file ()
  "Open the current file as a URL using `browse-url'."
  (interactive)
  (let ((file-name (buffer-file-name)))
    (if (and (fboundp 'tramp-tramp-file-p)
             (tramp-tramp-file-p file-name))
        (error "Cannot open tramp file")
      (browse-url (concat "e:/my_source_code/congpeitong.github.io" file-name)))))

;; Open emacs init document
(defun kylin-open-emacs-init-file ()
  "Open emacs init document"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun kylin-reload-emacs-init-file ()
  "Open emacs init document"
  (interactive)
  (load-file "~/.emacs.d/init.el"))


;; Handier way to add modes to auto-mode-alist
(defun kylin-add-auto-mode (mode &rest patterns)
  "Add entries to `auto-mode-alist' to use `MODE' for all given file `PATTERNS'."
  (dolist (pattern patterns)
    (add-to-list 'auto-mode-alist (cons pattern mode))))

;; Like diminish, but for major modes
(defun kylin-set-major-mode-name (name)
  "Override the major mode NAME in this buffer."
  (setq-local mode-name name))

(defun kylin-major-mode-lighter (mode name)
  (add-hook (derived-mode-hook-name mode)
            (apply-partially 'sanityinc/set-major-mode-name name)))

;; String utilities missing from core emacs
(defun kylin-string-all-matches (regex str &optional group)
  "Find all matches for `REGEX' within `STR', returning the full match string or group `GROUP'."
  (let ((result nil)
        (pos 0)
        (group (or group 0)))
    (while (string-match regex str pos)
      (push (match-string group str) result)
      (setq pos (match-end group)))
    result))




(defun copy-whole-line ()
  "Copy the whole line."
  (interactive)
  (save-excursion
    (back-to-indentation)
    (kill-ring-save
     (point)
     (line-end-position)))
  (message "1 line copied"))


;; Faster move cursor
(defun next-ten-lines()
  "Move cursor to next 10 lines."
  (interactive)
  (next-line 10))

(defun previous-ten-lines()
  "Move cursor to previous 10 lines."
  (interactive)
  (previous-line 10))







(provide 'init-method)
