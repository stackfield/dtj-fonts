(defvar *size-table* '(("" . 14) ("xxs " . 8) ("xs " . 10)
		       ("s " . 12) ("m " . 14) ("l " . 16)
		       ("xl " . 20) ("xxl " . 24)))

(defvar *application-point-table*
  '(80 100 120 140 160 180 200 240))

(defvar *lang-table* '("iso8859-1"
		       "jisx0201.1976-0"
		       "jisx0208.1983-0"
                       "iso10646-1"))

(defun generate-alias (bfontfndry families-pair
		       spacing type weight size point lang)
  (dolist (nfamilies families-pair)
    (dolist (nspacing spacing)
      (dolist (ntype type)
	(dolist (nweight weight)
	  (dolist (nsize size)
	    (dolist (npoint point)
	      (dolist (nlang lang)
		(format t "\"-dt-~A-~A-r-normal-~A~A-~A"
			ntype nweight
			(if (cdr nsize) (car nsize) "")
			(car nfamilies)
			(if (cdr nsize) (cdr nsize) (/ npoint 10)))
		(format t "-~A-*-*-~A-*-~A\""
			(if (eq 0 npoint) (* (cdr nsize) 10) npoint)
			nspacing nlang)
		(format t " \"-~A-~A-~A-r-normal-*-~A-~A-*-*-~A-*-~A\""
			bfontfndry
			(cdr nfamilies)
			nweight
			(if (cdr nsize) (cdr nsize) "*")
			(if (eq 0 npoint) (* (cdr nsize) 10) npoint)
			nspacing nlang)
		(format t "~%")
		))))))))

(defun generate-interface-alias (bfontfndry families-pair
				 spacing type weight size lang)
  (generate-alias bfontfndry families-pair spacing type weight
		  size '(0) lang))

(defun generate-application-alias (bfontfndry families-pair
				   spacing type weight point lang)
  (generate-alias bfontfndry families-pair spacing type weight
		  '(("" . nil)) point lang))
