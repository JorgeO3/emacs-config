;;; init-keybindings.el --- Keybindings configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Custom keybindings configurations.

;;; Code:

(global-set-key (kbd "C-x C-j") 'dired-jump)
(global-set-key (kbd "C-x C-q") 'dired-toggle-read-only)
(global-set-key (kbd "M-s o") 'occur)
(global-set-key (kbd "M-s w") 'isearch-forward-word)
(global-set-key (kbd "C-M-%") 'query-replace-regexp)
(global-set-key (kbd "M-m") 'back-to-indentation)
(global-set-key (kbd "M-\\") 'delete-indentation)
(global-set-key (kbd "M-SPC") 'just-one-space)
(global-set-key (kbd "C-l") 'recenter-top-bottom)
(global-set-key (kbd "C-S-k") 'kill-line) ; Cambié M-0 C-k a C-S-k
(global-set-key (kbd "C-c C-c") 'org-ctrl-c-ctrl-c)
(global-set-key (kbd "C-c C-p") 'org-latex-preview)

;; Macros
(global-set-key (kbd "C-x (") 'kmacro-start-macro)
(global-set-key (kbd "C-x )") 'kmacro-end-macro)
(global-set-key (kbd "C-x e") 'kmacro-end-and-call-macro)
(global-set-key (kbd "C-c n") 'name-last-kbd-macro) ; Cambié M-x a C-c n
(global-set-key (kbd "C-c i") 'insert-kbd-macro) ; Cambié M-x a C-c i

;; Org-Mode TAB Header Insert
(defun config/org--insert-header-if-line-empty ()
  (when (or (bolp) (org-match-line "^[[:blank:]]+$"))
    (org-insert-heading)
    t))
(add-hook 'org-tab-after-check-for-cycling-hook
          'config/org--insert-header-if-line-empty)

;; Funciones personalizadas para borrar sin cortar al clipboard
(defun delete-region-no-kill (start end)
  "Delete the region without saving it to the kill-ring."
  (interactive "r")
  (delete-region start end))

;; Remapear borrar sin cortar
(global-set-key (kbd "C-c d") 'delete-region-no-kill)  ; Delete region without cutting

;; Additional remappings
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-t") 'helm-semantic-or-imenu) ; Asumiendo que se utiliza helm-semantic-or-imenu
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-(") 'insert-parentheses)
(global-set-key (kbd "M-[") 'insert-brackets)
(global-set-key (kbd "M-#") 'mode-line-other-buffer)
(global-set-key (kbd "M-j") 'join-line)

;; Remapear undo y redo
(global-set-key (kbd "C-/") 'undo)
(global-set-key (kbd "C-?") 'undo-tree-redo)

(provide 'init-keybindings)
;;; init-keybindings.el ends here
