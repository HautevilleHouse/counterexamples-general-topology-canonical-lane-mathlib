import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CompactnessCounterexample where
  space : CounterexampleSpace
  isCompact : Prop
  isLindelof : Prop
  counterexampleCompactNotLindelof : Prop
  counterexampleLindelofNotCompact : Prop
  counterexamplePseudocompactNotCountablyCompact : Prop
  counterexampleCountablyCompactNotCompact : Prop
  counterexampleSequentiallyCompactNotCompact : Prop

structure CompactnessProperties where
  compact : Prop
  countablyCompact : Prop
  sequentiallyCompact : Prop
  pseudocompact : Prop
  lindelof : Prop
  compactImpliesCountablyCompact : compact → countablyCompact
  countablyCompactImpliesPseudocompact : countablyCompact → pseudocompact
  compactImpliesLindelof : compact → lindelof
  sequentiallyCompactImpliesCountablyCompact : sequentiallyCompact → countablyCompact

theorem compactness_example_exists : ∃ (C : CompactnessCounterexample), True := by
  refine ⟨?_, trivial⟩
  sorry

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse