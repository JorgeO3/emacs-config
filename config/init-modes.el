;;; init-modes.el --- Various mode configurations -*- lexical-binding: t; -*-

;;; Commentary:

;;; Various mode configurations

;;; Code:

;; Asegurarse de que linum no se cargue
(setq linum-disabled t)

;; ace-window
(use-package ace-window
  :bind ("M-o" . ace-window))

;; ag
(use-package ag
  :bind ("C-x a" . ag))

;; avy
(use-package avy
  :bind ("C-:" . avy-goto-char))

;; anzu
(use-package anzu
  :config
  (global-anzu-mode +1))

;; browse-kill-ring
(use-package browse-kill-ring
  :bind ("M-y" . browse-kill-ring))

;; crux
(use-package crux
  :bind (("C-c I" . crux-find-user-init-file)
         ("C-c D" . crux-delete-file-and-buffer)
         ("C-c R" . crux-rename-buffer-and-file)))

;; discover-my-major
(use-package discover-my-major
  :bind ("C-h C-m" . discover-my-major))

;; diff-hl
(use-package diff-hl
  :config
  (global-diff-hl-mode))

;; diminish
(use-package diminish)

;; easy-kill
(use-package easy-kill
  :bind ("M-w" . easy-kill))

;; editorconfig
(use-package editorconfig
  :config
  (editorconfig-mode 1))

;; epl
(use-package epl)

;; expand-region
(use-package expand-region
  :bind ("C-=" . er/expand-region))

;; flycheck
(use-package flycheck
  :init (global-flycheck-mode))

;; gist
(use-package gist
  :bind ("C-c g" . gist-list))

;; git-timemachine
(use-package git-timemachine
  :bind ("C-x v t" . git-timemachine-toggle))

;; git-modes
(use-package git-modes)

;; guru-mode
(use-package guru-mode
  :diminish guru-mode
  :config
  (guru-global-mode))

;; hl-todo
(use-package hl-todo
  :config
  (global-hl-todo-mode))

;; imenu-anywhere
(use-package imenu-anywhere
  :bind ("C-." . imenu-anywhere))

;; Projectile
(use-package projectile
  :ensure t
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

;; magit
(use-package magit
  :bind ("C-x g" . magit-status))

;; move-text
(use-package move-text
  :config
  (move-text-default-bindings))

;; multiple-cursors
(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

;; Ivy
(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

;; Counsel
(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-x b" . ivy-switch-buffer)
         ("C-c v" . counsel-imenu)
         ("C-c k" . counsel-ag)
         ("C-x l" . counsel-locate))
  :config
  (counsel-mode 1))

;; Swiper
(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))  ; Asignar Swiper a C-s

;; Counsel Projectile
(use-package counsel-projectile
  :ensure t
  :after (projectile counsel)
  :config
  (counsel-projectile-mode)
  :bind (("C-c p f" . counsel-projectile-find-file)
         ("C-c p p" . counsel-projectile-switch-project)))


;; display-line-numbers
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)

;; operate-on-number
(use-package operate-on-number
  :bind ("C-c o" . operate-on-number-at-point))

;; smartparens
(use-package smartparens
  :config
  (smartparens-global-mode t))

;; smartrep
(use-package smartrep)

;; super-save
(use-package super-save
  :config
  (super-save-mode +1))

;; undo-tree
(use-package undo-tree
  :diminish undo-tree-mode
  :config
  (global-undo-tree-mode))

;; volatile-highlights
(use-package volatile-highlights
  :config
  (volatile-highlights-mode t))

;; Which-Key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; zenburn-theme
(use-package zenburn-theme
  :config
  (load-theme 'zenburn t))

;; zop-to-char
(use-package zop-to-char
  :bind ("M-z" . zop-to-char))

(provide 'init-modes)
;;; init-modes.el ends here
