;;; init-fonts.el --- Font configurations -*- lexical-binding: t; -*-

;;; Commentary:

;;; Font configurations

;;; Code:

;; Función personalizada para autocompletado en comint usando Ivy
(defun ivy-comint-dynamic-complete ()
  "Dynamically complete the input using Ivy in comint modes."
  (interactive)
  (let* ((end (point))
         (start (save-excursion (comint-bol nil) (point)))
         (input (buffer-substring-no-properties start end))
         (completions (comint-dynamic-simple-complete input
                                                      comint-completion-fignore)))
    (if completions
        (ivy-read "Completions: " completions
                  :action (lambda (selection)
                            (delete-region start end)
                            (insert selection)))
      (message "No completions found"))))

;; Vincular TAB a ivy-comint-dynamic-complete en shell y eshell
(add-hook 'shell-mode-hook
          (lambda ()
            (local-set-key (kbd "TAB") 'ivy-comint-dynamic-complete)))

(add-hook 'eshell-mode-hook
          (lambda ()
            (local-set-key (kbd "TAB") 'ivy-comint-dynamic-complete)))

(provide 'init-shell-ivy)
;; init-shell-ivy.el ends here

