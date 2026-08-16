package org.openjdk.tools.javac.tree;

import java.util.Iterator;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.List;

public class TreeTranslator extends JCTree.Visitor {
    protected JCTree result;

    public <T extends JCTree> T translate(T t10) {
        if (t10 == null) {
            return null;
        }
        t10.accept(this);
        T t11 = (T) this.result;
        this.result = null;
        return t11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public List<JCTree.JCAnnotation> translateAnnotations(List<JCTree.JCAnnotation> list) {
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((TreeTranslator) list2.head);
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public List<JCTree.JCCase> translateCases(List<JCTree.JCCase> list) {
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((TreeTranslator) list2.head);
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public List<JCTree.JCCatch> translateCatchers(List<JCTree.JCCatch> list) {
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((TreeTranslator) list2.head);
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public List<JCTree.JCTypeParameter> translateTypeParams(List<JCTree.JCTypeParameter> list) {
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((TreeTranslator) list2.head);
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public List<JCTree.JCVariableDecl> translateVarDefs(List<JCTree.JCVariableDecl> list) {
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((TreeTranslator) list2.head);
        }
        return list;
    }

    @Override
    public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
        jCAnnotatedType.annotations = translate(jCAnnotatedType.annotations);
        jCAnnotatedType.underlyingType = (JCTree.JCExpression) translate((TreeTranslator) jCAnnotatedType.underlyingType);
        this.result = jCAnnotatedType;
    }

    @Override
    public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
        jCAnnotation.annotationType = translate((TreeTranslator) jCAnnotation.annotationType);
        jCAnnotation.args = translate(jCAnnotation.args);
        this.result = jCAnnotation;
    }

    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        jCMethodInvocation.meth = (JCTree.JCExpression) translate((TreeTranslator) jCMethodInvocation.meth);
        jCMethodInvocation.args = translate(jCMethodInvocation.args);
        this.result = jCMethodInvocation;
    }

    @Override
    public void visitAssert(JCTree.JCAssert jCAssert) {
        jCAssert.cond = (JCTree.JCExpression) translate((TreeTranslator) jCAssert.cond);
        jCAssert.detail = (JCTree.JCExpression) translate((TreeTranslator) jCAssert.detail);
        this.result = jCAssert;
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        jCAssign.lhs = (JCTree.JCExpression) translate((TreeTranslator) jCAssign.lhs);
        jCAssign.rhs = (JCTree.JCExpression) translate((TreeTranslator) jCAssign.rhs);
        this.result = jCAssign;
    }

    @Override
    public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
        jCAssignOp.lhs = (JCTree.JCExpression) translate((TreeTranslator) jCAssignOp.lhs);
        jCAssignOp.rhs = (JCTree.JCExpression) translate((TreeTranslator) jCAssignOp.rhs);
        this.result = jCAssignOp;
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        jCBinary.lhs = (JCTree.JCExpression) translate((TreeTranslator) jCBinary.lhs);
        jCBinary.rhs = (JCTree.JCExpression) translate((TreeTranslator) jCBinary.rhs);
        this.result = jCBinary;
    }

    @Override
    public void visitBlock(JCTree.JCBlock jCBlock) {
        jCBlock.stats = translate(jCBlock.stats);
        this.result = jCBlock;
    }

    @Override
    public void visitBreak(JCTree.JCBreak jCBreak) {
        this.result = jCBreak;
    }

    @Override
    public void visitCase(JCTree.JCCase jCCase) {
        jCCase.pat = (JCTree.JCExpression) translate((TreeTranslator) jCCase.pat);
        jCCase.stats = translate(jCCase.stats);
        this.result = jCCase;
    }

    @Override
    public void visitCatch(JCTree.JCCatch jCCatch) {
        jCCatch.param = (JCTree.JCVariableDecl) translate((TreeTranslator) jCCatch.param);
        jCCatch.body = (JCTree.JCBlock) translate((TreeTranslator) jCCatch.body);
        this.result = jCCatch;
    }

    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        jCClassDecl.mods = (JCTree.JCModifiers) translate((TreeTranslator) jCClassDecl.mods);
        jCClassDecl.typarams = translateTypeParams(jCClassDecl.typarams);
        jCClassDecl.extending = (JCTree.JCExpression) translate((TreeTranslator) jCClassDecl.extending);
        jCClassDecl.implementing = translate(jCClassDecl.implementing);
        jCClassDecl.defs = translate(jCClassDecl.defs);
        this.result = jCClassDecl;
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        jCConditional.cond = (JCTree.JCExpression) translate((TreeTranslator) jCConditional.cond);
        jCConditional.truepart = (JCTree.JCExpression) translate((TreeTranslator) jCConditional.truepart);
        jCConditional.falsepart = (JCTree.JCExpression) translate((TreeTranslator) jCConditional.falsepart);
        this.result = jCConditional;
    }

    @Override
    public void visitContinue(JCTree.JCContinue jCContinue) {
        this.result = jCContinue;
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        jCDoWhileLoop.body = (JCTree.JCStatement) translate((TreeTranslator) jCDoWhileLoop.body);
        jCDoWhileLoop.cond = (JCTree.JCExpression) translate((TreeTranslator) jCDoWhileLoop.cond);
        this.result = jCDoWhileLoop;
    }

    @Override
    public void visitErroneous(JCTree.JCErroneous jCErroneous) {
        this.result = jCErroneous;
    }

    @Override
    public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
        jCExpressionStatement.expr = (JCTree.JCExpression) translate((TreeTranslator) jCExpressionStatement.expr);
        this.result = jCExpressionStatement;
    }

    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        jCForLoop.init = translate(jCForLoop.init);
        jCForLoop.cond = (JCTree.JCExpression) translate((TreeTranslator) jCForLoop.cond);
        jCForLoop.step = translate(jCForLoop.step);
        jCForLoop.body = (JCTree.JCStatement) translate((TreeTranslator) jCForLoop.body);
        this.result = jCForLoop;
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        jCEnhancedForLoop.var = (JCTree.JCVariableDecl) translate((TreeTranslator) jCEnhancedForLoop.var);
        jCEnhancedForLoop.expr = (JCTree.JCExpression) translate((TreeTranslator) jCEnhancedForLoop.expr);
        jCEnhancedForLoop.body = (JCTree.JCStatement) translate((TreeTranslator) jCEnhancedForLoop.body);
        this.result = jCEnhancedForLoop;
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        this.result = jCIdent;
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        jCIf.cond = (JCTree.JCExpression) translate((TreeTranslator) jCIf.cond);
        jCIf.thenpart = (JCTree.JCStatement) translate((TreeTranslator) jCIf.thenpart);
        jCIf.elsepart = (JCTree.JCStatement) translate((TreeTranslator) jCIf.elsepart);
        this.result = jCIf;
    }

    @Override
    public void visitImport(JCTree.JCImport jCImport) {
        jCImport.qualid = translate((TreeTranslator) jCImport.qualid);
        this.result = jCImport;
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        jCArrayAccess.indexed = (JCTree.JCExpression) translate((TreeTranslator) jCArrayAccess.indexed);
        jCArrayAccess.index = (JCTree.JCExpression) translate((TreeTranslator) jCArrayAccess.index);
        this.result = jCArrayAccess;
    }

    @Override
    public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
        jCLabeledStatement.body = (JCTree.JCStatement) translate((TreeTranslator) jCLabeledStatement.body);
        this.result = jCLabeledStatement;
    }

    @Override
    public void visitLambda(JCTree.JCLambda jCLambda) {
        jCLambda.params = translate(jCLambda.params);
        jCLambda.body = translate((TreeTranslator) jCLambda.body);
        this.result = jCLambda;
    }

    @Override
    public void visitLetExpr(JCTree.LetExpr letExpr) {
        letExpr.defs = translateVarDefs(letExpr.defs);
        letExpr.expr = (JCTree.JCExpression) translate((TreeTranslator) letExpr.expr);
        this.result = letExpr;
    }

    @Override
    public void visitLiteral(JCTree.JCLiteral jCLiteral) {
        this.result = jCLiteral;
    }

    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        jCMethodDecl.mods = (JCTree.JCModifiers) translate((TreeTranslator) jCMethodDecl.mods);
        jCMethodDecl.restype = (JCTree.JCExpression) translate((TreeTranslator) jCMethodDecl.restype);
        jCMethodDecl.typarams = translateTypeParams(jCMethodDecl.typarams);
        jCMethodDecl.recvparam = (JCTree.JCVariableDecl) translate((TreeTranslator) jCMethodDecl.recvparam);
        jCMethodDecl.params = translateVarDefs(jCMethodDecl.params);
        jCMethodDecl.thrown = translate(jCMethodDecl.thrown);
        jCMethodDecl.body = (JCTree.JCBlock) translate((TreeTranslator) jCMethodDecl.body);
        this.result = jCMethodDecl;
    }

    @Override
    public void visitModifiers(JCTree.JCModifiers jCModifiers) {
        jCModifiers.annotations = translateAnnotations(jCModifiers.annotations);
        this.result = jCModifiers;
    }

    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        jCNewArray.annotations = translate(jCNewArray.annotations);
        List<List<JCTree.JCAnnotation>> nil = List.nil();
        Iterator<List<JCTree.JCAnnotation>> it = jCNewArray.dimAnnotations.iterator();
        while (it.hasNext()) {
            nil = nil.append(translate(it.next()));
        }
        jCNewArray.dimAnnotations = nil;
        jCNewArray.elemtype = (JCTree.JCExpression) translate((TreeTranslator) jCNewArray.elemtype);
        jCNewArray.dims = translate(jCNewArray.dims);
        jCNewArray.elems = translate(jCNewArray.elems);
        this.result = jCNewArray;
    }

    @Override
    public void visitNewClass(JCTree.JCNewClass jCNewClass) {
        jCNewClass.encl = (JCTree.JCExpression) translate((TreeTranslator) jCNewClass.encl);
        jCNewClass.clazz = (JCTree.JCExpression) translate((TreeTranslator) jCNewClass.clazz);
        jCNewClass.args = translate(jCNewClass.args);
        jCNewClass.def = (JCTree.JCClassDecl) translate((TreeTranslator) jCNewClass.def);
        this.result = jCNewClass;
    }

    @Override
    public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
        jCPackageDecl.annotations = translate(jCPackageDecl.annotations);
        jCPackageDecl.pid = (JCTree.JCExpression) translate((TreeTranslator) jCPackageDecl.pid);
        this.result = jCPackageDecl;
    }

    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        jCParens.expr = (JCTree.JCExpression) translate((TreeTranslator) jCParens.expr);
        this.result = jCParens;
    }

    @Override
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        jCMemberReference.expr = (JCTree.JCExpression) translate((TreeTranslator) jCMemberReference.expr);
        this.result = jCMemberReference;
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        jCReturn.expr = (JCTree.JCExpression) translate((TreeTranslator) jCReturn.expr);
        this.result = jCReturn;
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        jCFieldAccess.selected = (JCTree.JCExpression) translate((TreeTranslator) jCFieldAccess.selected);
        this.result = jCFieldAccess;
    }

    @Override
    public void visitSkip(JCTree.JCSkip jCSkip) {
        this.result = jCSkip;
    }

    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        jCSwitch.selector = (JCTree.JCExpression) translate((TreeTranslator) jCSwitch.selector);
        jCSwitch.cases = translateCases(jCSwitch.cases);
        this.result = jCSwitch;
    }

    @Override
    public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
        jCSynchronized.lock = (JCTree.JCExpression) translate((TreeTranslator) jCSynchronized.lock);
        jCSynchronized.body = (JCTree.JCBlock) translate((TreeTranslator) jCSynchronized.body);
        this.result = jCSynchronized;
    }

    @Override
    public void visitThrow(JCTree.JCThrow jCThrow) {
        jCThrow.expr = (JCTree.JCExpression) translate((TreeTranslator) jCThrow.expr);
        this.result = jCThrow;
    }

    @Override
    public void visitTopLevel(JCTree.JCCompilationUnit jCCompilationUnit) {
        jCCompilationUnit.defs = translate(jCCompilationUnit.defs);
        this.result = jCCompilationUnit;
    }

    @Override
    public void visitTree(JCTree jCTree) {
        throw new AssertionError(jCTree);
    }

    @Override
    public void visitTry(JCTree.JCTry jCTry) {
        jCTry.resources = translate(jCTry.resources);
        jCTry.body = (JCTree.JCBlock) translate((TreeTranslator) jCTry.body);
        jCTry.catchers = translateCatchers(jCTry.catchers);
        jCTry.finalizer = (JCTree.JCBlock) translate((TreeTranslator) jCTry.finalizer);
        this.result = jCTry;
    }

    @Override
    public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
        jCTypeApply.clazz = (JCTree.JCExpression) translate((TreeTranslator) jCTypeApply.clazz);
        jCTypeApply.arguments = translate(jCTypeApply.arguments);
        this.result = jCTypeApply;
    }

    @Override
    public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
        jCArrayTypeTree.elemtype = (JCTree.JCExpression) translate((TreeTranslator) jCArrayTypeTree.elemtype);
        this.result = jCArrayTypeTree;
    }

    @Override
    public void visitTypeBoundKind(JCTree.TypeBoundKind typeBoundKind) {
        this.result = typeBoundKind;
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        jCTypeCast.clazz = translate((TreeTranslator) jCTypeCast.clazz);
        jCTypeCast.expr = (JCTree.JCExpression) translate((TreeTranslator) jCTypeCast.expr);
        this.result = jCTypeCast;
    }

    @Override
    public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
        this.result = jCPrimitiveTypeTree;
    }

    @Override
    public void visitTypeIntersection(JCTree.JCTypeIntersection jCTypeIntersection) {
        jCTypeIntersection.bounds = translate(jCTypeIntersection.bounds);
        this.result = jCTypeIntersection;
    }

    @Override
    public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
        jCTypeParameter.annotations = translate(jCTypeParameter.annotations);
        jCTypeParameter.bounds = translate(jCTypeParameter.bounds);
        this.result = jCTypeParameter;
    }

    @Override
    public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
        jCInstanceOf.expr = (JCTree.JCExpression) translate((TreeTranslator) jCInstanceOf.expr);
        jCInstanceOf.clazz = translate((TreeTranslator) jCInstanceOf.clazz);
        this.result = jCInstanceOf;
    }

    @Override
    public void visitTypeUnion(JCTree.JCTypeUnion jCTypeUnion) {
        jCTypeUnion.alternatives = translate(jCTypeUnion.alternatives);
        this.result = jCTypeUnion;
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        jCUnary.arg = (JCTree.JCExpression) translate((TreeTranslator) jCUnary.arg);
        this.result = jCUnary;
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        jCVariableDecl.mods = (JCTree.JCModifiers) translate((TreeTranslator) jCVariableDecl.mods);
        jCVariableDecl.nameexpr = (JCTree.JCExpression) translate((TreeTranslator) jCVariableDecl.nameexpr);
        jCVariableDecl.vartype = (JCTree.JCExpression) translate((TreeTranslator) jCVariableDecl.vartype);
        jCVariableDecl.init = (JCTree.JCExpression) translate((TreeTranslator) jCVariableDecl.init);
        this.result = jCVariableDecl;
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        jCWhileLoop.cond = (JCTree.JCExpression) translate((TreeTranslator) jCWhileLoop.cond);
        jCWhileLoop.body = (JCTree.JCStatement) translate((TreeTranslator) jCWhileLoop.body);
        this.result = jCWhileLoop;
    }

    @Override
    public void visitWildcard(JCTree.JCWildcard jCWildcard) {
        jCWildcard.kind = (JCTree.TypeBoundKind) translate((TreeTranslator) jCWildcard.kind);
        jCWildcard.inner = translate((TreeTranslator) jCWildcard.inner);
        this.result = jCWildcard;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [A, org.openjdk.tools.javac.tree.JCTree] */
    public <T extends JCTree> List<T> translate(List<T> list) {
        if (list == null) {
            return null;
        }
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            list2.head = translate((TreeTranslator) list2.head);
        }
        return list;
    }
}
