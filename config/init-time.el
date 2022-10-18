;;; init-time.el --- 时间设置


;;; Code:

(setq display-time-day-and-date t)                             ;打开日期显示
(display-time-mode 1)                                          ;打开时间显示
(display-time)                                                 ;显示时间
(setq display-time-format "%H:%M")                             ;设定时间显示格式
(setq display-time-24hr-format t)                              ;打开24小时显示模式

(provide 'init-time)

;;; init-time.el ends here
