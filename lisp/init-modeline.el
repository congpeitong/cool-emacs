
;; 美化modeline

(use-package spaceline
  :ensure t
  :init
  (require 'spaceline-config)
  (setq powerline-default-separator 'arrow)
  (setq powerline-height 24)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (setq spaceline-buffer-encoding-abbrev-table '((unix . "UTF-8")
                                                (dos . "DOS")
                                                (mac . "Mac")))
  (setq spaceline-exclude-package '(flycheck company company-box))
  (setq spaceline-workspace-numbers-unicode t)
  (setq spaceline-all-the-icons-separator-type 'arrow)
  (setq spaceline-all-the-icons-iconset 'alltheicons)
  (setq spaceline-all-the-icons-scale-factor 1.0)
  (setq spaceline-all-the-icons-color-icons nil)
  (setq spaceline-all-the-icons-whole-icons nil)
  (setq spaceline-all-the-icons-alternate-styles nil)
  (setq spaceline-all-the-icons-excluded-names '("*NeoTree*" "*Projectile*" "*magit*"))
  (setq spaceline-all-the-icons-included-packages '(all-the-icons))
  :config
  (spaceline-helm-mode)
  (spaceline-spacemacs-theme)
  
  )




(provide 'init-modeline)
;;; init-modeline.el ends here
