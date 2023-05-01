/**
 * @name Empty block
 * @kind problem
 * @problem.severity warning
 * @id java/no
 */

 import java

 from IfStmt if_s
 where 
    not exists(BlockStmt block)

 select if_s, "no block"