(** %\subsection*{ support :  distinct.v }%*)
(** - "Distinct" is a fairly basic notion saying that all elements of a sequence
 are distinct (i.e. we have an injection $\{0...n-1\}\to A$) *)
Set Implicit Arguments.
Unset Strict Implicit.
Require Export finite.
Require Export Parts.

(** %\label{distinct}% *)
Definition distinct (A : Setoid) (n : Nat) (v : seq n A) :=
  forall i j : fin n, ~ i =' j in _ -> ~ v i =' v j in _.

Lemma distinct_comp :
 forall (A : Setoid) (n : Nat) (v v' : seq n A),
 distinct v -> v =' v' in _ -> distinct v'.
unfold distinct in |- *.
intros.
simpl in H0; red in H0.
red in H; red in |- *; intro.
apply H with i j; auto with algebra.
apply Trans with (v' i); auto with algebra.
apply Trans with (v' j); auto with algebra.
Qed.

Hint Resolve distinct_comp: algebra.

Definition distinct_pred (A : Setoid) (n : Nat) : Predicate (seq n A). 
intros.
apply (Build_Predicate (Pred_fun:=distinct (A:=A) (n:=n))); auto with algebra.
red in |- *.
intros.
apply distinct_comp with x; auto with algebra.
Defined.
