;;; init-editing.el --- Editing configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Configurations for editing enhancements.

;;; Code:

(use-package ace-window
  :bind ("M-o" . ace-window))

(use-package ag
  :bind ("C-x a" . ag))

(use-package avy
  :bind ("C-:" . avy-goto-char))

(use-package anzu
  :config
  (global-anzu-mode +1))

(use-package browse-kill-ring
  :bind ("M-y" . browse-kill-ring))

(use-package undo-tree
  :demand t
  :config
  (global-undo-tree-mode))

(use-package crux
  :bind (("C-c I" . crux-find-user-init-file)
         ("C-c D" . crux-delete-file-and-buffer)
         ("C-c R" . crux-rename-buffer-and-file)))

(use-package discover-my-major
  :bind ("C-h C-m" . discover-my-major))

(use-package diff-hl
  :config
  (global-diff-hl-mode))

(use-package diminish)

(use-package easy-kill
  :bind ("M-w" . easy-kill))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package flycheck
  :init (global-flycheck-mode))

(use-package gist
  :bind ("C-c g" . gist-list))

(use-package git-timemachine
  :bind ("C-x v t" . git-timemachine-toggle))

(use-package guru-mode
  :diminish guru-mode
  :config
  (guru-global-mode))

(use-package hl-todo
  :config
  (global-hl-todo-mode))

(use-package imenu-anywhere
  :bind ("C-." . imenu-anywhere))

(use-package smartparens
  :config
  (smartparens-global-mode t)
  (show-smartparens-global-mode t)
  (sp-with-modes '(rust-mode)
    (sp-local-pair "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET"))))
  (defun my-create-newline-and-enter-sexp (&rest _ignored)
    "Open a new brace or bracket expression, with relevant newlines."
    (newline)
    (indent-according-to-mode)
    (forward-line -1)
    (end-of-line)
    (newline-and-indent)))

(use-package smartrep)

(use-package super-save
  :config
  (super-save-mode +1))

(use-package volatile-highlights
  :config
  (volatile-highlights-mode t))

(use-package which-key
  :config
  (which-key-mode))

(provide 'init-editing)
;;; init-editing.el ends here
