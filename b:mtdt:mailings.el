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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose:framework|setup>>  -- Based on <framework, set things up for composition in that framework.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:purpose|set>>  -- Based on specified <purpose, set b:mtdt:purpose. Defaults to b:mtdt:purpose::Mailing.  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mailing|list" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mailing|list>>  -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mailing|list (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (apropos-internal (s-lex-format "b:mtdt:${b:mtdt:purpose::Mailing}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mailing|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:template|list" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:template|list>>  -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:template|list (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (apropos-internal (s-lex-format "b:mtdt:${b:mtdt:purpose::Template}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:template|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mua|list" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mua|list>>  -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mua|list (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (apropos-internal (s-lex-format "b:mtdt:${b:mtdt:purpose::Mua}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mua|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mailing|listPlus" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mailing|listPlus>>  -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mailing|listPlus (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (apropos-internal (s-lex-format "b:mtdt:${b:mtdt:purpose::Mailing}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mailing|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:template|listPlus" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:template|listPlus>>  -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:template|listPlus (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (apropos-internal (s-lex-format "b:mtdt:${b:mtdt:purpose::Template}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:template|list)
#+END_SRC

#+RESULTS:


" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:funcs:mua|listPlus" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:funcs:mua|listPlus>>  -- List of mailing functions as b:mtdt:m/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:funcs:mua|listPlus (
;;;#+END:
                                  )
  " #+begin_org
** DocStr: List of mailing functions as b:mtdt:m/
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (apropos-internal (s-lex-format "b:mtdt:${b:mtdt:purpose::Mua}/") 'commandp)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:funcs:mua|list)
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mailingname>>  -- RETURNS Specified Header as a string.  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:file:get|mailingname" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:file:get|mailingname>>  -- Return the value of x-mailingname field of header of <mailingFilePath.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:header:file:get|mailingname (
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


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mailingpurpose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mailingpurpose>>  -- RETURNS Specified Header as a string.  [[elisp:(org-cycle)][| ]]
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
       (setq $result b:mtdt:purpose::Mailing))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:header:buf:get|mailingpurpose (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC

#+RESULTS:
: m

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|composeFwrk" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|composeFwrk>>  -- RETURNS value of X-ComposeFwrk header of =message=  [[elisp:(org-cycle)][| ]]
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
(b:mtdt:header:buf:get|composeFwrk (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.msgOrg))))
#+END_SRC

#+RESULTS:
: msgOrg

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:header:buf:get|mtdt-customize" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|mtdt-customize>>  -- RETURNS X-MTDT-Customize header or =NA= as a string.  [[elisp:(org-cycle)][| ]]
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
     (unless $result
       (setq $result "NA"))
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:header:buf:get|paramsOfMailingParams>>  -- RETURNS Specified Header as a string.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive|funcName>>  -- From specified <mailingFilePath, obtain funcName, use [[b:mtdt:derive$func]] to defun funcName.  [[elisp:(org-cycle)][| ]]
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
(b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com.example@first.last-fa-org

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive|func" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive|func>>  -- From specified <mailingFilePath, obtain funcName, use [[b:mtdt:derive$func]] to defun funcName.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:derive|func (
;;;#+END:
                             <mailingFilePath
                             )
  " #+begin_org
** DocStr: From specified <mailingFilePath, obtain funcName, use [[b:mtdt:derive$func]] to defun funcName.
#+end_org "
    (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($funcName (b:mtdt:derive|funcName <mailingFilePath))
          )
      (b:mtdt:derive$func $funcName <mailingFilePath)
      (intern $funcName)
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive|func (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defmacro :defName "b:mtdt:derive$func"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defmacro   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive$func>>  -- Create a function called <funcName which returns <mailingFilePath when called.  [[elisp:(org-cycle)][| ]]
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
(b:mtdt:derive$func (symbol-name 'b:mtdt:a|ignoreTest) (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
| lambda | nil | (interactive) | (symbol-name './examples/mailings/rtl-example.msgOrg) |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:a|ignoreTest)
#+END_SRC

#+RESULTS:
: ./examples/mailings/rtl-example.msgOrg

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive$func (b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.msgOrg)) (symbol-name './examples/mailings/rtl-example.msgOrg))

#+END_SRC

#+RESULTS:
| lambda | nil | (interactive) | (symbol-name './examples/mailings/rtl-example.msgOrg) |

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(intern (b:mtdt:derive|funcName (symbol-name './examples/mailings/rtl-example.msgOrg)))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/funcUnintern" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/funcUnintern>>  --  Primary Interface -- Given a mailing file, derive it if needed.  [[elisp:(org-cycle)][| ]]
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
(b:mtdt:derive/funcUnintern (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFile>>  --  Primary Interface -- Given a mailing file, derive it if needed.  [[elisp:(org-cycle)][| ]]
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
	($funcName (b:mtdt:derive|funcName <mailingFilePath))
	($funcSymbol (intern $funcName))
	)
      (unless (commandp $funcSymbol)
        (b:mtdt:derive|func <mailingFilePath))

      (message (s-lex-format "Derived  ${$funcSymbol} from ${<mailingFilePath}"))
      $funcSymbol
      ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:derive/fromFile (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: b:mtdt:m/com\.example@first\.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:derive/fromFilesList" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesList>>  --  Returns mailingNamesList. Typically used in user's initial setup to derive persistant mailings.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesStr>>  --  Returns mailingNamesList  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:derive/fromFilesStrAndSelect>>  --  NOTYET. Place Holder -- Used by dblocks.  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|select" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|select>>  -- Get the first email address for =<nameStr= if it is unique.  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/defun :defName " b:mtdt:compose|basedOnMailingTemplateFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  << b:mtdt:compose|basedOnMailingTemplateFile>>  -- Visits file and calls TemplateBuf version.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun  b:mtdt:compose|basedOnMailingTemplateFile (
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
(b:mtdt:compose|basedOnMailingTemplateFile (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose|basedOnMailingTemplateFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose|basedOnMailingTemplateFile>>  -- Visits file and calls TemplateBuf version.  [[elisp:(org-cycle)][| ]]
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
(b:mtdt:compose|basedOnMailingTemplateFile (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose|basedOnMailingTemplateBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose|basedOnMailingTemplateBuf>>  -- Given a mailingBuf, run compose-mail and replace its content with template.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose|basedOnMailingTemplateBuf (
;;;#+END:
                                                   <mailingBuf
                                                   )
  " #+begin_org
** DocStr: Given a mailingBuf, run compose-mail and replace its content with template.
When composeFwrk is message, stay in message mode,
When composeFwrk is msgOrg, switch to org-msg-edit-mode.
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
     ((string-equal $composeFwrk "msgOrg")
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


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|framedComposeWithFns" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedComposeWithFns>>  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedComposeWithFn>>  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
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
      (b:mtdt:compose|with-file $mailingFilePath 0)
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedExtComposeWithFns>>  -- ExtCompose is same as originate. Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|framedExtComposeWithFn>>  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings/framedComposeWithSelected>>  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mfp/compose>>  -- Create a frame, select it, then invoked =<mailingFunc=.  [[elisp:(org-cycle)][| ]]
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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:setup-and-compose/with-file" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:setup-and-compose/with-file>>  -- Given a mailing file, derive the compose commands based on mailingName and invoke it.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:setup-and-compose/with-file (
;;;#+END:
                                           <mailingFilePath
                                           )
  " #+begin_org
** DocStr: Given a mailing file, derive the compose commands based on mailingName and invoke it.
#+end_org "
  (interactive)
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
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
    ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:setup-and-compose/with-file (symbol-name './examples/mailings/rtl-example.msgOrg))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:setup-and-compose/with-curBuffer" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:setup-and-compose/with-curBuffer>>  -- Convert buffer to filePath and call b:mtdt:setup-and-compose/with-file then.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:setup-and-compose/with-curBuffer (
;;;#+END:
                                                )
  " #+begin_org
** DocStr: Convert buffer to filePath and call b:mtdt:setup-and-compose/with-file then.
#+end_org "
  (interactive)
  (b:mtdt:setup-and-compose/with-file (buffer-file-name)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
NOTYET
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose|with-file" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose|with-file>>  -- Out of macro work of b:mtdt:compose$mailing-defun.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose|with-file (
;;;#+END:
                                 <mailingFilePath
                                 args
                                 )
  " #+begin_org
** DocStr: Out of macro work of b:mtdt:compose$mailing-defun.
#+end_org "
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($mailingParams (b:mtdt:header:buf:get|paramsOfMailingParams $mailingBuf))
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

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose|with-file (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/rtl-example.msgOrg) 0)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:setup-and-originate/with-file" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:setup-and-originate/with-file>>  -- Given a mailing file, initiate an outgoing message.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:setup-and-originate/with-file (
;;;#+END:
                                             <mailingFilePath
                                             )
  " #+begin_org
** DocStr: Given a mailing file, initiate an outgoing message.
Used for example, in dblocks such as bxPanel:mailing/originate.
  - visit the file
  - setup  b:mtdt:originate/mailingName if needed
  - invoke b:mtdt:originate/mailingName go to the to field
NOTYET, delete the BCC field, if there is one.
 #+end_org "
  (interactive)
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
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

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose|with-file (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/rtl-example.msgOrg) 0)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:originate|with-file" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:originate|with-file>>  -- Out of macro work of b:mtdt:originate$mailing-defun.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:originate|with-file (
;;;#+END:
                                             <mailingFilePath
                                             args
                                             )
  " #+begin_org
** DocStr: Out of macro work of b:mtdt:originate$mailing-defun.
ModuleLocal.
#+end_org "
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($mailingParams (b:mtdt:header:buf:get|paramsOfMailingParams $mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase}"))
    (text-mode) ;; bxms-compose-from-base checks for major-mode
    (bxms-compose-from-base (expand-file-name (file-name-directory <mailingFilePath)) args)
    (display-buffer
     (switch-to-buffer (b:mtdt:mailing|latest-unsent-mail-buf)))
    ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose|with-file (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/rtl-example.msgOrg) 0)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:setup-and-originate/with-curBuffer" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:setup-and-originate/with-curBuffer>>  -- Converts buffer to filePath and calls b:mtdt:setup-and-compose/with-file then.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:setup-and-originate/with-curBuffer (
;;;#+END:
                                                  )
  " #+begin_org
** DocStr: Converts buffer to filePath and calls b:mtdt:setup-and-compose/with-file then.
#+end_org "
    (interactive)
  (b:mtdt:setup-and-originate/with-file (buffer-file-name))
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose|with-file (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/rtl-example.msgOrg) 0)
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
