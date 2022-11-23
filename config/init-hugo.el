
(use-package ox-hugo
  :ensure t  ; Auto-install the package form Melpa
  :init
  (setq org-hugo-base-dir *org-hugo-base-dir*) ;; 本地网站根目录
  (setq org-hugo-default-section-directory "posts")
  :pin melpa ; package-archives should already have ("melpa" . "https://melpa.org/packages/"
  :after ox)


(with-eval-after-load 'org-capture
  (defun org-hugo-new-subtree-post-capture-template ()
	"Returns `org-capture' template string for new Hugo post.See `org-capture-templates' for more information."
	(let* ((title (read-from-minibuffer "Post Title: ")) ;Prompt to enter the post title
	       (fname (org-hugo-slug title)))
	  (mapconcat #'identity
		         `(
		           ,(concat "* TODO " title "        :@随笔:")
		           ":PROPERTIES:"
		           ,(concat ":EXPORT_FILE_NAME: " fname)
		           ":END:"
		           "\n\n")          ;Place the cursor here finally
		         "\n")))

  (add-to-list 'org-capture-templates
		       '("h"                ;`org-capture' binding + h
		         "Hugo post"
		         entry
		         ;; It is assumed that below file is present in `org-directory'
		         ;; and that it has a "Blog Ideas" heading. It can even be a
		         ;; symlink pointing to the actual location of all-posts.org!
		         (file+headline "~/.emacs.d/all-blog.org" "Blog Ideas")
		         (function org-hugo-new-subtree-post-capture-template))))

(provide 'init-hugo)
