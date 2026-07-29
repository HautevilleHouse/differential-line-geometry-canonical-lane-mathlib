import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure DifferentialLineAdmittedObject where
  principalCurvatures : Prop
  asymptoticDirections : Prop
  curvatureInvariantsClosed : Prop
  conclusion : curvatureInvariantsClosed

def DifferentialLineWitnessClosed (O : DifferentialLineAdmittedObject) : Prop :=
  O.curvatureInvariantsClosed

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
