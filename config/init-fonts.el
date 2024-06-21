;;; init-fonts.el --- Font configurations -*- lexical-binding: t; -*-

;;; Commentary:

;;; Font configurations

;;; Code:

(defun set-default-font ()
  (set-face-attribute 'default nil
                      :family "IosevkaTerm Nerd Font"
                      :height 120
                      :weight 'medium)
  ;; Optionally, set other faces as well, if needed
  (set-face-attribute 'font-lock-comment-face nil
                      :family "IosevkaTerm Nerd Font"
                      :height 110
                      :weight 'normal
                      :slant 'italic)
  (set-face-attribute 'font-lock-string-face nil
                      :family "IosevkaTerm Nerd Font"
                      :height 110
                      :weight 'medium))

(set-default-font)

(provide 'init-fonts)
;;; init-fonts.el ends here
