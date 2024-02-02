;;; init-markdown.el --- summary -*- lexical-binding: t -*-

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

;; markdonw配置

;;; Code:

(message "Welcome to init-markdown!")

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode)
         ("\\.text\\'" . markdown-mode))
  :init
  (setq markdown-command "pandoc -s --mathjax -f markdown -t html5")
  (setq markdown-css-paths '("https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.10.0/github-markdown.min.css"))
  (setq markdown-header-scaling t)
  (setq markdown-enable-wiki-links t)
  (setq markdown-italic-underscore t)
  (setq markdown-asymmetric-header t)
  (setq markdown-make-gfm-case-insensitive t)
  (setq markdown-fontify-code-blocks-natively t)
  (setq markdown-hide-markup t)
  (setq markdown-indent-on-enter nil)
  (setq markdown-cleanup-list-item-bullets-for-nested-lists t)
  (setq markdown-fontify-tables-natively t)
  (setq markdown-gfm-additional-languages '("mermaid" "plantuml" "graphviz" "dot" "neato" "twopi" "circo" "fdp" "sfdp" "patchwork"))
  (setq markdown-gfm-remove-trailing-list-space t)
  (setq markdown-gfm-remove-empty-lines-around-lists t)
  (setq markdown-gfm-remove-empty-lines-before-headers t)
  (setq markdown-gfm-remove-empty-lines-after-headers t)
  (setq markdown-gfm-remove-empty-lines-between-lists t)
  (setq markdown-gfm-remove-empty-lines-between-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-paragraphs t)
  (setq markdown-gfm-remove-empty-lines-between-tables t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-text t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-tables t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-lists t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-headers t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-paragraphs t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-tables t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-lists t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-headers t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-paragraphs t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-tables t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-lists t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-headers t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-paragraphs t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-tables t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-lists t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-headers t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-paragraphs t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-tables t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-lists t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-headers t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-paragraphs t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-blockquotes t)
  (setq markdown-gfm-remove-empty-lines-between-code-and-tables t)

)

(provide 'init-markdown)

;;; init-markdown.el ends here
