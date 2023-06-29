;; (use-package markdown-mode
;;     :load-path "plugin/markdown-mode"
;;     :ensure t
;;     :mode ("README\\.md\\'" . gfm-mode)
;;     :init (setq markdown-command "pandoc")
;;     :bind (:map markdown-mode-map
;;             ("C-c C-e" . markdown-do)))
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(with-eval-after-load 'markdown-mode
  (define-key markdown-mode-map (kbd "C-c C-e") #'markdown-do))
  
(provide 'lang/markdown)