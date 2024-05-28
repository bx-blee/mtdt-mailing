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


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Composition Framework" :extraInfo "basic, orgMsg, latex, html, ofSelMailing"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Composition Framework_: |]]  basic, orgMsg, latex, html, ofSelMailing  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defconst b:mtdt:compose:framework::basic "Basic" "Basic Plain Text Mail Composition.")
(defconst b:mtdt:compose:framework::orgMsg "OrgMsg" "OrgMsg Mail Composition.")
(defconst b:mtdt:compose:framework::latex "LaTeX" "External LaTeX Mail Composition.")
(defconst b:mtdt:compose:framework::html "HTML" "External HTML Mail Composition.")
(defconst b:mtdt:compose:framework::ofSelMailing "OfSelMailing" "Based on Selected Mailing Framework.")

(defvar b:mtdt:compose:framework
  b:mtdt:compose:framework::orgMsg
  "Selected and Effective compose fashion.")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose:framework|setup" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose:framework|setup>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose:framework|setup (
;;;#+END:
                                       <framework
                                       )
  " #+begin_org
** DocStr: Based on <framework, set things up for composition in that framework.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
	 )
    (cond
     ((eq <framework  b:mtdt:compose:framework::basic)
      (setq b:mtdt:compose:framework <framework)
      (when org-msg-mode
        (org-msg-mode -1)))
     ((eq <framework  b:mtdt:compose:framework::orgMsg)
      (setq b:mtdt:compose:framework <framework)
      (when (not org-msg-mode)
        (org-msg-mode)))
     ((eq <framework  b:mtdt:compose:framework::latex)
      (setq b:mtdt:compose:framework <framework)
      (when org-msg-mode
        (org-msg-mode -1)))
     ((eq <framework  b:mtdt:compose:framework::html)
      (setq b:mtdt:compose:framework <framework)
      (when org-msg-mode
        (org-msg-mode -1)))
     ((eq <framework  b:mtdt:compose:framework::ofSelMailing)
      (setq b:mtdt:compose:framework <framework)
      (when org-msg-mode
        (org-msg-mode -1)))
     (t
      (setq b:mtdt:compose:framework nil)
      (error "Bad input"))
     )
    b:mtdt:compose:framework))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose:framework|setup b:mtdt:compose:framework::orgMsg)
#+END_SRC

#+RESULTS:
: OrgMsg

" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Composition Model" :extraInfo "ExtComposition, NativeComposition"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Composition Model_: |]]  ExtComposition, NativeComposition  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;
(defconst b:mtdt:compositionModel::ExtComposition "ExtComposition" "External Composition Model.")
(defconst b:mtdt:compositionModel::NativeComposition "NativeComposition" "Native Composition Model.")

(defvar b:mtdt:compositionModel
  b:mtdt:compositionModel::NativeComposition
  "Selected Composition Model.")

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compositionModel|select" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compositionModel|select>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compositionModel|select (
;;;#+END:
                                       <model
                               )
  " #+begin_org
** DocStr: Based on <model, select composition model.
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (cond
     ((eq <model b:mtdt:compositionModel::ExtComposition)
      (setq b:mtdt:compositionModel <model))
     ((eq <model b:mtdt:compositionModel::NativeComposition)
      (setq b:mtdt:compositionModel <model))
     (t
      (setq b:mtdt:compositionModel nil)
      (error "Bad input"))
     )
    b:mtdt:compositionModel))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compositionModel|select b:mtdt:compositionModel::ExtComposition)
#+END_SRC

#+RESULTS:
: ExtComposition

" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing Purpose" :extraInfo "Dist, Template, Mua, Any"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing Purpose_: |]]  Dist, Template, Mua, Any  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;
(defconst b:mtdt:purpose::Mailing  "m" "Distribution: No recipients, pre-made Native or External content.")
(defconst b:mtdt:purpose::Template "t" "Template: Recipients, Always External content.")
(defconst b:mtdt:purpose::Mua      "g" "Mua: (g for Gnus) For use by MUA for replys and forwards.")
(defconst b:mtdt:purpose::Any      "a" "Any: General purpose. For list preparation gets added to all of above.")

(defvar b:mtdt:mailingPurpose
  b:mtdt:purpose::Any
  "Default purpose. Associated with X-MailingPurpose")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:purpose|set" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:purpose|set>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:purpose|set (
;;;#+END:
                           <purpose
                           )
  " #+begin_org
** DocStr: Based on specified <purpose, set b:mtdt:purpose. Defaults to b:mtdt:purpose::Mailing.
This is usually called after reading X-MailingPurpose header. The value impacts derived function names.
Returns value of b:mtdt:purpose.
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (cond
     ((eq <purpose  b:mtdt:purpose::Mailing)
      (setq b:mtdt:purpose <purpose))
     ((eq <purpose  b:mtdt:purpose::Template)
      (setq b:mtdt:purpose <purpose))
     ((eq <purpose  b:mtdt:purpose::Mua)
      (setq b:mtdt:purpose <purpose))
     ((eq <purpose  b:mtdt:purpose::Any)
      (setq b:mtdt:purpose <purpose))
     (t
      (setq b:mtdt:purpose b:mtdt:purpose::Mailing)
      (error "Bad input"))
     )
    b:mtdt:purpose))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:purpose|set b:mtdt:purpose::Template)
#+END_SRC

#+RESULTS:
: t

" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing Headers" :extraInfo "Tested with examples"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing Headers_: |]]  Tested with examples  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mailingname" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mailingname>>  --   [[elisp:(org-cycle)][| ]]
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
(b:mtdt:header:buf:get|mailingname (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mailingpurpose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mailingpurpose>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|mailingpurpose (
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
     (setq $result (b:email:header:buf|get 'x-mailingpurpose <mailingBuf))
     (unless $result
       (setq $result b:mtdt:purpose::Any))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|mailingpurpose (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|composeFwrk" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|composeFwrk>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|composeFwrk (
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
     (setq $result (b:email:header:buf|get 'x-composefwrk <mailingBuf))
     (unless $result
       (setq $result "message"))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|composeFwrk (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC

#+RESULTS:
: msgOrg

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|paramsOfMailingParams" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|paramsOfMailingParams>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:buf:get|paramsOfMailingParams (
;;;#+END:
                                                    <mailingBuf
                                                    )
   " #+begin_org
** DocStr: RETURNS Specified Header as a string.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
	  ($paramsAsStr (b:email:header:buf|get 'x-mailingparams <mailingBuf))
	  ($params (append (list :name 'someName)
			 (read (concat "(" $paramsAsStr ")"))))
	 )
    (message "b:mtdt:mailing:params|from-buf: paramsAsStr=%s" $paramsAsStr)
    $params))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email:header:buf|get (symbol-name 'NOTYET))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:file:get|mailingname" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:file:get|mailingname>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:file:get|mailingname
    (
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
(b:mtdt:header:file:get|mailingname (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing Derivation As Func With File" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing Derivation As Func With File_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive|funcName" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive|funcName>>  --   [[elisp:(org-cycle)][| ]]
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
     (setq $result (s-lex-format "b:mtdt:${$mailingPurpose}|${$mailingName}"))
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: b:mtdt:a|com.example@first.last-fa-org

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive|func" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive|func>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive|func (
;;;#+END:
                             <mailingFilePath
                             )
  " #+begin_org
** DocStr:
#+end_org "
    (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($funcName (b:mtdt:name|funcName <mailingFilePath))
          )
      (b:mtdt:name$derive $funcName <mailingFilePath)
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: b:mtdt:a|com.example@first.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defmacro :defName "b:mtdt:derive$func"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defmacro   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive$func>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defmacro b:mtdt:derive$func (
;;;#+END:
                              <funcName
                              <mailingFilePath
                             )
  " #+begin_org
** DocStr:
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
(b:mtdt:derive$func (symbol-name 'b:mtdt:a|ignoreTest) (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
| lambda | (args) | (interactive p) | (symbol-name './examples/mailings/rtl-example.msgOrg) |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(call-interactively 'b:mtdt:a|ignoreTest)
(b:mtdt:a|ignoreTest)
#+END_SRC

#+RESULTS:
: ./examples/mailings/rtl-example.msgOrg

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:name$derive (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.msgOrg)) (symbol-name './examples/mailings/rtl-example.msgOrg))

#+END_SRC

#+RESULTS:
| lambda | (args) | (interactive p) | (symbol-name './examples/mailings/rtl-example.msgOrg) |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(call-interactively (intern (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC

#+RESULTS:
: ./examples/mailings/rtl-example.msgOrg

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesList" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesList>>  --   [[elisp:(org-cycle)][| ]]
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
       (setq $mailingNamesList
             (append
              $mailingNamesList
              (list (b:mtdt:derive/fromFile $eachMailingFile)))))
     $mailingNamesList))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesStr" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesStr>>  --   [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFileAndSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive/fromFilesAndSelect (
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailings Names Selection and Invocations_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

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


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailings Invokations" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailings Invokations_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedComposeWithFns" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedComposeWithFns>>  --   [[elisp:(org-cycle)][| ]]
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
(b:mtdt:mailings|framedComposeWithFn (list (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC
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
        ($mailingFilePath (call-interactively <mailingFunc))
	)

  (select-frame (make-frame-command))
  (find-file $mailingFilePath)
  ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|framedComposeWithFn (intern (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC
" orgCmntEnd)

;;;
;;; b:mtdt:dmf|compose
;;;

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedExtComposeWithFns" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedExtComposeWithFns>>  --   [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedExtComposeWithFn>>  --   [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Mailing File Processors" :extraInfo "b:mtdt:mfp"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Mailing File Processors_: |]]  b:mtdt:mfp  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mfp/compose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/compose>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mfp/compose (
;;;#+END:
                           <mailingFile
                           )
  " #+begin_org
** DocStr: Create a frame, select it, then invoked =<mailingFunc=.
#+end_org "
    (let* (
        ($inHere (b:log|entry (b:func$entry)))
	)))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|framedComposeWithFn (list (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

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
