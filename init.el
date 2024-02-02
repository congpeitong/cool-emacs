;;; init.el --- summary -*- lexical-binding: t -*-

;; Author: kylinBachelor
;; Maintainer: 
;; Version: version
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

;; 配置文件入口

;;; Code:

(message "Welcome to init.el!")
;;; 配置文件的主目录
(add-to-list 'load-path (expand-file-name *emacs-config-dir* user-emacs-directory))
;;; 加速配置
(require 'init-accelerate)
;; 常量配置
(require 'init-const) 
;; 常用的方法/函数
(require 'init-method)
;; 包安装
(require 'init-package-install)
;; 基础配置
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
;; web
(require 'init-web)
;; Vue
(require 'init-vue)
;; markdown
(require 'init-markdown)
;; yaml
(require 'init-yaml)
;; 交互
(require 'init-interactive)
;; 语法检查
(require 'init-flycheck)
;; magit
(require 'init-magit)
;; tree-dir
(require 'init-tree-dir)
;; undo
(require 'init-undo)
;; org-mode
(require 'init-org)
;; rust
(require 'init-rust)
;; java
;(require 'init-java)
;; sql
(require 'init-sql)










(provide 'init)

;;; init.el ends here
