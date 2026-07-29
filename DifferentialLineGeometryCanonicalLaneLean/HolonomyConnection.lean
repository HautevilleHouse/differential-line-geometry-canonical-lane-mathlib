import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

/-!
# Holonomy and Connection

Records the connection and holonomy structure for line geometry, including
parallel transport along lines and holonomy groups.
-/

structure HolonomyConnection where
  connectionOneForm : Prop
  parallelTransport : Prop
  holonomyGroup : Prop
  ambarziumianTheorem : Prop
  wilczynskiInvariant : Prop

structure HolonomyEvidence (H : HolonomyConnection) where
  connectionOneFormClosed : H.connectionOneForm
  parallelTransportClosed : H.parallelTransport
  holonomyGroupClosed : H.holonomyGroup
  ambarziumianTheoremClosed : H.ambarzuumianTheorem
  wilczynskiInvariantClosed : H.wilczynskiInvariant

def HolonomyClosed (H : HolonomyConnection) : Prop :=
  H.connectionOneForm ∧ H.parallelTransport ∧ H.holonomyGroup ∧
  H.ambarzuumianTheorem ∧ H.wilczynskiInvariant

theorem holonomy_closed_from_evidence (H : HolonomyConnection) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.connectionOneFormClosed
    (And.intro E.parallelTransportClosed
      (And.intro E.holonomyGroupClosed
        (And.intro E.ambarzuumianTheoremClosed E.wilczynskiInvariantClosed)))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse