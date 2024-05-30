;;; b:mtdt:gnus.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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

(defgroup b:mtdt:gnus nil
  "Blee Mailings Library. Used by b:b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:mailings:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;

(defvar b:mtdt:gnus:mailing:selected
  nil
  "Selected Mailing.")


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


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailings|select" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailings|select>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:gnus:mailing|select (
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
     (setq b:mtdt:gnus:mailing:selected <mailingFunc)
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|select )
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:gnus)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
