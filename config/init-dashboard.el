;;; -*- lexical-binding: t; -*-
(use-package dashboard
  :ensure t
  :init
  (setq dashboard-banner-logo-title "Welcome to Emacs - Enjoy Programming & Writing"
        dashboard-startup-banner "~/.emacs.d/logo.png"
        dashboard-center-content t
        dashboard-show-shortcuts t
        dashboard-set-navigator nil
        dashboard-set-init-info t
        dashboard-set-footer t
        dashboard-footer-messages '("https://www.github.com/congpeitong"))
  (setq dashboard-item-names '(("Recent Files:" . "Recently opened files:")
                               ("Agenda for today:" . "Today's agenda:")
                               ("Agenda for the coming week:" . "Agenda:")))
  (dashboard-setup-startup-hook))



(provide 'init-dashboard)
