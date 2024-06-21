;;; init-packages.el --- Package management configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Package management configurations using package.el and use-package.

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

(provide 'init-packages)
;;; init-packages.el ends here
