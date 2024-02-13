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

;; 交互配置，这里主要是命令交互配置的Helm

;;; Code:

(use-package helm
  :ensure t
  :demand t
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-buffers-list)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-c h" . helm-command-prefix))
  :config
;  (setq helm-split-window-default-side 'left)
  (setq helm-split-window-in-side-preference 0.2)
  (setq helm-move-to-line-cycle-in-source nil)
  (setq helm-ff-search-library-in-sexp t)
  (setq helm-autoresize-mode t)
  (setq helm-echo-input-in-header-line t)
  (setq helm-display-header-line nil)
  (setq helm-display-function-line nil)
  (setq helm-display-source-in-header-line t)
  (setq helm-source-names-using-frame nil)
  (setq helm-candidate-number-limit 100)
  (setq helm-idle-delay 0.01)
  (setq helm-input-idle-delay 0.01)
  (setq helm-quick-update t)
  (setq helm-M-x-requires-pattern nil)
  (setq helm-buffers-favorite-modes (quote (org-mode text-mode)))
  (setq helm-buffers-fuzzy-matching t)
  (setq helm-recentf-fuzzy-match t)
  (setq helm-semantic-fuzzy-match t)
  (setq helm-imenu-fuzzy-match t)
  (setq helm-apropos-fuzzy-match t)
  (setq helm-lisp-fuzzy-completion t)
  (setq helm-completion-in-region-fuzzy-match t))

(defun my/helm-split-window-middle ()
  (interactive)
  (let ((split-height-threshold 100))
    (split-window-sensibly)
    (other-window 1)
    (switch-to-buffer "*Helm Completions*")))



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
