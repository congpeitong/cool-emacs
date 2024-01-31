(use-package good-scroll
  :ensure t
  :when *is-gui*          ; 在图形化界面时才使用这个插件
  :hook
  (after-init . good-scroll-mode)
  )





(provide 'init-scroll)
