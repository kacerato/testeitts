package org.openjdk.tools.javac.jvm;

import java.util.HashMap;
import java.util.Map;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.ByteBuffer;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Position;

public class CRTable implements CRTFlags {
    private EndPosTable endPosTable;
    JCTree.JCMethodDecl methodTree;
    private final boolean crtDebug = false;
    private ListBuffer<CRTEntry> entries = new ListBuffer<>();
    private Map<Object, SourceRange> positions = new HashMap();

    public static class CRTEntry {
        int endPc;
        int flags;
        int startPc;
        Object tree;

        public CRTEntry(Object obj, int i10, int i11, int i12) {
            this.tree = obj;
            this.flags = i10;
            this.startPc = i11;
            this.endPc = i12;
        }
    }

    public CRTable(JCTree.JCMethodDecl jCMethodDecl, EndPosTable endPosTable) {
        this.methodTree = jCMethodDecl;
        this.endPosTable = endPosTable;
    }

    private int encodePosition(int i10, Position.LineMap lineMap, Log log) {
        int lineNumber = lineMap.getLineNumber(i10);
        int encodePosition = Position.encodePosition(lineNumber, lineMap.getColumnNumber(i10));
        if (encodePosition == -1) {
            log.warning(i10, "position.overflow", Integer.valueOf(lineNumber));
        }
        return encodePosition;
    }

    private String getTypes(int i10) {
        String str = "";
        if ((i10 & 1) != 0) {
            str = " CRT_STATEMENT";
        }
        if ((i10 & 2) != 0) {
            str = str + " CRT_BLOCK";
        }
        if ((i10 & 4) != 0) {
            str = str + " CRT_ASSIGNMENT";
        }
        if ((i10 & 8) != 0) {
            str = str + " CRT_FLOW_CONTROLLER";
        }
        if ((i10 & 16) != 0) {
            str = str + " CRT_FLOW_TARGET";
        }
        if ((i10 & 32) != 0) {
            str = str + " CRT_INVOKE";
        }
        if ((i10 & 64) != 0) {
            str = str + " CRT_CREATE";
        }
        if ((i10 & 128) != 0) {
            str = str + " CRT_BRANCH_TRUE";
        }
        if ((i10 & 256) == 0) {
            return str;
        }
        return str + " CRT_BRANCH_FALSE";
    }

    public int length() {
        return this.entries.length();
    }

    public void put(Object obj, int i10, int i11, int i12) {
        this.entries.append(new CRTEntry(obj, i10, i11, i12));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int writeCRT(ByteBuffer byteBuffer, Position.LineMap lineMap, Log log) {
        int encodePosition;
        int encodePosition2;
        new SourceComputer().csp(this.methodTree);
        int i10 = 0;
        for (List list = this.entries.toList(); list.nonEmpty(); list = list.tail) {
            CRTEntry cRTEntry = (CRTEntry) list.head;
            if (cRTEntry.startPc != cRTEntry.endPc) {
                SourceRange sourceRange = this.positions.get(cRTEntry.tree);
                Assert.checkNonNull(sourceRange, "CRT: tree source positions are undefined");
                int i11 = sourceRange.startPos;
                if (i11 != -1 && sourceRange.endPos != -1 && (encodePosition = encodePosition(i11, lineMap, log)) != -1 && (encodePosition2 = encodePosition(sourceRange.endPos, lineMap, log)) != -1) {
                    byteBuffer.appendChar(cRTEntry.startPc);
                    byteBuffer.appendChar(cRTEntry.endPc - 1);
                    byteBuffer.appendInt(encodePosition);
                    byteBuffer.appendInt(encodePosition2);
                    byteBuffer.appendChar(cRTEntry.flags);
                    i10++;
                }
            }
        }
        return i10;
    }

    public static class SourceRange {
        int endPos;
        int startPos;

        public SourceRange() {
            this.startPos = -1;
            this.endPos = -1;
        }

        public SourceRange mergeWith(SourceRange sourceRange) {
            if (sourceRange == null) {
                return this;
            }
            int i10 = this.startPos;
            if (i10 == -1) {
                this.startPos = sourceRange.startPos;
            } else {
                int i11 = sourceRange.startPos;
                if (i11 != -1) {
                    if (i10 >= i11) {
                        i10 = i11;
                    }
                    this.startPos = i10;
                }
            }
            int i12 = this.endPos;
            if (i12 == -1) {
                this.endPos = sourceRange.endPos;
            } else {
                int i13 = sourceRange.endPos;
                if (i13 != -1) {
                    if (i12 <= i13) {
                        i12 = i13;
                    }
                    this.endPos = i12;
                }
            }
            return this;
        }

        public SourceRange(int i10, int i11) {
            this.startPos = i10;
            this.endPos = i11;
        }
    }

    public class SourceComputer extends JCTree.Visitor {
        SourceRange result;

        public SourceComputer() {
        }

        public SourceRange csp(JCTree jCTree) {
            if (jCTree == null) {
                return null;
            }
            jCTree.accept(this);
            if (this.result != null) {
                CRTable.this.positions.put(jCTree, this.result);
            }
            return this.result;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SourceRange cspCases(List<JCTree.JCCase> list) {
            if (list == null || !list.nonEmpty()) {
                return null;
            }
            SourceRange sourceRange = new SourceRange();
            for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                sourceRange.mergeWith(csp((JCTree) list2.head));
            }
            CRTable.this.positions.put(list, sourceRange);
            return sourceRange;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SourceRange cspCatchers(List<JCTree.JCCatch> list) {
            if (list == null || !list.nonEmpty()) {
                return null;
            }
            SourceRange sourceRange = new SourceRange();
            for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                sourceRange.mergeWith(csp((JCTree) list2.head));
            }
            CRTable.this.positions.put(list, sourceRange);
            return sourceRange;
        }

        public int endPos(JCTree jCTree) {
            if (jCTree == null) {
                return -1;
            }
            return TreeInfo.getEndPos(jCTree, CRTable.this.endPosTable);
        }

        public int startPos(JCTree jCTree) {
            if (jCTree == null) {
                return -1;
            }
            return TreeInfo.getStartPos(jCTree);
        }

        @Override
        public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
            SourceRange sourceRange = new SourceRange(startPos(jCMethodInvocation), endPos(jCMethodInvocation));
            sourceRange.mergeWith(csp(jCMethodInvocation.meth));
            sourceRange.mergeWith(csp(jCMethodInvocation.args));
            this.result = sourceRange;
        }

        @Override
        public void visitAssert(JCTree.JCAssert jCAssert) {
            SourceRange sourceRange = new SourceRange(startPos(jCAssert), endPos(jCAssert));
            sourceRange.mergeWith(csp(jCAssert.cond));
            sourceRange.mergeWith(csp(jCAssert.detail));
            this.result = sourceRange;
        }

        @Override
        public void visitAssign(JCTree.JCAssign jCAssign) {
            SourceRange sourceRange = new SourceRange(startPos(jCAssign), endPos(jCAssign));
            sourceRange.mergeWith(csp(jCAssign.lhs));
            sourceRange.mergeWith(csp(jCAssign.rhs));
            this.result = sourceRange;
        }

        @Override
        public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
            SourceRange sourceRange = new SourceRange(startPos(jCAssignOp), endPos(jCAssignOp));
            sourceRange.mergeWith(csp(jCAssignOp.lhs));
            sourceRange.mergeWith(csp(jCAssignOp.rhs));
            this.result = sourceRange;
        }

        @Override
        public void visitBinary(JCTree.JCBinary jCBinary) {
            SourceRange sourceRange = new SourceRange(startPos(jCBinary), endPos(jCBinary));
            sourceRange.mergeWith(csp(jCBinary.lhs));
            sourceRange.mergeWith(csp(jCBinary.rhs));
            this.result = sourceRange;
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            SourceRange sourceRange = new SourceRange(startPos(jCBlock), endPos(jCBlock));
            csp(jCBlock.stats);
            this.result = sourceRange;
        }

