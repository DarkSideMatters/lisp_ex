;; adder fucntion
(defun adder (l)
  (if (equal nil l) nil (cons (+ (car l) 2) (adder (cdr l)))))

(write (adder (list 2 5 20 25 42)))

;;multiplying function
(defun prodder(l)
  (if (equal nil l) nil (cons (* (car l) 3) (prodder (cdr l)))))

(write (prodder (list 2 5 20 25 42)))

;;minus function
(defun minusser(l)
  (if (equal nil l) nil (cons (- (car l) 5) (minusser (cdr l)))))

(write (minusser (list 5 10 12 25 42)))

;;ex. 4 simpler!
(defun function(a)
(if (equal nil a) nil
  ((function-to-do)
  (function (cdr a)))))
