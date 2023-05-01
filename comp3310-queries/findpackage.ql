
/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds package
 * @tags call
 *       method
 */

 import java

 from MethodAccess call, Method method, string packageName, string typeName
 where
    call.getMethod() = method and
    method.hasName("nextLine") and
    method.getDeclaringType().hasQualifiedName(packageName, typeName)
select call, packageName+","+typeName