import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure MetrizabilityCounterexample where
  space : CounterexampleSpace
  isMetrizable : Prop
  isSemimetrizable : Prop
  isMoore : Prop
  counterexampleMooreNotMetrizable : Prop
  counterexampleSemimetrizableNotMoore : Prop
  counterexampleFirstCountableNotMetrizable : Prop
  counterexampleSecondCountableNotMetrizable : Prop

structure MetrizationTheorems where
  UrysohnMetrization : secondCountable ∧ T3 → metrizable
  NagataSmirnov : locallyMetrizable ∧ paracompact → metrizable
  BingMetrization : collectionwiseNormal ∧ Moore → metrizable
  where
    secondCountable : Prop
    T3 : Prop
    metrizable : Prop
    locallyMetrizable : Prop
    paracompact : Prop
    collectionwiseNormal : Prop
    Moore : Prop

theorem sorgenfrey_plane_not_metrizable :
  ∃ (S : CounterexampleSpace), S.propertyP ∧ ¬ S.propertyQ := by
  sorry

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse