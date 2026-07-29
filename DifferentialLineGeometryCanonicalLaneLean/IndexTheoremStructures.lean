import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure IndexTheoremStructures where
  vectorBundle : Type u
  ellipticOperator : Type v
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexEqual : analyticIndex = topologicalIndex
  indexContinuous : Prop

def IndexTheoremStructuresClosed (I : IndexTheoremStructures) : Prop :=
  I.indexEqual ∧ I.indexContinuous

theorem index_theorem_structures_closed (I : IndexTheoremStructures) :
    IndexTheoremStructuresClosed I := by
  exact And.intro I.indexEqual I.indexContinuous

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse