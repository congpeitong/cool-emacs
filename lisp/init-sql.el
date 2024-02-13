;;; init-sql.el --- summary -*- lexical-binding: t -*-

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

;; SQL配置

;;; Code:

(use-package sqlup-mode
  :ensure t
  :config
  (setq sqlup-blacklist-regexp "^\\s-*--")
  (setq sqlup-indent-offset 2)
  (setq sqlup-auto-align t)
  (setq sqlup-highlight-keywords t)
  (setq sqlup-insert-space-after-comma t)
  (setq sqlup-insert-space-after-opening-parenthesis t)
  (setq sqlup-insert-space-before-and-after-binary-operator t)
  (setq sqlup-insert-space-before-closing-parenthesis t)
  (setq sqlup-insert-space-before-opening-parenthesis t)
  (setq sqlup-preserve-comment-column t)
  (setq sqlup-preserve-indentation t)
  (setq sqlup-preserve-newlines t)
  (setq sqlup-preserve-whitespace t)
  (setq sqlup-reindent-on-change t)
  (setq sqlup-reindent-on-yank t)
  (setq sqlup-smart-operator-completion t)
  (setq sqlup-smart-operator-completion-only-after-colon t)
  (setq sqlup-smart-operator-completion-only-after-equal t)
  (setq sqlup-smart-operator-completion-only-after-hashtag t)
  (setq sqlup-smart-operator-completion-only-after-minus t)
  (setq sqlup-smart-operator-completion-only-after-plus t)
  (setq sqlup-smart-operator-completion-only-after-star t)
  (setq sqlup-smart-operator-completion-only-after-tilde t)
  (setq sqlup-smart-operator-completion-only-after-underscore t)
  (setq sqlup-smart-operator-completion-only-after-vertical-bar t)
  (setq sqlup-smart-operator-completion-only-after-whitespace t)
  (setq sqlup-smart-operator-completion-only-before-colon t)
  (setq sqlup-smart-operator-completion-only-before-equal t)
  (setq sqlup-smart-operator-completion-only-before-hashtag t)
  (setq sqlup-smart-operator-completion-only-before-minus t)
  (setq sqlup-smart-operator-completion-only-before-plus t)
  (setq sqlup-smart-operator-completion-only-before-star t)
  (setq sqlup-smart-operator-completion-only-before-tilde t)
  (setq sqlup-smart-operator-completion-only-before-underscore t)
  (setq sqlup-smart-operator-completion-only-before-vertical-bar t)
  (setq sqlup-smart-operator-completion-only-before-whitespace t)
  (setq sqlup-smart-operator-completion-only-inside-brackets t)
  (setq sqlup-smart-operator-completion-only-inside-single-quotes t)
  (setq sqlup-smart-operator-completion-only-inside-double-quotes t)
  (setq sqlup-smart-operator-completion-only-inside-backticks t)
  (setq sqlup-smart-operator-completion-only-inside-parentheses t)
  (setq sqlup-smart-operator-completion-only-inside-braces t)
  (setq sqlup-smart-operator-completion-only-inside-angles t)
  (setq sqlup-smart-operator-completion-only-inside-curlies t)
  (setq sqlup-smart-operator-completion-only-inside-squares t)
  (setq sqlup-smart-operator-completion-only-inside-chevrons t)
  (setq sqlup-smart-operator-completion-only-inside-pipes t)
  (setq sqlup-smart-operator-completion-only-inside-tildes t)
  (setq sqlup-smart-operator-completion-only-inside-carets t)
  (setq sqlup-smart-operator-completion-only-inside-equals t)
  (setq sqlup-smart-operator-completion-only-inside-questions t)
  (setq sqlup-smart-operator-completion-only-inside-exclamations t)
  (setq sqlup-smart-operator-completion-only-inside-atsigns t)
  (setq sqlup-smart-operator-completion-only-inside-ampersands t)
  (setq sqlup-smart-operator-completion-only-inside-asterisks t)
  (setq sqlup-smart-operator-completion-only-inside-percentages t)
  (setq sqlup-smart-operator-completion-only-inside-dollarsigns t)
  (setq sqlup-smart-operator-completion-only-inside-hashtags t)
  (setq sqlup-smart-operator-completion-only-inside-pluses t)
  (setq sqlup-smart-operator-completion-only-inside-minuses t)
  (setq sqlup-smart-operator-completion-only-inside-equalsigns t)
  (setq sqlup-smart-operator-completion-only-inside-divisionsigns t)
  (setq sqlup-smart-operator-completion-only-inside-multiplicationsigns t)
  (setq sqlup-smart-operator-completion-only-inside-leftparens t)
  (setq sqlup-smart-operator-completion-only-inside)
  )

(provide 'init-sql)

;;; init-sql.el ends here
