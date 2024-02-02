(unless (package-installed-p 'java-mode)
  (package-refresh-contents)
  (package-install 'java-mode))

(use-package java-mode
  :ensure t
  :config
  (setq java-indent-offset 4)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (add-hook 'java-mode-hook #'company-mode)
  (add-hook 'java-mode-hook #'flycheck-mode)
  (add-hook 'java-mode-hook #'lsp-mode)
  (add-hook 'java-mode-hook #'yas-minor-mode)
  (add-hook 'java-mode-hook #'smartparens-mode)
  (add-hook 'java-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'java-mode-hook #'highlight-symbol-mode)
  (add-hook 'java-mode-hook #'subword-mode)
  (add-hook 'java-mode-hook #'abbrev-mode)
  (add-hook 'java-mode-hook #'auto-fill-function)
  (add-hook 'java-mode-hook #'hs-minor-mode)
  (add-hook 'java-mode-hook #'imenu-list-minor-mode)
  (add-hook 'java-mode-hook #'outline-minor-mode)
  (add-hook 'java-mode-hook #'which-function-mode)
  (add-hook 'java-mode-hook #'eldoc-mode)
  (add-hook 'java-mode-hook #'projectile-mode)
  (add-hook 'java-mode-hook #'projectile-speedbar-mode)
  (add-hook 'java-mode-hook #'projectile-rails-mode)
  (add-hook 'java-mode-hook #'projectile-global-mode))



(provide 'init-java)
;;; init-java.el end heres
