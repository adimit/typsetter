(setq org-latex-default-packages-alist
      '(("" "fontspec" nil)
        ("" "csquotes" nil)
                                        ; Xelatex-compatible Emacs-default content of this variable
        ("" "graphicx" nil)
        ("" "longtable" nil)
        ("" "float" nil)
        ("" "wrapfig" nil)
        ("" "rotating" nil)
        ("normalem" "ulem" t)
        ("" "amsmath" t)
        ("" "marvosym" t)
        ("" "wasysym" t)
        ("" "amssymb" t)
        ("breaklinks,colorlinks,citecolor=blue" "hyperref" nil)
        "\\tolerance=1000"
                                        ; Polyglossia has to be loaded last for some reason I don't remember.
        ("" "polyglossia" nil)))
