;;; init-base.el --- summary -*- lexical-binding: t -*-

;; Author: kylinbachelor
;; Maintainer: 
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

;; Emacs基础配置

;;; Code:

(message "Welcome to init-base!")

;; 关闭原生编译警告
(setq native-comp-async-report-warnings-errors nil)
;; 关闭启动画面
(setq inhibit-startup-screen t)
;; 禁用对话框
(setq use-dialog-box nil)
;; 禁用文件对话框
(setq use-file-dialog nil)

;; 允许像素级别调整窗口和窗体大小
(setq-default
 window-resize-pixelwise t
 frame-resize-pixelwise t)

;; 关闭工具栏
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
;; 关闭文件滑动控件
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
;; 关闭菜单栏
(menu-bar-mode -1)

;; 隐藏内部边框
(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

;; 开启像素级滚动
(when (fboundp 'pixel-scroll-precision-mode)
  (pixel-scroll-precision-mode))


;; 关闭emacs自带的退出确认
(setq confirm-kill-emacs #'yes-or-no-p)

;; 自动补全括号
(electric-pair-mode t)

;; 打开自动保存
(auto-save-mode 1)
;; 自动保存当前访问的文件buffer
(auto-save-visited-mode 1)

;; 编程模式下，光标在括号上时高亮另一个括号
(add-hook 'prog-mode-hook #'show-paren-mode)
;; 在 Mode line 上显示列号
(column-number-mode 1)

;; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(delete-selection-mode t)

;; 关闭文件自动备份
(setq make-backup-files nil)
;; 编程模式下，可以折叠代码块
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; 设置等宽字体
(set-face-attribute 'default nil :height 160)



(provide 'init-base)

;;; init-base.el ends here
