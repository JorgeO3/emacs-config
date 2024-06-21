;;; init-dashboard.el --- Dashboard configurations -*- lexical-binding: t; -*-

;;; Commentary:

;;; Dashboard configurations

;;; Code:

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 'official)
  (setq dashboard-banner-logo-title "Welcome to Emacs, Jorge!")
  (setq dashboard-center-content t)
  (setq dashboard-items '((recents  . 5)
                          (bookmarks . 5)
                          (projects . 5)
                          (agenda . 5)
                          (registers . 5)))
  ;; Set the footer
  (setq dashboard-footer-messages '("Emacs is the best editor!"))
  (setq dashboard-footer-icon (if (display-graphic-p)
                                  (propertize "⚡" 'face 'dashboard-footer-face)
                                "->")))

(provide 'init-dashboard)
;;; init-dashboard.el ends here
