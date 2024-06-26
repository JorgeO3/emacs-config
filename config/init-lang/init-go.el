;;; init-go.el --- Configuration for Go development -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for Go development using go-mode without autocompletion or checking.

;;; Code:

(use-package go-mode
  :ensure t
  :mode "\\.go\\'"
  :config
  (add-hook 'before-save-hook 'gofmt-before-save)  ;; Format buffer on save
  (add-hook 'go-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
              (setq tab-width 4))))  ;; Set tab width to 4 spaces

(provide 'init-go)

;;; init-go.el ends here
