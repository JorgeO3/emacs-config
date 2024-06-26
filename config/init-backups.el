;;; init-backups.el --- Configurations for backups management -*- lexical-binding: t; -*-

;;; Commentary:

;;; Backup and auto-save configurations

;;; Code:

;; Enable backups and auto-save
(setq make-backup-files t)
(setq auto-save-default t)

;; Directory for backups and auto-save files
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/auto-saves/" t)))

;; Ensure backup and auto-save directories exist
(let ((backup-dir "~/.emacs.d/backups")
      (auto-save-dir "~/.emacs.d/auto-saves"))
  (unless (file-exists-p backup-dir)
    (make-directory backup-dir t))
  (unless (file-exists-p auto-save-dir)
    (make-directory auto-save-dir t)))

;; Additional backup configurations
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t  ;; Use version numbers for backups
      delete-auto-save-files t)

(provide 'init-backups)

;;; init-backups.el ends here
