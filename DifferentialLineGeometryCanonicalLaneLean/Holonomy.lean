import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  connection : Type v
  parallelTransport : Prop
  holonomyGroup : Prop
  curvatureRelation : Prop
  flatnessCondition : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  parallelTransportClosed : H.parallelTransport
  holonomyGroupClosed : H.holonomyGroup
  curvatureRelationClosed : H.curvatureRelation
  flatnessConditionClosed : H.flatnessCondition

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.parallelTransport ∧ H.holonomyGroup ∧ H.curvatureRelation ∧ H.flatnessCondition

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.parallelTransportClosed (And.intro E.holonomyGroupClosed (And.intro E.curvatureRelationClosed E.flatnessConditionClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse