;;; 配置文件的主目录
(add-to-list 'load-path (expand-file-name *emacs-config-dir* user-emacs-directory))

;; 加速配置
(require 'init-accelerate)
;; 常量配置
(require 'init-const) 
;; 常用的方法/函数
(require 'init-method)
;; 包安装
(require 'init-package-install)
;; 基础配置
(require 'init-base)
;; generic
(require 'init-generic)
;; dashboard
(require 'init-dashboard)
;; 主题
(require 'init-theme)
;; 图标
(require 'init-icon)
;; 时间
(require 'init-time)
;; 编码
(require 'init-unicode)
;; 行号
(require 'init-line-number)
;; modeline
(require 'init-modeline)
;; 补全
(require 'init-complete)
;; 滚动
(require 'init-scroll)
;; window增强
(require 'init-window)
;; 括号匹配
(require 'init-pair)
;; avy
;;(require 'init-avy)
;; web
(require 'init-web)
;; Vue
(require 'init-vue)
;; markdown
(require 'init-markdown)
;; yaml
(require 'init-yaml)
;; selectrum
(require 'init-selectrum)
;; 语法检查
(require 'init-flycheck)
;; magit
(require 'init-magit)








(provide 'init)
;;; init.el ends here
