;;early-init.el   此文件会在 init.el 之前执行

;; =================判断Emacs版本=======================
(when (version< emacs-version "28.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

;; ============================常量的配置========================
(defconst *is-a-mac* (eq system-type 'darwin)) ;; 判断操作系统是否Mac系统
(defconst *is-linux* (eq system-type 'gnu/linux)) ;; 判断是否是Linux系统
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt))) ;; 判断是否是windows系统
(defconst *spell-check-support-enabled* t)  ;; 语法检查是否开启
(defconst *emacs-root-dir* "~/.emacs.d/config") ;; 文件配置的主目录
(defconst *emacs-extension-dir* (concat *emacs-root-dir* "/extensions")) ;; 扩展文件目录
(defconst *emacs-package-user-dir* (expand-file-name (format "emacs-package-%s.%s" emacs-major-version emacs-minor-version)
                        user-emacs-directory))

;; 工作记录目录
(defconst *win-open-root-dir*
  (if *is-windows*
      "e:/work_open_source/work_record")
  nil)

;; ox-hugo 本地网站根目录
(defconst *org-hugo-base-dir* "E:/my_source_code/congpeitong.github.io")

;;==================================================================


(require 'cl-lib)

(tool-bar-mode -1)                      ;禁用工具栏
(menu-bar-mode -1)                      ;禁用菜单栏
(scroll-bar-mode -1)                    ;禁用滚动条

;; config changes made through the customize UI will be stored here
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(when (file-exists-p custom-file)
  (load custom-file))

(defun add-subdirs-to-load-path (search-dir)
  (interactive)
  (let* ((dir (file-name-as-directory search-dir)))
    (dolist (subdir
             ;; 过滤出不必要的目录，提升Emacs启动速度
             (cl-remove-if
              #'(lambda (subdir)
                  (or
                   ;; 不是目录的文件都移除
                   (not (file-directory-p (concat dir subdir)))
                   ;; 父目录、 语言相关和版本控制目录都移除
                   (member subdir '("." ".."
                                    "dist" "node_modules" "__pycache__"
                                    "RCS" "CVS" "rcs" "cvs" ".git" ".github"))))
              (directory-files dir)))
      (let ((subdir-path (concat dir (file-name-as-directory subdir))))
        ;; 目录下有 .el .so .dll 文件的路径才添加到 `load-path' 中，提升Emacs启动速度
        (when (cl-some #'(lambda (subdir-file)
                           (and (file-regular-p (concat subdir-path subdir-file))
                                ;; .so .dll 文件指非Elisp语言编写的Emacs动态库
                                (member (file-name-extension subdir-file) '("el" "so" "dll"))))
                       (directory-files subdir-path))

          ;; 注意：`add-to-list' 函数的第三个参数必须为 t ，表示加到列表末尾
          ;; 这样Emacs会从父目录到子目录的顺序搜索Elisp插件，顺序反过来会导致Emacs无法正常启动
          (add-to-list 'load-path subdir-path t))

        ;; 继续递归搜索子目录
        (add-subdirs-to-load-path subdir-path)))))

;;(add-subdirs-to-load-path "~/.emacs.d/config")
