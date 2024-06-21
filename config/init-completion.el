;;; -completion.el --- Completion configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Configurations for completion systems.

;;; Code:

(use-package ivy
  :diminish (ivy-mode)
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-re-builders-alist
        '((t . ivy--regex-plus))) ;; Usa una mejor estrategia de búsqueda
  (setq ivy-count-format "(%d/%d) ")
  ;; Personaliza las caras de Ivy para una mejor visibilidad
  (set-face-attribute 'ivy-current-match nil
                      :background "#f0c674"  ;; yellow
                      :foreground "#1d1f21"  ;; bg
                      :weight 'bold
                      :underline t)
  (set-face-attribute 'ivy-minibuffer-match-face-1 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#f0c674"  ;; yellow
                      :weight 'bold)
  (set-face-attribute 'ivy-minibuffer-match-face-2 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#de935f"  ;; orange
                      :weight 'bold)
  (set-face-attribute 'ivy-minibuffer-match-face-3 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#b5bd68"  ;; green
                      :weight 'bold)
  (set-face-attribute 'ivy-minibuffer-match-face-4 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#81a2be"  ;; blue
                      :weight 'bold))

(use-package swiper
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  :config
  ;; Personaliza las caras de Swiper para una mejor visibilidad
  (set-face-attribute 'swiper-line-face nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#ffffff")
  (set-face-attribute 'swiper-match-face-1 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#f0c674"  ;; yellow
                      :weight 'bold)
  (set-face-attribute 'swiper-match-face-2 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#de935f"  ;; orange
                      :weight 'bold)
  (set-face-attribute 'swiper-match-face-3 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#b5bd68"  ;; green
                      :weight 'bold)
  (set-face-attribute 'swiper-match-face-4 nil
                      :background "#1d1f21"  ;; bg
                      :foreground "#81a2be"  ;; blue
                      :weight 'bold)
  (set-face-attribute 'swiper-background-match-face-1 nil
                      :background "#f0c674"  ;; yellow
                      :foreground "#1d1f21"  ;; bg
                      :weight 'bold
                      :underline t)
  (set-face-attribute 'swiper-background-match-face-2 nil
                      :background "#de935f"  ;; orange
                      :foreground "#1d1f21"  ;; bg
                      :weight 'bold
                      :underline t)
  (set-face-attribute 'swiper-background-match-face-3 nil
                      :background "#b5bd68"  ;; green
                      :foreground "#1d1f21"  ;; bg
                      :weight 'bold
                      :underline t)
  (set-face-attribute 'swiper-background-match-face-4 nil
                      :background "#81a2be"  ;; blue
                      :foreground "#1d1f21"  ;; bg
                      :weight 'bold
                      :underline t))

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-x b" . ivy-switch-buffer)
         ("C-c v" . counsel-imenu)
         ("C-c k" . counsel-rg)
         ("C-x l" . counsel-locate))
  :config
  (counsel-mode 1)
  ;; Personaliza las caras de Counsel para una mejor visibilidad
  (set-face-attribute 'counsel-active-mode nil
                      :background "#f0c674"  ;; yellow
                      :foreground "#1d1f21"  ;; bg
                      :weight 'bold
                      :underline t))

(provide 'init-completion)
;;; init-completion.el ends here
