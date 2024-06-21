;;; init-project.el --- Project management configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Configurations for project management using Projectile.

;;; Code:
;; Define the custom function to switch project and open Dired
(defun my/projectile-switch-project-and-dired ()
  "Switch to a Projectile project and open Dired in the project root."
  (interactive)
  (let ((project (projectile-completing-read
                  "Switch to project: "
                  (projectile-relevant-known-projects))))
    (let ((default-directory project))
      (dired project))))

;; Define the custom function to open Magit in the selected projectile project
(defun my/magit-project-status ()
  "Open `magit-status` in the selected projectile project."
  (interactive)
  (let ((project (projectile-completing-read
                  "Open magit in project: "
                  (projectile-relevant-known-projects))))
    (magit-status project)))

;; Define the custom function to open Dired in the selected projectile project
(defun my/projectile-dired ()
  "Open `dired` in the selected projectile project."
  (interactive)
  (let ((project (projectile-completing-read
                  "Open dired in project: "
                  (projectile-relevant-known-projects))))
    (dired project)))

(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/projects/" "~/Documents/projects/"))
  (setq projectile-completion-system 'ivy)
  :config
  (projectile-mode +1)
  :bind (:map projectile-command-map
              ("C-d" . my/projectile-switch-project-and-dired))
  :bind-keymap
  ("C-c p" . projectile-command-map))

(use-package counsel-projectile
  :ensure t
  :after (projectile counsel)
  :config
  (counsel-projectile-mode)
  :bind (:map projectile-command-map
              ("C-f" . counsel-projectile-find-file)
              ("C-p" . counsel-projectile-switch-project)
              ("C-m" . my/magit-project-status)
              ("C-d" . my/projectile-dired)))

(provide 'init-project)
;;; init-project.el ends here
