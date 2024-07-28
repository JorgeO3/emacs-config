;;; init-react.el --- Configuration for React JSX and TSX -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for React using web-mode.

;;; Code:

(use-package web-mode
  :ensure t
  :mode ("\\.jsx\\'" "\\.tsx\\'")
  :config
  (add-hook 'web-mode-hook
            (lambda ()
              (when (or (string-equal "jsx" (file-name-extension buffer-file-name))
                        (string-equal "tsx" (file-name-extension buffer-file-name)))
                (setq web-mode-content-type "jsx")
                (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
                (setq web-mode-markup-indent-offset 2)
                (setq web-mode-css-indent-offset 2)
                (setq web-mode-code-indent-offset 2)
;;                (add-hook 'before-save-hook 'react-format-buffer nil t) 
		))))  ;; Format buffer on save

;; (defun react-format-buffer ()
;;   "Format the current buffer as React JSX/TSX."
;;   (interactive)
;;   (when (memq major-mode '(web-mode))
;;     (shell-command (format "prettier --write %s" (shell-quote-argument (buffer-file-name))))
;;     (revert-buffer t t t)))

(provide 'init-react)

;;; init-react.el ends here
