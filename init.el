;;; init.el -*- lexical-binding: t; -*-

(doom!
 :app
 irc

 :checkers
 syntax

 :completion
 (company +tng)
 (vertico +icons)

 :editor
 (evil +everywhere)
 file-templates
 fold
 snippets

 :emacs
 (dired +icons +ranger)
 electric
 (ibuffer +icons)
 (undo +tree)

 :lang
 emacs-lisp
 (haskell +lsp +tree-sitter)
 nix
 org
 (racket +lsp +xp)
 sh

 :tools
 (debugger +lsp)
 direnv
 (eval +overlay)
 lookup
 (lsp +peek)
 magit
 tree-sitter

 :ui
 doom
 doom-dashboard
 (emoji +github +unicode)
 hl-todo
 modeline
 ophints
 (popup +defaults)
 unicode

 :config
 (default +bindings +smartparens))
