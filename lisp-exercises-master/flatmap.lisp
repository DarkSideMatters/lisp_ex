;;flatmap
;;Part 1
(defun myMap (f m)
  (if (equal nil m) nil (cons (funcall f (car m)) (myMap f (cdr m)))))


(write (myMap (lambda (a) (+ a 2)) (list 3 5 7 9)))

;;Part 2

(defun myFlatten (l)
  (if (equal nil l) nil (append (car l) (myFlatten (cdr l)))))


(write (myFlatten (list (list 1 2 3) (list 4 5 6))))


;;Part 3
(defun myFlatMap (f l)
  (myMap f (myFlatten l)))

(write (myFlatMap(lambda (a)(+ a 2))(list (list 1 2 3)(list 4 5 6))))



;;works but not as intended
(write
  (myMap (lambda (a) (+ a 2))(myFlatten(list (list 1 2 3 ) (list 4 5 6 ))))
  )
