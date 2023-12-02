(use-package evil
    :load-path "packages/evil"
    :init
    (setq evil-undo-system 'undo-tree)
    (setq evil-want-keybinding nil)
    (setq evil-want-integration t)
    (require 'evil)
    :config
    (evil-mode 1))

(use-package evil-collection
    :load-path "packages/evil-collection"
    :after evil
    :config
    (evil-collection-init))

(use-package evil-visualstar
    :load-path "packages/evil-visualstar"
    :after evil
    :config
    (global-evil-visualstar-mode 1))

(use-package evil-surround
    :load-path "packages/evil-surround"
    :after evil
    :config
    (global-evil-surround-mode 1))

(provide 'tools/evil)
