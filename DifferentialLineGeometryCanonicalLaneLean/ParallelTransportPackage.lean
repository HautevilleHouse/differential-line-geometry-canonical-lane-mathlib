import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure ParallelTransportPackage where
  lineBundle : Type u
  connection : Type v
  curveSpace : Type w
  parallelTransportAlongCurve : Prop
  homotopyInvariance : Prop
  monodromyOperator : Prop
  holonomyFromTransport : Prop

structure ParallelTransportEvidence (P : ParallelTransportPackage) where
  parallelTransportAlongCurveClosed : P.parallelTransportAlongCurve
  homotopyInvarianceClosed : P.homotopyInvariance
  monodromyOperatorClosed : P.monodromyOperator
  holonomyFromTransportClosed : P.holonomyFromTransport

def ParallelTransportClosed (P : ParallelTransportPackage) : Prop :=
  P.parallelTransportAlongCurve ∧ P.homotopyInvariance ∧ P.monodromyOperator ∧ P.holonomyFromTransport

theorem parallel_transport_closed_from_evidence (P : ParallelTransportPackage) (E : ParallelTransportEvidence P) :
    ParallelTransportClosed P := by
  exact And.intro E.parallelTransportAlongCurveClosed
    (And.intro E.homotopyInvarianceClosed
      (And.intro E.monodromyOperatorClosed E.holonomyFromTransportClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse