/**
 * @name Empty block
 * @kind problem
 * @problem.severity warning
 * @id java/blockinIF
 */

 import java

 from IfStmt if_s
where exists(BlockStmt block | if_s.getThen() = block)
select if_s, "A block in if"