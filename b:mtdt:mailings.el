;;; b:mtdt:mailings.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:mailings.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/panels/blee-core/mail/mailings/mtdt-mailing/_nodeBase_/fullUsagePanel-en.org][MTDT-Mailing Panel]] |+
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO improvement comes here.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/workbench :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(setq debug t)][debug-on-err]]  [[elisp:(setq  debug nil)][dont debug-on-err]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'f)
(require 'loop)
(require 'message)
(require 'mailing-from-base)
(require 'msend-lib)
(require 'org-msg)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:b:mtdt:mailings" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:b:mtdt:mailings>> ~nil~ --  -- Selected and effective composeramework as customizable choices.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:b:mtdt:mailings nil
;;;#+END:
" #+begin_org
** DocStr: Blee Mailings Library. Used by b:b:mtdt:distr.
#+end_org "
  :group 'blee
  :prefix "b:b:mtdt:mailings:"
  :link '(file-link "/bisos/panels/blee-core/mail/mailings/mtdt-mailing/_nodeBase_/fullUsagePanel-en.org")
  )


(defvar b:mtdt:reply:templates:base (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply")
  " #+begin_org
** DocStr: Basedir of where LaTeX templates are.
#+end_org "
  )

(defvar b:mtdt:reply:templates:leftToRight
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply/ltr-basicLaTeX")
  "Basedir of where leftToRight LaTeX languages templates are.")

(defvar b:mtdt:reply:templates:rightToLeft
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply/rtl-basicLaTeX")
  "Basedir of where leftToRight LaTeX languages templates are.")

(defvar b:mtdt:compose:ephemera:base "/bisos/tmp"
  "Basedir of where ephemera compositions go.")

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Message-mode Configurations" :extraInfo "message-max-buffers, message hooks, "
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Message-mode Configurations_: |]]  message-max-buffers,   [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(setq message-max-buffers nil)  ;; If this variable is nil, no old message buffers will ever be killed.
(setq message-send-rename-function 'ignore)

;; (message-add-action `(display-buffer (switch-to-buffer ,(b:email|latest-unsent-mail-buf))) 'send)
;; (add-hook 'message-send-actions 'b:email|afterSendActionHook)

;; (add-hook 'message-send-hook 'b:email|afterSendActionHook)
(add-hook 'message-sent-hook 'b:email|afterSendActionHook)
;;


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:email|afterSendActionHook" :advice () :comment "~After Send HOOK~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:email|afterSendActionHook>>  -- ~After Send HOOK~ -- Switch buffer to sent buffer  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:email|afterSendActionHook (
;;;#+END:
                               )
  " #+begin_org
** DocStr: After sending, switch to sent buffer. Meant to be used with message-add-action,  now with message-sent-hook.
As of June 2024, I could not get it to work with message-send-actions.
So, here is what I have,
- (setq message-send-rename-function 'ignore)
- Use message-sent-hook with  b:email|afterSendActionHook instead of message-add-action
- (b:email|latest-unsent-mail-buf) instead of b:email|latest-sent-mail-buf
- Then we rename with the original (message-default-send-rename-function)
- Use Cc-Cs instead of Cc-Cc
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         ($latestSentBuf)
	 )
    (setq $latestSentBuf (b:email|latest-unsent-mail-buf))
    (b:trace$msg $latestSentBuf)
    (if-when $latestSentBuf
      (display-buffer (switch-to-buffer $latestSentBuf))
      (message-default-send-rename-function)
      )
    (else-unless $latestSentBuf
      (b|warning (b|fmt$ "Missing  Sent Buffer ") :here $inHere)
      )
    $latestSentBuf
    ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email|afterSendActionHook)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Composition Framework" :extraInfo "basic, orgMsg, latex, html, ofSelMailing"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Composition Framework_: |]]  basic, orgMsg, latex, html, ofSelMailing  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:mtdt:compose+framework" :defValue "'b:mtdt:compose+framework::orgMsg" :comment "/MENU/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose+framework>> ~'b:mtdt:compose+framework::orgMsg~ -- /MENU/ -- Selected and effective compose framework as customizable choices.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:mtdt:compose+framework 'b:mtdt:compose+framework::orgMsg
;;;#+END:
    " #+begin_org
** DocStr: Selected and effective compose framework as customizable choices.
#+end_org "
	:group 'b:b:mtdt:mailings
	:type '(choice
	        (const :tag "Basic" b:mtdt:compose+framework::basic "Basic Plain Text Mail Composition" )
		(const :tag "OrgMsg" b:mtdt:compose+framework::orgMsg "OrgMsg Mail Composition")
		(const :tag "LaTeX" b:mtdt:compose+framework::latex "External LaTeX Mail Composition")
		(const :tag "HTML" b:mtdt:compose+framework::html "External HTML Mail Composition")
		(const :tag "ofSelMailing" b:mtdt:compose+framework::ofSelMailing "Based on Selected Mailing Framework of Mua")
                ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose+framework|actuate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose+framework|actuate>>  --  -- Based on <framework, set things up for composition in that framework.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose+framework|actuate (
;;;#+END:
                                       <framework
                                       )
  " #+begin_org
** DocStr: Based on <framework, set things up for composition in that framework.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
	 )
    (b:var:custom:choices|set 'b:mtdt:compose+framework <framework)
    (cond
     ((eq <framework  'b:mtdt:compose+framework::basic)
      (when org-msg-mode
        (org-msg-mode -1)))
     ((eq <framework  'b:mtdt:compose+framework::orgMsg)
      (when (not org-msg-mode)
        (org-msg-mode)))
     ((eq <framework  'b:mtdt:compose+framework::latex)
      (when org-msg-mode
        (org-msg-mode -1)))
     ((eq <framework  'b:mtdt:compose+framework::html)
      (when org-msg-mode
        (org-msg-mode -1)))
     ((eq <framework  'b:mtdt:compose+framework::ofSelMailing)
      (when org-msg-mode
        (org-msg-mode -1)))
     (t
      (setq b:mtdt:compose+framework nil)
      (error "Bad input"))
     )
    b:mtdt:compose+framework))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose+framework|actuate 'b:mtdt:compose+framework::basic)
#+END_SRC

#+RESULTS:
: b:mtdt:compose+framework::basic

" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing Purpose" :extraInfo "Dist, Template, Mua, Any"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing Purpose_: |]]  Dist, Template, Mua, Any  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:mtdt:mailing+purpose" :defValue "'b:mtdt:mailing+purpose::Mailing" :comment ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailing+purpose>> ~'b:mtdt:mailing+purpose::Mailing~ --  -- Selected and effective compose framework as customizable choices.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:mtdt:mailing+purpose 'b:mtdt:mailing+purpose::Mailing
;;;#+END:
    " #+begin_org
** DocStr: Default purpose. Associated with X-MailingPurpose
#+end_org "
	:group 'b:b:mtdt:mailings
	:type '(choice
	        (const :tag "m" b:mtdt:mailing+purpose::Mailing  "Distribution: No recipients, pre-made Native or External content")
		(const :tag "t" b:mtdt:mailing+purpose::Template  "Template: Recipients, Always External content.")
		(const :tag "r" b:mtdt:mailing+purpose::Response  "Response: (reply, forward) is through MUA/Gnus.")
		(const :tag "a" b:mtdt:mailing+purpose::Any "Any: General purpose. For list preparation gets added to all of above.")
                ))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailing:purpose|actuate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailing:purpose|actuate>>  --  -- Based on specified <purpose, set b:mtdt:mailing+purpose. Defaults to b:mtdt:mailing+purpose::Mailing.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailing:purpose|actuate (
;;;#+END:
                                       <purpose
                                       )
  " #+begin_org
** DocStr: Based on specified <purpose, set b:mtdt:mailing+purpose. Defaults to b:mtdt:mailing+purpose::Mailing.

This is usually called after reading X-MailingPurpose header. The value impacts derived function names.
Returns value of b:mtdt:mailng+purpose.
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (b:var:custom:choices|set 'b:mtdt:mailing+purpose <purpose)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailing:purpose|actuate 'b:mtdt:mailing+purpose::Template)
#+END_SRC

#+RESULTS:
: t

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mailing|list" :advice () :comment "~UI~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mailing|list>>  -- ~UI~ -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mailing|list (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingPurposeLabel (b:var:custom:choices|getChoiceLabel
                                 'b:mtdt:mailing+purpose
                                 'b:mtdt:mailing+purpose::Mailing))
          )
    (apropos-internal (s-lex-format "b:mtdt:${$mailingPurposeLabel}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mailing|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:template|list" :advice () :comment "~UI~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:template|list>>  -- ~UI~ -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:template|list (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingPurposeLabel (b:var:custom:choices|getChoiceLabel
                                 'b:mtdt:mailing+purpose
                                 'b:mtdt:mailing+purpose::Template))
          )
    (apropos-internal (s-lex-format "b:mtdt:${$mailingPurposeLabel}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:template|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mua|list" :advice () :comment "~UI~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mua|list>>  -- ~UI~ -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mua|list (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingPurposeLabel (b:var:custom:choices|getChoiceLabel
                                 'b:mtdt:mailing+purpose
                                 'b:mtdt:mailing+purpose::Response))
          )
    (apropos-internal (s-lex-format "b:mtdt:${$mailingPurposeLabel}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mua|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mailing|listPlus" :advice () :comment "~UI~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mailing|listPlus>>  -- ~UI~ -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mailing|listPlus (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingPurposeLabel (b:var:custom:choices|getChoiceLabel
                                 'b:mtdt:mailing+purpose
                                 'b:mtdt:mailing+purpose::Mailing))
          )
    (apropos-internal (s-lex-format "b:mtdt:${$mailingPurposeLabel}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mailing|listPlus)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:template|listPlus" :advice () :comment "~UI~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:template|listPlus>>  -- ~UI~ -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:template|listPlus (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingPurposeLabel (b:var:custom:choices|getChoiceLabel
                                 'b:mtdt:mailing+purpose
                                 'b:mtdt:mailing+purpose::Template))
          )
    (apropos-internal (s-lex-format "b:mtdt:${$mailingPurposeLabel}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:template|listPlus)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mua|listPlus" :advice () :comment "~UI~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mua|listPlus>>  -- ~UI~ -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mua|listPlus (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingPurposeLabel (b:var:custom:choices|getChoiceLabel
                                 'b:mtdt:mailing+purpose
                                 'b:mtdt:mailing+purpose::Response))
          )
    (apropos-internal (s-lex-format "b:mtdt:${$mailingPurposeLabel}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mua|listPlus)
#+END_SRC

#+RESULTS:


" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing Headers" :extraInfo "Tested with examples"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing Headers_: |]]  Tested with examples  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mailingname" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mailingname>>  --  -- RETURNS Specified Header as a string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|mailingname (
;;;#+END:
                               <mailingBuf
                               )
   " #+begin_org
** DocStr: RETURNS Specified Header as a string.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result nil)
          )
     (setq $result (b:email:header:buf|get 'x-mailingname <mailingBuf))
     (unless $result
       (setq $result "missingMailingName"))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|mailingname (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:find-file:get|mailingname" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:find-file:get|mailingname>>  --  -- Return the value of x-mailingname field of header of <mailingFilePath.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:find-file:get|mailingname (
;;;#+END:
                                           <mailingFilePath
                                           )
   " #+begin_org
** DocStr: Return the value of x-mailingname field of header of <mailingFilePath.
May be called from within macros with <mailingFilePath and not the mailingBuf being available.
x-mailingname should be all lower case.
Kills the mailingBuf.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
	 )

     (b:mtdt:header:buf:get|mailingname
      (save-current-buffer
        (find-file <mailingFilePath)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:file:get|mailingname (symbol-name './examples/mailings/rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:ofFile:get|mailingname" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:ofFile:get|mailingname>>  --  -- Return the value of x-mailingname field of header of <mailingFilePath.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:ofFile:get|mailingname (
;;;#+END:
                                           <mailingFilePath
                                           )
   " #+begin_org
** DocStr: Return the value of x-mailingname field of header of <mailingFilePath.
May be called from within macros with <mailingFilePath and not the mailingBuf being available.
x-mailingname should be all lower case.
Kills the mailingBuf.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	  ($result)
	 )
    (save-excursion
      (setq $result (b:mtdt:header:buf:get|mailingname $mailingBuf))
      (kill-buffer $mailingBuf)
      )
    $result
    ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:file:get|mailingname (symbol-name './examples/mailings/rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mailingpurpose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mailingpurpose>>  --  -- RETURNS X-MailingPurpose specified header as a string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|mailingpurpose (
;;;#+END:
                               <mailingBuf
                               )
   " #+begin_org
** DocStr: RETURNS X-MailingPurpose specified as a string converted to ChoiceLable m,t,r,a.
#+end_org "
   (let* (
          ($inHere (b:trace|entry (b:func$entry)))
          ($header nil)
          ($result nil)
          )

     (defun setResult (<purpose)
       (setq $result
             (b:var:custom:choices|getChoiceLabel
              'b:mtdt:mailing+purpose
              <purpose)))

     (setq $header (b:email:header:buf|get 'x-mailingpurpose <mailingBuf))
     (if-unless $header
       (setq $result
             (b:var:custom:choices|getChoiceLabel
              'b:mtdt:mailing+purpose
              'b:mtdt:mailing+purpose::Mailing)))
     (else-when $header
       (cond
        ((s-equals? "mailing" (s-downcase $header))
         (setResult 'b:mtdt:mailing+purpose::Mailing))
        ((s-equals? "template" (s-downcase $header))
         (setResult 'b:mtdt:mailing+purpose::Template))
        ((s-equals? "response" (s-downcase $header))
         (setResult 'b:mtdt:mailing+purpose::Response))
        ((s-equals? "any" (s-downcase $header))
         (setResult 'b:mtdt:mailing+purpose::Any))
        (t
         (b|error (b|fmt$ "Unknown x-mailingpurpose = ${$header}")))
        ))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|mailingpurpose (save-current-buffer (find-file (symbol-name './examples/mailings/b:rtl-example.orgMsg))))
#+END_SRC

#+RESULTS:
: m

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|mailingpurpose (save-current-buffer (find-file (symbol-name './examples/mailings/g:rtl-example.orgMsg))))
#+END_SRC

#+RESULTS:
: m

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|composeFwrk" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|composeFwrk>>  --  -- RETURNS value of X-ComposeFwrk header of =message=  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|composeFwrk (
;;;#+END:
                               <mailingBuf
                               )
   " #+begin_org
** DocStr: RETURNS value of X-ComposeFwrk header of =message=
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result nil)
          )
     (setq $result (b:email:header:buf|get 'x-composefwrk <mailingBuf))
     (unless $result
       (setq $result "message"))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|composeFwrk (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC

#+RESULTS:
: msgOrg

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mtdt-customize" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mtdt-customize>>  --  -- RETURNS X-MTDT-Customize header or =NA= as a string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|mtdt-customize (
;;;#+END:
                               <mailingBuf
                               )
   " #+begin_org
** DocStr: RETURNS X-MTDT-Customize header or =NA= as a string.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result nil)
          )
     (setq $result (b:email:header:buf|get 'x-mtdt-customize <mailingBuf))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|composeFwrk (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC

#+RESULTS:
: msgOrg

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|paramsOfMailingParams" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|paramsOfMailingParams>>  --  -- RETURNS Specified Header as a string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|paramsOfMailingParams (
;;;#+END:
                                                    <mailingBuf
                                                    )
   " #+begin_org
** DocStr: RETURNS Specified Header as a string.
Example usage is
X-MailingParams: :compose native :extSrcBase nil
or
X-MailingParams: :compose external :extSrcBase .
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
	  ($paramsAsStr (b:email:header:buf|get 'x-mailingparams <mailingBuf))
	  ($params (append (list :name 'someName)
			 (read (concat "(" $paramsAsStr ")"))))
	 )
    (message "b:mtdt:header:buf:get|paramsOfMailingParams: paramsAsStr=%s" $paramsAsStr)
    $params))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email:header:buf|get (symbol-name 'NOTYET))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing Derivation As Func With File" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing Derivation As Func With File_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive|funcName" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive|funcName>>  --  -- From specified <mailingFilePath, obtain funcName, use [[b:mtdt:derive$func]] macro to defun funcName.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive|funcName (
;;;#+END:
                             <mailingFilePath
                             )
  " #+begin_org
** DocStr:
#+end_org "
    (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($mailingBuf (save-current-buffer (find-file <mailingFilePath)))
          ($mailingName nil)
          ($mailingPurpose nil)
          ($result nil)
          )
     (setq $mailingName (b:mtdt:header:buf:get|mailingname $mailingBuf))
     (setq $mailingPurpose (b:mtdt:header:buf:get|mailingpurpose $mailingBuf))
     (setq $result (s-lex-format "b:mtdt:${$mailingPurpose}/${$mailingName}"))
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com.example@first.last-fa-org

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive|func" :advice () :comment "~FOUNDATIONAL~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive|func>>  -- ~FOUNDATIONAL~ -- From specified <mailingFilePath, obtain funcName, use [[b:mtdt:derive$func]] macro to defun funcName.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive|func (
;;;#+END:
                             <mailingFilePath
                             )
  " #+begin_org
** DocStr: From specified <mailingFilePath, obtain funcName, use [[b:mtdt:derive$func]] macro to defun funcName.
If funcName was previously interned, uninter it, so that it can be recreated.
This means multiple invockations with the same X-MailingName result in the last becoming effective.
#+end_org "
    (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($funcName (b:mtdt:derive|funcName <mailingFilePath))
          )
      (when (intern-soft $funcName)
        (unintern $funcName))

      (b:mtdt:derive$func $funcName <mailingFilePath)

      (intern $funcName) ;; We want the return value to be the function symbol
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive|func (symbol-name './examples/mailings/m:rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defmacro :defName "b:mtdt:derive$func"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defmacro   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive$func>>  --  -- Create a function called <funcName which returns <mailingFilePath when called.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defmacro b:mtdt:derive$func (
;;;#+END:
                              <funcName
                              <mailingFilePath
                             )
  " #+begin_org
** DocStr: Create a function called <funcName which returns <mailingFilePath when called.
#+end_org "
  `(fset (intern ,<funcName)
	 (lambda ()
	   (interactive)
	   ,<mailingFilePath
	   )
	 ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive$func (symbol-name 'b:mtdt:a|ignoreTest) (symbol-name './examples/mailings/rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
| lambda | nil | (interactive) | (symbol-name './examples/mailings/rtl-example.orgMsg) |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:a|ignoreTest)
#+END_SRC

#+RESULTS:
: ./examples/mailings/rtl-example.orgMsg

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive$func (b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.orgMsg)) (symbol-name './examples/mailings/rtl-example.orgMsg))

#+END_SRC

#+RESULTS:
| lambda | nil | (interactive) | (symbol-name './examples/mailings/rtl-example.orgMsg) |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(intern (b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.orgMsg)))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/funcUnintern" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/funcUnintern>>  --  --  Primary Interface -- Given a mailing file, derive it if needed.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/funcUnintern (
;;;#+END:
                               <mailingFilePath
                               )
   " #+begin_org
** DocStr:  Primary Interface -- Given a mailing file, derive it if needed.
#+end_org "
  (interactive)
  (let* (
        ($inHere (b:log|entry (b:func$entry)))
	($funcName (b:mtdt:derive|funcName <mailingFilePath))
	)
      (unintern $funcName nil)

      (message (s-lex-format "Unintern  ${$funcName} from ${<mailingFilePath}"))
      $funcName
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive/funcUnintern (symbol-name './examples/mailings/rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFile" :advice () :comment ~PRIM~
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFile>>  -- ~PRIM~ --  Primary Interface -- Given a mailing file, derive it if needed.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFile (
;;;#+END:
                               <mailingFilePath
                               )
   " #+begin_org
** DocStr:  Primary Interface -- Given a mailing file, derive it if needed.
#+end_org "
  (interactive)
  (let* (
        ($inHere (b:log|entry (b:func$entry)))
        $funcSymbol
	)

      (setq $funcSymbol (b:mtdt:derive|func <mailingFilePath))

      (message (s-lex-format "Derived  ${$funcSymbol} from ${<mailingFilePath}"))
      $funcSymbol
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive/fromFile (symbol-name './examples/mailings/m:rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesList" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesList>>  --  --  Returns mailingNamesList. Typically used in user's initial setup to derive persistant mailings.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesList (
;;;#+END:
                                    <mailingFilesList
                                    )
   " #+begin_org
** DocStr:  Returns mailingNamesList. Typically used in user's initial setup to derive persistant mailings.
#+end_org "
   (interactive)
   (let* (
          ($mailingName)
          ($mailingNamesList (list))
         )
     (dolist ($eachMailingFile <mailingFilesList)
       (if-when (f-exists? $eachMailingFile)
         (setq $mailingNamesList
               (append
                $mailingNamesList
                (list (b:mtdt:derive/fromFile $eachMailingFile)))))
       (else-unless (f-exists? $eachMailingFile)
         (b|warning (b|fmt$ "Missing file: ${$eachMailingFile} -- Skipped")))
       )
     $mailingNamesList))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesStr" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesStr>>  --  --  Returns mailingNamesList  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesStr (
;;;#+END:
                                   <mailingFilesStr
                                   )
   " #+begin_org
** DocStr:  Returns mailingNamesList
#+end_org "
  (interactive)
  (let* (
         ($filesPathList (s-split " " <mailingFilesStr))
         )
    (b:mtdt:derive/fromFilesList $filesPathList)))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesStrAndSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesStrAndSelect>>  --  --  NOTYET. Place Holder -- Used by dblocks.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesStrAndSelect (
;;;#+END:
                                        <mailingFilesStr
                                        )
   " #+begin_org
** DocStr:  NOTYET. Place Holder -- Used by dblocks.
#+end_org "
  (interactive)
  (b:mtdt:mailings|select (b:mtdt:derive/fromFilesStr (f-full <mailingFilesStr))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailings Names and Selection" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailings Names and Selection_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defvar b:mtdt:mailings:selected
  nil
  "Selected Mailing.")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|selectWithFile" :advice () :comment "~SELECT~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|selectWithFile>>  -- ~SELECT~ -- Select <mailingFunc by assigning it to b:mtdt:mailings:selected  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|selectWithFile (
;;;#+END:
                                       <mailingFilePath
                                       )
  " #+begin_org
** DocStr: Select <mailingFilePath by assigning it to b:mtdt:mailings:selected
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($funcSymbol (b:mtdt:derive/fromFile <mailingFilePath))
          ($result $funcSymbol)
          )
    (b:mtdt:mailings|select  $funcSymbol)
    $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|selectWithFile (symbol-name './examples/mailings/m:rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|select" :advice () :comment "~SELECT~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|select>>  -- ~SELECT~ -- Select <mailingFunc by assigning it to b:mtdt:mailings:selected  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|select (
;;;#+END:
                               <mailingFunc
                               )
  " #+begin_org
** DocStr: Select <mailingFunc by assigning it to b:mtdt:mailings:selected
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result <mailingFunc)
          )
     (setq b:mtdt:mailings:selected (list <mailingFunc))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|select )
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose|basedOnMailingTemplateFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose|basedOnMailingTemplateFile>>  --  -- Visits file and calls TemplateBuf version.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose|basedOnMailingTemplateFile (
;;;#+END:
                               <mailingFilePath
                               )
  " #+begin_org
** DocStr: Visits file and calls TemplateBuf version.
NOTYET, Needs with current buffer.
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (interactive)
    (save-excursion
      (b:mtdt:compose|basedOnMailingTemplateBuf (find-file <mailingFilePath)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose|basedOnMailingTemplateFile (symbol-name './examples/mailings/rtl-example.orgMsg))
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose|basedOnMailingTemplateBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose|basedOnMailingTemplateBuf>>  --  -- Given a mailingBuf, run compose-mail and replace its content with template.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose|basedOnMailingTemplateBuf (
;;;#+END:
                                                   <mailingBuf
                                                   )
  " #+begin_org
** DocStr: Given a mailingBuf, run compose-mail and replace its content with template.
When composeFwrk is message, stay in message mode,
When composeFwrk is orgMsg, switch to org-msg-edit-mode.
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
	 ($mailingParams (b:mtdt:header:buf:get|paramsOfMailingParams <mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 ($composeFwrk (b:mtdt:header:buf:get|composeFwrk <mailingBuf))
         ($result)
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase} $composeFwrk=${$composeFwrk}"))

    (compose-mail)
    (setq $result (current-buffer))
    (erase-buffer)
    (insert-buffer-substring <mailingBuf)
    (message-goto-to)

    (cond
     ((string-equal $composeFwrk "message")
      (when org-msg-mode
        (org-msg-mode -1))
      (message-mode)
      )
     ((string-equal $composeFwrk "orgMsg")
      (when (not org-msg-mode)
        (org-msg-mode))
      (org-msg-edit-mode)
      )
     (t
      (message (s-lex-format "Unknown $composeFwrk=${$composeFwrk}"))))
    $result
    ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
NOTYET
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailings Invokations" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailings Invokations_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedComposeWithFns" :advice () :comment ~PRIM~
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedComposeWithFns>>  -- ~PRIM~ -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|framedComposeWithFns (
;;;#+END:
                                            <mailingFuncList
                                            )
  " #+begin_org
** DocStr: Create a frame, select it, then invoked =<mailingFunc=.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
	)
    (loop-for-each each <mailingFuncList
      (b:mtdt:mailings|framedComposeWithFn each))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|framedComposeWithFn (list (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedComposeWithFn" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedComposeWithFn>>  --  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|framedComposeWithFn (
;;;#+END:
                                            <mailingFunc
                                            )
  " #+begin_org
** DocStr: Create a frame, select it, then invoked =<mailingFunc=.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
        ($mailingFilePath (call-interactively <mailingFunc))
        ($curBuf)
        ($result)
        ($frame (make-frame-command))
	)

      (raise-frame $frame)
      (select-frame-set-input-focus $frame)
      ;;; (b:mtdt:compose|with-file $mailingFilePath 0)
      (setq $result (b:mtdt:mfp/unsentBuf $mailingFilePath))
      (setq $curBuf (current-buffer))
      (message (s-lex-format "${$inHere}:: Current Buffer: ${$curBuf}"))
      $result
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|framedComposeWithFn (intern (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedExtComposeWithFns" :advice () :comment "~PRIM~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedExtComposeWithFns>>  -- ~PRIM~ -- ExtCompose is same as originate. Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|framedExtComposeWithFns (
;;;#+END:
                                            <mailingFuncList
                                            )
  " #+begin_org
** DocStr: ExtCompose is same as originate. Create a frame, select it, then invoked =<mailingFunc=.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
	)
    (loop-for-each each <mailingFuncList
      (b:mtdt:mailings|framedExtComposeWithFn each))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedExtComposeWithFn" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedExtComposeWithFn>>  --  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|framedExtComposeWithFn (
;;;#+END:
                                            <mailingFunc
                                            )
  " #+begin_org
** DocStr: Create a frame, select it, then invoked =<mailingFunc=.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
        ($type (type-of <mailingFunc))
	)
      ;; (select-frame (make-frame-command))
      ;; (call-interactively <mailingFunc)
      (error "NOTYET, name of mailing func needs to be changed -- replacing compose with originate, then call the originate file")
      )
    )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings/framedComposeWithSelected" :advice () :comment "~PRIM~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings/framedComposeWithSelected>>  -- ~PRIM~ -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings/framedComposeWithSelected (
;;;#+END:
                                                  )
  " #+begin_org
** DocStr: Create a frame, select it, then invoked =<mailingFunc=.
#+end_org "
  (interactive)
  (let* (
        ($inHere (b:log|entry (b:func$entry)))
	)
  (if-unless b:mtdt:mailings:selected
    (message (s-lex-format "Bad Usage: ${$inHere}: b:mtdt:mailings:selected is nil")))
  (if-when b:mtdt:mailings:selected
    (b:mtdt:mailings|framedComposeWithFns b:mtdt:mailings:selected))
  ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings/framedComposeWithSelected)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing File Processors" :extraInfo "b:mtdt:mfp"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing File Processors_: |]]  b:mtdt:mfp  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/derive" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/derive>>  --  -- Derive a function from a mailingFile  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/derive (
;;;#+END:
                          <mailingFile
                          )
  " #+begin_org
** DocStr: Derive a function from a mailingFile
#+end_org "
    (let* (
           ($inHere (b:log|entry (b:func$entry)))
	   )
      (b:mtdt:derive/fromFile <mailingFile)
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mfp/derive (symbol-name './examples/mailings/t:rtl-example.orgMsg))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/deriveAndSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/deriveAndSelect>>  --  -- Derive a function from a mailingFile and select it.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/deriveAndSelect (
;;;#+END:
                           <mailingFile
                           )
  " #+begin_org
** DocStr: Derive a function from a mailingFile and select it.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
	)
      (b:mtdt:mailings|select (list (b:mtdt:derive/fromFile <mailingFile)))
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mfp/deriveAndSelect (symbol-name './examples/mailings/g:rtl-example.orgMsg))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/compose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/compose>>  --  -- Originate result in b:mtdt:mfp/compose or b:mtdt:mfp/extCompose based on :extSrcBase.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/compose (
;;;#+END:
                           <mailingFile
                           )
  " #+begin_org
** DocStr: Originate result in b:mtdt:mfp/compose or b:mtdt:mfp/extCompose based on :extSrcBase.
#+end_org "
    (let* (
           ($inHere (b:log|entry (b:func$entry)))
	   ($mailingParams (b:mtdt:header:buf:get|paramsOfMailingParams
                            (save-current-buffer
                              (find-file <mailingFile))))
	   (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	   )

    (if <extSrcBase
        (b:mtdt:mfp/extCompose <mailingFile)
      (b:mtdt:mfp/natCompose <mailingFile)
      )))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mfp/originate (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/extArtMailing/extArtMailing.mail))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/natCompose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/natCompose>>  --  -- Derive from <mailingFile and then compose.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/natCompose (
;;;#+END:
                           <mailingFile
                           )
  " #+begin_org
** DocStr: Derive from <mailingFile and then compose.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
	)
      (b:mtdt:mailings|framedComposeWithFn (b:mtdt:derive/fromFile <mailingFile))
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mfp/compose (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/extArtMailing/extArtMailing.mail))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/extCompose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/extCompose>>  --  -- Copy the content of base of <mailingFile and then compose it. The copies content can be edited without impacting the mailing.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/extCompose (
;;;#+END:
                              <mailingFile
                              )
  " #+begin_org
** DocStr: Copy the content of base of <mailingFile and then compose it. The copies content can be edited without impacting the mailing.
#+end_org "
    (let* (
           ($inHere (b:log|entry (b:func$entry)))
	   ($mailingParams (b:mtdt:header:buf:get|paramsOfMailingParams
                            (save-current-buffer
                              (find-file <mailingFile))))
           ($ephemeraMailingFilePath nil)
	   (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	   )
      (unless <extSrcBase
        (setq <extSrcBase "."))

      (setq $ephemeraMailingFilePath
	    (b:mtdt:compose:ephemera|copyToBase <mailingFile <extSrcBase))

      (b:mtdt:mailings|framedComposeWithFn (b:mtdt:derive/fromFile $ephemeraMailingFilePath))

      (b:mtdt:compose:ephemera|mailBufRecord
       (file-name-directory $ephemeraMailingFilePath)
       (buffer-name (b:email|latest-unsent-mail-buf))
       )
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mfp/extCompose (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/extArtMailing/extArtMailing.mail))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/unsentBuf" :advice () :comment "~Calls message~"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/unsentBuf>>  -- ~Calls message~ -- calls basedOnMailingTemplateFile subject to  <extSrcBase.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/unsentBuf (
;;;#+END:
                                 <mailingFilePath
                                 )
  " #+begin_org
** DocStr: calls basedOnMailingTemplateFile subject to  <extSrcBase.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         ($unsentMailBuf (b:mtdt:compose|basedOnMailingTemplateFile  <mailingFilePath))
         ($customizeFilePath)
         ($latestSentBuf)
	 )
    (save-current-buffer
      (display-buffer (switch-to-buffer $unsentMailBuf))
      (b:mtdt:customize/controlledBuf $unsentMailBuf)
      (setq $curBuf (current-buffer))
      (message (s-lex-format "${$inHere}:: Current Buffer: ${$curBuf}"))
      )
    (setq $curBuf (current-buffer))
    (message (s-lex-format "${$inHere}:: Current Buffer: ${$curBuf}"))
    $unsentMailBuf
    ))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Left Overs To Be Sorted Out" :extraInfo "b:mtdt:mfp"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Left Overs To Be Sorted Out_: |]]  b:mtdt:mfp  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;
;; (b:mtdt:mailing:getName|with-file%% "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
(defun b:mtdt:mailing:getName|with-file%% (<mailingFilePath)
  "Return the value of x-mailingname field of header of <mailingFilePath.
May be called from within macros with <mailingFilePath and not the mailingBuf being available.
x-mailingname should be all lower case.
Kills the mailingBuf."
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($result)
	 )
    (save-excursion
      (setq $result (b:mtdt:mailing:getName/with-buffer $mailingBuf))
      (kill-buffer $mailingBuf)
      )
    $result
    ))


;;
;; "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"
;; (b:mtdt:mailing:getName/with-curBuffer)
;;
(defun b:mtdt:mailing:getName/with-buffer%% (<mailingBuf)
  "Return the value of x-mailingname field of header. x-mailingname should be all lower case."
  (interactive)
  (let* (
	 (result nil)
	)
    (setq result (bx:mail:header:field:get-from-buffer 'x-mailingname <mailingBuf))
    result
    )
  )

;;
;; (bx:mail:header:field:get-from-buffer 'x-mailingparams (find-file "~/BUE/mailings/start/family.fa/blank/basicLatex.fa/basicLatex/mailingStatic/content.mail"))
;; (message "%s" (b:mtdt:mailing:params|from-buf )
;;
(defun b:mtdt:mailing:params|from-buf%% (<mailingBuf)
  "Return params as a list based on the string of X-MailingParams:.
x-mailingparams should be all lower-case.
params can be retrieved with plist."
  (let* (
	 ($paramsAsStr (bx:mail:header:field:get-from-buffer 'x-mailingparams <mailingBuf))
	 (params (append (list :name 'someName)
			 (read (concat "(" $paramsAsStr ")"))))
	 )
    (message "b:mtdt:mailing:params|from-buf: paramsAsStr=%s" $paramsAsStr)
    params))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mfp/unsentBuf (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/m:rtl-example.orgMsg))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:mailings)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
