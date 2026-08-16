package org.openjdk.source.util;

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

public class SimpleTreeVisitor<R, P> implements TreeVisitor<R, P> {
    protected final R DEFAULT_VALUE;

    public SimpleTreeVisitor() {
        this.DEFAULT_VALUE = null;
    }

    public R defaultAction(Tree tree, P p10) {
        return this.DEFAULT_VALUE;
    }

    public final R visit(Tree tree, P p10) {
        if (tree == null) {
            return null;
        }
        return (R) tree.accept(this, p10);
    }

    @Override
    public R visitAnnotatedType(AnnotatedTypeTree annotatedTypeTree, P p10) {
        return defaultAction(annotatedTypeTree, p10);
    }

    @Override
    public R visitAnnotation(AnnotationTree annotationTree, P p10) {
        return defaultAction(annotationTree, p10);
    }

    @Override
    public R visitArrayAccess(ArrayAccessTree arrayAccessTree, P p10) {
        return defaultAction(arrayAccessTree, p10);
    }

    @Override
    public R visitArrayType(ArrayTypeTree arrayTypeTree, P p10) {
        return defaultAction(arrayTypeTree, p10);
    }

    @Override
    public R visitAssert(AssertTree assertTree, P p10) {
        return defaultAction(assertTree, p10);
    }

    @Override
    public R visitAssignment(AssignmentTree assignmentTree, P p10) {
        return defaultAction(assignmentTree, p10);
    }

    @Override
    public R visitBinary(BinaryTree binaryTree, P p10) {
        return defaultAction(binaryTree, p10);
    }

    @Override
    public R visitBlock(BlockTree blockTree, P p10) {
        return defaultAction(blockTree, p10);
    }

    @Override
    public R visitBreak(BreakTree breakTree, P p10) {
        return defaultAction(breakTree, p10);
    }

    @Override
    public R visitCase(CaseTree caseTree, P p10) {
        return defaultAction(caseTree, p10);
    }

    @Override
    public R visitCatch(CatchTree catchTree, P p10) {
        return defaultAction(catchTree, p10);
    }

    @Override
    public R visitClass(ClassTree classTree, P p10) {
        return defaultAction(classTree, p10);
    }

    @Override
    public R visitCompilationUnit(CompilationUnitTree compilationUnitTree, P p10) {
        return defaultAction(compilationUnitTree, p10);
    }

    @Override
    public R visitCompoundAssignment(CompoundAssignmentTree compoundAssignmentTree, P p10) {
        return defaultAction(compoundAssignmentTree, p10);
    }

    @Override
    public R visitConditionalExpression(ConditionalExpressionTree conditionalExpressionTree, P p10) {
        return defaultAction(conditionalExpressionTree, p10);
    }

    @Override
    public R visitContinue(ContinueTree continueTree, P p10) {
        return defaultAction(continueTree, p10);
    }

    @Override
    public R visitDoWhileLoop(DoWhileLoopTree doWhileLoopTree, P p10) {
        return defaultAction(doWhileLoopTree, p10);
    }

    @Override
    public R visitEmptyStatement(EmptyStatementTree emptyStatementTree, P p10) {
        return defaultAction(emptyStatementTree, p10);
    }

    @Override
    public R visitEnhancedForLoop(EnhancedForLoopTree enhancedForLoopTree, P p10) {
        return defaultAction(enhancedForLoopTree, p10);
    }

    @Override
    public R visitErroneous(ErroneousTree erroneousTree, P p10) {
        return defaultAction(erroneousTree, p10);
    }

    @Override
    public R visitExports(ExportsTree exportsTree, P p10) {
        return defaultAction(exportsTree, p10);
    }

    @Override
    public R visitExpressionStatement(ExpressionStatementTree expressionStatementTree, P p10) {
        return defaultAction(expressionStatementTree, p10);
    }

    @Override
    public R visitForLoop(ForLoopTree forLoopTree, P p10) {
        return defaultAction(forLoopTree, p10);
    }

    @Override
    public R visitIdentifier(IdentifierTree identifierTree, P p10) {
        return defaultAction(identifierTree, p10);
    }

    @Override
    public R visitIf(IfTree ifTree, P p10) {
        return defaultAction(ifTree, p10);
    }

    @Override
    public R visitImport(ImportTree importTree, P p10) {
        return defaultAction(importTree, p10);
    }

    @Override
    public R visitInstanceOf(InstanceOfTree instanceOfTree, P p10) {
        return defaultAction(instanceOfTree, p10);
    }

    @Override
    public R visitIntersectionType(IntersectionTypeTree intersectionTypeTree, P p10) {
        return defaultAction(intersectionTypeTree, p10);
    }

    @Override
    public R visitLabeledStatement(LabeledStatementTree labeledStatementTree, P p10) {
        return defaultAction(labeledStatementTree, p10);
    }

    @Override
    public R visitLambdaExpression(LambdaExpressionTree lambdaExpressionTree, P p10) {
        return defaultAction(lambdaExpressionTree, p10);
    }

    @Override
    public R visitLiteral(LiteralTree literalTree, P p10) {
        return defaultAction(literalTree, p10);
    }

    @Override
    public R visitMemberReference(MemberReferenceTree memberReferenceTree, P p10) {
        return defaultAction(memberReferenceTree, p10);
    }

    @Override
    public R visitMemberSelect(MemberSelectTree memberSelectTree, P p10) {
        return defaultAction(memberSelectTree, p10);
    }

    @Override
    public R visitMethod(MethodTree methodTree, P p10) {
        return defaultAction(methodTree, p10);
    }

    @Override
    public R visitMethodInvocation(MethodInvocationTree methodInvocationTree, P p10) {
        return defaultAction(methodInvocationTree, p10);
    }

    @Override
    public R visitModifiers(ModifiersTree modifiersTree, P p10) {
        return defaultAction(modifiersTree, p10);
    }

    @Override
    public R visitModule(ModuleTree moduleTree, P p10) {
        return defaultAction(moduleTree, p10);
    }

    @Override
    public R visitNewArray(NewArrayTree newArrayTree, P p10) {
        return defaultAction(newArrayTree, p10);
    }

    @Override
    public R visitNewClass(NewClassTree newClassTree, P p10) {
        return defaultAction(newClassTree, p10);
    }

    @Override
    public R visitOpens(OpensTree opensTree, P p10) {
        return defaultAction(opensTree, p10);
    }

    @Override
    public R visitOther(Tree tree, P p10) {
        return defaultAction(tree, p10);
    }

    @Override
    public R visitPackage(PackageTree packageTree, P p10) {
        return defaultAction(packageTree, p10);
    }

    @Override
    public R visitParameterizedType(ParameterizedTypeTree parameterizedTypeTree, P p10) {
        return defaultAction(parameterizedTypeTree, p10);
    }

    @Override
    public R visitParenthesized(ParenthesizedTree parenthesizedTree, P p10) {
        return defaultAction(parenthesizedTree, p10);
    }

    @Override
    public R visitPrimitiveType(PrimitiveTypeTree primitiveTypeTree, P p10) {
        return defaultAction(primitiveTypeTree, p10);
    }

    @Override
    public R visitProvides(ProvidesTree providesTree, P p10) {
        return defaultAction(providesTree, p10);
    }

    @Override
    public R visitRequires(RequiresTree requiresTree, P p10) {
        return defaultAction(requiresTree, p10);
    }

    @Override
    public R visitReturn(ReturnTree returnTree, P p10) {
        return defaultAction(returnTree, p10);
    }

    @Override
    public R visitSwitch(SwitchTree switchTree, P p10) {
        return defaultAction(switchTree, p10);
    }

    @Override
    public R visitSynchronized(SynchronizedTree synchronizedTree, P p10) {
        return defaultAction(synchronizedTree, p10);
    }

    @Override
    public R visitThrow(ThrowTree throwTree, P p10) {
        return defaultAction(throwTree, p10);
    }

    @Override
    public R visitTry(TryTree tryTree, P p10) {
        return defaultAction(tryTree, p10);
    }

    @Override
    public R visitTypeCast(TypeCastTree typeCastTree, P p10) {
        return defaultAction(typeCastTree, p10);
    }

    @Override
    public R visitTypeParameter(TypeParameterTree typeParameterTree, P p10) {
        return defaultAction(typeParameterTree, p10);
    }

    @Override
    public R visitUnary(UnaryTree unaryTree, P p10) {
        return defaultAction(unaryTree, p10);
    }

    @Override
    public R visitUnionType(UnionTypeTree unionTypeTree, P p10) {
        return defaultAction(unionTypeTree, p10);
    }

    @Override
    public R visitUses(UsesTree usesTree, P p10) {
        return defaultAction(usesTree, p10);
    }

    @Override
    public R visitVariable(VariableTree variableTree, P p10) {
        return defaultAction(variableTree, p10);
    }

    @Override
    public R visitWhileLoop(WhileLoopTree whileLoopTree, P p10) {
        return defaultAction(whileLoopTree, p10);
    }

    @Override
    public R visitWildcard(WildcardTree wildcardTree, P p10) {
        return defaultAction(wildcardTree, p10);
    }

    public final R visit(Iterable<? extends Tree> iterable, P p10) {
        R r10 = null;
        if (iterable != null) {
            Iterator<? extends Tree> it = iterable.iterator();
            while (it.hasNext()) {
                r10 = visit(it.next(), (Tree) p10);
            }
        }
        return r10;
    }

    public SimpleTreeVisitor(R r10) {
        this.DEFAULT_VALUE = r10;
    }
}
