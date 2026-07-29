import CounterexamplesGeneralTopologyCanonicalLaneLean.CompactnessProperties

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure TopologicalConstructionsPackage {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} {K : CompactnessPropertiesPackage P} where
  productTopology : Prop
  subspaceTopology : Prop
  quotientTopology : Prop
  disjointUnionTopology : Prop
  boxTopology : Prop
  uniformTopology : Prop
  counterexamplesAvailable : Prop
  counterexamplesAvailableTerm : counterexamplesAvailable

structure TopologicalConstructionsEvidence {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} {K : CompactnessPropertiesPackage P}
    (Q : TopologicalConstructionsPackage K) where
  productTopologyClosed : Q.productTopology
  subspaceTopologyClosed : Q.subspaceTopology
  quotientTopologyClosed : Q.quotientTopology
  disjointUnionTopologyClosed : Q.disjointUnionTopology
  boxTopologyClosed : Q.boxTopology
  uniformTopologyClosed : Q.uniformTopology

def TopologicalConstructionsClosed {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    {P : ConnectednessPropertiesPackage C} {K : CompactnessPropertiesPackage P}
    (Q : TopologicalConstructionsPackage K) : Prop :=
  Q.productTopology ∧ Q.subspaceTopology ∧ Q.quotientTopology ∧
  Q.disjointUnionTopology ∧ Q.boxTopology ∧ Q.uniformTopology

theorem topological_constructions_closed_from_evidence
    {T : TopologicalSpacePackage} {S : SeparationAxiomsPackage T}
    {C : CountabilityAxiomsPackage S} {P : ConnectednessPropertiesPackage C}
    {K : CompactnessPropertiesPackage P}
    (Q : TopologicalConstructionsPackage K)
    (E : TopologicalConstructionsEvidence Q) :
    TopologicalConstructionsClosed Q := by
  exact And.intro E.productTopologyClosed
    (And.intro E.subspaceTopologyClosed
      (And.intro E.quotientTopologyClosed
        (And.intro E.disjointUnionTopologyClosed
          (And.intro E.boxTopologyClosed E.uniformTopologyClosed))))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse
