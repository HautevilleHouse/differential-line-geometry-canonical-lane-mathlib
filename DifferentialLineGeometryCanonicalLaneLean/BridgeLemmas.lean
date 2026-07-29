import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentialLineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
