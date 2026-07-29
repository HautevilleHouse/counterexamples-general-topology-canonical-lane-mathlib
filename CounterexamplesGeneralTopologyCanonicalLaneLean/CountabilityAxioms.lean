import CounterexamplesGeneralTopologyCanonicalLaneLean.BaseTopology

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CountabilityAxiomsPackage where
  firstCountable : Prop
  secondCountable : Prop
  separable : Prop
  lindelof : Prop
  space : Type u
  topology : TopologicalSpace space

structure CountabilityAxiomsEvidence (C : CountabilityAxiomsPackage) where
  firstCountableClosed : C.firstCountable
  secondCountableClosed : C.secondCountable
  separableClosed : C.separable
  lindelofClosed : C.lindelof

def CountabilityAxiomsClosed (C : CountabilityAxiomsPackage) : Prop :=
  C.firstCountable ∧ C.secondCountable ∧ C.separable ∧ C.lindelof

theorem countability_axioms_closed_from_evidence (C : CountabilityAxiomsPackage)
    (E : CountabilityAxiomsEvidence C) : CountabilityAxiomsClosed C := by
  exact And.intro E.firstCountableClosed
    (And.intro E.secondCountableClosed
      (And.intro E.separableClosed E.lindelofClosed))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse