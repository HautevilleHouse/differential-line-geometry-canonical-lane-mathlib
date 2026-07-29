import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure CurvatureInvariantTheoryPackage where
  lineBundle : Type u
  curvatureForm : Type v
  chernClassesSeries : Type w
  chernWeilMorphism : Type x
  curvatureInvariantDefined : Prop
  chernClassGenerated : Prop
  chernWeilHomomorphism : Prop
  characteristicClassesComputed : Prop

structure CurvatureInvariantTheoryEvidence (C : CurvatureInvariantTheoryPackage) where
  curvatureInvariantDefinedClosed : C.curvatureInvariantDefined
  chernClassGeneratedClosed : C.chernClassGenerated
  chernWeilHomomorphismClosed : C.chernWeilHomomorphism
  characteristicClassesComputedClosed : C.characteristicClassesComputed

def CurvatureInvariantTheoryClosed (C : CurvatureInvariantTheoryPackage) : Prop :=
  C.curvatureInvariantDefined ∧ C.chernClassGenerated ∧ C.chernWeilHomomorphism ∧ C.characteristicClassesComputed

theorem curvature_invariant_theory_closed_from_evidence (C : CurvatureInvariantTheoryPackage) (E : CurvatureInvariantTheoryEvidence C) :
    CurvatureInvariantTheoryClosed C := by
  exact And.intro E.curvatureInvariantDefinedClosed
    (And.intro E.chernClassGeneratedClosed
      (And.intro E.chernWeilHomomorphismClosed E.characteristicClassesComputedClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse