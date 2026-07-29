import HautevilleHouse.CounterexamplesGeneralTopologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure CounterexampleConstruction (O : TopologyAdmittedObject) where
  underlyingSet : Set O.space.carrier
  topology : TopologicalSpace underlyingSet
  failsProperty : Prop
  failureWitness : failsProperty

def counterexampleClosed (O : TopologyAdmittedObject) (C : CounterexampleConstruction O) : Prop :=
  C.failsProperty

theorem counterexample_closed_from_witness (O : TopologyAdmittedObject) (C : CounterexampleConstruction O) :
    counterexampleClosed O C := by
  exact C.failureWitness

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse