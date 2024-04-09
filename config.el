;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Avi Caspe"
      user-mail-address "avi.caspe@gmail.com")

(setq doom-theme 'doom-one)
(setq doom-font (font-spec :family "Hack" :size 16))
(setq display-line-numbers-type 'relative)

(map! :leader "ou" #'undo-tree-visualize)

(after! which-key
  (setq which-key-idle-delay 0.1))

(after! lsp-ui
  (setq lsp-lens-enable nil)
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-show-with-cursor t)
  (setq lsp-ui-doc-position 'top-left-corner)
  (setq lsp-ui-doc-delay 0.1))

;; Haskell config
(setq haskell-process-show-debug-tips 'nil
      haskell-interactive-popup-errors 'nil)


;; IRC setup
(after! circe
  (set-irc-server! "irc.libera.chat"
    `(:tls t
      :port 6697
      :nick "iqubic"
      :sasl-username "iqubic"
      :sasl-password "eolinef2l"
      :channels ("#emacs" "#haskell" "#adventofcode" "#adventofcode-spoilers"))))
;; TODO Add circe-post-send hook to run evil-force-normal-state

;; Org Mode stuff
(require 'ob-lob)
(org-babel-lob-ingest "~/puzzles/huntFunctions.org")

(use-package! org-appear
  :after org
  :hook (org-mode . org-appear-mode)
  :config (setq org-hide-emphasis-markers t
      org-appear-autoemphasis t
      org-appear-autosubmarkers 'nil
      org-appear-autolinks 'nil))

;; doom, no org meta data pls. kthx.
(set-file-template! 'org-mode :ignore t)

(setq org-startup-folded 'fold)
(setq org-directory "~/org/")
(after! company
  (add-to-list 'company-global-modes 'org-mode t))

;; Values for TRAMP
(setq remote-file-name-inhibit-auto-save t
      remote-file-name-inhibit-auto-save-visited t)
