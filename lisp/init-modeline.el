
;; 美化modeline
;;(use-package doom-modeline
;;  :ensure t
;;  :config
;;  (setq doom-modeline-modal-icon t)
;;  :hook
;;  (after-init . doom-modeline-mode))

(use-package powerline
  :ensure t
  :config
  (setq-default mode-line-format '("%e" (:eval (powerline-raw "%l" 'mode-line 'local))))
  (setq powerline-right-separator 'arrow)
  (setq powerline-left-separator 'arrow)
  (setq powerline-display-buffer-size nil)
  (setq powerline-display-mule-info nil)
  (setq powerline-display-hud nil)
  (powerline-default-theme))


(provide 'init-modeline)
;;; init-modeline.el ends here
