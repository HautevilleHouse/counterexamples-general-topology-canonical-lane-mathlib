import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CounterexampleSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  propertyP : Prop
  propertyQ : Prop
  propertyPimpliesQ : propertyP → propertyQ
  counterexampleCarrier : carrier → Prop
  counterexampleOpen : Set (Set carrier)

structure SeparationProperties where
  T0 : Prop
  T1 : Prop
  T2 : Prop
  regular : Prop
  completelyRegular : Prop
  normal : Prop
  tychonoff : completelyRegular ∧ T1
  counterexampleT0NotT1 : CounterexampleSpace
  counterexampleT1NotT2 : CounterexampleSpace
  counterexampleT2NotRegular : CounterexampleSpace
  counterexampleRegularNotCompletelyRegular : CounterexampleSpace
  counterexampleCompletelyRegularNotNormal : CounterexampleSpace

def SeparationPreorder (P Q : Prop) : Prop := P → Q

theorem T0impliesT1 : SeparationPreorder (SeparationProperties.T0) (SeparationProperties.T1) := by
  intro h
  sorry

theorem T1impliesT2 : SeparationPreorder (SeparationProperties.T1) (SeparationProperties.T2) := by
  intro h
  sorry

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse