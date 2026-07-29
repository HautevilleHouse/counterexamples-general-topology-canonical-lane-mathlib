import CounterexamplesGeneralTopologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure TopologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TopologyAdmittedObject where
  space : TopologySpace
  property : Prop
  counterexample : Prop
  conclusion : counterexample

def TopologyWitnessClosed (O : TopologyAdmittedObject) : Prop :=
  O.counterexample

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse