/**
 * @name Empty block
 * @kind problem
 * @problem.severity warning
 * @id java/emptyelse
 */

 import java

 from IfStmt if_s, BlockStmt block
 where 
    if_s.getElse() = block and
    block.getNumStmt() = 0
 select if_s, "Empty block in if then"