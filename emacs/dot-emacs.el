;; dot-emacs file
;; Last modified on Jun 10, 2015
;; kgaipal@gmail.com

;; ============================= Plugins/Files ==============================
;; Load all essential plugins/files

;; Moves the buffer from one side to other
;; [http://stackoverflow.com/questions/1774832/how-to-swap-the-buffers-in-2-windows-emacs]
(load-file "~/.emacs.d/buffer-move.el")
(require 'buffer-move)

;; GNU Coding style
(load-file "~/.emacs.d/gnu-coding-style.el")

;; GNUS notification conf
(load-file "~/.emacs.d/gnus-notify.el")

;; Highlight current word under the cursor
;; [http://xahlee.blogspot.com/2010/05/emacs-isearch-of-current-work.html]
(load-file "~/.emacs.d/highlight-symbol.el")
(require 'highlight-symbol)

;; xcscope for searching in large code trees
;; [https://github.com/dkogan/xcscope.el]
(load-file "~/.emacs.d/xcscope.el")
(require 'xcscope)
(cscope-setup)

;; Some helpful functions which are not defined in this file because they are too big
(load-file "~/.emacs.d/util-functions.el")

;; Customization in mode-line format
(load-file "~/.emacs.d/mode-line-customization.el")

;; Load these files last, as they have my custom code/shortcuts which may be
;; overridden from above packages if this is loaded last
(load-file "~/.emacs.d/keyboard-shortcuts.el")

;; ===================== Automatically generated by emacs 'Custom' ===========================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-name-width 35)
 '(auto-save-default t)
 '(desktop-clear-preserve-buffers
   (quote
    ("\\*scratch\\*" "\\*Messages\\*" "\\*server\\*" "\\*tramp/.+\\*" "\\*Warnings\\*" "\\*Group\\*" "\\.newsrc-dribble" "\\*Summary INBOX\\*" "\\*term\\:[[:alnum:]]+\\*" "&bitlbee" "erc\\:[[:alnum:]]+")))
 '(desktop-save-mode t)
 '(diff-command "ediff")
 '(dired-listing-switches "-pgGh")
 '(ediff-make-buffers-readonly-at-startup t)
 '(erc-notifications-mode t)
 '(erc-server "localhost")
 '(eshell-prompt-function
   (lambda nil
     (concat "["
	     (file-name-nondirectory
	      (eshell/pwd))
	     (if
		 (=
		  (user-uid)
		  0)
		 " # " "]$ "))))
 '(eshell-visual-subcommands (quote (("git" "diff" "show" "log"))))
 '(fill-column 80)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-subword-mode t)
 '(gnus-use-full-window nil)
 '(grep-command "grep -nHsI ")
 '(grep-find-ignored-directories (quote (".svn" ".git" ".hg" ".bzr" ".output")))
 '(grep-template "grep <X> <C> <n> <H> <e> <R> <F>")
 '(hide-ifdef-initially t)
 '(hide-ifdef-shadow t)
 '(highlight-symbol-colors (quote ("yellow")))
 '(ido-enable-flex-matching t)
 '(ido-ignore-buffers (quote ("\\` " "\\*Messages\\*")))
 '(ido-mode (quote buffer) nil (ido))
 '(indent-tabs-mode t)
 '(initial-buffer-choice nil)
 '(kill-whole-line t)
 '(make-backup-files nil)
 '(mode-line-in-non-selected-windows t)
 '(read-file-name-completion-ignore-case t)
 '(recentf-mode 1)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(tab-width 8)
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory "/tmp")
 '(transient-mark-mode t)
 '(vc-directory-exclusion-list
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".output")))
 '(which-func-format (quote ("{" which-func-current "}"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "black" :foreground "white"))))
 '(comint-highlight-prompt ((t (:foreground "brightblue"))))
 '(compilation-line-number ((t (:inherit font-lock-variable-name-face :foreground "brightblue"))))
 '(custom-group-tag ((((min-colors 88) (class color) (background light)) (:inherit variable-pitch :background "white" :foreground "darkblue" :weight bold :height 1.2))))
 '(custom-variable-tag ((((min-colors 88) (class color) (background light)) (:foreground "brightblue" :weight bold))))
 '(diff-added ((t (:foreground "green"))))
 '(diff-file-header ((((class color) (min-colors 88) (background light)) (:weight bold))))
 '(diff-header ((t (:background "dim gray"))))
 '(diff-removed ((t (:foreground "pink"))))
 '(dired-symlink ((t (:inherit font-lock-keyword-face :foreground "cyan"))))
 '(ediff-current-diff-A ((((class color) (min-colors 16)) (:background "lightpink" :foreground "black"))))
 '(ediff-current-diff-B ((((class color) (min-colors 16)) (:background "lightgreen" :foreground "black"))))
 '(ediff-even-diff-A ((((class color) (min-colors 16)) (:background "grey25" :foreground "white"))))
 '(ediff-even-diff-B ((((class color) (min-colors 16)) (:background "grey25" :foreground "white"))))
 '(ediff-odd-diff-A ((((class color) (min-colors 16)) (:background "grey55" :foreground "black"))))
 '(ediff-odd-diff-B ((((class color) (min-colors 16)) (:background "grey55" :foreground "black"))))
 '(eshell-prompt ((t (:foreground "brightblue" :weight normal))))
 '(font-lock-builtin-face ((((class color) (min-colors 88)) (:foreground "deep sky blue"))))
 '(font-lock-comment-face ((t (:foreground "dim gray" :slant italic))))
 '(font-lock-function-name-face ((t (:inherit font-lock-keyword-face :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "royal blue"))))
 '(font-lock-string-face ((t (:foreground "lawn green"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) nil)))
 '(gnus-group-mail-3-empty ((t (:foreground "dark magenta" :weight bold))))
 '(hide-ifdef-shadow ((t (:inherit shadow :background "color-233"))))
 '(hl-line ((t (:foreground "color-28" :weight extra-bold))))
 '(isearch ((t (:background "yellow" :foreground "black" :weight normal))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "color-160"))))
 '(lazy-highlight ((t (:inherit isearch :foreground "yellow4"))))
 '(link ((t (:foreground "cyan" :underline "deep sky blue"))))
 '(linum ((t (:inherit font-lock-comment-face :background "black" :weight normal))))
 '(log-view-message ((((class color)) (:background "grey50"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1" :foreground "black"))))
 '(minibuffer-prompt ((t (:foreground "royal blue"))))
 '(region ((t (:background "gray23"))))
 '(which-func ((((class color) (min-colors 88) (background light)) nil))))

;; =============================== Manual changes ===========================================

;; Force single instance of emacs running on the system
(server-start)

;; Set the tab width
;; [http://www.chemie.fu-berlin.de/chemnet/use/info/cc-mode/cc-mode_6.html#SEC17]
(setq-default default-tab-width 8)
(setq-default c-basic-indent 0)
(setq-default c-basic-offset 8)
(c-set-offset 'substatement-open 0)
(setq c-default-style "linux" c-basic-offset 8)

;; Disable some commands
(put 'kbd-macro-query 'disabled t)	;conflicts with key sequence "C-x q"
(put 'compose-mail 'disabled t)		;conflicts with key sequence "C-l"

;; Shorten the required response in mode-buffer from yes/no to y/n
;; http://www.youtube.com/watch?v=a-jRN_ba41w
(fset 'yes-or-no-p 'y-or-n-p)

;; Winners mode to preserve split windows
;; http://ergoemacs.org/emacs/emacs_winner_mode.html
(winner-mode 1)

;; IBuffer module provides better switching
;; http://www.emacswiki.org/emacs/IbufferMode
(require 'ibuf-ext)
(add-to-list 'ibuffer-never-show-predicates "^\\*") ;hiding the unnecessary buffers

;; set the desktop-path to current directory only
(setq desktop-path '("."))

;; custom ibuffer format
(setq ibuffer-formats '((mark modified read-only " "
			      (name 50 100 :left :elide) " "
			      (file-or-process-directory))))

;; When we move forward word-by-word ... also stop at ';'
;; Helpfull stop running past to next line in c-mode/c++-mode
(modify-syntax-entry ?$ "w")

;; Highlight postgres keywords too when in SQL mode
(add-to-list 'auto-mode-alist '("[.]psql$" . sql-mode))
(add-hook 'sql-mode-hook 'sql-highlight-postgres-keywords)

;; fixing wierd control characters in shell mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; hiding some unwanted extensions in dired mode
;; http://www.emacswiki.org/emacs/DiredOmitMode
(require 'dired-x)
(setq-default dired-omit-files-p t)	; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

;; Setting environment variable for shell commands to work from emacs prompt
(setenv "PATH"
	(concat	(getenv "PATH")
		(concat	":" (getenv "HOME") "/.local/bin")))

;; setup files ending in “.scons” to open in python-mode
(add-to-list 'auto-mode-alist '("\.scons" . python-mode))
(add-to-list 'auto-mode-alist '("SConstruct" . python-mode))
