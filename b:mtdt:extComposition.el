;;; b:mtdt:extComposition.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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
** This File: /bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:extComposition.el
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


;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:b:mtdt:extComposition" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:b:mtdt:extComposition>> ~nil~ --  -- Blee Mailings Library. Used by b:b:mtdt:distr.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:b:mtdt:extComposition nil
;;;#+END:
" #+begin_org
** DocStr: Blee Mailings Library. Used by b:b:mtdt:distr.
#+end_org "
  :group 'blee
  :prefix "b:b:mtdt:mailings:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )


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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compositionModel|select>>  --  -- Based on <model, select composition model.  [[elisp:(org-cycle)][| ]]
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

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:mtdt+compositionModel" :defValue "'b:mtdt+compositionModel::NativeComposition" :comment "/MENU/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt+compositionModel>> ~'b:mtdt+compositionModel::NativeComposition~ -- /MENU/ -- Selected and effective compose framework as customizable choices.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:mtdt+compositionModel 'b:mtdt+compositionModel::NativeComposition
;;;#+END:
    " #+begin_org
** DocStr: Selected Composition Model.
#+end_org "
	:group 'b:b:mtdt:mailings
	:type '(choice
	        (const :tag "ExtComposition" b:mtdt+compositionModel::ExtComposition "External Composition Model." )
		(const :tag "NativeComposition" b:mtdt+compositionModel::NativeComposition "Native Composition Model.")
                ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt+compositionModel|actuate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt+compositionModel|actuate>>  --  -- Based on <framework, set things up for composition in that framework.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt+compositionModel|actuate (
;;;#+END:
                                       <compositionModel
                                       )
  " #+begin_org
** DocStr: Based on <framework, set things up for composition in that framework.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
	 )
    (b:var:custom:choices|set 'b:mtdt+compositionModel <compositionModel)
    b:mtdt+compositionModel))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose+framework|actuate 'b:mtdt:compose+framework::basic)
#+END_SRC

#+RESULTS:
: b:mtdt:compose+framework::basic

" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "External Composition" :extraInfo "LaTeX (lcnt) editable content"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _External Composition_: |]]  LaTeX (lcnt) editable content  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:originate|with-file%%%" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:originate|with-file%%%>>  --  -- Out of macro work of b:mtdt:originate$mailing-defun. ModuleLocal.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:originate|with-file%%% (
;;;#+END:
                                    <mailingFilePath
                                    args
                                    )
  " #+begin_org
** DocStr: Out of macro work of b:mtdt:originate$mailing-defun. ModuleLocal.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
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

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailings|framedComposeWithFn (list (b:mtdt:name|funcName (symbol-name './examples/mailings/rtl-example.orgMsg))))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "bx:ephemera:dated|pathName-in" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<bx:ephemera:dated|pathName-in>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun bx:ephemera:dated|pathName-in (
;;;#+END:
                                      <baseDir
                                      )
  " #+begin_org
** DocStr: Return (format-time-string \"%Y-%m-%d-%H-%M-%S\") plus a counter.
Which makes for a uniq file name.
If that date to a second exists, do a plus counter.
NOTYET, counter has not been implemented yet.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         ($ephemeraUniqe (format-time-string "%Y-%m-%d-%H-%M-%S"))
	 ($result (f-join <baseDir $ephemeraUniqe))
	 )
    $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(bx:ephemera:dated|pathName-in (symbol-name '/tmp))
#+END_SRC

#+RESULTS:
: /tmp/2024-05-28-15-50-14

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose:ephemera|copyToBase" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose:ephemera|copyToBase>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose:ephemera|copyToBase (
;;;#+END:
                                           <mailingFilePath
                                           <extSrcBase
                                           )
  " #+begin_org
** DocStr: Copy recursively <extSrcBase to b:mtdt:compose:ephemera:base.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
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

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose:ephemera|copyToBase (symbol-name '/bisos/git/bxRepos/blee/mtdt-mailing/examples/mailings/extArtMailing/extArtMailing.mail) (symbol-name '.))
#+END_SRC

#+RESULTS:
: /bisos/tmp/2024-05-28-16-00-16/rtl-example.orgMsg

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose:ephemera|mailBufRecord" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose:ephemera|mailBufRecord>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose:ephemera|mailBufRecord (
;;;#+END:
                                              <ephemeraMailingBaseDir
                                              <bufName
                                              )
  " #+begin_org
** DocStr: Record name of <buf at <ephemeraMailingFilePath as mail.buf. To be obtained with [[b:mtdt:compose:ephemera|mailBufObtain]].
*** NOTYET, Is it used for going between lisp and bash?
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         ($mailBufFile (concat (file-name-as-directory <ephemeraMailingBaseDir) "mail.buf"))
         )
    (with-temp-file $mailBufFile
      (insert (s-lex-format "${<bufName}"))
      )
    $mailBufFile))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose:ephemera|mailBufRecord (symbol-name './examples/mailings/) (current-buffer))
#+END_SRC

#+RESULTS:
: ./examples/mailings/mail.buf

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:compose:ephemera|mailBufObtain" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:compose:ephemera|mailBufObtain>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:compose:ephemera|mailBufObtain (
;;;#+END:
                                              <ephemeraMailingBaseDir
                                              )
  " #+begin_org
** DocStr: Obtain the name of the mailing buffer that was previously recorded by [[b:mtdt:compose:ephemera|mailBufRecord]].
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         ($fileName (concat (file-name-directory <ephemeraMailingBaseDir) "mail.buf"))
         )
    (if (file-readable-p $fileName)
        (f-read $fileName)
      nil)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:compose:ephemera|mailBufObtain (symbol-name './examples/mailings/))
#+END_SRC

#+RESULTS:
: b:mtdt:mailings.el

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:mailing:content|findFile%%%" :comment "Likely UNUSED" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:mailing:content|findFile%%%>>  -- Likely UNUSED -- LIKELY UNUSED Return nil if file does not exist. Based on existence, determine name of mailing content file.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:mailing:content|findFile%%% (
;;;#+END:
                                        )
  " #+begin_org
** DocStr: LIKELY UNUSED Return nil if file does not exist. Based on existence, determine name of mailing content file.
NOTYET: mode could come from ($composeFwrk (b:mtdt:mailing:getComposeFwrk|with-buffer <mailingBuf))
We first look for content.orgMsg.
#+end_org "
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

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:mailing:content|findFile)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "mtdt/gotoMailBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<mtdt/gotoMailBuf>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun mtdt/gotoMailBuf (
;;;#+END:
                          )
  " #+begin_org
** DocStr: Go to the unsent buffer or to mailing's content.mail buffer. Primarily used in mailing.mastex.
#+end_org "
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

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(mtdt/gotoMailBuf)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "External LaTeX Content" :extraInfo "LaTeX (lcnt) editable content"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _External LaTeX Content_: |]]  LaTeX (lcnt) editable content  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:content:update/mailBufAndVisit" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:content:update/mailBufAndVisit>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:content:update/mailBufAndVisit (
;;;#+END:
                          )
  " #+begin_org
** DocStr: Goto mailBuf, update it, raise it. preview it.
Called when content has been edited and is ready.
#+end_org "
  (mtdt/gotoMailBuf)
  (org-dblock-update-buffer-bx)
  (mml-preview)
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
NOTYET
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:content:tex/buildSentinel" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:content:tex/buildSentinel>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:content:tex/buildSentinel (
;;;#+END:
                                         )
  " #+begin_org
** DocStr: This is triggered after build is complete. We go back to the mail buffer.
dblock update it and perview.
#+end_org "
  (message (s-lex-format "b:mtdt:content:tex/buildSentinel triggered for proc=${<proc} event=${<event}"))
  (b:mtdt:content:update/mailBufAndVisit)
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
NOTYET
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:content:tex/buildReleaseAndMailBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:content:tex/buildReleaseAndMailBuf>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:content:tex/buildReleaseAndMailBuf (
;;;#+END:
                                    )
  " #+begin_org
** DocStr: LaTeX build+release + display build continue in sentinel when build is complete.
#+end_org "
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


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
NOTYET
#+END_SRC
" orgCmntEnd)




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:extComposition)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
