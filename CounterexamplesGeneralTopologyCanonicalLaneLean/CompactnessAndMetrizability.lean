import CounterexamplesGeneralTopologyCanonicalLaneLean.BaseTopology

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CompactnessAndMetrizabilityPackage where
  compact : Prop
  sequentiallyCompact : Prop
  countablyCompact : Prop
  pseudometrizable : Prop
  metrizable : Prop
  space : Type u
  topology : TopologicalSpace space

structure CompactnessAndMetrizabilityEvidence (C : CompactnessAndMetrizabilityPackage) where
  compactClosed : C.compact
  sequentiallyCompactClosed : C.sequentiallyCompact
  countablyCompactClosed : C.countablyCompact
  pseudometrizableClosed : C.pseudometrizable
  metrizableClosed : C.metrizable

def CompactnessAndMetrizabilityClosed (C : CompactnessAndMetrizabilityPackage) : Prop :=
  C.compact ∧ C.sequentiallyCompact ∧ C.countablyCompact ∧
  C.pseudometrizable ∧ C.metrizable

theorem compactness_and_metrizability_closed_from_evidence
    (C : CompactnessAndMetrizabilityPackage)
    (E : CompactnessAndMetrizabilityEvidence C) : CompactnessAndMetrizabilityClosed C := by
  exact And.intro E.compactClosed
    (And.intro E.sequentiallyCompactClosed
      (And.intro E.countablyCompactClosed
        (And.intro E.pseudometrizableClosed E.metrizableClosed)))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse