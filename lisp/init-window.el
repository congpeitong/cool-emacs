
(use-package ace-window
  :ensure t
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (setq aw-dispatch-always t)
  (setq aw-dispatch-alist
        '((?x aw-delete-window " Ace - Delete Window")
          (?m aw-swap-window " Ace - Swap Window")
          (?n aw-split-window-fair " Ace - Split Fair Window")
          (?v aw-split-window-vert " Ace - Split Vertically")
          (?b aw-split-window-horz " Ace - Split Horizontally")))
  (setq aw-position 'frame-bottom-left-corner)
  (setq aw-display-mode-overlay '(center . nil))
  :bind (("C-x o" . 'ace-window)))



(provide 'init-window)
