
(use-package selectrum)
(selectrum-mode +1)
(use-package selectrum-prescient)

;; to make sorting and filtering more intelligent
(selectrum-prescient-mode +1)

;; to save your command history on disk, so the sorting gets more
;; intelligent over time
(prescient-persist-mode +1)

(provide 'init-selectrum)
