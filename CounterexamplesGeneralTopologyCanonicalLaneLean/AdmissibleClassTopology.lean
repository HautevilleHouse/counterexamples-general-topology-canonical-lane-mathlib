import CounterexamplesGeneralTopologyCanonicalLaneLean.CounterexampleClassification

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure TopologicalSpacePackage where
  pointSet : Type u
  topology : TopologicalSpace pointSet
  counterexampleName : String
  sourceReference : String

structure TopologyAdmittedObject where
  space : TopologicalSpacePackage
  classificationClosed : Prop
  counterexampleExists : Prop
  conclusion : classificationClosed ∧ counterexampleExists

def TopologyWitnessClosed (O : TopologyAdmittedObject) : Prop :=
  O.classificationClosed ∧ O.counterexampleExists

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse
