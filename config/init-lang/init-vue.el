;;; init-vue.el --- Configuration for Vue.js -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for Vue.js using web-mode.

;;; Code:
(use-package web-mode
  :ensure t
  :mode "\\.vue\\'"
  :hook (web-mode . emmet-mode)
  :config
  (setq web-mode-markup-indent-offset 2)  ;; Indent HTML
  (setq web-mode-css-indent-offset 2)     ;; Indent CSS
  (setq web-mode-code-indent-offset 2)    ;; Indent JavaScript
  (add-hook 'web-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
              (add-hook 'before-save-hook 'vue-format-buffer nil t))))

(defun vue-format-buffer ()
  "Format the current buffer as Vue.js."
  (interactive)
  (when (eq major-mode 'web-mode)
    (shell-command (format "prettier --write %s" (shell-quote-argument (buffer-file-name))))
    (revert-buffer t t t)))

(provide 'init-vue)

;;; init-vue.el ends here
