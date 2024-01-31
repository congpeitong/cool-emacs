;; 配置emmet-mode
;; 默认为C-j展开
(use-package emmet-mode
  :ensure t
  :hook html-mode
  :hook html-ts-mode
  :hook css-mode
  :hook vue-mode
  )

(use-package typescript-ts-mode
  :ensure nil
  :mode "\\.ts\\'"
  )

(use-package tide
  :ensure t
  ;; :after (company flycheck)
  :hook ((typescript-ts-mode . tide-setup)
         (tsx-ts-mode . tide-setup)
         (js-mode . tide-setup)
         (typescript-ts-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))


(provide 'init-web)
