import CounterexamplesGeneralTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TopologyEndgameState where
  object : TopologyAdmittedObject

def topologyProjection : Projection TopologyEndgameState :=
  {
    toFun := fun x => x
    idempotent := by intro x; rfl
  }

theorem topology_projection_idempotent (x : TopologyEndgameState) :
    topologyProjection.toFun (topologyProjection.toFun x) = topologyProjection.toFun x := by
  exact topologyProjection.idempotent x

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse
