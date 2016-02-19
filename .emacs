(custom-set-variables
 ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
 ;; Your init file should contain only one such instance.
 '(case-fold-search t)
 '(normal-erase-is-backspace nil)  ; makes backspace work in emacs -nw
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-visual-line-mode nil)
 '(global-font-lock-mode t nil (font-lock))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
 ;; Your init file should contain only one such instance.
 )

;;(require 'cmssw-mode "/uscms/home/abuccill/.emacs.d/cmssw-mode.el")

;; Correct endoding behavior for OS X Terminal.app
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Preferences
(setq kill-whole-line t)    ; killing line also deletes \n
(setq column-number-mode t) ; put column number in display
;(setq display-time-mode t)  ; display current time

;; Key bindings
(global-set-key (kbd "C-c ;") 'comment-region)
(global-set-key (kbd "C-c /") 'uncomment-region)
;(global-set-key (kbd "TAB") 'self-insert-command)

;; .h uses c++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Indent
(defun my-c++-mode-hook ()
  (local-set-key (kbd "RET") 'newline-and-indent) 
  (c-set-style "stroustrup") ; Stroustrup's style
  (setq c-basic-offset 2) ; 2 spaces for indentations
  (c-set-offset 'substatement-open 0)) ; No indent for open bracket
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Org
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-startup-indented t)
(setq org-startup-truncated nil)

;; Deft
(require 'deft "~/.emacs.d/deft.el")
(setq deft-extensions '("txt" "tex" "org"))
(setq deft-directory "~/Dropbox/notes")
(setq deft-use-filter-string-for-filename t)
;(setq deft-text-mode 'org-mode)
(setq deft-use-filename-as-title t)
(global-set-key [f8] 'deft)
;(add-hook 'deft-mode-hook (lambda () (visual-line-mode 0)))

;; Complete braces, etc. after opened
;(require 'autopair)

;; Move backup and autosave files to .emacs.d
(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
