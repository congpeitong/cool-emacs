;;; init-accelerate.el --- load the accelerate configuration -*- lexical-binding: t; -*-
;;; commentary:

;; This file bootstrap the configuration, which is accelerate start

;;; Code:

(setq
 ;; 不要缩放frame.
 frame-inhibit-implied-resize t
 ;; 默认用最简单的模式
 initial-major-mode 'fundamental-mode
 ;; 不要自动启用package
 package-enable-at-startup nil
 package-init-file-ensured 0)

(provide 'init-accelerate)

;;; init-accelerate.el ends here
