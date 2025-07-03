From Patmycoq Require Import Patmycoq.

Lemma test : (forall x : nat, True) -> True.
Proof.
  intros.
  pat `forall x, True` (apply pat).
  exact 0.
Qed.
