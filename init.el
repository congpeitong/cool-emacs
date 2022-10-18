(add-to-list 'load-path (expand-file-name *emacs-root-dir* user-emacs-directory))  ;; 设置配置文件主目录
(require 'init-accelerate) ;; 加速配置
(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  (with-temp-message ""              ;抹掉插件启动的输出
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
    (run-with-idle-timer
     1 nil
     #'(lambda ()
         (require 'init-line-number)
         (require 'init-indent)
         (require 'init-auto-save)
         (require 'init-pair)
         (require 'init-org)
         (require 'init-complete)
         ))))

(provide 'init)

