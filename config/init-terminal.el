;;; init-terminal.el --- Configuration for terminal emulators -*- lexical-binding: t; -*-

;;; Commentary:

;; Configuration for Eat, a terminal emulator for Emacs.

;;; Code:

(use-package eat
  :ensure t
  :config
  ;; Optional: Integrate with Eshell
  (add-hook 'eshell-load-hook #'eat-eshell-mode)
  (add-hook 'eshell-load-hook #'eat-eshell-visual-command-mode))

(provide 'init-terminal)

;;; init-terminal.el ends here
