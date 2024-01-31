

(use-package helm
  :ensure t
  :demand t
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-buffers-list)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-c h" . helm-command-prefix))
  :config
;  (setq helm-split-window-default-side 'left)
  (setq helm-split-window-in-side-preference 0.2)
  (setq helm-move-to-line-cycle-in-source nil)
  (setq helm-ff-search-library-in-sexp t)
  (setq helm-autoresize-mode t)
  (setq helm-echo-input-in-header-line t)
  (setq helm-display-header-line nil)
  (setq helm-display-function-line nil)
  (setq helm-display-source-in-header-line t)
  (setq helm-source-names-using-frame nil)
  (setq helm-candidate-number-limit 100)
  (setq helm-idle-delay 0.01)
  (setq helm-input-idle-delay 0.01)
  (setq helm-quick-update t)
  (setq helm-M-x-requires-pattern nil)
  (setq helm-buffers-favorite-modes (quote (org-mode text-mode)))
  (setq helm-buffers-fuzzy-matching t)
  (setq helm-recentf-fuzzy-match t)
  (setq helm-semantic-fuzzy-match t)
  (setq helm-imenu-fuzzy-match t)
  (setq helm-apropos-fuzzy-match t)
  (setq helm-lisp-fuzzy-completion t)
  (setq helm-completion-in-region-fuzzy-match t)

  )




(provide 'init-interactive)
