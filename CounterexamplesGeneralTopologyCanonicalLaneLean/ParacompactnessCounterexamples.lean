import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure ParacompactnessCounterexample where
  space : CounterexampleSpace
  isParacompact : Prop
  isLindelof : Prop
  isMetacompact : Prop
  counterexampleParacompactNotLindelof : Prop
  counterexampleLindelofNotParacompact : Prop
  counterexampleMetacompactNotParacompact : Prop
  counterexampleNormalNotParacompact : Prop

structure CoveringProperties where
  paracompact : Prop
  metacompact : Prop
  lindelof : Prop
  paracompactImpliesMetacompact : paracompact → metacompact
  lindelofRegularImpliesParacompact : lindelof ∧ regular → paracompact

theorem dieudonnes_plank : ∃ (X : CounterexampleSpace), X.propertyP ∧ ¬ X.propertyQ := by
  sorry

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse