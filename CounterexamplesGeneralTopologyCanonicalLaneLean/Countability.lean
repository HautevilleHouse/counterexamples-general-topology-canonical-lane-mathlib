import HautevilleHouse.CounterexamplesGeneralTopologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CountabilityPackage (O : TopologyAdmittedObject) where
  firstCountable : Prop
  secondCountable : Prop
  separable : Prop
  lindelof : Prop
  firstCountableProof : firstCountable
  secondCountableProof : secondCountable
  separableProof : separable
  lindelofProof : lindelof

def CountabilityClosed (O : TopologyAdmittedObject) (C : CountabilityPackage O) : Prop :=
  C.firstCountable ∧ C.secondCountable ∧ C.separable ∧ C.lindelof

theorem countability_closed_from_proofs (O : TopologyAdmittedObject) (C : CountabilityPackage O) :
    CountabilityClosed O C := by
  exact And.intro C.firstCountableProof (And.intro C.secondCountableProof (And.intro C.separableProof C.lindelofProof))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse