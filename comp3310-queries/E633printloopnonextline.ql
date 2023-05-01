
/**
 * @id java/examples/method-call
 * @name Call to method
 * @description Finds 
 * @tags call
 *       method
 */

 import java

 from LoopStmt loop, MethodAccess call, Method method
where
    loop.getAChild*() = call.getEnclosingStmt() and
    call.getMethod() = method and
    method.hasName("println") and
    method.getDeclaringType().hasQualifiedName("java.io","PrintStream") and
    not method.hasName("nextLine")
select call, "nextline in a loop"