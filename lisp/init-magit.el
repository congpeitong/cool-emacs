;; 配置 magit
(use-package magit
  :ensure t
  :init
  (global-set-key (kbd "C-x g") 'magit-status) ; 将 C-x g 绑定到 magit-status
  :config
  ;; 在这里添加你的自定义配置，例如：
  (setq magit-status-sections-hook 'magit-insert-headers) ; 在状态缓冲区插入头部信息
  (setq magit-log-show-header nil) ; 不显示日志头部信息
  (setq magit-diff-auto-refresh nil) ; 关闭自动刷新差异
  :bind
  (("C-x g" . magit-status) ; 再次绑定，确保新的设置生效
   ("C-c m l" . magit-list-files)
   ("C-c m d" . magit-dispatch)))


(provide 'init-magit)
;;; init-magit.el ends here
