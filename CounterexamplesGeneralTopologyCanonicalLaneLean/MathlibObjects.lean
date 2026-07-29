import CounterexamplesGeneralTopologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TopologyCounterexampleSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TopologyCounterexampleObject where
  space : TopologyCounterexampleSpace
  counterexampleProperty : Prop
  witnessesList : List String
  conclusion : counterexampleProperty

structure TopologyCounterexampleState where
  object : TopologyCounterexampleObject

def CounterexampleWitnessClosed (O : TopologyCounterexampleObject) : Prop :=
  O.counterexampleProperty

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse