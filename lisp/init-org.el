;;; init-org.el --- summary -*- lexical-binding: t -*-

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

;; org-mode配置

;;; Code:

;; 使用use-package安装和配置org-mode
(use-package org
  :ensure t
  :config
  (setq org-startup-indented t) ; 设置org文件以缩进方式打开
  (setq org-src-fontify-natively t) ; 设置源代码块的语法高亮
  (setq org-hide-emphasis-markers t) ; 隐藏强调标记
  (setq org-pretty-entities t) ; 美化实体显示
  (setq org-ellipsis "…") ; 设置省略号为“…”
  (setq org-directory "~/org") ; 设置org文件的默认目录
  (setq org-default-notes-file "~/org/notes.org") ; 设置默认笔记文件路径
  (setq org-agenda-files '("~/org/agenda.org")) ; 设置日程文件路径
  (setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "DONE"))) ; 设置待办事项关键字
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/org/notes.org" "Tasks")
           "* TODO %?
  %i
  %a")
          ("n" "Note" entry (file+headline "~/org/notes.org" "Notes")
           "* %?
  %i
  %a"))) ; 设置捕获模板
  (setq org-refile-targets '((org-agenda-files :maxlevel . 3))) ; 设置重命名目标
  (setq org-log-done 'time) ; 设置完成日志记录方式为时间
  (setq org-log-into-drawer t) ; 将日志记录到抽屉中
  (setq org-clock-into-drawer t) ; 将计时记录到抽屉中
  (setq org-clock-out-when-done t) ; 完成任务时自动停止计时
  (setq org-columns-default-format "%50ITEM %Effort{:} %CLOCKSUM{:} %TIMESTAMP{:} %TAGS{:}") ; 设置列视图格式
  (setq org-global-properties '(("Effort_ALL" . "0:15 0:30 0:45 1:00 2:00 3:00 4:00"))) ; 设置全局属性
  (setq org-tag-alist '((:startgroup)
                        ("@work" . ?w)
                        ("@home" . ?h)
                        ("@computer" . ?c)
                        (:grouptags)
                        (:endgroup)))) ; 设置标签列表

  ;; 设置org-mode的视觉美化
  (setq org-hide-leading-stars t) ; 隐藏行首的星号
  (setq org-indent-indentation-per-level 2) ; 设置每个级别的缩进量
  (setq org-adapt-indentation nil) ; 不自适应缩进
  (setq org-startup-folded 'showall) ; 启动时展开所有节点
  (setq org-cycle-separator-lines 2) ; 设置折叠线的长度
  (setq org-fontify-done-headline t) ; 高亮已完成的任务标题
  (setq org-fontify-todo-headline t) ; 高亮未完成的任务标题
  (setq org-fontify-emphasized-text t) ; 高亮强调文本
  (setq org-fontify-whole-heading-line t) ; 高亮整个标题行
  (setq org-fontify-quote-and-verse-blocks t) ; 高亮引用和诗歌块
  (setq org-fontify-tables t) ; 高亮表格
  (setq org-fontify-entities t) ; 高亮实体
  (setq org-fontify-protected-formulas t) ; 高亮保护的公式
  (setq org-fontify-sub-superscripts t) ; 高亮上标和下标
  (setq org-fontify-fractions t) ; 高亮分数
  (setq org-fontify-strikethrough t) ; 高亮删除线
  (setq org-fontify-underline t) ; 高亮下划线
  (setq org-fontify-headline-markups t) ; 高亮标题标记
  (setq org-fontify-latex-and-related '(face bold italic underline verbatim)) ; 高亮LaTeX相关元素
  (setq org-fontify-plain-text '(face bold italic underline verbatim)) ; 高亮纯文本元素
  (setq org-fontify-table-header '(face bold italic underline verbatim)) ; 高亮表格标题
  (setq org-fontify-table-cell '(face bold italic underline verbatim)) ; 高亮表格单元格
  (setq org-fontify-table-row '(face bold italic underline verbatim)) ; 高亮表格行
  (setq org-fontify-table-line '(face bold italic underline verbatim)) ; 高亮表格线
  (setq org-fontify-table-separator '(face bold italic underline verbatim)) ; 高亮表格分隔符
  (setq org-fontify-table-ruler '(face bold italic underline verbatim)) ; 高亮表格标尺
  (setq org-fontify-table-title '(face bold italic underline verbatim)) ; 高亮表格标题
  (setq org-fontify-table-body '(face bold italic underline verbatim)) ; 高亮表格主体
  (setq org-fontify-table-footer '(face bold italic underline verbatim)) ; 高亮表格页脚
  (setq org-fontify-table-caption '(face bold italic underline verbatim)) ; 高亮表格标题
  (setq org-fontify-table-header-separator '(face bold italic underline verbatim)) ; 高亮表格标题分隔符
  (setq org-fontify-table-header-underline '(face bold italic underline verbatim)) ; 高亮表格标题下划线
  (setq org-fontify-table-header-overline '(face bold italic underline verbatim)) ; 高亮表格标题上划线
  (setq org-fontify-table-header-strikethrough '(face bold italic underline verbatim)) ; 高亮表格标题删除线
  (setq org-fontify-table-header-line '(face bold italic underline verbatim)) ; 高亮表格标题线
  (setq org-fontify-table-header-ruler '(face bold italic underline verbatim)) ; 高亮表格标题标尺
  (setq org-fontify-table-header-title '(face bold italic underline verbatim)) ; 高亮表格标题标题
  (setq org-fontify-table-header-body '(face bold italic underline verbatim)) ; 高亮表格标题主体
  (setq org-fontify-table-header-footer '(face bold italic underline verbatim)) ; 高亮表格标题页脚
  (setq org-fontify-table-header-caption '(face bold italic underline verbatim)) ; 高亮表格标题标题
  (setq org-fontify-table-header-separator '(face bold italic underline verbatim)) ; 高亮表格标题分隔符
  (setq org-fontify-table-header-underline '(face bold italic underline verbatim)) ; 高亮表格标题下划线
  (setq org-fontify-table-header-overline '(face bold italic underline verbatim)) ; 高亮表格标题上划线
  (setq org-fontify-table-header-strikethrough '(face bold italic underline verbatim)) ; 高亮表格标题删除线
  (setq org-fontify-table-header-line '(face bold italic underline verbatim)) ; 高亮表格标题线
  (setq org-fontify-table-header-ruler '(face bold italic underline verbatim)) ; 高亮表格标题标尺
  (setq org-fontify-table-header-title '(face bold italic underline verbatim)) ; 高亮表格标题标题
  (setq org-fontify-table-header-body '(face bold italic underline verbatim)) ; 高亮表格标题主体
  (setq org-fontify-table-header-footer '(face bold italic underline verbatim)) ; 高亮表格标题页脚
  (setq org-fontify-table-header-caption '(face bold italic underline verbatim)) ; 高亮表格标题标题


(provide 'init-org)

;;; init-org.el ends here
