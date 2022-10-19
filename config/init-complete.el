;;; -*- lexical-binding: t; -*-
;; 补全提示
(add-to-list 'load-path (concat *emacs-extension-dir* "/lsp-bridge"))
(require-package 'posframe)
(require-package 'markdown-mode)
(setq markdown-command "multimarkdown")

(add-to-list 'load-path (concat *emacs-extension-dir* "/yasnippet"))
(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)



(provide 'init-complete)
