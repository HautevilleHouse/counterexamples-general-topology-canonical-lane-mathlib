import CounterexamplesGeneralTopologyCanonicalLaneLean.TopologicalConstructions

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CounterexampleClassificationPackage {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} {K : CompactnessPropertiesPackage P}
    {Q : TopologicalConstructionsPackage K} where
  separationCounterexamplesClassified : Prop
  countabilityCounterexamplesClassified : Prop
  connectednessCounterexamplesClassified : Prop
  compactnessCounterexamplesClassified : Prop
  constructionCounterexamplesClassified : Prop
  dualityRelationsEstablished : Prop
  counterexamplesAvailable : Prop
  counterexamplesAvailableTerm : counterexamplesAvailable

structure CounterexampleClassificationEvidence {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} {K : CompactnessPropertiesPackage P}
    {Q : TopologicalConstructionsPackage K}
    (R : CounterexampleClassificationPackage Q) where
  separationCounterexamplesClassifiedClosed : R.separationCounterexamplesClassified
  countabilityCounterexamplesClassifiedClosed : R.countabilityCounterexamplesClassified
  connectednessCounterexamplesClassifiedClosed : R.connectednessCounterexamplesClassified
  compactnessCounterexamplesClassifiedClosed : R.compactnessCounterexamplesClassified
  constructionCounterexamplesClassifiedClosed : R.constructionCounterexamplesClassified
  dualityRelationsEstablishedClosed : R.dualityRelationsEstablished

def CounterexampleClassificationClosed {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} {K : CompactnessPropertiesPackage P}
    {Q : TopologicalConstructionsPackage K}
    (R : CounterexampleClassificationPackage Q) : Prop :=
  R.separationCounterexamplesClassified ∧
  R.countabilityCounterexamplesClassified ∧
  R.connectednessCounterexamplesClassified ∧
  R.compactnessCounterexamplesClassified ∧
  R.constructionCounterexamplesClassified ∧
  R.dualityRelationsEstablished

theorem counterexample_classification_closed_from_evidence
    {T : TopologicalSpacePackage} {S : SeparationAxiomsPackage T}
    {C : CountabilityAxiomsPackage S} {P : ConnectednessPropertiesPackage C}
    {K : CompactnessPropertiesPackage P} {Q : TopologicalConstructionsPackage K}
    (R : CounterexampleClassificationPackage Q)
    (E : CounterexampleClassificationEvidence R) :
    CounterexampleClassificationClosed R := by
  exact And.intro E.separationCounterexamplesClassifiedClosed
    (And.intro E.countabilityCounterexamplesClassifiedClosed
      (And.intro E.connectednessCounterexamplesClassifiedClosed
        (And.intro E.compactnessCounterexamplesClassifiedClosed
          (And.intro E.constructionCounterexamplesClassifiedClosed
            E.dualityRelationsEstablishedClosed))))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse
