

;; use-package:
(use-package dashboard
  :ensure t
  :after nerd-icons

  :init
  ;; Content is not centered by default. To center, set
  (setq dashboard-center-content t)

  :config
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  ;; Set the title
  ;; (setq dashboard-banner-logo-title nil)
  (setq dashboard-startup-banner 'logo)

  ;; To disable shortcut "jump" indicators for each section, set
  (setq dashboard-show-shortcuts t)

  (setq dashboard-display-icons-p t) ;; display icons on both GUI and terminal
  (setq dashboard-icon-type 'nerd-icons) ;; use `nerd-icons' package

  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-items '((recents  . 10)
                          (bookmarks . 10)
                          ;; (projects . 5)
                          (agenda . 5)
                          ;; (registers . 5)
                          ))
  (setq dashboard-set-navigator nil)
  (setq dashboard-set-footer t)
  (setq dashboard-set-init-info t)

  (setq dashboard-projects-switch-function 'projectile-switch-project-by-name)

  (dashboard-modify-heading-icons '((recents . "nf-oct-file")
                                    (bookmarks . "nf-oct-bookmark")
                                    (agenda . "nf-oct-calendar")
                                    ))
  (setq dashboard-agenda-item-icon (nerd-icons-mdicon "nf-md-chevron_triple_right"))

  ;; Set the banner
  ;; (setq dashboard-startup-banner [VALUE])
  ;; Value can be
  ;; - nil to display no banner
  ;; - 'official which displays the official emacs logo
  ;; - 'logo which displays an alternative emacs logo
  ;; - 1, 2 or 3 which displays one of the text banners
  ;; - "path/to/your/image.gif", "path/to/your/image.png", "path/to/your/text.txt" or "path/to/your/image.xbm" which displays whatever gif/image/text/xbm you would prefer
  ;; - a cons of '("path/to/your/image.png" . "path/to/your/text.txt")

  (defun dashboard-refresh-buffer ()
    (interactive)
    (when (get-buffer dashboard-buffer-name)
      (kill-buffer dashboard-buffer-name))
    (dashboard-insert-startupify-lists)
    (switch-to-buffer dashboard-buffer-name))

  (dashboard-setup-startup-hook))



(provide 'init-dashboard)
