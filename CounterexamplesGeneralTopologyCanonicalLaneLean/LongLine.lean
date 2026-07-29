import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure LongLine where
  carrier : Type u
  topology : TopologicalSpace carrier
  locallyCompact : Prop
  pathConnected : Prop
  notMetrizable : Prop
  firstCountable : Prop

def LongLineClosed (L : LongLine) : Prop :=
  L.locallyCompact ∧ L.pathConnected ∧ L.notMetrizable ∧ L.firstCountable

theorem long_line_closed_from_properties (L : LongLine) (hlc : L.locallyCompact) (hpc : L.pathConnected) (hnm : L.notMetrizable) (hfc : L.firstCountable) : LongLineClosed L := by
  exact And.intro hlc (And.intro hpc (And.intro hnm hfc))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse