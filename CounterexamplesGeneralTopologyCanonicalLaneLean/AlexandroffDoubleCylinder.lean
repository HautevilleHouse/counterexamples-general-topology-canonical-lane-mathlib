import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure AlexandroffDoubleCylinder where
  carrier : Type u
  topology : TopologicalSpace carrier
  compact : Prop
  connected : Prop
  notMetrizable : Prop

def AlexandroffDoubleCylinderClosed (A : AlexandroffDoubleCylinder) : Prop :=
  A.compact ∧ A.connected ∧ A.notMetrizable

theorem alexandroff_double_cylinder_closed_from_properties (A : AlexandroffDoubleCylinder) (hc : A.compact) (hconn : A.connected) (hnm : A.notMetrizable) : AlexandroffDoubleCylinderClosed A := by
  exact And.intro hc (And.intro hconn hnm)

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse