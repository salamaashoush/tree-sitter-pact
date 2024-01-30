
(defun body: (_)* @function.inner) @function.outer
(defpact body: (_)* @function.inner) @function.outer
(defconst body: (_)* @function.inner) @function.outer
(defcap body: (_)* @function.inner) @function.outer
(defproperty body: (_)* @function.inner) @function.outer

;helix
(defun body: (_)* @function.inside) @function.around
(defpact body: (_)* @function.inside) @function.around
(defconst body: (_)* @function.inside) @function.around
(defcap body: (_)* @function.inside) @function.around
(defproperty body: (_)* @function.inside) @function.around



(module body: (_)* @class.inner) @class.outer

;; comment
(comment) @comment.outer


;; number
(decimal) @number.inner
(integer) @number.inner


(object
  (pair
    key: (_) @assignment.lhs
    value: (_) @assignment.inner @assignment.rhs) @assignment.outer)


(s_expression (_)* @block.inner) @block.outer

(parameter (_) @parameter.inner) @parameter.outer

(let_bind_pair
 (let_variable) @assignment.lhs
 value: (_) @assignment.inner @assignment.rhs) @assignment.outer
