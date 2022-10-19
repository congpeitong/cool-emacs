;;; init-flycheck.el --- load flycehck to check syntax -*- lexical-binding: t-*
;;; commentary:

;; when mode is prog-mode will open syntax check function

;;; Code:

(use-package flycheck
  :ensure t
  :config
  (setq truncate-lines nil) ;; 如果单行信息很长会自动换行
  :hook
  (prog-mode . flycheck-mode))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
