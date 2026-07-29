import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure MoorePlane where
  carrier : Type u
  topology : TopologicalSpace carrier
  completelyRegular : Prop
  notNormal : Prop
  separable : Prop

def MoorePlaneClosed (M : MoorePlane) : Prop :=
  M.completelyRegular ∧ M.notNormal ∧ M.separable

theorem moore_plane_closed_from_properties (M : MoorePlane) (hcr : M.completelyRegular) (hnn : M.notNormal) (hsep : M.separable) : MoorePlaneClosed M := by
  exact And.intro hcr (And.intro hnn hsep)

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse