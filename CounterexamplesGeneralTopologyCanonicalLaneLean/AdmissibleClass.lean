import CounterexamplesGeneralTopologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : TopologyCounterexampleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CounterexampleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse