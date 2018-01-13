; Set up citation link format
(with-eval-after-load 'org
  (defun org-cite-link-export (command path desc format)
    (cond
     ((eq format 'latex) (format "\\%s{%s}" command path))))

  (org-add-link-type "autocite" 'open-pdf-from-library
                     (lambda (path desc format)
                       (org-cite-link-export "autocite" path desc format)))
  (org-add-link-type "textcite" 'open-pdf-from-library
                     (lambda (path desc format)
                       (org-cite-link-export "textcite" path desc format))))
