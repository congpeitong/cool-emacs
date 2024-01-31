;;; init-undo.el --- load undo-tree to undo document operation -*- lexical-binding: t -*
;;; commentary:

;; undo-tree: when you want to undo operation,you can typing C-x u, then select undo content
;; After undo operation, type q to quit undo-tree;

;;; code:


(use-package undo-tree
  :ensure t
  :init
  (setq undo-tree-auto-save-history nil)
  (global-undo-tree-mode))


(provide 'init-undo)
;;; init-undo.el ends here
