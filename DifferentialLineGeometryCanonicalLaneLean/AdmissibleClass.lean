import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : DifferentialLineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferentialLineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
