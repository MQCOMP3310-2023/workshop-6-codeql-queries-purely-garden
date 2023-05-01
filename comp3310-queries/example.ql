/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds 
 * @tags call
 *       method
 */

 import java

 from MethodAccess call, Method method
 where
   call.getMethod() = method and
   method.hasName("nextLine") and
   method.getDeclaringType().hasQualifiedName("java.util", "Scanner")
 select call, "nextline"
