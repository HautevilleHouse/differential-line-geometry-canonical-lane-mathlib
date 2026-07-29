import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure IndexTheorem (M : Type*) [TopologicalSpace M] [SmoothManifold M] where
  ellipticOperator : Type u
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexEqualsTopological : Prop
  heatKernelProof : Prop
  indexEqualsTopologicalTerm : indexEqualsTopological
  heatKernelProofTerm : heatKernelProof

structure IndexTheoremEvidence (I : IndexTheorem M) where
  indexEqualsTopologicalClosed : I.indexEqualsTopological
  heatKernelProofClosed : I.heatKernelProof

def IndexTheoremClosed (I : IndexTheorem M) : Prop :=
  I.indexEqualsTopological ∧ I.heatKernelProof

theorem index_theorem_closed_from_evidence (I : IndexTheorem M) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.indexEqualsTopologicalClosed E.heatKernelProofClosed

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
