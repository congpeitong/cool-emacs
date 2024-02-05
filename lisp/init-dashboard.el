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

(message "Welcome to init-dashboard!")

(use-package dashboard
  :ensure t
  :init
  (setq dashboard-startup-banner 'logo-kirin)
  :config
  (dashboard-setup-startup-hook))



(provide 'init-dashboard)

;;; init-dashboard.el ends here
