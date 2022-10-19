;;; -*- lexical-binding: t; -*-
(use-package selectrum
 :ensure t
 :init
 (selectrum-mode +1))
;(selectrum-mode +1)

(use-package selectrum-prescient
 :ensure t
 :init
 (selectrum-prescient-mode +1)
 (prescient-persist-mode +1))

(provide 'init-selectrum)
