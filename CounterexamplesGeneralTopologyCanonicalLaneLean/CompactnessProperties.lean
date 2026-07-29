import CounterexamplesGeneralTopologyCanonicalLaneLean.ConnectednessProperties

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CompactnessPropertiesPackage {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} where
  compact : Prop
  locallyCompact : Prop
  sigmaCompact : Prop
  paracompact : Prop
  countablyCompact : Prop
  sequentiallyCompact : Prop
  pseudocompact : Prop
  counterexamplesAvailable : Prop
  counterexamplesAvailableTerm : counterexamplesAvailable

structure CompactnessPropertiesEvidence {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C}
    (K : CompactnessPropertiesPackage P) where
  compactClosed : K.compact
  locallyCompactClosed : K.locallyCompact
  sigmaCompactClosed : K.sigmaCompact
  paracompactClosed : K.paracompact
  countablyCompactClosed : K.countablyCompact
  sequentiallyCompactClosed : K.sequentiallyCompact
  pseudocompactClosed : K.pseudocompact

def CompactnessPropertiesClosed {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C}
    (K : CompactnessPropertiesPackage P) : Prop :=
  K.compact ∧ K.locallyCompact ∧ K.sigmaCompact ∧
  K.paracompact ∧ K.countablyCompact ∧ K.sequentiallyCompact ∧
  K.pseudocompact

theorem compactness_properties_closed_from_evidence
    {T : TopologicalSpacePackage} {S : SeparationAxiomsPackage T}
    {C : CountabilityAxiomsPackage S} {P : ConnectednessPropertiesPackage C}
    (K : CompactnessPropertiesPackage P)
    (E : CompactnessPropertiesEvidence K) :
    CompactnessPropertiesClosed K := by
  exact And.intro E.compactClosed
    (And.intro E.locallyCompactClosed
      (And.intro E.sigmaCompactClosed
        (And.intro E.paracompactClosed
          (And.intro E.countablyCompactClosed
            (And.intro E.sequentiallyCompactClosed E.pseudocompactClosed)))))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse
