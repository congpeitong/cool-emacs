;;; init-const.el --- summary -*- lexical-binding: t -*-

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

;; 常量配置

;;; Code:

(message "Welcome to init-const!")

;; 检查语法是否开启
(defconst *spell-check-support-enable* t)

;; emacs安装包目录
(defconst *emacs-package-user-dir* (expand-file-name (format "emacs-package-%s.%s" emacs-major-version emacs-minor-version)
                        user-emacs-directory))

;; 判断是否是 MacOS 系统
(defconst *is-mac* (eq system-type 'darwin) "是否是 MacOS 操作系统")

;; 判断是否是 Linux 系统
(defconst *is-linux* (eq system-type 'gnu/linux) "是否是 Linux 操作系统")

;; 判断是否是 Windows 系统
(defconst *is-win* (eq system-type 'windows-nt) "是否是 Windows 操作系统")

;; gnu 下载地址
(defconst *gnu-url* "http://1.15.88.122/gnu/")
;; nongnu 下载地址
(defconst *nongnu-url* "http://1.15.88.122/nongnu/")
;; melpa 下载地址
(defconst *melpa-url* "http://1.15.88.122/melpa/")
;; mepa-stable 下载地址
(defconst *melpa-stable-url* "http://1.15.88.122/stable-melpa/")

;; 是否是 GUI
(defconst *is-gui* (display-graphic-p))

;; 是否是 TUI
(defconst *is-tui* (not *is-gui*))

;; 是否是 nixos/darwin 模块 使用
(defconst *is-nix-module* (equal (getenv "GRASS_EMACS_ENV") "nix-module"))


(provide 'init-const)

;;; init-const.el ends here
