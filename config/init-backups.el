;;; init-backups.el --- Configurations for backups managament -*- lexical-binding: t; -*-

;;; Commentary:

;;; Dashboard configurations

;;; Code:

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Guardar archivos de respaldo y auto-guardado en un directorio específico
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/auto-saves/" t)))

;; Crear directorios si no existen
(unless (file-exists-p "~/.emacs.d/backups")
  (make-directory "~/.emacs.d/backups"))
(unless (file-exists-p "~/.emacs.d/auto-saves")
  (make-directory "~/.emacs.d/auto-saves"))

;; Configuraciones adicionales para limpieza de archivos de respaldo y auto-guardado
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)  ;; Usar números de versión para archivos de respaldo
(setq delete-auto-save-files t)
