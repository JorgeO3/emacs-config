;;; init-programming.el --- Programming-related configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Configurations for programming enhancements and tools.

;;; Code:
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1)
  (add-to-list 'yas-snippet-dirs (expand-file-name "~/.emacs.d/snippets")))

(use-package yasnippet-snippets
  :ensure t)

(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)

(provide 'init-programming)
;;; init-programming.el ends here
