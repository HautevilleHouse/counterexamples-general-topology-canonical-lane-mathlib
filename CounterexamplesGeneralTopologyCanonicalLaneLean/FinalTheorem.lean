import CounterexamplesGeneralTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

def ConstrainedCounterexampleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_counterexample_endgame (A : AdmissibleClass) :
    ConstrainedCounterexampleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse