import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure LineCongruencePackage where
  sourceSurface : Type u
  target : Type v
  congruenceMap : sourceSurface → (target → target) → Prop
  orthogonalityCondition : Prop
  focalSurface : Prop

structure LineCongruenceEvidence (L : LineCongruencePackage) where
  congruenceMapClosed : L.congruenceMap
  orthogonalityConditionClosed : L.orthogonalityCondition
  focalSurfaceClosed : L.focalSurface

def LineCongruenceClosed (L : LineCongruencePackage) : Prop :=
  L.congruenceMap ∧ L.orthogonalityCondition ∧ L.focalSurface

theorem line_congruence_closed_from_evidence (L : LineCongruencePackage) (E : LineCongruenceEvidence L) :
    LineCongruenceClosed L := by
  exact And.intro E.congruenceMapClosed (And.intro E.orthogonalityConditionClosed E.focalSurfaceClosed)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse