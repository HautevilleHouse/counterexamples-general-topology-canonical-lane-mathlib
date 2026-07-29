import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure StoneCechCompactification where
  space : Type u
  topology : TopologicalSpace space
  compactification : Type v
  compactTopology : TopologicalSpace compactification
  embedding : space → compactification
  universalProperty : Prop

def StoneCechClosed (S : StoneCechCompactification) : Prop :=
  S.universalProperty

theorem stone_cech_closed_from_universal (S : StoneCechCompactification) (h : S.universalProperty) : StoneCechClosed S := by
  exact h

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse