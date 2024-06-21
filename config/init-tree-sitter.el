;;; init-tree-sitter.el --- Tree-sitter configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Configurations for Tree-sitter.

;;; Code:

(use-package tree-sitter
  :defer t
  :hook ((python-mode . tree-sitter-mode)
         (python-mode . tree-sitter-hl-mode)
         (rust-mode . tree-sitter-mode)
         (rust-mode . tree-sitter-hl-mode)
         (go-mode . tree-sitter-mode)
         (go-mode . tree-sitter-hl-mode)
         (c-mode . tree-sitter-mode)
         (c-mode . tree-sitter-hl-mode)
         (c++-mode . tree-sitter-mode)
         (c++-mode . tree-sitter-hl-mode)))

(use-package tree-sitter-langs
  :defer t)

(provide 'init-tree-sitter)
;;; init-tree-sitter.el ends here
