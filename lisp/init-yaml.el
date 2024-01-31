(use-package yaml-ts-mode
  :ensure nil
  :mode "\\.yml\\'"
  :config
  (setq-default format-all-formatters '(("YAML" (prettier)))))



(provide 'init-yaml)
