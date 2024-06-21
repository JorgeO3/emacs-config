;;; init.el --- Jorge Emacs init file. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Jorge's Emacs init file.

;;; Code:

;; Load custom file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; Load configuration modules
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

;; Ensure use-package is loaded first
(require 'init-packages)
(require 'init-ui)
(require 'init-performance)
(require 'init-themes)
(require 'init-dashboard)
(require 'init-modes)
(require 'init-remappings)
(require 'init-mode-line)
(require 'init-fonts)
(require 'init-tree-sitter)

(provide 'init)
;;; init.el ends here
