package org.openjdk.tools.javac.tree;

import java.util.Iterator;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.List;

public class TreeScanner extends JCTree.Visitor {
    public void scan(JCTree jCTree) {
        if (jCTree != null) {
            jCTree.accept(this);
        }
    }

    @Override
    public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
        scan(jCAnnotatedType.annotations);
        scan(jCAnnotatedType.underlyingType);
    }

    @Override
    public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
        scan(jCAnnotation.annotationType);
        scan(jCAnnotation.args);
    }

    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        scan(jCMethodInvocation.typeargs);
        scan(jCMethodInvocation.meth);
        scan(jCMethodInvocation.args);
    }

    @Override
    public void visitAssert(JCTree.JCAssert jCAssert) {
        scan(jCAssert.cond);
        scan(jCAssert.detail);
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        scan(jCAssign.lhs);
        scan(jCAssign.rhs);
    }

    @Override
    public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
        scan(jCAssignOp.lhs);
        scan(jCAssignOp.rhs);
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        scan(jCBinary.lhs);
        scan(jCBinary.rhs);
    }

    @Override
    public void visitBlock(JCTree.JCBlock jCBlock) {
        scan(jCBlock.stats);
    }

    @Override
    public void visitBreak(JCTree.JCBreak jCBreak) {
    }

    @Override
    public void visitCase(JCTree.JCCase jCCase) {
        scan(jCCase.pat);
        scan(jCCase.stats);
    }

    @Override
    public void visitCatch(JCTree.JCCatch jCCatch) {
        scan(jCCatch.param);
        scan(jCCatch.body);
    }

    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        scan(jCClassDecl.mods);
        scan(jCClassDecl.typarams);
        scan(jCClassDecl.extending);
        scan(jCClassDecl.implementing);
        scan(jCClassDecl.defs);
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        scan(jCConditional.cond);
        scan(jCConditional.truepart);
        scan(jCConditional.falsepart);
    }

    @Override
    public void visitContinue(JCTree.JCContinue jCContinue) {
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        scan(jCDoWhileLoop.body);
        scan(jCDoWhileLoop.cond);
    }

    @Override
    public void visitErroneous(JCTree.JCErroneous jCErroneous) {
    }

    @Override
    public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
        scan(jCExpressionStatement.expr);
    }

    @Override
    public void visitExports(JCTree.JCExports jCExports) {
        scan(jCExports.qualid);
        scan(jCExports.moduleNames);
    }

    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        scan(jCForLoop.init);
        scan(jCForLoop.cond);
        scan(jCForLoop.step);
        scan(jCForLoop.body);
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        scan(jCEnhancedForLoop.var);
        scan(jCEnhancedForLoop.expr);
        scan(jCEnhancedForLoop.body);
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        scan(jCIf.cond);
        scan(jCIf.thenpart);
        scan(jCIf.elsepart);
    }

    @Override
    public void visitImport(JCTree.JCImport jCImport) {
        scan(jCImport.qualid);
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        scan(jCArrayAccess.indexed);
        scan(jCArrayAccess.index);
    }

    @Override
    public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
        scan(jCLabeledStatement.body);
    }

    @Override
    public void visitLambda(JCTree.JCLambda jCLambda) {
        scan(jCLambda.body);
        scan(jCLambda.params);
    }

    @Override
    public void visitLetExpr(JCTree.LetExpr letExpr) {
        scan(letExpr.defs);
        scan(letExpr.expr);
    }

    @Override
    public void visitLiteral(JCTree.JCLiteral jCLiteral) {
    }

    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        scan(jCMethodDecl.mods);
        scan(jCMethodDecl.restype);
        scan(jCMethodDecl.typarams);
        scan(jCMethodDecl.recvparam);
        scan(jCMethodDecl.params);
        scan(jCMethodDecl.thrown);
        scan(jCMethodDecl.defaultValue);
        scan(jCMethodDecl.body);
    }

    @Override
    public void visitModifiers(JCTree.JCModifiers jCModifiers) {
        scan(jCModifiers.annotations);
    }

    @Override
    public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        scan(jCModuleDecl.mods);
        scan(jCModuleDecl.qualId);
        scan(jCModuleDecl.directives);
    }

    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        scan(jCNewArray.annotations);
        scan(jCNewArray.elemtype);
        scan(jCNewArray.dims);
        Iterator<List<JCTree.JCAnnotation>> it = jCNewArray.dimAnnotations.iterator();
        while (it.hasNext()) {
            scan(it.next());
        }
        scan(jCNewArray.elems);
    }

    @Override
    public void visitNewClass(JCTree.JCNewClass jCNewClass) {
        scan(jCNewClass.encl);
        scan(jCNewClass.typeargs);
        scan(jCNewClass.clazz);
        scan(jCNewClass.args);
        scan(jCNewClass.def);
    }

    @Override
    public void visitOpens(JCTree.JCOpens jCOpens) {
        scan(jCOpens.qualid);
        scan(jCOpens.moduleNames);
    }

    @Override
    public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
        scan(jCPackageDecl.annotations);
        scan(jCPackageDecl.pid);
    }

    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        scan(jCParens.expr);
    }

    @Override
    public void visitProvides(JCTree.JCProvides jCProvides) {
        scan(jCProvides.serviceName);
        scan(jCProvides.implNames);
    }

    @Override
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        scan(jCMemberReference.expr);
        scan(jCMemberReference.typeargs);
    }

    @Override
    public void visitRequires(JCTree.JCRequires jCRequires) {
        scan(jCRequires.moduleName);
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        scan(jCReturn.expr);
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        scan(jCFieldAccess.selected);
    }

    @Override
    public void visitSkip(JCTree.JCSkip jCSkip) {
    }

    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        scan(jCSwitch.selector);
        scan(jCSwitch.cases);
    }

    @Override
    public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
        scan(jCSynchronized.lock);
        scan(jCSynchronized.body);
    }

    @Override
    public void visitThrow(JCTree.JCThrow jCThrow) {
        scan(jCThrow.expr);
    }

    @Override
    public void visitTopLevel(JCTree.JCCompilationUnit jCCompilationUnit) {
        scan(jCCompilationUnit.defs);
    }

    @Override
    public void visitTree(JCTree jCTree) {
        Assert.error();
    }

    @Override
    public void visitTry(JCTree.JCTry jCTry) {
        scan(jCTry.resources);
        scan(jCTry.body);
        scan(jCTry.catchers);
        scan(jCTry.finalizer);
    }

    @Override
    public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
        scan(jCTypeApply.clazz);
        scan(jCTypeApply.arguments);
    }

    @Override
    public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
        scan(jCArrayTypeTree.elemtype);
    }

    @Override
    public void visitTypeBoundKind(JCTree.TypeBoundKind typeBoundKind) {
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        scan(jCTypeCast.clazz);
        scan(jCTypeCast.expr);
    }

    @Override
    public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
    }

    @Override
    public void visitTypeIntersection(JCTree.JCTypeIntersection jCTypeIntersection) {
        scan(jCTypeIntersection.bounds);
    }

    @Override
    public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
        scan(jCTypeParameter.annotations);
        scan(jCTypeParameter.bounds);
    }

    @Override
    public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
        scan(jCInstanceOf.expr);
        scan(jCInstanceOf.clazz);
    }

    @Override
    public void visitTypeUnion(JCTree.JCTypeUnion jCTypeUnion) {
        scan(jCTypeUnion.alternatives);
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        scan(jCUnary.arg);
    }

    @Override
    public void visitUses(JCTree.JCUses jCUses) {
        scan(jCUses.qualid);
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        scan(jCVariableDecl.mods);
        scan(jCVariableDecl.vartype);
        scan(jCVariableDecl.nameexpr);
        scan(jCVariableDecl.init);
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        scan(jCWhileLoop.cond);
        scan(jCWhileLoop.body);
    }

    @Override
    public void visitWildcard(JCTree.JCWildcard jCWildcard) {
        scan(jCWildcard.kind);
        JCTree jCTree = jCWildcard.inner;
        if (jCTree != null) {
            scan(jCTree);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scan(List<? extends JCTree> list) {
        if (list != null) {
            for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                scan((JCTree) list2.head);
            }
        }
    }
}
