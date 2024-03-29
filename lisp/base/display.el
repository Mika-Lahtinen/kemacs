(when *is-windows*
  (set-face-attribute 'default nil
                      :font "Cascadia Mono"
                      :height 110
                      :weight 'Regular)
  ;;    (setq locale-coding-system 'gb18030)
  ;;    (setq w32-unicode-filenames 'nil)
  ;;    (setq file-name-coding-system 'gb18030)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset (font-spec :family "微软雅黑" :size 14)))
  )

(when *is-linux*
  (set-face-attribute 'default nil
                      :font "Monospace"
                      :height 120
                      :weight 'Regular))

;; Color theme
(add-to-list 'custom-theme-load-path
             (concat user-emacs-directory
                     (convert-standard-filename "packages/color-theme-modern/")))
(load-theme 'gtk-ide t t)
(enable-theme 'gtk-ide)

;; Icons
(use-package nerd-icons
             :load-path "packages/nerd-icons.el")

(use-package nerd-icons-dired
             :load-path "packages/nerd-icons-dired"
             :after dired
             :hook
             (dired-mode . nerd-icons-dired-mode))

(use-package dired
             :hook
             (dired-mode . dired-hide-details-mode))

(use-package doom-modeline
             :load-path "packages/doom-modeline"
             :hook (after-init . doom-modeline-mode))

(setq-default truncate-lines nil)

(provide 'base/display)
