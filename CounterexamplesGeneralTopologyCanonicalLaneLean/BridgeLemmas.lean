import CounterexamplesGeneralTopologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CounterexampleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse