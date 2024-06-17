;;; b:email.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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
** This File: /bisos/git/bxRepos/blee/mtdt-mailing/b:email.el
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

;;(require b:mtdt:bbdb3)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defgroup b:email nil
  "Blee Email Common Library. Used by mtdt: mrm: abstract-mua, etc."
  :group 'blee
  :prefix "b:email:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:email|oorr" :advice () :comment /INCOMPLETE/
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:email|oorr>>  -- /INCOMPLETE/ -- Return an email address based on one of the specified keywords.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:email|oorr (
;;;#+END:
                         &key
                         (addr nil)
                         (bbdb nil)
                         (vcard nil)
                        )
   " #+begin_org
** DocStr: Return an email address based on one of the specified keywords.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result "")
         )
     (cond (addr
            (setq $result addr))
           (bbdb
            (setq $result (b:mtdt:bbdb3|addrForNameGet bbdb)))
           (vcard
            (setq $result "NOTYET-"))
           (t
            (b::error $inHere
                      (s-lex-format
                       "Missing named argument")))
           )
           $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email|oorr :addr (symbol-name 'user@example.com))
#+END_SRC

#+RESULTS:
: user@example.com

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email|oorr :bbdb (symbol-name 'exampleBbdbEntry))
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:email:address|insert" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:email:address|insert>>  --  -- Insert =addrStr= at point. Comma separate it if needed. Used for entry of addresses in mail headers.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:email:address|insert (
;;;#+END:
                               addrStr
                               )
   " #+begin_org
** DocStr: Insert =addrStr= at point. Comma separate it if needed. Used for entry of addresses in mail headers.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($precedingChar (string (preceding-char)))
         )
     (if-when (string= $precedingChar " ")
       (insert addrStr))
     (else-unless (string= $precedingChar " ")
       (insert (s-lex-format ", ${addrStr}")))
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email:address|insert (symbol-name 'user@example.com))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:email:header:buf|get" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:email:header:buf|get>>  --  -- RETURNS Specified Header as a string.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:email:header:buf|get (
;;;#+END:
                               <headerName
                               <mailBuffer
                               )
   " #+begin_org
** DocStr: RETURNS Specified Header as a string.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($oldBuf (current-buffer))
          ($result nil)
          )
     (set-buffer <mailBuffer)
     (goto-char (point-min))
     (setq $result (mail-header <headerName (mail-header-extract-no-properties)))
     (switch-to-buffer $oldBuf)
     $result
   ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email:header:buf|get 'x-mailingname (save-current-buffer (find-file (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC

#+RESULTS:
: com.example@first.last-fa-org

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:email|latest-unsent-mail-buf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:email|latest-unsent-mail-buf>>  --  -- Return most recently created unsent mail buffer.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:email|latest-unsent-mail-buf (
;;;#+END:
                                       )
   " #+begin_org
** DocStr: Return most recently created unsent mail buffer.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($found nil)
          )
     (loop-for-each $each (buffer-list)
       ;; (message (buffer-name each))
       (when (s-contains? "unsent mail" (buffer-name $each))
         (setq $found $each)
         (loop-break)))
    $found))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email|latest-unsent-mail-buf)
#+END_SRC

#+RESULTS:
: #<buffer *unsent mail*>

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:email|latest-sent-mail-buf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:email|latest-sent-mail-buf>>  --  -- Return most recently created unsent mail buffer.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:email|latest-sent-mail-buf (
;;;#+END:
                                       )
   " #+begin_org
** DocStr: Return most recently sent mail buffer. These had not been displayed, so ordering is different.
Unlike unsent mail, we don't loop-break.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($found nil)
          )
     (loop-for-each $each (buffer-list)
       ;; (message (buffer-name each))
       (when (s-contains? "*sent mail" (buffer-name $each))
         (setq $found $each)
         ;;(loop-break)
         ))
    $found))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:email|latest-sent-mail-buf)
#+END_SRC

#+RESULTS:
: #<buffer *unsent mail*>

" orgCmntEnd)




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:email)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
