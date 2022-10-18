(use-package auto-save
  :load-path "~/.emacs.d/config/extensions/auto-save"
  :init
  (require 'auto-save)
  (setq auto-save-idle 6) ;; 空闲间隔保存(默认1秒),必须定义在开启自动保存前
  (auto-save-enable) ;; 开启自动保存
  (setq auto-save-silent t) ;; 悄悄地保存弹框的不要
  (setq auto-save-delete-trailing-whitespace t) ;;保存时自动删除行尾的空格，不想删除则可以赋值 nil
  (setq auto-save-disable-predicates
        '((lambda ()
            (string-suffix-p
             "gpg"
             (file-name-extension (buffer-name)) t)))) ;; 自定义不想自动保存的文件类型，此例gpg文件时禁用自动保存模式
  )

(provide 'init-auto-save)
