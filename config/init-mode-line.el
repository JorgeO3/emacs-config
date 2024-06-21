;;; init-mode-line.el --- Mode line configuration -*- lexical-binding: t; -*-

;;; Commentary:

;;; Mode line configuration

;;; Code:

(use-package smart-mode-line
  :ensure t
  :init
  (setq sml/no-confirm-load-theme t) ;; No confirmation to load theme
  :config
  (setq sml/theme 'respectful)
  (sml/setup)
  (set-face-attribute 'sml/modes nil :foreground 'unspecified)) ;; Cambia nil por unspecified

(provide 'init-mode-line)
;;; init-mode-line.el ends here
