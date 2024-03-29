;; Common used packages by others, the following configuration wouldn't
;; be moved until I'm sure where could be suitable to move.

(use-package restart-emacs
             :load-path "packages/restart-emacs"
             :init
             (require 'restart-emacs))

(use-package exec-path-from-shell
             :load-path "packages/exec-path-from-shell"
             :when (or (memq window-system '(mac ns x))
                       (unless *is-windows*
                         (daemonp)))
             :init
             (require 'exec-path-from-shell)
             (exec-path-from-shell-initialize))

(use-package inheritenv
             :load-path "packages/inheritenv")

;; great for programmers
(use-package format-all
             :load-path "packages/format-all"
             :diminish
             ;; 开启保存时自动格式化
             :hook (prog-mode . format-all-mode)
             ;; 绑定一个手动格式化的快捷键
             :bind ("C-c f" . #'format-all-region-or-buffer)
             :config
             (setq-default format-all-formatters '(
                                                   ("C" (clang-format "--style=microsoft"))
                                                   ("C++" (clang-format "--style=microsoft"))
                                                   )))

(use-package iedit
             :load-path "packages/iedit")

(use-package undo-tree
             :load-path "packages/undo-tree"
             :after queue
             :init
             (require 'undo-tree)
             (global-undo-tree-mode)
             :custom
             (undo-tree-auto-save-history nil))

(use-package frame-local
             :load-path "packages/frame-local")

(use-package amx
             :load-path "packages/amx"
             :init
             (require 'amx)
             (amx-mode))

(use-package puni
             :load-path "packages/puni"
             :diminish
             :hook (prog-mode . puni-mode))

(use-package wgrep
             :load-path "packages/wgrep"
             :init
             (require 'wgrep))

(use-package rg
             :load-path "packages/rg.el"
             :init
             (require 'rg)
             (rg-enable-default-bindings))

(provide 'tools/common)
