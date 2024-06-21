;;; init-core.el --- Core configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Core configurations for Emacs.

;;; Code:

(defun start-emacs-server ()
  "Start the Emacs server."
  (require 'server)
  (unless (server-running-p)
    (server-start)))

(start-emacs-server)

(provide 'init-core)
;;; init-core.el ends here
