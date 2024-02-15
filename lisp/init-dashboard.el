;;; init-dashboard.el --- summary -*- lexical-binding: t -*-

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

;; Dashboard配置

;;; Code:


(use-package dashboard
  :ensure t
  :init
  (setq dashboard-startup-banner (or *kylin-dashboard-logo* 'official)
        ;dashboard-page-separator "\n\f\n"
        dashboard-banner-logo-title (or *kylin-dashboard-title* "Welcome to Emacs,Enjoy....")
        dashboard-path-style 'truncate-middle
        dashboard-path-max-length 60
        dashboard-center-content t
        dashboard-show-shortcuts t
        dashboard-items '((recents  . 10)
                          (bookmarks . 5)
                          (projects . 5))
        dashboard-set-file-icons t
        dashboard-item-names '(("Recent Files:" . "Recently opened files:")
                             ("Agenda for today:" . "Today's agenda:")
                             ("Agenda for the coming week:" . "Agenda:")))
  
  (dashboard-setup-startup-hook)
  :config
  ;; Insert copyright
  ;; @see https://github.com/emacs-dashboard/emacs-dashboard/issues/219
  (defun my-dashboard-insert-copyright ()
    "Insert copyright in the footer."
    (when dashboard-set-footer
      (dashboard-insert-center
       (propertize (format "\nPowered by KylinBachelor, %s\n" (format-time-string "%Y"))
                   'face 'font-lock-comment-face))))
  (advice-add #'dashboard-insert-footer :after #'my-dashboard-insert-copyright)
)

(provide 'init-dashboard)

;;; init-dashboard.el ends here
