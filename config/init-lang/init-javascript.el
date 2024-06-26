;;; init-javascript.el --- Configuration for JavaScript -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for JavaScript using js2-mode.

;;; Code:

(use-package js2-mode
  :ensure t
  :mode "\\.js\\'"
  :config
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)
  (add-hook 'js2-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
              (setq js2-basic-offset 2)
              (add-hook 'before-save-hook 'js2-format-buffer nil t))))  ;; Format buffer on save

(defun js2-format-buffer ()
  "Format the current buffer as JavaScript."
  (interactive)
  (when (eq major-mode 'js2-mode)
    (shell-command (format "prettier --write %s" (shell-quote-argument (buffer-file-name))))
    (revert-buffer t t t)))

(provide 'init-javascript)

;;; init-javascript.el ends here
