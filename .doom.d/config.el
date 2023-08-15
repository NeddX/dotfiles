;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq! user-full-name "John Doe"
      user-mail-address "john@doe.com")

;;
;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq! doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq! doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq! display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq! org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq! x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Doom/Emacs (Global)
;(setq! doom-debug-mode t)
(setq! fancy-splash-image (concat doom-user-dir "assets/splash.png"))
;(setq! doom-font (font-spec :family "Hack Nerd Font Mono" :size 16))
(setq! doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 16))
(setq! scroll-margin 8)
(setq! inhibit-compacting-font-caches t)
(setq! scroll-conservatively 101)
;;(after! evil
;;  (define-key evil-insert-state-map (kbd "TAB") (lambda () (interactive) (insert "\t"))))
(setq-default tab-width 4)
(setq-default evil-shift-width 4)
(setq-default evil-indent-convert-tabs nil)
(setq-default indent-tabs-mode nil)
(setq! undo-limit 80000000)
(setq! confirm-kill-emacs nil)
(after! doom-themes
  (setq! doom-themes-enable-bold t
        doom-themes-enable-italic t))
(setq! all-the-icons-completion-mode t)
(setq! gc-cons-threshold (* 300 1024 1024)) ; Set the GC threshold to 300 MB (becasue garbage collected languages first need to collect themselves out of this world)
(setq! evil-want-fine-undo t)
(setq! display-line-numbers-type 't)

;(lsp-mode 0)
;(company-mode 0)
;(flycheck-mode 0)

;; Consider the following (WARNING!: SLOWEST MODULES)
;; :ui indent-guides
;; :ui ligatures
;; :ui

; Set the current theme
;; Cool themes
;;(setq! doom-theme 'doom-one)
;;(setq! doom-theme 'doom-tomorrow-night)
;;(setq! doom-theme 'doom-tokyo-night)
;;(setq! doom-theme 'atom-one-dark)
(setq! doom-theme 'doom-meltbus)

; Custom syntax highlighting for doom-meltbus
(if (equal doom-theme 'doom-meltbus)
    (progn
      (custom-set-faces!
        '(font-lock-keyword-face :foreground "#eb2672")
        '(font-lock-function-name-face :foreground "#60d7db")
        '(font-lock-type-face :foreground "#78c241")
        '(font-lock-operator-face :forceground "#bf984a")
        '(font-lock-constant-face :foreground "#57d0e9")
        '(show-paren-match-face :foreground "#78c241")
        '(font-lock-string-face :foreground "#bf984a")
        '(font-lock-constant-face :foreground "#99609c")
        '(font-lock-namespace-face :foreground "#858585")
        '(font-lock-comment-face :slant italic)
        '(font-lock-variable-name-face :foreground "#bc9334")
        )
      )
  )

;; Nyan mode
(use-package! nyan-mode
  :ensure t ; most definetly ensure the cat, (-50% chance of smashing your keyboard when debugging)
  :init
  (nyan-mode)
  :config
  (setq! nyan-animate-nyancat t
         nyan-wavy-trail t))

;; Modeline (the status bar thing)
(after! doom-modeline
  (setq doom-modeline-enable-word-count t
        doom-modeline-persp-name t
        doom-modeline-persp-icon t
        doom-modeline-major-mode-icon t))

;; Doom theme
(after! doom-themes
  (setq! doom-themes-enable-bold t
        doom-themes-enable-italic t))
;; Info colors
(use-package! info-colors
  :commands (info-colors-fontify-node))

(add-hook 'Info-selection-hook
          'info-colors-fontify-node)

;;class
;; Syntax highlighting if doom-meltbus

;; Yasnippet
(use-package! yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

;; Multiedit
(use-package! evil-multiedit
  :ensure t
  :config
  (evil-multiedit-default-keybinds))

;; Centaur
  :ensure t
(use-package! centaur-tabs
  :init
  (add-hook 'server-after-make-frame-hook 'centaur-tabs-mode)
  (add-hook! 'doom-after-init-hook #'centaur-tabs-mode)
  :config
  (global-set-key (kbd "<C-S-left>")  'centaur-tabs-backward)
  (global-set-key (kbd "<C-S-right>") 'centaur-tabs-forward)
  (global-set-key (kbd "C-S-n") 'centaur-tabs--create-new-empty-buffer)
  (global-set-key (kbd "C-S-w") 'centaur-tabs--kill-this-buffer-dont-ask)
  (setq!
        centaur-tabs-cycle-scope 'tabs
        centaur-tabs-style "alternate"
        centaur-tabs-height 32
        centaur-tabs-set-icons t
        centaur-tabs-gray-out-icons 'buffer
        centaur-tabs-set-bar 'left)
  (centaur-tabs-group-by-projectile-project)
  (centaur-tabs-headline-match)
  (centaur-tabs-mode t)
)

(map! :leader
      :desc "Goto line"
      "f g" #'goto-line)
(map! :map go-mode-map
      :localleader
      "gd" #'lsp-find-definition)
(map!
 :leader
 :desc "Discover projectile projects in current directory."
 "p D" #'projectile-discover-projects-in-directory)
(map!
 :leader
 :desc "Install a package from MELPA"
 "p i" #'package-install)
(map!
 :leader
 :desc "Toggle vterm"
 "o o" #'+vterm/toggle)
(map!
 :leader
 :desc "New multi-vterm instance"
 "o n" #'multi-vterm)
(map!
 :leader
 :desc "Toggle next multi-vterm instance"
 "o t" #'multi-vterm-next)
(map!
 :leader
 :desc "Restart LSP workspace"
 "c R" #'lsp-workspace-restart)
(map!
 :leader
 :desc "Start Dap Debug session"
 "d S" (lambda ()
         (interactive)
         (dap-mode 1)
         ;(setq! dap-auto-configure-features nil)
         (map! :map dap-mode-map
               "<f5>" #'dap-continue
               "<f10>" #'dap-next
               "<f11>" #'dap-step-in
               "<S-f11>" #'dap-step-out)
         (call-interactively 'dap-debug-last)
        )
 )
(map!
 :leader
 :desc "Disable Expensive plugins such as Lsp, flycheck, elcord and company cause dogshit laptop :)"
 "l D" (lambda ()
         (interactive)
         (dap-mode 0)
         (lsp-mode 0)
         (flycheck-mode 0)
         (company-mode 0)
         (elcord-mode 0)
         )
 )
(map!
 :leader
 :desc "Stop Dap Debug session"
 "d k" (lambda ()
         (interactive)
         (dap-mode 0)
         (call-interactively 'dap-disconnect)
        )
)

  ;(setq dap-ui-buffer-configurations
  ;      '((,"*DAP Debug Output*"
  ;         (side . bottom)
  ;         (slot . 1)
  ;         (window-width . 0.20)
  ;         (window-height . 0.20))
  ;        (,"*DAP Locals*"
  ;         (side . right)
  ;         (slot . 1)
  ;         (window-width . 0.20)
  ;         (window-height . 0.50))
  ;        (,"*DAP Call Stack*"
  ;         (side . right)
  ;         (slot . 2)
  ;         (window-width . 0.20)
  ;         (window-height . 0.50)))))

(map!
 :leader
 :desc "Add breakpoint at the current line"
 "d b" #'dap-breakpoint-add)
(map!;
 :leader
 :desc "Remove breakpoint at the current line"
 "d r" #'dap-breakpoint-delete)
(map!
 :leader
 :desc "Toggle breakpoint at the current line"
 "d t" #'dap-breakpoint-toggle)
(map!
 :leader
 :desc "Delete all breakpoints"
 "d R" #'dap-breakpoint-delete-all)

;(use-package! dap-ui
;  :ensure t
;  :config
;  ;; Set the layout for the DAP-Debug windows
;  (setq! dap-ui-buffer-configurations
;        '((sidebar . ((side . right) (slot . 1) (window-width . 0.35)))
;          (locals . ((side . right) (slot . 2) (window-width . 0.35)))
;          (sessions . ((side . left) (slot . 1) (window-width . 0.35)))
;          (breakpoints . ((side . left) (slot . 2) (window-width . 0.35)))
;          (debug . ((side . bottom) (slot . 3) (window-height . 0.4) (window-width . 0.35)))))

;; Treesitter
(use-package! tree-sitter
  :ensure t
  :hook (prog-mode . turn-on-tree-sitter-mode)
  :hook (tree-sitter-after-on . tree-sitter-hl-mode)
  :config
  (require 'tree-sitter-langs)
  (setq! tree-sitter-debug-jump-buttons t
        tree-sitter-debug-highlight-jump-region t))

;; Dired
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; Treemacs
(use-package! treemacs
  :ensure t
  :init
  (setq! doom-themes-treemacs-theme "doom-colors"))

; Dap
(use-package! dap-mode
  :ensure t
  :init
  (dap-mode 0)
  :config
  (require 'dap-cpptools)
  (require 'dap-lldb)

  :custom
  (dap-auto-configure-features '(locals expressions))
  ;(dap-auto-configure-features nil)

  :config
  (dap-ui-mode 1)
  (setq! dap-gdb-lldb-debug-window nil)
)

;; Elcord
(use-package! elcord
  :init
  (elcord-mode 0)) ; no discord for now.

(use-package! fast-scroll
  :ensure t
  :init
  (add-hook 'fast-scroll-start-hook (lambda () (flycheck-mode -1)))
  (add-hook 'fast-scroll-end-hook (lambda () (flycheck-mode 1)))
  :config
  (fast-scroll-config)
  (fast-scroll-mode 1))

;; Lsp
(use-package! lsp-ui
  :ensure t
  :init
  (setq! lsp-ui-doc-enable t
        lsp-ui-sideline-enable t))
(use-package! lsp-mode
  :ensure t
  :init
  (setq! lsp-enable-symbol-highlighting t
        lsp-lens-enable t
        lsp-headerline-breadcrumb-enable t
        lsp-modeline-code-actions-enable t
        lsp-diagnostics-provider :flycheck
        lsp-completion-show-detail t
        lsp-completion-show-kind t))

;; Company(use-package! company
(add-hook 'after-init-hook 'global-company-mode)
;; from modules/completion/company/config.el
(use-package! company
  :commands (company-mode global-company-mode company-complete
                          company-complete-common company-manual-begin company-grab-line)
  :config
  (setq! company-idle-delay 1.5
        company-tooltip-limit 10
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-minimum-prefix-length 1))
