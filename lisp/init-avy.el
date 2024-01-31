

(use-package avy
  :ensure t
  :bind
  (:map jump-keymap
        ("j" . avy-goto-char-timer)
        ("l" . avy-goto-line)
	("C-j C-SPC" . avy-goto-char-timer)

        )
  )


(provide 'init-avy)
