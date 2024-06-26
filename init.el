;;; init.el --- Jorge Emacs init file. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Jorge's Emacs init file.

;;; Code:

;; Load custom file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; Add configuration directories to load-path
(dolist (dir '("config" "config/init-lang"))
  (add-to-list 'load-path (expand-file-name dir user-emacs-directory)))

;; Load configuration modules
(dolist (module '(init-core
		  init-packages
		  init-ui
		  init-performance
		  init-backups
                  init-themes
		  init-dashboard
		  init-editing
		  init-completion
                  init-project
		  init-programming
		  init-keybindings
		  init-mode-line
                  init-fonts
		  init-tree-sitter
		  init-rust
		  init-go
		  init-json
		  init-typescript
		  init-javascript
		  init-vue
		  init-react
		  init-terminal))
  (require module))

(provide 'init)
;;; init.el ends here
