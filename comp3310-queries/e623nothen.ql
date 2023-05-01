/**
 * @name Empty block
 * @kind problem
 * @problem.severity warning
 * @id java/emptyifthen
 */

 import java

 from IfStmt if_s
 where 
    not exists(BlockStmt block) and
    exists(BlockStmt block | if_s.getElse() = block)

 select if_s, "else block"