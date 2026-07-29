import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure ChernWeilFoundationPackage where
  principalBundle : Type u
  connectionForm : Type v
  curvatureForm : Type w
  invariantPolynomial : Type x
  chernWeilConstruction : Prop
  characteristicClassFromCurvature : Prop
  independenceOfConnection : Prop
  topologicalInvariance : Prop

structure ChernWeilFoundationEvidence (C : ChernWeilFoundationPackage) where
  chernWeilConstructionClosed : C.chernWeilConstruction
  characteristicClassFromCurvatureClosed : C.characteristicClassFromCurvature
  independenceOfConnectionClosed : C.independenceOfConnection
  topologicalInvarianceClosed : C.topologicalInvariance

def ChernWeilFoundationClosed (C : ChernWeilFoundationPackage) : Prop :=
  C.chernWeilConstruction ∧ C.characteristicClassFromCurvature ∧ C.independenceOfConnection ∧ C.topologicalInvariance

theorem chern_weil_foundation_closed_from_evidence (C : ChernWeilFoundationPackage) (E : ChernWeilFoundationEvidence C) :
    ChernWeilFoundationClosed C := by
  exact And.intro E.chernWeilConstructionClosed
    (And.intro E.characteristicClassFromCurvatureClosed
      (And.intro E.independenceOfConnectionClosed E.topologicalInvarianceClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse