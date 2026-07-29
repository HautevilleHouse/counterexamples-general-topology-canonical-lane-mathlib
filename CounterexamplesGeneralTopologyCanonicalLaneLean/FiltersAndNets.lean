import CounterexamplesGeneralTopologyCanonicalLaneLean.BaseTopology

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure FiltersAndNetsPackage where
  filter : Type u → Type v
  net : Type u → Type v
  convergence : Prop
  clusterPoints : Prop
  universalNet : Prop

structure FiltersAndNetsEvidence (F : FiltersAndNetsPackage) where
  convergenceClosed : F.convergence
  clusterPointsClosed : F.clusterPoints
  universalNetClosed : F.universalNet

def FiltersAndNetsClosed (F : FiltersAndNetsPackage) : Prop :=
  F.convergence ∧ F.clusterPoints ∧ F.universalNet

theorem filters_and_nets_closed_from_evidence (F : FiltersAndNetsPackage)
    (E : FiltersAndNetsEvidence F) : FiltersAndNetsClosed F := by
  exact And.intro E.convergenceClosed
    (And.intro E.clusterPointsClosed E.universalNetClosed)

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse