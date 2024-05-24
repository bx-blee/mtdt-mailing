;;; b:mtdt:mailings.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: NOTYET, Incomplete and dirty. This module should be redeveloped in conjunction with b:mtdt:derive.el
Scope of this file is:
1) Facilities for manipulation of headers of mailings.
2) Commands named b:mtdt:d:{someAction}/{mailingName} that build on  b:mtdt:d/{mailingName}
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
** This File: /bisos/git/auth/bxRepos/blee/mtdt/b:email.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
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

(defgroup b:b:mtdt:mailings nil
  "Blee Mailings Library. Used by b:b:mtdt:distr."
  :group 'blee
  :prefix "b:b:mtdt:mailings:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;
;;; NOTYET, b:mtdt:compose:framework should become b:mtdt:compose:frmwrk
;;;

(defconst b:mtdt:compose:framework::basic "Basic" "Basic Plain Text Mail Composition.")
(defconst b:mtdt:compose:framework::orgMsg "OrgMsg" "OrgMsg Mail Composition.")
(defconst b:mtdt:compose:framework::latex "LaTeX" "LaTeX Mail Composition.")

(defvar b:mtdt:compose:framework
  b:mtdt:compose:framework::orgMsg
  "Selected and Effective compose fashion.")

(defvar b:mtdt:reply:templates:base
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply")
  "Basedir of where LaTeX templates are.")

(defvar b:mtdt:reply:templates:leftToRight
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply/ltr-basicLaTeX")
  "Basedir of where leftToRight LaTeX languages templates are.")

(defvar b:mtdt:reply:templates:rightToLeft
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply/rtl-basicLaTeX")
  "Basedir of where leftToRight LaTeX languages templates are.")

(defvar b:mtdt:compose:ephemera:base "/bisos/tmp"
  "Basedir of where ephemera compositions go.")

(defvar b:mtdt:mailings:selected
  nil
  "Selected Mailing.")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|select" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|select>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailings|select (
;;;#+END:
                               <mailingFunc
                               )
  " #+begin_org
** DocStr: Get the first email address for =<nameStr= if it is unique.
Return 'No Records' if =<nameStr=  is not found.
Return 'Nu of Records=' if multiple records are found for =<nameStr=.
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result <mailingFunc)
          )
     (setq b:mtdt:mailings:selected <mailingFunc)
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|select )
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedComposeWithFn" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedComposeWithFn>>  --   [[elisp:(org-cycle)][| ]]
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
        ($type (type-of <mailingFunc))
	)

  (select-frame (make-frame-command))
  ;; (message (s-lex-format "ZZZ before mailingFunc type ${$type}"))
  (call-interactively <mailingFunc)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings/framedComposeWithSelected" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings/framedComposeWithSelected>>  --   [[elisp:(org-cycle)][| ]]
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
    (b:mtdt:mailings|framedComposeWithFn b:mtdt:mailings:selected))
  ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings/framedComposeWithSelected)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;; Commentary:
;;; MTDT (Mail Templating, Distribution and Tracking) FKA:  MTDT (Mail Composition, Distribution and Tracking)
;;; Libre-Halaal Constant Contact For Everyone
;;;
;;; Blee Panel Documentation Is At:
;;; /bisos/panels/blee-core/mail/mailings/emacs-mtdt/mtdt-conceptAndDesign/_nodeBase_/fullUsagePanel-en.org
;;;
;;; Given a self-contained mailingFile (usually called content.mail) or within a mailingFile-buffer, using macros, mtdt creates
;;; a series of commands that allow for customized-compostion, sending and distribution of those
;;; messages.
;;;
;;; The mailingFile should be in correct RFC-822 format. For example, you can not have an empty To: field.
;;;
;;; MTDT consists of:
;;;    mtdt-lib.el    --- General purpose libraries
;;;    mtdt-newMail.el   --- Initial outgoing email
;;;    mtdt-contextedMail.el  --- Replies and Forwards
;;;
;;; Customized-compostion of mailings, takes of two forms.
;;;  - direct editing -- :extSrcBase nil
;;;  - external source editing -- :extSrcBase "."  -- The result is then
;;;    included in the mailingFile through a dblock.
;;;
;;; Primary command usage interfaces are:
;;; - b:mtdt:setup-and-compose/with-curBuffer -- Used the mailing buffer -- Uses /with-file  in turn.
;;; - b:mtdt:setup-and-compose/with-file  -- Used in Blee Panels
;;; - b:mtdt:setup/with-curBuffer -- Just create the mailing ffunction as b:mtdt:compose/mailingName.
;;;
;;; Compose results into a new frame and a ready buffer in a /tmp ephemera base.
;;;
;;;
;;;----------------------------------------------------------------------------
;;; OLD AND OBSOLETE COMMENTS BELOW KEPT TILL FULLY ABSORBED:
;;; This used to be Machine Generated File through: mailingProc.sh vis_basic_method_prep
;;; based on: /libre/ByStar/InitialTemplates/mailing/templates/msend-mailing-template.el
;;;
;;;    ======== bxms-compose-MailingName           -- Originate A Fresh Message -- Or Augment An Existing Message
;;;    ======== bxms-batch-MailingName          -- = bx-msend-MailingName + (msend-mail-and-exit)
;;;    ========
;;;    ======== bxms-web-url-MailingName            -- BROWSER ORIGINATION -- (Send Link)
;;;    ======== bxms-web-mailto-MailingName         -- BROWSER ORIGINATION -- (Click On A mailto: URL)
;;;    ========
;;;    ======== x bxms-compose-MailingName         -- BBDB ORIGINATION  -- Interactive on One or on Each one-by-one
;;;    ======== x bxms-batch-MailingName        -- BBDB ORIGINATION  -- Batch on One or on Each one-by-one
;;;    ======== x bxms-toall-MailingName          -- BBDB ORIGINATION  -- Interactive on ALL
;;;    ========
;;;    ======== bxms-bbdb-compose-MailingName  -- BBDB USAGE        -- Interactive on One
;;;    ======== bxms-bbdb-batch-MailingName    -- BBDB USAGE        -- Batch on One
;;;    ======== bxms-bbdb-toall-MailingName    -- BBDB USAGE        -- Interactive on ALL in To:
;;;----------------------------------------------------------------------------
;;
;;; Code:


(defun b:mtdt:compose:framework/setup (<fashion)
  "Based on <fashion, set things up for composition."
  (cond
   ((eq <fashion  b:mtdt:compose:framework::basic)
    (setq b:mtdt:compose:framework <fashion)
    (when org-msg-mode
      (org-msg-mode -1)))
   ((eq <fashion  b:mtdt:compose:framework::orgMsg)
    (setq b:mtdt:compose:framework <fashion)
    (when (not org-msg-mode)
      (org-msg-mode)))
   ((eq <fashion  b:mtdt:compose:framework::latex)
    (setq b:mtdt:compose:framework <fashion)
    (when org-msg-mode
      (org-msg-mode -1)))
   (t
    (error "Bad input"))
   ))


;;
;; (b:mtdt:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (b:mtdt:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro b:mtdt:compose$mailing-defun (<mailingFilePath)
  "The macro defines a function to be invoked to compose a msg from a template.
<MAILINGFILEPATH is expected to be a static path.
interactive p is needed so that there are some params.
With compose can edit content and headers, with originate only headers."
  `(fset (intern (concat "b:mtdt:compose/" (b:mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   (b:mtdt:compose|with-file ,<mailingFilePath args)
	   )
	 ))

;;
;; (b:mtdt:oriiginate$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (b:mtdt:originate$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro b:mtdt:originate$mailing-defun (<mailingFilePath)
  "<MAILINGFILEPATH is expected to be a static path.
The macro defines a function to be invoked to originate a msg from template.
interactive p is needed so that there are some params.
With compose can edit content and headers, with originate only headers."
  `(fset (intern (concat "b:mtdt:originate/" (b:mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   (b:mtdt:originate|with-file ,<mailingFilePath args)
	   )
	 ))

;;
;; (b:mtdt:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (b:mtdt:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro b:mtdt:batch$mailing-defun (<mailingFilePath)
  "Macro defines a function to be invoked to batch send a msg with a template in <MAILINGFILEPATH.
NOTYET, instead of fset intern, try defun -- would be simpler."
  `(fset (intern (concat "b:mtdt:batch/"  (b:mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   ($:b:mtdt:batch|with-file ,<mailingFilePath args)
	   )
	 ))

(defun $:b:mtdt:batch|with-file (<mailingFilePath args)
  "Out of macro work of b:mtdt:batch$mailing-defun.
ModuleLocal."
    (funcall (intern (concat "b:mtdt:compose/" (b:mtdt:mailing:getName|with-file <mailingFilePath))) args)
    (msend-mail-and-exit)
    )

;;
;; (b:mtdt:setup$with-filePath "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (b:mtdt:setup$with-filePath "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro b:mtdt:setup$with-filePath (<mailingFilePath)
  "Create/Define all b:mtdt:xx commands based on <mailingFilePath.
Base function for other b:mtdt:setup:s map to this.
Needs to be a macro, so that ,<mailingFilePath is captured.
Is expected to be invoked once for each <mailingFilePath.
For use by elisp applications."
  `(progn
     (b:mtdt:compose$mailing-defun ,<mailingFilePath)
     (b:mtdt:originate$mailing-defun ,<mailingFilePath)
     (b:mtdt:batch$mailing-defun ,<mailingFilePath)
     )
  )

;;
;; (macroexpand-all '(b:mtdt:setup$with-curBuffer))
;;
;; Example  "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"
;;
(defmacro $:b:mtdt:setup$with-curBuffer ()
  "Create/Define all b:mtdt:xx commands based on current buffer file-name.
$: indicates it is private to this module. Is not expected to be invoked by any external user.
NOTYET, try 'make-symbol'
interactive P is necessary.
gensym did not work, ended up using b:mtdt:cur:buffer which works but is obviously not the right way.
NOTYET, we need a wrapper around b:mtdt:setup/with-curBuffer.
Is not expected to be invoked by any external user. $: indicates it is local to this module.
External user uses b:mtdt:setup/with-curBuffer which then invoke macros based on current buffer.
"
  `(fset (intern "b:mtdt:setup:gened/with-curBuffer")
	 (lambda (params)
	   (interactive "p")
	   (setq b:mtdt:cur:buffer (buffer-file-name))
	   (b:mtdt:compose$mailing-defun b:mtdt:cur:buffer)
  	   (b:mtdt:batch$mailing-defun  b:mtdt:cur:buffer)
	   )
	 )
  )

;;;
;;; The expansion is needed
;;;
($:b:mtdt:setup$with-curBuffer)

;;
;; (b:mtdt:bbdb-compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:bbdb-compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:bbdb-compose$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:bbdb-compose/")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (params)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (params)
	     (interactive "p")
	     (bx:mailing:bbdb:compose ,<mailingPath params)
	     ))
    ))

;;
;; (b:mtdt:bbdb-batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:bbdb-batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:bbdb-batch$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template."
  (let* (
	($baseFuncName "b:mtdt:bbdb-batch/")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (params)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (params)
	     (interactive "p")
	     (bx:mailing:bbdb:batch ,<mailingPath params)
	     ))
    ))

;;
;; (b:mtdt:bbdb-toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:bbdb-toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:bbdb-toall$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:bbdb-toall/")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (params)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (params)
	     (interactive "p")
	     (bx:mailing:bbdb:toall ,<mailingPath params)
	     ))
    ))

;;
;; (b:mtdt:bbdb:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:bbdb:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:bbdb:compose$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:bbdb:compose/")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (records)
	     (interactive "p")
	     (bxms-bbdb-compose-from-base ,<mailingPath records)
	     ))
    ))

;;
;; (b:mtdt:bbdb:toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:bbdb:toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:bbdb:toall$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:bbdb:toall/")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (records)
	     (interactive "p")
	     (bbdb-mall-from-base ,<mailingPath records)
	     ))
    ))

;;
;; (b:mtdt:bbdb:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:bbdb:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:bbdb:batch$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:bbdb:batch/")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (records)
	     (interactive "p")
	     (bxms-bbdb-batch-from-base ,<mailingPath records)
	     ))
    ))

;;
;; (b:mtdt:web:mailto-pre$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:web:mailto-pre$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:web:mailto-pre$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:web:mailto|")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName "-pre"))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda ()
	     (bx-mmailto-from-base-pre ,<mailingPath)
	     ))
    ))

;;
;; (b:mtdt:web:mailto-post$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:web:mailto-post$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:web:mailto-post$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:web:mailto|")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName "-post"))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda ()
	     (bx-mmailto-from-base-post ,<mailingPath)
	     ))
    ))

;;
;; (b:mtdt:web:mailto$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (b:mtdt:web:mailto$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro b:mtdt:web:mailto$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "b:mtdt:web:mailto|")
	($mailingName (b:mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName "-post"))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda ()
	     (interactive)

	     (setq  a-murl-pre-hook nil)
	     ;; NOTYET
	     (add-hook 'a-murl-pre-hook 'bxms:web:mailto:start-family.fa-blank-basicText.fa-pre)

	     (setq  a-murl-post-hook nil)
	     (add-hook 'a-murl-post-hook 'bxms:web:mailto:start-family.fa-blank-basicText.fa-post)

	     ))
    ))

;; (defun bxms:web:url:start-family.fa-blank-basicText.fa-pre ()
;;   ""
;;   (bx-murl-from-base-pre "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;;   )

;; (defun bxms:web:url:start-family.fa-blank-basicText.fa-post ()
;;   ""
;;   (bx-murl-from-base-post "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;;   )

;; (defun bxms-web-url-start-family.fa-blank-basicText.fa ()
;;   ""
;;   (interactive)

;;   (setq  a-murl-pre-hook nil)
;;   (add-hook 'a-murl-pre-hook 'bxms:web:url:start-family.fa-blank-basicText.fa-pre)

;;   (setq  a-murl-post-hook nil)
;;   (add-hook 'a-murl-post-hook 'bxms:web:url:start-family.fa-blank-basicText.fa-post)
;;   )




;; Example  "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"
(defun b:mtdt:setup/with-curBuffer (args)  "
** For use by external users. Primary Buffer Based User Interface.
"
  (interactive "p")
  (let* (
	 ($mailingFilePath (buffer-file-name))
	)
    (when $mailingFilePath
      (with-selected-window (frame-selected-window)
	(save-excursion
	  (b:mtdt:setup:gened/with-curBuffer args) ;; gened by macro
	  ))
      )
    (when (not $mailingFilePath)
      (message "Buffer Does Not Have A File -- Skipped")
      )
    )
  )


;;
;; (b:mtdt:mailing:getName|with-file "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
(defun b:mtdt:mailing:getName|with-file (<mailingFilePath)
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
(defun b:mtdt:mailing:getName/with-buffer (<mailingBuf)
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
;; (b:mtdt:mailing:getName/with-curBuffer)
;;
(defun b:mtdt:mailing:getComposeFwrk|with-buffer (<mailingBuf)
  "Return the value of x-composefwrk field of header. It should be all lower case.
Valid values are 'msgOrg or 'message. If field does not exist, message is assumed.
"
  (let* (
	 (result nil)
	)
    (setq result (bx:mail:header:field:get-from-buffer 'x-composefwrk <mailingBuf))
    (unless result
      (setq result "message"))
    result
    )
  )

;;
;; (bx:mail:header:field:get-from-buffer 'x-mailingparams (find-file "~/BUE/mailings/start/family.fa/blank/basicLatex.fa/basicLatex/mailingStatic/content.mail"))
;; (message "%s" (b:mtdt:mailing:params|from-buf )
;;
(defun b:mtdt:mailing:params|from-buf (<mailingBuf)
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

;;; (message (buffer-name (b:mtdt:mailing|latest-unsent-mail-buf)))
(defun b:mtdt:mailing|latest-unsent-mail-buf ()
  "Return most recently created unsent mail buffer."
  (let ((found nil))
    (loop-for-each each (buffer-list)
                   (message (buffer-name each))
                   (when (s-contains? "unsent mail" (buffer-name each))
                     (setq found each)
                     (loop-break)))
    found))


(defun b:mtdt:mailing:compose|get-function-name (<mailingName)
  "Given <mailingName, return name of compose function"
  (concat "b:mtdt:compose/" <mailingName))

(defun b:mtdt:mailing:originate|get-function-name (<mailingName)
  "Given <mailingName, return name of originate function"
  (concat "b:mtdt:originate/" <mailingName))


(defun b:mtdt:setup-and-compose/with-file (<mailingFilePath)
  "Given a mailing file, derive the compose commands based on mailingName and invoke it."

  (interactive)
  (let (
	($mailingName nil)
	($mailingBuf nil)
	($funcSymbol nil)
	)
    (find-file-read-only-other-frame <mailingFilePath)
    (setq $mailingBuf (current-buffer))
    (setq $mailingName (b:mtdt:mailing:getName/with-buffer $mailingBuf))
    (setq $funcSymbol (intern (b:mtdt:mailing:compose|get-function-name $mailingName)))
    (when (commandp $funcSymbol)
      ;;(switch-to-buffer $mailingBuf)
      (call-interactively $funcSymbol)
      )
    (when (not (commandp $funcSymbol))
      (b:mtdt:setup$with-filePath <mailingFilePath)
      (call-interactively $funcSymbol)
      )
    ;;; Most recent buffer should now be the "*unsent mail<n>*"
    (switch-to-buffer (b:mtdt:mailing|latest-unsent-mail-buf))
    )
  )

(defun b:mtdt:setup-and-compose/with-curBuffer () "\
** Convert buffer to filePath and call b:mtdt:setup-and-compose/with-file then."
  (interactive)
  (b:mtdt:setup-and-compose/with-file (buffer-file-name))
  )

;;
;;
;;
(defun b:mtdt:compose|with-file (<mailingFilePath args)
  "Out of macro work of b:mtdt:compose$mailing-defun.
ModuleLocal.
"
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($mailingParams (b:mtdt:mailing:params|from-buf $mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase}"))

    (unless <extSrcBase
      (display-buffer
       (switch-to-buffer
        (b:mtdt:compose|basedOnMailingTemplateFile  <mailingFilePath)))
      )
    (when <extSrcBase
      (setq $ephemeraMailingFilePath
	    (b:mtdt:compose:ephemera|copyToBase <mailingFilePath <extSrcBase))
      (b:mtdt:compose|basedOnMailingTemplateFile $ephemeraMailingFilePath)
      (b:mtdt:compose:ephemera|mailBufRecord
       (file-name-directory $ephemeraMailingFilePath)
       (buffer-name (b:mtdt:mailing|latest-unsent-mail-buf))
       )
      (display-buffer
       (switch-to-buffer (b:mtdt:mailing|latest-unsent-mail-buf)))
      )
    ))

;;;
;;; (b:mtdt:compose|basedOnMailingTemplateFile "/bxo/r3/iso/piu_mbFullUsage/mailings/compose/family/from/org-tex/content.orgMsg")
;;;
(defun b:mtdt:compose|basedOnMailingTemplateFile (<mailingFilePath)
  "Visits file and calls TemplateBuf version."
  (interactive)
  (save-excursion
  (b:mtdt:compose|basedOnMailingTemplateBuf (find-file <mailingFilePath))))


(defun b:mtdt:compose|basedOnMailingTemplateBuf (<mailingBuf)
  "Given a mailingBuf, run compose-mail and replace its content with template.
When composeFwrk is message, stay in message mode,
When composeFwrk is msgOrg, switch to org-msg-edit-mode."
  (let* (
	 ($mailingParams (b:mtdt:mailing:params|from-buf <mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 ($composeFwrk (b:mtdt:mailing:getComposeFwrk|with-buffer <mailingBuf))
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
      (message-mode)
      )
     ((string-equal $composeFwrk "msgOrg")
      (org-msg-edit-mode)
      )
     (t
      (message (s-lex-format "Unknown $composeFwrk=${$composeFwrk}"))))
    $result
    ))


(defun b:mtdt:setup-and-originate/with-file (<mailingFilePath)
  "Given a mailing file, initiate an outgoing message.
Used for example, in dblocks such as bxPanel:mailing/originate.
  - visit the file
  - setup  b:mtdt:originate/mailingName if needed
  - invoke b:mtdt:originate/mailingName go to the to field
NOTYET, delete the BCC field, if there is one.
 "
  (interactive)
  (let (
	($mailingName nil)
	($mailingBuf nil)
	($funcSymbol nil)
	)
    (find-file-read-only <mailingFilePath)
    (setq $mailingBuf (current-buffer))
    (setq $mailingName (b:mtdt:mailing:getName/with-buffer $mailingBuf))
    (setq $funcSymbol (intern (b:mtdt:mailing:originate|get-function-name $mailingName)))
    (when (commandp $funcSymbol)
      ;;(switch-to-buffer $mailingBuf)
      (call-interactively $funcSymbol)
      )
    (when (not (commandp $funcSymbol))
      (b:mtdt:setup$with-filePath <mailingFilePath)
      (call-interactively $funcSymbol)
      )
    ;;; Most recent buffer should now be the "*unsent mail<n>*"
    (switch-to-buffer (b:mtdt:mailing|latest-unsent-mail-buf))
    (message-goto-bcc)
    (beginning-of-line 1)
    (kill-whole-line)
    (message-goto-to)
    )
  )

(defun b:mtdt:setup-and-originate/with-curBuffer () "
** Converts buffer to filePath and calls b:mtdt:setup-and-compose/with-file then.
  "
  (interactive)
  (b:mtdt:setup-and-originate/with-file (buffer-file-name))
  )


;;
;;
;;
(defun b:mtdt:originate|with-file (<mailingFilePath args)
  "Out of macro work of b:mtdt:originate$mailing-defun.
ModuleLocal.
"
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($mailingParams (b:mtdt:mailing:params|from-buf $mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase}"))
    (text-mode) ;; bxms-compose-from-base checks for major-mode
    (bxms-compose-from-base (expand-file-name (file-name-directory <mailingFilePath)) args)
    (display-buffer
     (switch-to-buffer (b:mtdt:mailing|latest-unsent-mail-buf)))
    ))


;;
;; (bx:ephemera:dated|pathName-in "/tmp")
;;
(defun bx:ephemera:dated|pathName-in (<baseDir)
  "Return (format-time-string \"%Y-%m-%d-%H-%M-%S\") plus a counter.
Which makes for a uniq file name.
If that date to a second exists, do a plus counter.
NOTYET, counter has not been implemented yet."
  (let* (
	 ($ephemeraUniqe (format-time-string "%Y-%m-%d-%H-%M-%S"))
	 ($result (f-join <baseDir $ephemeraUniqe))
	 )
    $result))

;;
;; (b:mtdt:compose:ephemera|copyToBase "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail" ".")
;;
(defun b:mtdt:compose:ephemera|copyToBase (<mailingFilePath <extSrcBase)
  "Copy recursively <extSrcBase to b:mtdt:compose:ephemera:base."
  (let* (
	 ($mailingBaseDir (expand-file-name (file-name-directory <mailingFilePath)))
	 ($srcBase (f-join $mailingBaseDir <extSrcBase))
	 ($destBase (bx:ephemera:dated|pathName-in b:mtdt:compose:ephemera:base))
	 ($mailingRelativeToExtSrcBase (f-relative <mailingFilePath $srcBase))
	 ($ephemeraMailingFilePath (f-join $destBase $mailingRelativeToExtSrcBase))
	 ($shellCmndResult)
	 )
    (setq $shellCmndResult
	  (shell-command-to-string
	   (format "cp -r %s %s" $srcBase $destBase)))
    (message $shellCmndResult)
    $ephemeraMailingFilePath
    ))

(defun b:mtdt:compose:ephemera|mailBufRecord (<ephemeraMailingBaseDir <bufName)
  "Record name of <buf at <ephemeraMailingFilePath as mail.buf. It can then be obtained."
    (with-temp-file (concat (file-name-as-directory <ephemeraMailingBaseDir) "mail.buf")
      (insert (s-lex-format "${<bufName}"))))

(defun b:mtdt:compose:ephemera|mailBufObtain (<ephemeraMailingFilePath)
  "Record name of <buf at <ephemeraMailingFilePath as mail.buf. It can then be obtained."
  (let* (
         ($fileName (concat (file-name-directory <ephemeraMailingFilePath) "mail.buf"))
         )
    (if (file-readable-p $fileName)
        (f-read (concat (file-name-directory <ephemeraMailingFilePath) "mail.buf"))
      nil)))

;;;
;;; (b:mtdt:mailing:content|filePath)
;;;
(defun b:mtdt:mailing:content|findFile ()
  "Return nil if file does not exist. Based on existence, determine name of mailing content file.
NOTYET: mode could come from ($composeFwrk (b:mtdt:mailing:getComposeFwrk|with-buffer <mailingBuf))
We first look for content.msgOrg.
"
  (let* (
         ($filePath nil)
         )
    (cond
     ((file-readable-p (setq $filePath (f-join default-directory "content.orgMsg")))
      (find-file $filePath)
      (org-msg-edit-mode)
      )
     ((file-readable-p (setq $filePath (f-join default-directory "content.mail")))
      (find-file $filePath)
      (message-mode)
      )
     (t
      $filePath
      ))))

;;;
;;;
(defun mtdt/gotoMailBuf ()
  "Go to the unsent buffer or to mailing's content.mail buffer. Primarily used in mailing.mastex."
  (interactive)
  (let* (
         ($ephemeraMailBufName (b:mtdt:compose:ephemera|mailBufObtain default-directory))
         )
    (when $ephemeraMailBufName
      (display-buffer
       (switch-to-buffer $ephemeraMailBufName)))
    (unless $ephemeraMailBufName
      (b:mtdt:mailing:content|findFile)
      )
    ))


(defun b:mtdt:content:update/mailBufAndVisit ()
  "Goto mailBuf, update it, raise it. preview it.
Called when content has been edited and is ready."
  (mtdt/gotoMailBuf)
  (org-dblock-update-buffer-bx)
  (mml-preview)
  )

(defun b:mtdt:content:tex/buildSentinel (<proc <event)
  "This is triggered after build is complete. We go back to the mail buffer.
dblock update it and perview."
  (message (s-lex-format "b:mtdt:content:tex/buildSentinel triggered for proc=${<proc} event=${<event}"))
  (b:mtdt:content:update/mailBufAndVisit)
  )

(defun b:mtdt:content:tex/buildReleaseAndMailBuf ()
  "LaTeX build+release + display build continue in sentinel when build is complete."
  (interactive)
  (message "From buildReleaseAndMailBuf -- Running: lcntProc.sh -v -n showRun -i buildResultsRelease")
  (let* (
         ($tmpName (make-temp-name "-output"))
         ($bufName (format "*%s*" $tmpName))
         ($process nil))
    (save-buffer)
    (setq $process (start-process "lcntProc.sh" $bufName
                                  "/bin/sh" "-c" "lcntProc.sh -v -n showRun -i buildResultsRelease"))
    (set-process-sentinel $process 'b:mtdt:content:tex/buildSentinel)
    (display-buffer (switch-to-buffer $bufName))))

(defun b:mtdt:gnus:reply|ephemeraSetup ()
  "Triggered when replying with Gnus, after the article has been setup"
  (message "b:mtdt:gnus:reply|ephemeraSetup was triggered, likely from gnus-message-setup-hook")
  (let* (
	 ($point)
         ($ephemeraMailingFilePath:ltr nil)
         ($ephemeraMailingFilePath:rtl nil)
	 )
    (setq $point (search-forward "--citation follows this line (read-only)--" nil t))
    (when $point
      (forward-line -1)
      (insert "\n")
      (insert "\n#+BEGIN: bx:b:mtdt:content/actions")
      (insert "\n#+END:")
      (insert "\n")

      (setq $ephemeraMailingFilePath:ltr
	    (b:mtdt:compose:ephemera|copyToBase
             b:mtdt:reply:templates:leftToRight
             "."))

      (setq $ephemeraMailingFilePath:rtl
	    (b:mtdt:compose:ephemera|copyToBase
             b:mtdt:reply:templates:rightToLeft
             "."))

      (save-excursion
        (message-carefully-insert-headers (list (cons 'X-tmp-mailingPath-ltr $ephemeraMailingFilePath:ltr)))
        (message-carefully-insert-headers (list (cons 'X-tmp-mailingPath-rtl $ephemeraMailingFilePath:rtl)))
        (message-sort-headers)
        )

      (org-dblock-update-buffer-bx)
      )

    $point
    ))

(defun b:mtdt:originate:orgMsg|plusSetup ()
  "Addition originate features.

"
  (message "b:mtdt:originate:orgMsg|plusSetup was triggered, likely from gnus-message-setup-hook")
  (when org-msg-mode
    (let* (
	   ($point)
	   )
      (setq $point (search-forward "--citation follows this line (read-only)--" nil t))
      (when $point
        (forward-line -1)
        (insert "\n")
        (insert "\n#+BEGIN: bx:b:mtdt:content/actions")
        (insert "\n#+END:")
        (insert "\n"))

      (when (not $point)
        (forward-line -1)
        (insert "\n")
        (insert "\n#+BEGIN: bx:b:mtdt:content/actions")
        (insert "\n#+END:")
        (insert "\n"))

      (org-dblock-update-buffer-bx)
    $point
    )))



(defun b:mtdt:mailing:baseDir|set (<baseDir)
  "Setup the specified ephemeraBaseDir for current unsent mailBuf."
  (setq default-directory <baseDir)
  (save-excursion
    (message-carefully-insert-headers (list (cons 'X-tmp-mailingPath <baseDir)))
    (message-sort-headers)
    )
  (b:mtdt:gnus:reply|orgHtmlDblockSetup)
  (b:mtdt:compose:ephemera|mailBufRecord <baseDir (current-buffer))
  )

(defun b:mtdt:gnus:reply|orgHtmlDblockSetup ()
  "Called ephermaBase has been selected.
Is idempotent."
  (message "b:mtdt:gnus:reply|orgHtmlDblockSetup Entered")
  (let* (
	 ($orgHtmlDblockPoint nil)
         ($citationLinePoint nil)
	 )
    (save-excursion
      (goto-char (point-min))
      (setq $orgHtmlDblockPoint
            (search-forward "#+BEGIN: bx:file-insert:org:html :file" nil t))
      )

    (unless $orgHtmlDblockPoint
      (save-excursion
        (goto-char (point-min))
        (setq $citationLinePoint
              (search-forward "--citation follows this line (read-only)--" nil t))
        )

      (when $citationLinePoint
        (goto-char $citationLinePoint)
        (forward-line -1)
        (insert "\n")
        (insert "\n#+BEGIN: bx:file-insert:org:html :file \"./rel/mailing-html/index.html\"")
        (insert "\n#+END:")
        (insert "\n")
        ))))


;;;(add-hook 'message-setup-hook 'b:mtdt:gnus:reply|ephemeraSetup)
;;;(remove-hook 'message-setup-hook 'b:mtdt:gnus:reply|ephemeraSetup)

(add-hook 'gnus-message-setup-hook 'b:mtdt:gnus:reply|ephemeraSetup 91)

;;;
;;; (b:mtdt:compose-mail/basic)
;;;
(defun b:mtdt:compose-mail/basic ()
  "When org-msg mode is active, invoke compose-mail without it."
  (let* (
	 ($gnus-message-setup-hook gnus-message-setup-hook)
	 )
    ;;;

    (when org-msg-mode
      (message (s-lex-format "disabling orgMsg:: org-msg-mode was: ${org-msg-mode}"))
      (message (s-lex-format "before:: gnus-message-setup-hook was: ${gnus-message-setup-hook}"))
      (org-msg-mode -1)
      )
    (message (s-lex-format "gnus-message-setup-hook is: ${gnus-message-setup-hook}"))
    (compose-mail)
    ;;(setq gnus-message-setup-hook $gnus-message-setup-hook)
    ))

;;;
;;; (b:mtdt:compose-mail/orgMsg)
;;;
(defun b:mtdt:compose-mail/orgMsg ()
  "When org-msg mode is active, invoke compose-mail without it."
  (let* (
	 ($gnus-message-setup-hook gnus-message-setup-hook)
	 )
    ;;; (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase} $composeFwrk=${$composeFwrk}"))

    (when (not org-msg-mode)
      (message (s-lex-format "enabling orgMsg:: org-msg-mode was: ${org-msg-mode}"))
      (message (s-lex-format "before:: gnus-message-setup-hook was: ${gnus-message-setup-hook}"))
      (org-msg-mode)
      )
    (message (s-lex-format "gnus-message-setup-hook is: ${gnus-message-setup-hook}"))
    (compose-mail)
    ;;(setq gnus-message-setup-hook $gnus-message-setup-hook)
    ))

;;;
;;; (b:mtdt:compose-mail/selected)
;;;
(defun b:mtdt:compose-mail/selected ()
  "When org-msg mode is active, invoke compose-mail without it."
  (let* (
	 ($gnus-message-setup-hook gnus-message-setup-hook)
	 )
    (message (s-lex-format "org-msg-mode=${org-msg-mode}"))
    (compose-mail)
    ))


;;;
;;; (process-id (get-buffer-process (lsip-buffer-for-host "localhost")))
;;; (process-buffer (lsip-buffer-for-host "localhost"))
;;;
;; (defun b:mtdt:content:tex/buildReleaseAndMailBuf%% ()
;;   "Abandoned. Could not get it it to work.
;; Signal was not being seen by Sentinel.
;; Simpler version above works fine.
;; Needs to be revisited."
;;   (interactive)
;;   (message "From buildReleaseAndMailBuf -- Running: lcntProc.sh -v -n showRun -i buildResultsRelease; kill -SIGINT $$")
;;   (lsip-local-run-command-here "lcntProc.sh -v -n showRun -i buildResultsRelease; kill -SIGINT $$")
;;   (let* (
;;          ($shell-buffer (lsip-buffer-for-host "localhost"))
;;          ($shell-process (get-buffer-process $shell-buffer))
;;          )
;;     (message (format "%s" (process-command $shell-process)))
;;     (set-process-sentinel $shell-process 'b:mtdt:content:tex/buildSentinel)
;;     ;;;
;;     ;;; This is the signal that triggers the sentinel
;;     ;;; Rest happens in there
;;     (message (format "%s From buildReleaseAndMailBuf -- Running: kill -SIGINT $$" $shell-process))
;;     (sleep-for 1)
;;     (lsip-local-run-command-here "kill -SIGINT $$")
;;     (interrupt-process $shell-process)
;;   )))


;; (defun b:mtdt:bbdb:actions-placeHolder% (mailingName)
;;   "This is a place holder for now, to be sorted out later."
;;   (setq bbdb-action-alist
;; 	(append
;; 	 bbdb-action-alist
;; 	 '(("bxms-compose-start-family.fa-blank-basicText.fa"
;; 	    ;;
;; 	    (setq bbdb-action-hook nil)
;; 	    (add-hook 'bbdb-action-hook 'bxms:bbdb:compose:start-family.fa-blank-basicText.fa)
;; 	    ))))


;;   (setq bbdb-action-alist
;; 	(append
;; 	 bbdb-action-alist
;; 	 '(("bxms-toall-start-family.fa-blank-basicText.fa"
;; 	    ;;
;; 	    (setq bbdb-action-hook nil)
;; 	    (add-hook 'bbdb-action-hook 'bxms:bbdb:toall:start-family.fa-blank-basicText.fa)
;; 	    ))))

;;   (setq bbdb-action-alist
;; 	(append
;; 	 bbdb-action-alist
;; 	 '(("bxms-batch-start-family.fa-blank-basicText.fa"
;; 	    ;;
;; 	    (setq bbdb-action-hook nil)
;; 	    (add-hook 'bbdb-action-hook 'bxms:bbdb:batch:start-family.fa-blank-basicText.fa)
;; 	    ))))
;;   )


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
