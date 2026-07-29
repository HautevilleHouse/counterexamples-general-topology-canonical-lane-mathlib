import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure ConnectednessCounterexample where
  space : CounterexampleSpace
  isConnected : Prop
  isPathConnected : Prop
  isSimplyConnected : Prop
  counterexampleConnectedNotPathConnected : Prop
  counterexamplePathConnectedNotSimplyConnected : Prop
  counterexampleLocallyConnectedNotConnected : Prop
  counterexampleTotallyDisconnectedNonDiscrete : Prop

structure ConnectednessProperties where
  connected : Prop
  pathConnected : Prop
  locallyConnected : Prop
  totallyDisconnected : Prop
  connectedImpliesPathConnected : connected → pathConnected
  pathConnectedImpliesConnected : pathConnected → connected

def CantorSpace : CounterexampleSpace := {
  carrier := Set (ℕ → {0,1})
  topology := sorry
  propertyP := True
  propertyQ := True
  propertyPimpliesQ := λ h => h
  counterexampleCarrier := λ f => True
  counterexampleOpen := {Set.univ}
}

theorem cantor_space_totally_disconnected : TotallyDisconnectedSpace (CantorSpace.carrier) := by
  sorry

theorem cantor_space_not_discrete : ¬ DiscreteTopology (CantorSpace.carrier) := by
  sorry

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse