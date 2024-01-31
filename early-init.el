(when (version< emacs-version "29")
  (error "必须要使用 Emacs 29 以上的版本"))


;; 设置配置目录
(defconst *emacs-config-dir* "~/.emacs.d/lisp")
(require 'cl-lib)

(tool-bar-mode -1) ;;禁用工具栏
(menu-bar-mode -1) ;;禁用菜单栏
(scroll-bar-mode -1) ;;;禁用滚动条


;; 一般UI记录
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))



;; 性能优化-------调大gc的阈值
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;; 性能优化------调大子进程的输出读取缓冲
(setq read-process-output-max (* 4 1024 1024))

;; 性能优化------关闭对子进程读取输出时的延迟缓冲
(setq process-adaptive-read-buffering nil)
