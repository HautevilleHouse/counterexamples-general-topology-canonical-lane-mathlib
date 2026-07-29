import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CounterexamplesGeneralTopologyCanonicalLaneLean

structure SorgenfreyLine where
  carrier : Type u
  topology : TopologicalSpace carrier
  separable : Prop
  lindelof : Prop
  normal : Prop
  hereditarilyLindelof : Prop

def SorgenfreyLineClosed (S : SorgenfreyLine) : Prop :=
  S.separable ∧ S.lindelof ∧ S.normal ∧ S.hereditarilyLindelof

theorem sorgenfrey_line_closed_from_properties (S : SorgenfreyLine) (hsep : S.separable) (hlin : S.lindelof) (hnorm : S.normal) (hhl : S.hereditarilyLindelof) : SorgenfreyLineClosed S := by
  exact And.intro hsep (And.intro hlin (And.intro hnorm hhl))

end CounterexamplesGeneralTopologyCanonicalLaneLean
end HautevilleHouse