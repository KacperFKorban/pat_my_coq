# Pat My Coq - shorthand matches for Coq proof scripts

> The name doesn't mean anything. It's also definitely not a pun.

Using Pat My Coq, you can pat the hypotheses in your Coq proofs in a shorter way.

## Example

```coq
From Patmycoq Require Import Patmycoq.

Lemma test : (forall x : nat, True) -> True.
Proof.
  intros.
  pat `forall x, _` (apply pat).
  (* short for:
    match goal with
    | [ H : forall x : nat, True |- _ ] =>
      let pat := H in apply pat
    end
  *)
  exact 0.
Qed.
```

## Inspiration

Inspired by [`qpat_assum`](https://hol-theorem-prover.org/cheatsheet.html#assumption-management) from [HOL4](https://hol-theorem-prover.org/).
