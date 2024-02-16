;;; init-interactive.el --- summary -*- lexical-binding: t -*-

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

;; 交互配置，这里主要是命令交互配置

;;; Code:
(use-package counsel
  :ensure t)


(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
         ("C-r" . swiper)
         ("C-c C-r" . ivy-resume)
         ("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (setq enable-recursive-minibuffers t)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)))

;; evil 模拟vim按键

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t))

(defun kylin-open-vim-interactive()
  (progn (evil-mode)
	  ;; https://emacs.stackexchange.com/questions/46371/how-can-i-get-ret-to-follow-org-mode-links-when-using-evil-mode
	 (with-eval-after-load 'evil-maps
	   (define-key evil-motion-state-map (kbd "RET") nil))))

(provide 'init-interactive)

;;; init-interactive.el ends here
