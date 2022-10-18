;; 打开工作日志文件
(defun cong-open-work-record-dir ()
  (interactive)
  (if *win-open-root-dir*
      (find-file (concat *win-open-root-dir* "/工作日志.org"))
    (message "not found work-record-dir")))



;; 打开烈士陵园记录
(defun cong-open-lsly-record-dir ()
  (interactive)
  (if *win-open-root-dir*
      (find-file (concat *win-open-root-dir* "/数字园馆/数字园馆.org"))
    (message "not found lsly document"))
  )

;; 打开 物资管理项目
(defun cong-open-material-record-dir ()
  (interactive)
  (if *win-open-root-dir*
      (find-file (concat *win-open-root-dir* "/物资需求/1-material.org"))
    (message "not found material document")))




(provide 'init-work-util)
