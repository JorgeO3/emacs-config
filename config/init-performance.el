;;; init-performance.el --- Performance optimization. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Performance optimization settings for Emacs.

;;; Code:

(defun optimize-gc ()
  "Optimize garbage collection settings."
  (setq gc-cons-threshold (* 200 1000 1000))
  (setq gc-cons-percentage 0.1)
  (setq gc-cons-threshold most-positive-fixnum)
  (add-hook 'emacs-startup-hook
            (lambda ()
              (setq gc-cons-threshold (* 200 1000 1000)))))

(optimize-gc)

(use-package gcmh
  :demand t
  :config
  (gcmh-mode 1))

(defun tune-performance ()
  "Tune performance-related settings."
  (setq read-process-output-max (* 4 1024 1024))
  (setq process-adaptive-read-buffering nil))

(tune-performance)

(provide 'init-performance)
;;; init-performance.el ends here