        @Override
        public void visitBreak(JCTree.JCBreak jCBreak) {
            this.result = new SourceRange(startPos(jCBreak), endPos(jCBreak));
        }

        @Override
        public void visitCase(JCTree.JCCase jCCase) {
            SourceRange sourceRange = new SourceRange(startPos(jCCase), endPos(jCCase));
            sourceRange.mergeWith(csp(jCCase.pat));
            sourceRange.mergeWith(csp(jCCase.stats));
            this.result = sourceRange;
        }

        @Override
        public void visitCatch(JCTree.JCCatch jCCatch) {
            SourceRange sourceRange = new SourceRange(startPos(jCCatch), endPos(jCCatch));
            sourceRange.mergeWith(csp(jCCatch.param));
            sourceRange.mergeWith(csp(jCCatch.body));
            this.result = sourceRange;
        }

        @Override
        public void visitConditional(JCTree.JCConditional jCConditional) {
            SourceRange sourceRange = new SourceRange(startPos(jCConditional), endPos(jCConditional));
            sourceRange.mergeWith(csp(jCConditional.cond));
            sourceRange.mergeWith(csp(jCConditional.truepart));
            sourceRange.mergeWith(csp(jCConditional.falsepart));
            this.result = sourceRange;
        }

        @Override
        public void visitContinue(JCTree.JCContinue jCContinue) {
            this.result = new SourceRange(startPos(jCContinue), endPos(jCContinue));
        }

        @Override
        public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
            SourceRange sourceRange = new SourceRange(startPos(jCDoWhileLoop), endPos(jCDoWhileLoop));
            sourceRange.mergeWith(csp(jCDoWhileLoop.body));
            sourceRange.mergeWith(csp(jCDoWhileLoop.cond));
            this.result = sourceRange;
        }

        @Override
        public void visitErroneous(JCTree.JCErroneous jCErroneous) {
            this.result = null;
        }

        @Override
        public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
            SourceRange sourceRange = new SourceRange(startPos(jCExpressionStatement), endPos(jCExpressionStatement));
            sourceRange.mergeWith(csp(jCExpressionStatement.expr));
            this.result = sourceRange;
        }

        @Override
        public void visitForLoop(JCTree.JCForLoop jCForLoop) {
            SourceRange sourceRange = new SourceRange(startPos(jCForLoop), endPos(jCForLoop));
            sourceRange.mergeWith(csp(jCForLoop.init));
            sourceRange.mergeWith(csp(jCForLoop.cond));
            sourceRange.mergeWith(csp(jCForLoop.step));
            sourceRange.mergeWith(csp(jCForLoop.body));
            this.result = sourceRange;
        }

        @Override
        public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
            SourceRange sourceRange = new SourceRange(startPos(jCEnhancedForLoop), endPos(jCEnhancedForLoop));
            sourceRange.mergeWith(csp(jCEnhancedForLoop.var));
            sourceRange.mergeWith(csp(jCEnhancedForLoop.expr));
            sourceRange.mergeWith(csp(jCEnhancedForLoop.body));
            this.result = sourceRange;
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            this.result = new SourceRange(startPos(jCIdent), endPos(jCIdent));
        }

        @Override
        public void visitIf(JCTree.JCIf jCIf) {
            SourceRange sourceRange = new SourceRange(startPos(jCIf), endPos(jCIf));
            sourceRange.mergeWith(csp(jCIf.cond));
            sourceRange.mergeWith(csp(jCIf.thenpart));
            sourceRange.mergeWith(csp(jCIf.elsepart));
            this.result = sourceRange;
        }

        @Override
        public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
            SourceRange sourceRange = new SourceRange(startPos(jCArrayAccess), endPos(jCArrayAccess));
            sourceRange.mergeWith(csp(jCArrayAccess.indexed));
            sourceRange.mergeWith(csp(jCArrayAccess.index));
            this.result = sourceRange;
        }

        @Override
        public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
            SourceRange sourceRange = new SourceRange(startPos(jCLabeledStatement), endPos(jCLabeledStatement));
            sourceRange.mergeWith(csp(jCLabeledStatement.body));
            this.result = sourceRange;
        }

        @Override
        public void visitLetExpr(JCTree.LetExpr letExpr) {
            SourceRange sourceRange = new SourceRange(startPos(letExpr), endPos(letExpr));
            sourceRange.mergeWith(csp(letExpr.defs));
            sourceRange.mergeWith(csp(letExpr.expr));
            this.result = sourceRange;
        }

        @Override
        public void visitLiteral(JCTree.JCLiteral jCLiteral) {
            this.result = new SourceRange(startPos(jCLiteral), endPos(jCLiteral));
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            SourceRange sourceRange = new SourceRange(startPos(jCMethodDecl), endPos(jCMethodDecl));
            sourceRange.mergeWith(csp(jCMethodDecl.body));
            this.result = sourceRange;
        }

        @Override
        public void visitNewArray(JCTree.JCNewArray jCNewArray) {
            SourceRange sourceRange = new SourceRange(startPos(jCNewArray), endPos(jCNewArray));
            sourceRange.mergeWith(csp(jCNewArray.elemtype));
            sourceRange.mergeWith(csp(jCNewArray.dims));
            sourceRange.mergeWith(csp(jCNewArray.elems));
            this.result = sourceRange;
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            SourceRange sourceRange = new SourceRange(startPos(jCNewClass), endPos(jCNewClass));
            sourceRange.mergeWith(csp(jCNewClass.encl));
            sourceRange.mergeWith(csp(jCNewClass.clazz));
            sourceRange.mergeWith(csp(jCNewClass.args));
            sourceRange.mergeWith(csp(jCNewClass.def));
            this.result = sourceRange;
        }

        @Override
        public void visitParens(JCTree.JCParens jCParens) {
            SourceRange sourceRange = new SourceRange(startPos(jCParens), endPos(jCParens));
            sourceRange.mergeWith(csp(jCParens.expr));
            this.result = sourceRange;
        }

        @Override
        public void visitReturn(JCTree.JCReturn jCReturn) {
            SourceRange sourceRange = new SourceRange(startPos(jCReturn), endPos(jCReturn));
            sourceRange.mergeWith(csp(jCReturn.expr));
            this.result = sourceRange;
        }

        @Override
        public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
            SourceRange sourceRange = new SourceRange(startPos(jCFieldAccess), endPos(jCFieldAccess));
            sourceRange.mergeWith(csp(jCFieldAccess.selected));
            this.result = sourceRange;
        }

        @Override
        public void visitSkip(JCTree.JCSkip jCSkip) {
            this.result = new SourceRange(startPos(jCSkip), startPos(jCSkip));
        }

        @Override
        public void visitSwitch(JCTree.JCSwitch jCSwitch) {
            SourceRange sourceRange = new SourceRange(startPos(jCSwitch), endPos(jCSwitch));
            sourceRange.mergeWith(csp(jCSwitch.selector));
            sourceRange.mergeWith(cspCases(jCSwitch.cases));
            this.result = sourceRange;
        }

        @Override
        public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
            SourceRange sourceRange = new SourceRange(startPos(jCSynchronized), endPos(jCSynchronized));
            sourceRange.mergeWith(csp(jCSynchronized.lock));
            sourceRange.mergeWith(csp(jCSynchronized.body));
            this.result = sourceRange;
        }

        @Override
        public void visitThrow(JCTree.JCThrow jCThrow) {
            SourceRange sourceRange = new SourceRange(startPos(jCThrow), endPos(jCThrow));
            sourceRange.mergeWith(csp(jCThrow.expr));
            this.result = sourceRange;
        }

        @Override
        public void visitTree(JCTree jCTree) {
            Assert.error();
        }

        @Override
        public void visitTry(JCTree.JCTry jCTry) {
            SourceRange sourceRange = new SourceRange(startPos(jCTry), endPos(jCTry));
            sourceRange.mergeWith(csp(jCTry.resources));
            sourceRange.mergeWith(csp(jCTry.body));
            sourceRange.mergeWith(cspCatchers(jCTry.catchers));
            sourceRange.mergeWith(csp(jCTry.finalizer));
            this.result = sourceRange;
        }

        @Override
        public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
            SourceRange sourceRange = new SourceRange(startPos(jCTypeApply), endPos(jCTypeApply));
            sourceRange.mergeWith(csp(jCTypeApply.clazz));
            sourceRange.mergeWith(csp(jCTypeApply.arguments));
            this.result = sourceRange;
        }

        @Override
        public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
            SourceRange sourceRange = new SourceRange(startPos(jCArrayTypeTree), endPos(jCArrayTypeTree));
            sourceRange.mergeWith(csp(jCArrayTypeTree.elemtype));
            this.result = sourceRange;
        }

        @Override
        public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
            SourceRange sourceRange = new SourceRange(startPos(jCTypeCast), endPos(jCTypeCast));
            sourceRange.mergeWith(csp(jCTypeCast.clazz));
            sourceRange.mergeWith(csp(jCTypeCast.expr));
            this.result = sourceRange;
        }

        @Override
        public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
            this.result = new SourceRange(startPos(jCPrimitiveTypeTree), endPos(jCPrimitiveTypeTree));
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            SourceRange sourceRange = new SourceRange(startPos(jCTypeParameter), endPos(jCTypeParameter));
            sourceRange.mergeWith(csp(jCTypeParameter.bounds));
            this.result = sourceRange;
        }

        @Override
        public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
            SourceRange sourceRange = new SourceRange(startPos(jCInstanceOf), endPos(jCInstanceOf));
            sourceRange.mergeWith(csp(jCInstanceOf.expr));
            sourceRange.mergeWith(csp(jCInstanceOf.clazz));
            this.result = sourceRange;
        }

        @Override
        public void visitTypeUnion(JCTree.JCTypeUnion jCTypeUnion) {
            SourceRange sourceRange = new SourceRange(startPos(jCTypeUnion), endPos(jCTypeUnion));
            sourceRange.mergeWith(csp(jCTypeUnion.alternatives));
            this.result = sourceRange;
        }

        @Override
        public void visitUnary(JCTree.JCUnary jCUnary) {
            SourceRange sourceRange = new SourceRange(startPos(jCUnary), endPos(jCUnary));
            sourceRange.mergeWith(csp(jCUnary.arg));
            this.result = sourceRange;
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            SourceRange sourceRange = new SourceRange(startPos(jCVariableDecl), endPos(jCVariableDecl));
            csp(jCVariableDecl.vartype);
            sourceRange.mergeWith(csp(jCVariableDecl.init));
            this.result = sourceRange;
        }

        @Override
        public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
            SourceRange sourceRange = new SourceRange(startPos(jCWhileLoop), endPos(jCWhileLoop));
            sourceRange.mergeWith(csp(jCWhileLoop.cond));
            sourceRange.mergeWith(csp(jCWhileLoop.body));
            this.result = sourceRange;
        }

        @Override
        public void visitWildcard(JCTree.JCWildcard jCWildcard) {
            this.result = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SourceRange csp(List<? extends JCTree> list) {
            if (list == null || !list.nonEmpty()) {
                return null;
            }
            SourceRange sourceRange = new SourceRange();
            for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                sourceRange.mergeWith(csp((JCTree) list2.head));
            }
            CRTable.this.positions.put(list, sourceRange);
            return sourceRange;
        }
    }
}
