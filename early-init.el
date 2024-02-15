;;; early-init.el --- summary -*- lexical-binding: t -*-

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

;; early-init

;;; Code:


(when (version< emacs-version "29")
  (error "必须要使用 Emacs 29 以上的版本"))


;; 设置配置文件目录
(defconst *emacs-config-dir* "lisp")
;; 设置配置扩展目录
(defconst *emacs-extension-config-dir* "extensions")

;; 设置配置文件主目录
(add-to-list 'load-path (expand-file-name *emacs-config-dir* user-emacs-directory))

;; UI设置
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

(provide 'early-init)

;;; early-init.el ends here


