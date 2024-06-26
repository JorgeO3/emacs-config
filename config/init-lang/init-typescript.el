;;; init-typescript.el --- Configuration for TypeScript -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for TypeScript using typescript-mode.

;;; Code:

(use-package typescript-mode
  :ensure t
  :mode "\\.ts\\'"
  :config
  (add-hook 'typescript-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
              (setq tab-width 4)
              (add-hook 'before-save-hook 'typescript-format-buffer nil t))))  ;; Format buffer on save

(defun typescript-format-buffer ()
  "Format the current buffer as TypeScript."
  (interactive)
  (when (eq major-mode 'typescript-mode)
    (shell-command (format "prettier --write %s" (shell-quote-argument (buffer-file-name))))
    (revert-buffer t t t)))

(provide 'init-typescript)

;;; init-typescript.el ends here
