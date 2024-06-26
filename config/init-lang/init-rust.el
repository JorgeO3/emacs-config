;;; init-rust.el --- Configuration for Rust development -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for Rust development using rust-mode without autocompletion.

;;; Code:

(use-package rust-mode
  :ensure t
  :mode "\\.rs\\'"
  :config
  (setq rust-format-on-save t)  ;; Format buffer on save
  (add-hook 'rust-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
              (setq tab-width 4))))  ;; Set tab width to 4 spaces

(provide 'init-rust)

;;; init-rust.el ends here
