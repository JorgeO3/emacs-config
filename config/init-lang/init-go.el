;;; init-go.el --- Configuration for Go development -*- lexical-binding: t; -*-

;;; Commentary:

;; Basic configuration for Go development using go-mode without autocompletion or checking.

;;; Code:

(use-package go-mode
  :ensure t
  :mode "\\.go\\'"
  :config
  ;; Desactivar el autoformateo al guardar
  ;; (add-hook 'before-save-hook 'gofmt-before-save)  ;; Format buffer on save

  ;; Configuración del modo Go
  (add-hook 'go-mode-hook
            (lambda ()
              (setq indent-tabs-mode nil)  ;; Use spaces instead of tabs
              (setq tab-width 4))))  ;; Set tab width to 4 spaces

(defun gofmt-current-buffer ()
  "Format the current buffer with gofmt."
  (interactive)
  (if (eq major-mode 'go-mode)
      (gofmt)
    (message "Not in Go mode")))

;; Asignar el keybinding para formatear el código
(global-set-key (kbd "C-c f") 'gofmt-current-buffer)

(provide 'init-go)

;;; init-go.el ends here
