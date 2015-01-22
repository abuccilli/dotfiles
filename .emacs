;;(normal-erase-is-backspace-mode 1)

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(case-fold-search t)
 '(normal-erase-is-backspace nil)  ; makes backspace work in emacs -nw
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock)))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
(defun uncomment-region (beg end)
  "Uncomment a region of text"
  (interactive "r")
  (comment-region beg end -1));

(global-set-key "\C-c;"      'comment-region)
(global-set-key "\C-c:"      'uncomment-region)
(require 'cmssw-mode "/uscms/home/abuccill/.emacs.d/cmssw-mode.el")
