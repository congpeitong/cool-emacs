
;;; -*- lexical-binding: t; -*-
;;; init-time.el --- 时间设置


;;; Code:

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
;;; init-time.el ends here
