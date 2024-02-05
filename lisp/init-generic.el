;;; init-generic.el --- summary -*- lexical-binding: t -*-

;; Author: kylinbachelor
;; Maintainer: None
;; Version: 1.0
;; Package-Requires: (dependencies)
;; Homepage: homepage
;; Keywords: keywords


;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:

;; 基础配置

;;; Code:

(message "Welcome to init-generic!")

;; Restore emacs session.
(setq initial-buffer-choice t)

;; 增加长行处理性能
(setq bidi-inhibit-bpa t)
(setq-default bidi-paragraph-direction 'left-to-right)

;; 增加IO性能
(setq process-adaptive-read-buffering nil)
(setq read-process-output-max (* 1024 1024))

(fset 'yes-or-no-p 'y-or-n-p)                        ;以 y/n代表 yes/no
(set-face-attribute 'default nil :height 160)        ;设置字体大小
(blink-cursor-mode 1)                                ;光标闪动
(set-cursor-color "#f08080")                         ;设置光标颜色
(setq blink-cursor-interval 0.5)                     ;闪烁光标时间间隔
(transient-mark-mode 1)                              ;标记高亮
(setq make-backup-files nil)                         ;;关闭自动生产备份文件
(setq auto-save-default nil)                         ;;关闭自动保存文件
(global-subword-mode 1)                              ;Word移动支持 FooBar 的格式
(setq use-dialog-box nil)                            ;禁止显示那些需要鼠标点击的窗口，改为使用y/n按键操作
(setq inhibit-startup-screen t)                      ;inhibit start screen
(setq initial-scratch-message "")                    ;关闭启动空白buffer, 这个buffer会干扰session恢复
(setq-default comment-style 'indent)                 ;设定自动缩进的注释风格
(setq ring-bell-function 'ignore)                    ;关闭烦人的出错时的提示声
(setq default-major-mode 'text-mode)                 ;设置默认地主模式为TEXT模式
(setq mouse-yank-at-point t)                         ;粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)                   ;支持emacs和外部程序的粘贴
(setq split-width-threshold nil)                     ;分屏的时候使用上下分屏
(setq inhibit-compacting-font-caches t)              ;使用字体缓存，避免卡顿
(setq confirm-kill-processes nil)                    ;退出自动杀掉进程
(setq async-bytecomp-allowed-packages nil)           ;避免magit报错
(setq word-wrap-by-category t)                       ;按照中文折行

(setq ad-redefinition-action 'accept)                ;不要烦人的 redefine warning
(setq frame-resize-pixelwise t)                      ;设置缩放的模式,避免Mac平台最大化窗口以后右边和下边有空隙

;; 平滑地进行半屏滚动，避免滚动后recenter操作
(setq scroll-step 1
      scroll-conservatively 10000)


(setq browse-kill-ring-quit-action        ;设置退出动作
      (quote save-and-restore))           ;保存还原窗口设置
(autoload 'hanconvert-region "hanconvert" ;简繁中文互相转换
  "Convert a region from simple chinese to tradition chinese or
from tradition chinese to simple chinese" t)
;(autoload 'irfc "init-irfc")
(custom-set-variables '(tramp-verbose 0)) ;设置tramp的响应方式, 关闭后不弹出消息
(setq max-lisp-eval-depth 40000)          ;lisp最大执行深度
(setq max-specpdl-size 10000)             ;最大容量
(setq kill-ring-max 1024)                 ;用一个很大的 kill ring. 这样防止我不小心删掉重要的东西
(setq mark-ring-max 1024)                 ;设置的mark ring容量
(setq eval-expression-print-length nil)   ;设置执行表达式的长度没有限制
(setq eval-expression-print-level nil)  ;设置执行表达式的深度没有限制
(auto-compression-mode 1)               ;打开压缩文件时自动解压缩
(setq read-quoted-char-radix 16)        ;设置 引用字符 的基数
(setq global-mark-ring-max 1024)        ;设置最大的全局标记容量
(global-hl-line-mode 1)                 ;高亮当前行
(setq isearch-allow-scroll t)           ;isearch搜索时是可以滚动屏幕的
(setq enable-recursive-minibuffers t)   ;minibuffer 递归调用命令
(setq history-delete-duplicates t)      ;删除minibuffer的重复历史
(setq minibuffer-message-timeout 1)     ;显示消息超时的时间
(setq auto-revert-mode 1)               ;自动更新buffer
(show-paren-mode t)                     ;显示括号匹配
(setq show-paren-style 'parentheses)    ;括号匹配显示但不是烦人的跳到另一个括号。
(setq blink-matching-paren nil)         ;当插入右括号时不显示匹配的左括号
(setq message-log-max t)                ;设置message记录全部消息, 而不用截去
(setq require-final-newline nil)        ;不自动添加换行符到末尾, 有些情况会出现错误
(setq ediff-window-setup-function (quote ediff-setup-windows-plain)) ;比较窗口设置在同一个frame里
(setq x-stretch-cursor t)               ;光标在 TAB 字符上会显示为一个大方块
(put 'narrow-to-region 'disabled nil)   ;开启变窄区域
(setq print-escape-newlines t)          ;显示字符窗中的换行符为 \n
(setq tramp-default-method "ssh")       ;设置传送文件默认的方法
(setq void-text-area-pointer nil)       ;禁止显示鼠标指针
(setq byte-compile-warnings
      (quote (
              ;; 显示的警告
              free-vars                 ;不在当前范围的引用变量
              unresolved                ;不知道的函数
              callargs                  ;函数调用的参数和定义的不匹配
              obsolete                  ;荒废的变量和函数
              noruntime                 ;函数没有定义在运行时期
              interactive-only          ;正常不被调用的命令
              make-local ;调用 `make-variable-buffer-local' 可能会不正确的
              mapcar     ;`mapcar' 调用
              ;;
              ;; 抑制的警告
              (not redefine)        ;重新定义的函数 (比如参数数量改变)
              (not cl-functions)    ;`CL' 包中的运行时调用的函数
              )))
;(elf-setup-default)                     ;二进制文件默认用elf模式打开
(setq echo-keystrokes 0.1)               ;加快快捷键提示的速度
(tooltip-mode -1)                        ;不要显示任何 tooltips

;; 开启像素级滚动
(when (fboundp 'pixel-scroll-precision-mode)
  (pixel-scroll-precision-mode))

;; 自动补全括号
(electric-pair-mode t)

;; 打开自动保存
(auto-save-mode 1)
;; 自动保存当前访问的文件buffer
(auto-save-visited-mode 1)

(setq frame-title-format
      `((buffer-file-name "%f" "%b")
        ,(format " - GNU Emacs %s" emacs-version)))

;; 启动最大化 为什么不管用呢?
;(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq initial-frame-alist '((fullscreen . maximized)))



(provide 'init-generic)

;;; init-generic.el ends here
