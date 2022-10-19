(add-to-list 'load-path (expand-file-name *emacs-root-dir* user-emacs-directory))  ;; 设置配置文件主目录
(require 'init-accelerate) ;; 加速配置
(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  (with-temp-message "Emas Started"              ;抹掉插件启动的输出
    (require 'init-generic)
    (require 'init-time)
    (require 'init-utils)
    (require 'init-work-util)
    (require 'init-package-install)
    (require 'init-dashboard)
    (require 'init-key)
    (require 'init-mode)
    (require 'init-themes)
    (require 'init-selectrum)
    (require 'init-powerline)

    ;; 可以延后加载的
    (run-with-idle-timer ;; 定时任务函数 (run-with-timer SECS:时间间隔，以秒为单位  REPEAT：是否非nil,非nil则每间隔REPEAT执行一次  FUNCTION &rest ARGS)
     3 nil
     #'(lambda ()
         (require 'init-line-number)
         (require 'init-indent)
         (require 'init-auto-save)
         (require 'init-pair)
         (require 'init-undo)
         (require 'init-org)
         (require 'init-complete)
         (require 'init-flycheck)
         (require 'init-tree-dir)
         ))))

(provide 'init)
