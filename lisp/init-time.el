;;; init-time.el --- summary -*- lexical-binding: t -*-

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

;; 时间配置

;;; Code:

(message "Welcome to time config!")

(use-package holidays
  :ensure nil
  :init
  
  :config
  (setq holiday-general-holidays '((holiday-fixed 1 31 "New Year's Day")
                                  (holiday-fixed 2 14 "Valentine's Day")
                                  (holiday-fixed 3 8 "International Women's Day")
                                  (holiday-fixed 5 1 "Labor Day")
                                  (holiday-fixed 6 1 "Children's Day")
                                  (holiday-fixed 9 10 "Teacher's Day")
                                  (holiday-fixed 10 1 "National Day")
                                  (holiday-fixed 12 25 "Christmas")))
  )

(setq display-time-format "%Y-%m-%d %A %H:%M") ;设定时间显示格式
(display-time)   ;显示时间  

(provide 'init-time)
