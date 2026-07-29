import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure TietzeExtensionSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  normal : Prop
  closedSet : Set carrier
  continuousFunction : carrier → ℝ
  extensionExists : Prop

def TietzeExtensionClosed (A : TietzeExtensionSpace) : Prop :=
  A.normal ∧ A.extensionExists

theorem tietze_extension_closed_from_normal (A : TietzeExtensionSpace) (h : A.normal) : TietzeExtensionClosed A := by
  exact And.intro h A.extensionExists

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse