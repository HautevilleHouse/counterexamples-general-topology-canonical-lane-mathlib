import CounterexamplesGeneralTopologyCanonicalLaneLean.CountabilityAxioms

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure ConnectednessPropertiesPackage {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S} where
  connected : Prop
  pathConnected : Prop
  simplyConnected : Prop
  locallyConnected : Prop
  totallyDisconnected : Prop
  zeroDimensional : Prop
  counterexamplesAvailable : Prop
  counterexamplesAvailableTerm : counterexamplesAvailable

structure ConnectednessPropertiesEvidence {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    (P : ConnectednessPropertiesPackage C) where
  connectedClosed : P.connected
  pathConnectedClosed : P.pathConnected
  simplyConnectedClosed : P.simplyConnected
  locallyConnectedClosed : P.locallyConnected
  totallyDisconnectedClosed : P.totallyDisconnected
  zeroDimensionalClosed : P.zeroDimensional

def ConnectednessPropertiesClosed {T : TopologicalSpacePackage}
    {S : SeparationAxiomsPackage T} {C : CountabilityAxiomsPackage S}
    (P : ConnectednessPropertiesPackage C) : Prop :=
  P.connected ∧ P.pathConnected ∧ P.simplyConnected ∧
  P.locallyConnected ∧ P.totallyDisconnected ∧ P.zeroDimensional

theorem connectedness_properties_closed_from_evidence
    {T : TopologicalSpacePackage} {S : SeparationAxiomsPackage T}
    {C : CountabilityAxiomsPackage S}
    (P : ConnectednessPropertiesPackage C)
    (E : ConnectednessPropertiesEvidence P) :
    ConnectednessPropertiesClosed P := by
  exact And.intro E.connectedClosed
    (And.intro E.pathConnectedClosed
      (And.intro E.simplyConnectedClosed
        (And.intro E.locallyConnectedClosed
          (And.intro E.totallyDisconnectedClosed E.zeroDimensionalClosed))))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse
