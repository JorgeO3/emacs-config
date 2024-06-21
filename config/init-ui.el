;;; init-ui.el --- UI configurations. -*- lexical-binding: t; -*-

;;; Commentary:

;;; Configurations related to the Emacs user interface.

;;; Code:

(defun disable-bars ()
  "Disable menu bar, tool bar, and scroll bar."
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (horizontal-scroll-bar-mode -1))

(disable-bars)

(defun maximize-window ()
  "Maximize the current window."
  (interactive)
  (when (window-system)
    (set-frame-parameter nil 'fullscreen 'maximized)))

(add-hook 'window-setup-hook 'maximize-window)
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (with-selected-frame frame
              (maximize-window))))

(defun optimize-ui ()
  "Optimize UI settings for better performance."
  (setq redisplay-dont-pause t
        jit-lock-defer-time 0
        jit-lock-stealth-time 1
        inhibit-double-buffering t
        idle-update-delay 0.5
        font-lock-maximum-decoration t
        font-lock-maximum-size nil
        fast-but-imprecise-scrolling t
        scroll-margin 0
        scroll-conservatively 100000
        scroll-preserve-screen-position 1
        left-margin-width 0
        right-margin-width 0)
  (set-window-buffer nil (current-buffer)))

(optimize-ui)

(custom-set-faces
 '(line-number ((t (:foreground "#5c5e5e" :background "#1d1f21"))))
 '(line-number-current-line ((t (:foreground "#c5c8c6" :background "#1d1f21")))))

(provide 'init-ui)
;;; init-ui.el ends here
