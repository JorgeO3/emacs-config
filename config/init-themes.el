;;; init-themes.el --- Theme configuration -*- lexical-binding: t; -*-

;;; Commentary:

;;; Theme configuration

;;; Code:

(use-package doom-themes
  :demand t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (doom-themes-visual-bell-config))

(defun apply-doom-theme ()
  "Apply the Doom theme."
  (load-theme 'doom-tomorrow-night t))

;; Apply the theme when Emacs starts
(add-hook 'after-init-hook 'apply-doom-theme)

;; Apply the theme when a new frame is created (for emacsclient)
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (with-selected-frame frame
              (apply-doom-theme))))

(provide 'init-themes)
;;; init-themes.el ends here
