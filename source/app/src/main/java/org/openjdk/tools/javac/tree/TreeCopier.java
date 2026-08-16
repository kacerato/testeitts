package org.openjdk.tools.javac.tree;

import java.util.Iterator;
import org.openjdk.source.tree.AnnotatedTypeTree;
import org.openjdk.source.tree.AnnotationTree;
import org.openjdk.source.tree.ArrayAccessTree;
import org.openjdk.source.tree.ArrayTypeTree;
import org.openjdk.source.tree.AssertTree;
import org.openjdk.source.tree.AssignmentTree;
import org.openjdk.source.tree.BinaryTree;
import org.openjdk.source.tree.BlockTree;
import org.openjdk.source.tree.BreakTree;
import org.openjdk.source.tree.CaseTree;
import org.openjdk.source.tree.CatchTree;
import org.openjdk.source.tree.ClassTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.CompoundAssignmentTree;
import org.openjdk.source.tree.ConditionalExpressionTree;
import org.openjdk.source.tree.ContinueTree;
import org.openjdk.source.tree.DoWhileLoopTree;
import org.openjdk.source.tree.EmptyStatementTree;
import org.openjdk.source.tree.EnhancedForLoopTree;
import org.openjdk.source.tree.ErroneousTree;
import org.openjdk.source.tree.ExportsTree;
import org.openjdk.source.tree.ExpressionStatementTree;
import org.openjdk.source.tree.ForLoopTree;
import org.openjdk.source.tree.IdentifierTree;
import org.openjdk.source.tree.IfTree;
import org.openjdk.source.tree.ImportTree;
import org.openjdk.source.tree.InstanceOfTree;
import org.openjdk.source.tree.IntersectionTypeTree;
import org.openjdk.source.tree.LabeledStatementTree;
import org.openjdk.source.tree.LambdaExpressionTree;
import org.openjdk.source.tree.LiteralTree;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.MemberSelectTree;
import org.openjdk.source.tree.MethodInvocationTree;
import org.openjdk.source.tree.MethodTree;
import org.openjdk.source.tree.ModifiersTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.source.tree.NewArrayTree;
import org.openjdk.source.tree.NewClassTree;
import org.openjdk.source.tree.OpensTree;
import org.openjdk.source.tree.PackageTree;
import org.openjdk.source.tree.ParameterizedTypeTree;
import org.openjdk.source.tree.ParenthesizedTree;
import org.openjdk.source.tree.PrimitiveTypeTree;
import org.openjdk.source.tree.ProvidesTree;
import org.openjdk.source.tree.RequiresTree;
import org.openjdk.source.tree.ReturnTree;
import org.openjdk.source.tree.SwitchTree;
import org.openjdk.source.tree.SynchronizedTree;
import org.openjdk.source.tree.ThrowTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.tree.TreeVisitor;
import org.openjdk.source.tree.TryTree;
import org.openjdk.source.tree.TypeCastTree;
import org.openjdk.source.tree.TypeParameterTree;
import org.openjdk.source.tree.UnaryTree;
import org.openjdk.source.tree.UnionTypeTree;
import org.openjdk.source.tree.UsesTree;
import org.openjdk.source.tree.VariableTree;
import org.openjdk.source.tree.WhileLoopTree;
import org.openjdk.source.tree.WildcardTree;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;

public class TreeCopier<P> implements TreeVisitor<JCTree, P> {

    private TreeMaker f103300M;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.LETEXPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public TreeCopier(TreeMaker treeMaker) {
        this.f103300M = treeMaker;
    }

    public <T extends JCTree> T copy(T t10) {
        return (T) copy((TreeCopier<P>) t10, (T) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitAnnotatedType(AnnotatedTypeTree annotatedTypeTree, Object obj) {
        return visitAnnotatedType2(annotatedTypeTree, (AnnotatedTypeTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitAnnotation(AnnotationTree annotationTree, Object obj) {
        return visitAnnotation2(annotationTree, (AnnotationTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitArrayAccess(ArrayAccessTree arrayAccessTree, Object obj) {
        return visitArrayAccess2(arrayAccessTree, (ArrayAccessTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitArrayType(ArrayTypeTree arrayTypeTree, Object obj) {
        return visitArrayType2(arrayTypeTree, (ArrayTypeTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitAssert(AssertTree assertTree, Object obj) {
        return visitAssert2(assertTree, (AssertTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitAssignment(AssignmentTree assignmentTree, Object obj) {
        return visitAssignment2(assignmentTree, (AssignmentTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitBinary(BinaryTree binaryTree, Object obj) {
        return visitBinary2(binaryTree, (BinaryTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitBlock(BlockTree blockTree, Object obj) {
        return visitBlock2(blockTree, (BlockTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitBreak(BreakTree breakTree, Object obj) {
        return visitBreak2(breakTree, (BreakTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitCase(CaseTree caseTree, Object obj) {
        return visitCase2(caseTree, (CaseTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitCatch(CatchTree catchTree, Object obj) {
        return visitCatch2(catchTree, (CatchTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitClass(ClassTree classTree, Object obj) {
        return visitClass2(classTree, (ClassTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitCompilationUnit(CompilationUnitTree compilationUnitTree, Object obj) {
        return visitCompilationUnit2(compilationUnitTree, (CompilationUnitTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitCompoundAssignment(CompoundAssignmentTree compoundAssignmentTree, Object obj) {
        return visitCompoundAssignment2(compoundAssignmentTree, (CompoundAssignmentTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitConditionalExpression(ConditionalExpressionTree conditionalExpressionTree, Object obj) {
        return visitConditionalExpression2(conditionalExpressionTree, (ConditionalExpressionTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitContinue(ContinueTree continueTree, Object obj) {
        return visitContinue2(continueTree, (ContinueTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitDoWhileLoop(DoWhileLoopTree doWhileLoopTree, Object obj) {
        return visitDoWhileLoop2(doWhileLoopTree, (DoWhileLoopTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitEmptyStatement(EmptyStatementTree emptyStatementTree, Object obj) {
        return visitEmptyStatement2(emptyStatementTree, (EmptyStatementTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitEnhancedForLoop(EnhancedForLoopTree enhancedForLoopTree, Object obj) {
        return visitEnhancedForLoop2(enhancedForLoopTree, (EnhancedForLoopTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitErroneous(ErroneousTree erroneousTree, Object obj) {
        return visitErroneous2(erroneousTree, (ErroneousTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitExports(ExportsTree exportsTree, Object obj) {
        return visitExports2(exportsTree, (ExportsTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitExpressionStatement(ExpressionStatementTree expressionStatementTree, Object obj) {
        return visitExpressionStatement2(expressionStatementTree, (ExpressionStatementTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitForLoop(ForLoopTree forLoopTree, Object obj) {
        return visitForLoop2(forLoopTree, (ForLoopTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitIdentifier(IdentifierTree identifierTree, Object obj) {
        return visitIdentifier2(identifierTree, (IdentifierTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitIf(IfTree ifTree, Object obj) {
        return visitIf2(ifTree, (IfTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitImport(ImportTree importTree, Object obj) {
        return visitImport2(importTree, (ImportTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitInstanceOf(InstanceOfTree instanceOfTree, Object obj) {
        return visitInstanceOf2(instanceOfTree, (InstanceOfTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitIntersectionType(IntersectionTypeTree intersectionTypeTree, Object obj) {
        return visitIntersectionType2(intersectionTypeTree, (IntersectionTypeTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitLabeledStatement(LabeledStatementTree labeledStatementTree, Object obj) {
        return visitLabeledStatement2(labeledStatementTree, (LabeledStatementTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitLambdaExpression(LambdaExpressionTree lambdaExpressionTree, Object obj) {
        return visitLambdaExpression(lambdaExpressionTree, (LambdaExpressionTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitLiteral(LiteralTree literalTree, Object obj) {
        return visitLiteral2(literalTree, (LiteralTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMemberReference2(MemberReferenceTree memberReferenceTree, Object obj) {
        return visitMemberReference2(memberReferenceTree, (MemberReferenceTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMemberSelect(MemberSelectTree memberSelectTree, Object obj) {
        return visitMemberSelect2(memberSelectTree, (MemberSelectTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMethod(MethodTree methodTree, Object obj) {
        return visitMethod2(methodTree, (MethodTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMethodInvocation(MethodInvocationTree methodInvocationTree, Object obj) {
        return visitMethodInvocation2(methodInvocationTree, (MethodInvocationTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitModifiers(ModifiersTree modifiersTree, Object obj) {
        return visitModifiers2(modifiersTree, (ModifiersTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitModule(ModuleTree moduleTree, Object obj) {
        return visitModule2(moduleTree, (ModuleTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitNewArray(NewArrayTree newArrayTree, Object obj) {
        return visitNewArray2(newArrayTree, (NewArrayTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitNewClass2(NewClassTree newClassTree, Object obj) {
        return visitNewClass2(newClassTree, (NewClassTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitOpens(OpensTree opensTree, Object obj) {
        return visitOpens2(opensTree, (OpensTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitOther(Tree tree, Object obj) {
        return visitOther2(tree, (Tree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitPackage(PackageTree packageTree, Object obj) {
        return visitPackage2(packageTree, (PackageTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitParameterizedType(ParameterizedTypeTree parameterizedTypeTree, Object obj) {
        return visitParameterizedType2(parameterizedTypeTree, (ParameterizedTypeTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitParenthesized(ParenthesizedTree parenthesizedTree, Object obj) {
        return visitParenthesized2(parenthesizedTree, (ParenthesizedTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitPrimitiveType(PrimitiveTypeTree primitiveTypeTree, Object obj) {
        return visitPrimitiveType2(primitiveTypeTree, (PrimitiveTypeTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitProvides(ProvidesTree providesTree, Object obj) {
        return visitProvides2(providesTree, (ProvidesTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitRequires(RequiresTree requiresTree, Object obj) {
        return visitRequires2(requiresTree, (RequiresTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitReturn(ReturnTree returnTree, Object obj) {
        return visitReturn2(returnTree, (ReturnTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitSwitch(SwitchTree switchTree, Object obj) {
        return visitSwitch2(switchTree, (SwitchTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitSynchronized(SynchronizedTree synchronizedTree, Object obj) {
        return visitSynchronized2(synchronizedTree, (SynchronizedTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitThrow(ThrowTree throwTree, Object obj) {
        return visitThrow2(throwTree, (ThrowTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitTry(TryTree tryTree, Object obj) {
        return visitTry2(tryTree, (TryTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitTypeCast(TypeCastTree typeCastTree, Object obj) {
        return visitTypeCast2(typeCastTree, (TypeCastTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitTypeParameter(TypeParameterTree typeParameterTree, Object obj) {
        return visitTypeParameter2(typeParameterTree, (TypeParameterTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitUnary(UnaryTree unaryTree, Object obj) {
        return visitUnary2(unaryTree, (UnaryTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitUnionType(UnionTypeTree unionTypeTree, Object obj) {
        return visitUnionType2(unionTypeTree, (UnionTypeTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitUses(UsesTree usesTree, Object obj) {
        return visitUses2(usesTree, (UsesTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitVariable(VariableTree variableTree, Object obj) {
        return visitVariable2(variableTree, (VariableTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitWhileLoop(WhileLoopTree whileLoopTree, Object obj) {
        return visitWhileLoop2(whileLoopTree, (WhileLoopTree) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitWildcard(WildcardTree wildcardTree, Object obj) {
        return visitWildcard2(wildcardTree, (WildcardTree) obj);
    }

    public <T extends JCTree> T copy(T t10, P p10) {
        if (t10 == null) {
            return null;
        }
        return (T) t10.accept(this, p10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitAnnotatedType2(AnnotatedTypeTree annotatedTypeTree, P p10) {
        JCTree.JCAnnotatedType jCAnnotatedType = (JCTree.JCAnnotatedType) annotatedTypeTree;
        return this.f103300M.at(jCAnnotatedType.pos).AnnotatedType(copy(jCAnnotatedType.annotations, (List<JCTree.JCAnnotation>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCAnnotatedType.underlyingType, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitAnnotation2(AnnotationTree annotationTree, P p10) {
        JCTree.JCAnnotation jCAnnotation = (JCTree.JCAnnotation) annotationTree;
        JCTree copy = copy((TreeCopier<P>) jCAnnotation.annotationType, (JCTree) p10);
        List<T> copy2 = copy(jCAnnotation.args, (List<JCTree.JCExpression>) p10);
        if (jCAnnotation.getKind() == Tree.Kind.TYPE_ANNOTATION) {
            JCTree.JCAnnotation TypeAnnotation = this.f103300M.at(jCAnnotation.pos).TypeAnnotation(copy, copy2);
            TypeAnnotation.attribute = jCAnnotation.attribute;
            return TypeAnnotation;
        }
        JCTree.JCAnnotation Annotation = this.f103300M.at(jCAnnotation.pos).Annotation(copy, copy2);
        Annotation.attribute = jCAnnotation.attribute;
        return Annotation;
    }

    @Override
    public JCTree visitArrayAccess2(ArrayAccessTree arrayAccessTree, P p10) {
        JCTree.JCArrayAccess jCArrayAccess = (JCTree.JCArrayAccess) arrayAccessTree;
        return this.f103300M.at(jCArrayAccess.pos).Indexed((JCTree.JCExpression) copy((TreeCopier<P>) jCArrayAccess.indexed, (JCTree.JCExpression) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCArrayAccess.index, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitArrayType2(ArrayTypeTree arrayTypeTree, P p10) {
        JCTree.JCArrayTypeTree jCArrayTypeTree = (JCTree.JCArrayTypeTree) arrayTypeTree;
        return this.f103300M.at(jCArrayTypeTree.pos).TypeArray((JCTree.JCExpression) copy((TreeCopier<P>) jCArrayTypeTree.elemtype, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitAssert2(AssertTree assertTree, P p10) {
        JCTree.JCAssert jCAssert = (JCTree.JCAssert) assertTree;
        return this.f103300M.at(jCAssert.pos).Assert((JCTree.JCExpression) copy((TreeCopier<P>) jCAssert.cond, (JCTree.JCExpression) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCAssert.detail, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitAssignment2(AssignmentTree assignmentTree, P p10) {
        JCTree.JCAssign jCAssign = (JCTree.JCAssign) assignmentTree;
        return this.f103300M.at(jCAssign.pos).Assign((JCTree.JCExpression) copy((TreeCopier<P>) jCAssign.lhs, (JCTree.JCExpression) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCAssign.rhs, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitBinary2(BinaryTree binaryTree, P p10) {
        JCTree.JCBinary jCBinary = (JCTree.JCBinary) binaryTree;
        return this.f103300M.at(jCBinary.pos).Binary(jCBinary.getTag(), (JCTree.JCExpression) copy((TreeCopier<P>) jCBinary.lhs, (JCTree.JCExpression) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCBinary.rhs, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitBlock2(BlockTree blockTree, P p10) {
        JCTree.JCBlock jCBlock = (JCTree.JCBlock) blockTree;
        return this.f103300M.at(jCBlock.pos).Block(jCBlock.flags, copy(jCBlock.stats, (List<JCTree.JCStatement>) p10));
    }

    @Override
    public JCTree visitBreak2(BreakTree breakTree, P p10) {
        JCTree.JCBreak jCBreak = (JCTree.JCBreak) breakTree;
        return this.f103300M.at(jCBreak.pos).Break(jCBreak.label);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitCase2(CaseTree caseTree, P p10) {
        JCTree.JCCase jCCase = (JCTree.JCCase) caseTree;
        return this.f103300M.at(jCCase.pos).Case((JCTree.JCExpression) copy((TreeCopier<P>) jCCase.pat, (JCTree.JCExpression) p10), copy(jCCase.stats, (List<JCTree.JCStatement>) p10));
    }

    @Override
    public JCTree visitCatch2(CatchTree catchTree, P p10) {
        JCTree.JCCatch jCCatch = (JCTree.JCCatch) catchTree;
        return this.f103300M.at(jCCatch.pos).Catch((JCTree.JCVariableDecl) copy((TreeCopier<P>) jCCatch.param, (JCTree.JCVariableDecl) p10), (JCTree.JCBlock) copy((TreeCopier<P>) jCCatch.body, (JCTree.JCBlock) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitClass2(ClassTree classTree, P p10) {
        JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) classTree;
        return this.f103300M.at(jCClassDecl.pos).ClassDef((JCTree.JCModifiers) copy((TreeCopier<P>) jCClassDecl.mods, (JCTree.JCModifiers) p10), jCClassDecl.name, copy(jCClassDecl.typarams, (List<JCTree.JCTypeParameter>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCClassDecl.extending, (JCTree.JCExpression) p10), copy(jCClassDecl.implementing, (List<JCTree.JCExpression>) p10), copy(jCClassDecl.defs, (List) p10));
    }

    @Override
    public JCTree visitCompilationUnit2(CompilationUnitTree compilationUnitTree, P p10) {
        JCTree.JCCompilationUnit jCCompilationUnit = (JCTree.JCCompilationUnit) compilationUnitTree;
        return this.f103300M.at(jCCompilationUnit.pos).TopLevel(copy(jCCompilationUnit.defs, (List) p10));
    }

    @Override
    public JCTree visitCompoundAssignment2(CompoundAssignmentTree compoundAssignmentTree, P p10) {
        JCTree.JCAssignOp jCAssignOp = (JCTree.JCAssignOp) compoundAssignmentTree;
        return this.f103300M.at(jCAssignOp.pos).Assignop(jCAssignOp.getTag(), copy((TreeCopier<P>) jCAssignOp.lhs, (JCTree.JCExpression) p10), copy((TreeCopier<P>) jCAssignOp.rhs, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitConditionalExpression2(ConditionalExpressionTree conditionalExpressionTree, P p10) {
        JCTree.JCConditional jCConditional = (JCTree.JCConditional) conditionalExpressionTree;
        return this.f103300M.at(jCConditional.pos).Conditional((JCTree.JCExpression) copy((TreeCopier<P>) jCConditional.cond, (JCTree.JCExpression) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCConditional.truepart, (JCTree.JCExpression) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCConditional.falsepart, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitContinue2(ContinueTree continueTree, P p10) {
        JCTree.JCContinue jCContinue = (JCTree.JCContinue) continueTree;
        return this.f103300M.at(jCContinue.pos).Continue(jCContinue.label);
    }

    @Override
    public JCTree visitDoWhileLoop2(DoWhileLoopTree doWhileLoopTree, P p10) {
        JCTree.JCDoWhileLoop jCDoWhileLoop = (JCTree.JCDoWhileLoop) doWhileLoopTree;
        return this.f103300M.at(jCDoWhileLoop.pos).DoLoop((JCTree.JCStatement) copy((TreeCopier<P>) jCDoWhileLoop.body, (JCTree.JCStatement) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCDoWhileLoop.cond, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitEmptyStatement2(EmptyStatementTree emptyStatementTree, P p10) {
        return this.f103300M.at(((JCTree.JCSkip) emptyStatementTree).pos).Skip();
    }

    @Override
    public JCTree visitEnhancedForLoop2(EnhancedForLoopTree enhancedForLoopTree, P p10) {
        JCTree.JCEnhancedForLoop jCEnhancedForLoop = (JCTree.JCEnhancedForLoop) enhancedForLoopTree;
        return this.f103300M.at(jCEnhancedForLoop.pos).ForeachLoop((JCTree.JCVariableDecl) copy((TreeCopier<P>) jCEnhancedForLoop.var, (JCTree.JCVariableDecl) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCEnhancedForLoop.expr, (JCTree.JCExpression) p10), (JCTree.JCStatement) copy((TreeCopier<P>) jCEnhancedForLoop.body, (JCTree.JCStatement) p10));
    }

    @Override
    public JCTree visitErroneous2(ErroneousTree erroneousTree, P p10) {
        JCTree.JCErroneous jCErroneous = (JCTree.JCErroneous) erroneousTree;
        return this.f103300M.at(jCErroneous.pos).Erroneous(copy(jCErroneous.errs, (List) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitExports2(ExportsTree exportsTree, P p10) {
        JCTree.JCExports jCExports = (JCTree.JCExports) exportsTree;
        return this.f103300M.at(jCExports.pos).Exports((JCTree.JCExpression) copy((TreeCopier<P>) jCExports.qualid, (JCTree.JCExpression) p10), copy(jCExports.moduleNames, (List<JCTree.JCExpression>) p10));
    }

    @Override
    public JCTree visitExpressionStatement2(ExpressionStatementTree expressionStatementTree, P p10) {
        JCTree.JCExpressionStatement jCExpressionStatement = (JCTree.JCExpressionStatement) expressionStatementTree;
        return this.f103300M.at(jCExpressionStatement.pos).Exec((JCTree.JCExpression) copy((TreeCopier<P>) jCExpressionStatement.expr, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitForLoop2(ForLoopTree forLoopTree, P p10) {
        JCTree.JCForLoop jCForLoop = (JCTree.JCForLoop) forLoopTree;
        return this.f103300M.at(jCForLoop.pos).ForLoop(copy(jCForLoop.init, (List<JCTree.JCStatement>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCForLoop.cond, (JCTree.JCExpression) p10), copy(jCForLoop.step, (List<JCTree.JCExpressionStatement>) p10), (JCTree.JCStatement) copy((TreeCopier<P>) jCForLoop.body, (JCTree.JCStatement) p10));
    }

    @Override
    public JCTree visitIdentifier2(IdentifierTree identifierTree, P p10) {
        JCTree.JCIdent jCIdent = (JCTree.JCIdent) identifierTree;
        return this.f103300M.at(jCIdent.pos).Ident(jCIdent.name);
    }

    @Override
    public JCTree visitIf2(IfTree ifTree, P p10) {
        JCTree.JCIf jCIf = (JCTree.JCIf) ifTree;
        return this.f103300M.at(jCIf.pos).If((JCTree.JCExpression) copy((TreeCopier<P>) jCIf.cond, (JCTree.JCExpression) p10), (JCTree.JCStatement) copy((TreeCopier<P>) jCIf.thenpart, (JCTree.JCStatement) p10), (JCTree.JCStatement) copy((TreeCopier<P>) jCIf.elsepart, (JCTree.JCStatement) p10));
    }

    @Override
    public JCTree visitImport2(ImportTree importTree, P p10) {
        JCTree.JCImport jCImport = (JCTree.JCImport) importTree;
        return this.f103300M.at(jCImport.pos).Import(copy((TreeCopier<P>) jCImport.qualid, (JCTree) p10), jCImport.staticImport);
    }

    @Override
    public JCTree visitInstanceOf2(InstanceOfTree instanceOfTree, P p10) {
        JCTree.JCInstanceOf jCInstanceOf = (JCTree.JCInstanceOf) instanceOfTree;
        return this.f103300M.at(jCInstanceOf.pos).TypeTest((JCTree.JCExpression) copy((TreeCopier<P>) jCInstanceOf.expr, (JCTree.JCExpression) p10), copy((TreeCopier<P>) jCInstanceOf.clazz, (JCTree) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitIntersectionType2(IntersectionTypeTree intersectionTypeTree, P p10) {
        JCTree.JCTypeIntersection jCTypeIntersection = (JCTree.JCTypeIntersection) intersectionTypeTree;
        return this.f103300M.at(jCTypeIntersection.pos).TypeIntersection(copy(jCTypeIntersection.bounds, (List<JCTree.JCExpression>) p10));
    }

    @Override
    public JCTree visitLabeledStatement2(LabeledStatementTree labeledStatementTree, P p10) {
        JCTree.JCLabeledStatement jCLabeledStatement = (JCTree.JCLabeledStatement) labeledStatementTree;
        return this.f103300M.at(jCLabeledStatement.pos).Labelled(jCLabeledStatement.label, (JCTree.JCStatement) copy((TreeCopier<P>) jCLabeledStatement.body, (JCTree.JCStatement) p10));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitLambdaExpression(LambdaExpressionTree lambdaExpressionTree, P p10) {
        JCTree.JCLambda jCLambda = (JCTree.JCLambda) lambdaExpressionTree;
        return this.f103300M.at(jCLambda.pos).Lambda(copy(jCLambda.params, (List<JCTree.JCVariableDecl>) p10), copy((TreeCopier<P>) jCLambda.body, (JCTree) p10));
    }

    @Override
    public JCTree visitLiteral2(LiteralTree literalTree, P p10) {
        JCTree.JCLiteral jCLiteral = (JCTree.JCLiteral) literalTree;
        return this.f103300M.at(jCLiteral.pos).Literal(jCLiteral.typetag, jCLiteral.value);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMemberReference2(MemberReferenceTree memberReferenceTree, P p10) {
        JCTree.JCMemberReference jCMemberReference = (JCTree.JCMemberReference) memberReferenceTree;
        return this.f103300M.at(jCMemberReference.pos).Reference(jCMemberReference.mode, jCMemberReference.name, (JCTree.JCExpression) copy((TreeCopier<P>) jCMemberReference.expr, (JCTree.JCExpression) p10), copy(jCMemberReference.typeargs, (List<JCTree.JCExpression>) p10));
    }

    @Override
    public JCTree visitMemberSelect2(MemberSelectTree memberSelectTree, P p10) {
        JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) memberSelectTree;
        return this.f103300M.at(jCFieldAccess.pos).Select((JCTree.JCExpression) copy((TreeCopier<P>) jCFieldAccess.selected, (JCTree.JCExpression) p10), jCFieldAccess.name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMethod2(MethodTree methodTree, P p10) {
        JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) methodTree;
        JCTree.JCModifiers jCModifiers = (JCTree.JCModifiers) copy((TreeCopier<P>) jCMethodDecl.mods, (JCTree.JCModifiers) p10);
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) copy((TreeCopier<P>) jCMethodDecl.restype, (JCTree.JCExpression) p10);
        List<T> copy = copy(jCMethodDecl.typarams, (List<JCTree.JCTypeParameter>) p10);
        List<T> copy2 = copy(jCMethodDecl.params, (List<JCTree.JCVariableDecl>) p10);
        return this.f103300M.at(jCMethodDecl.pos).MethodDef(jCModifiers, jCMethodDecl.name, jCExpression, copy, (JCTree.JCVariableDecl) copy((TreeCopier<P>) jCMethodDecl.recvparam, (JCTree.JCVariableDecl) p10), copy2, copy(jCMethodDecl.thrown, (List<JCTree.JCExpression>) p10), (JCTree.JCBlock) copy((TreeCopier<P>) jCMethodDecl.body, (JCTree.JCBlock) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCMethodDecl.defaultValue, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitMethodInvocation2(MethodInvocationTree methodInvocationTree, P p10) {
        JCTree.JCMethodInvocation jCMethodInvocation = (JCTree.JCMethodInvocation) methodInvocationTree;
        return this.f103300M.at(jCMethodInvocation.pos).Apply(copy(jCMethodInvocation.typeargs, (List<JCTree.JCExpression>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCMethodInvocation.meth, (JCTree.JCExpression) p10), copy(jCMethodInvocation.args, (List<JCTree.JCExpression>) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitModifiers2(ModifiersTree modifiersTree, P p10) {
        JCTree.JCModifiers jCModifiers = (JCTree.JCModifiers) modifiersTree;
        return this.f103300M.at(jCModifiers.pos).Modifiers(jCModifiers.flags, copy(jCModifiers.annotations, (List<JCTree.JCAnnotation>) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitModule2(ModuleTree moduleTree, P p10) {
        JCTree.JCModuleDecl jCModuleDecl = (JCTree.JCModuleDecl) moduleTree;
        return this.f103300M.at(jCModuleDecl.pos).ModuleDef((JCTree.JCModifiers) copy((TreeCopier<P>) jCModuleDecl.mods, (JCTree.JCModifiers) p10), jCModuleDecl.getModuleType(), (JCTree.JCExpression) copy((TreeCopier<P>) jCModuleDecl.qualId), copy(jCModuleDecl.directives));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitNewArray2(NewArrayTree newArrayTree, P p10) {
        JCTree.JCNewArray jCNewArray = (JCTree.JCNewArray) newArrayTree;
        return this.f103300M.at(jCNewArray.pos).NewArray((JCTree.JCExpression) copy((TreeCopier<P>) jCNewArray.elemtype, (JCTree.JCExpression) p10), copy(jCNewArray.dims, (List<JCTree.JCExpression>) p10), copy(jCNewArray.elems, (List<JCTree.JCExpression>) p10));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitNewClass2(NewClassTree newClassTree, P p10) {
        JCTree.JCNewClass jCNewClass = (JCTree.JCNewClass) newClassTree;
        return this.f103300M.at(jCNewClass.pos).NewClass((JCTree.JCExpression) copy((TreeCopier<P>) jCNewClass.encl, (JCTree.JCExpression) p10), copy(jCNewClass.typeargs, (List<JCTree.JCExpression>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCNewClass.clazz, (JCTree.JCExpression) p10), copy(jCNewClass.args, (List<JCTree.JCExpression>) p10), (JCTree.JCClassDecl) copy((TreeCopier<P>) jCNewClass.def, (JCTree.JCClassDecl) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitOpens2(OpensTree opensTree, P p10) {
        JCTree.JCOpens jCOpens = (JCTree.JCOpens) opensTree;
        return this.f103300M.at(jCOpens.pos).Opens((JCTree.JCExpression) copy((TreeCopier<P>) jCOpens.qualid, (JCTree.JCExpression) p10), copy(jCOpens.moduleNames, (List<JCTree.JCExpression>) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitOther2(Tree tree, P p10) {
        JCTree jCTree = (JCTree) tree;
        if (AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()] == 1) {
            JCTree.LetExpr letExpr = (JCTree.LetExpr) tree;
            return this.f103300M.at(letExpr.pos).LetExpr((List<JCTree.JCVariableDecl>) copy(letExpr.defs, (List<JCTree.JCVariableDecl>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) letExpr.expr, (JCTree.JCExpression) p10));
        }
        throw new AssertionError((Object) ("unknown tree tag: " + ((Object) jCTree.getTag())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitPackage2(PackageTree packageTree, P p10) {
        JCTree.JCPackageDecl jCPackageDecl = (JCTree.JCPackageDecl) packageTree;
        return this.f103300M.at(jCPackageDecl.pos).PackageDecl(copy(jCPackageDecl.annotations, (List<JCTree.JCAnnotation>) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCPackageDecl.pid, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitParameterizedType2(ParameterizedTypeTree parameterizedTypeTree, P p10) {
        JCTree.JCTypeApply jCTypeApply = (JCTree.JCTypeApply) parameterizedTypeTree;
        return this.f103300M.at(jCTypeApply.pos).TypeApply((JCTree.JCExpression) copy((TreeCopier<P>) jCTypeApply.clazz, (JCTree.JCExpression) p10), copy(jCTypeApply.arguments, (List<JCTree.JCExpression>) p10));
    }

    @Override
    public JCTree visitParenthesized2(ParenthesizedTree parenthesizedTree, P p10) {
        JCTree.JCParens jCParens = (JCTree.JCParens) parenthesizedTree;
        return this.f103300M.at(jCParens.pos).Parens((JCTree.JCExpression) copy((TreeCopier<P>) jCParens.expr, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitPrimitiveType2(PrimitiveTypeTree primitiveTypeTree, P p10) {
        JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree = (JCTree.JCPrimitiveTypeTree) primitiveTypeTree;
        return this.f103300M.at(jCPrimitiveTypeTree.pos).TypeIdent(jCPrimitiveTypeTree.typetag);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitProvides2(ProvidesTree providesTree, P p10) {
        JCTree.JCProvides jCProvides = (JCTree.JCProvides) providesTree;
        return this.f103300M.at(jCProvides.pos).Provides((JCTree.JCExpression) copy((TreeCopier<P>) jCProvides.serviceName, (JCTree.JCExpression) p10), copy(jCProvides.implNames, (List<JCTree.JCExpression>) p10));
    }

    @Override
    public JCTree visitRequires2(RequiresTree requiresTree, P p10) {
        JCTree.JCRequires jCRequires = (JCTree.JCRequires) requiresTree;
        return this.f103300M.at(jCRequires.pos).Requires(jCRequires.isTransitive, jCRequires.isStaticPhase, (JCTree.JCExpression) copy((TreeCopier<P>) jCRequires.moduleName, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitReturn2(ReturnTree returnTree, P p10) {
        JCTree.JCReturn jCReturn = (JCTree.JCReturn) returnTree;
        return this.f103300M.at(jCReturn.pos).Return((JCTree.JCExpression) copy((TreeCopier<P>) jCReturn.expr, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitSwitch2(SwitchTree switchTree, P p10) {
        JCTree.JCSwitch jCSwitch = (JCTree.JCSwitch) switchTree;
        return this.f103300M.at(jCSwitch.pos).Switch((JCTree.JCExpression) copy((TreeCopier<P>) jCSwitch.selector, (JCTree.JCExpression) p10), copy(jCSwitch.cases, (List<JCTree.JCCase>) p10));
    }

    @Override
    public JCTree visitSynchronized2(SynchronizedTree synchronizedTree, P p10) {
        JCTree.JCSynchronized jCSynchronized = (JCTree.JCSynchronized) synchronizedTree;
        return this.f103300M.at(jCSynchronized.pos).Synchronized((JCTree.JCExpression) copy((TreeCopier<P>) jCSynchronized.lock, (JCTree.JCExpression) p10), (JCTree.JCBlock) copy((TreeCopier<P>) jCSynchronized.body, (JCTree.JCBlock) p10));
    }

    @Override
    public JCTree visitThrow2(ThrowTree throwTree, P p10) {
        JCTree.JCThrow jCThrow = (JCTree.JCThrow) throwTree;
        return this.f103300M.at(jCThrow.pos).Throw((JCTree.JCExpression) copy((TreeCopier<P>) jCThrow.expr, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitTry2(TryTree tryTree, P p10) {
        JCTree.JCTry jCTry = (JCTree.JCTry) tryTree;
        return this.f103300M.at(jCTry.pos).Try(copy(jCTry.resources, (List) p10), (JCTree.JCBlock) copy((TreeCopier<P>) jCTry.body, (JCTree.JCBlock) p10), copy(jCTry.catchers, (List<JCTree.JCCatch>) p10), (JCTree.JCBlock) copy((TreeCopier<P>) jCTry.finalizer, (JCTree.JCBlock) p10));
    }

    @Override
    public JCTree visitTypeCast2(TypeCastTree typeCastTree, P p10) {
        JCTree.JCTypeCast jCTypeCast = (JCTree.JCTypeCast) typeCastTree;
        return this.f103300M.at(jCTypeCast.pos).TypeCast(copy((TreeCopier<P>) jCTypeCast.clazz, (JCTree) p10), (JCTree.JCExpression) copy((TreeCopier<P>) jCTypeCast.expr, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitTypeParameter2(TypeParameterTree typeParameterTree, P p10) {
        JCTree.JCTypeParameter jCTypeParameter = (JCTree.JCTypeParameter) typeParameterTree;
        List<T> copy = copy(jCTypeParameter.annotations, (List<JCTree.JCAnnotation>) p10);
        return this.f103300M.at(jCTypeParameter.pos).TypeParameter(jCTypeParameter.name, copy(jCTypeParameter.bounds, (List<JCTree.JCExpression>) p10), copy);
    }

    @Override
    public JCTree visitUnary2(UnaryTree unaryTree, P p10) {
        JCTree.JCUnary jCUnary = (JCTree.JCUnary) unaryTree;
        return this.f103300M.at(jCUnary.pos).Unary(jCUnary.getTag(), (JCTree.JCExpression) copy((TreeCopier<P>) jCUnary.arg, (JCTree.JCExpression) p10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public JCTree visitUnionType2(UnionTypeTree unionTypeTree, P p10) {
        JCTree.JCTypeUnion jCTypeUnion = (JCTree.JCTypeUnion) unionTypeTree;
        return this.f103300M.at(jCTypeUnion.pos).TypeUnion(copy(jCTypeUnion.alternatives, (List<JCTree.JCExpression>) p10));
    }

    @Override
    public JCTree visitUses2(UsesTree usesTree, P p10) {
        JCTree.JCUses jCUses = (JCTree.JCUses) usesTree;
        return this.f103300M.at(jCUses.pos).Uses((JCTree.JCExpression) copy((TreeCopier<P>) jCUses.qualid, (JCTree.JCExpression) p10));
    }

    @Override
    public JCTree visitVariable2(VariableTree variableTree, P p10) {
        JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) variableTree;
        JCTree.JCModifiers jCModifiers = (JCTree.JCModifiers) copy((TreeCopier<P>) jCVariableDecl.mods, (JCTree.JCModifiers) p10);
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) copy((TreeCopier<P>) jCVariableDecl.vartype, (JCTree.JCExpression) p10);
        JCTree.JCExpression jCExpression2 = jCVariableDecl.nameexpr;
        if (jCExpression2 == null) {
            return this.f103300M.at(jCVariableDecl.pos).VarDef(jCModifiers, jCVariableDecl.name, jCExpression, (JCTree.JCExpression) copy((TreeCopier<P>) jCVariableDecl.init, (JCTree.JCExpression) p10));
        }
        return this.f103300M.at(jCVariableDecl.pos).ReceiverVarDef(jCModifiers, (JCTree.JCExpression) copy((TreeCopier<P>) jCExpression2, (JCTree.JCExpression) p10), jCExpression);
    }

    @Override
    public JCTree visitWhileLoop2(WhileLoopTree whileLoopTree, P p10) {
        JCTree.JCWhileLoop jCWhileLoop = (JCTree.JCWhileLoop) whileLoopTree;
        JCTree.JCStatement jCStatement = (JCTree.JCStatement) copy((TreeCopier<P>) jCWhileLoop.body, (JCTree.JCStatement) p10);
        return this.f103300M.at(jCWhileLoop.pos).WhileLoop((JCTree.JCExpression) copy((TreeCopier<P>) jCWhileLoop.cond, (JCTree.JCExpression) p10), jCStatement);
    }

    @Override
    public JCTree visitWildcard2(WildcardTree wildcardTree, P p10) {
        JCTree.JCWildcard jCWildcard = (JCTree.JCWildcard) wildcardTree;
        return this.f103300M.at(jCWildcard.pos).Wildcard(this.f103300M.at(jCWildcard.kind.pos).TypeBoundKind(jCWildcard.kind.kind), copy((TreeCopier<P>) jCWildcard.inner, (JCTree) p10));
    }

    public <T extends JCTree> List<T> copy(List<T> list) {
        return copy(list, (List<T>) null);
    }

    public <T extends JCTree> List<T> copy(List<T> list, P p10) {
        if (list == null) {
            return null;
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(copy((TreeCopier<P>) it.next(), (T) p10));
        }
        return listBuffer.toList();
    }
}
