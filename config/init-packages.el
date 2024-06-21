;;; init-packages.el --- Package configurations -*- lexical-binding: t; -*-

;;; Commentary:

;;; Package configurations

;;; Code:

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

;; Start Emacs server
(defun start-emacs-server ()
  (require 'server)
  (unless (server-running-p)
    (server-start)))

(start-emacs-server)

(provide 'init-packages)
;;; init-packages.el ends here
