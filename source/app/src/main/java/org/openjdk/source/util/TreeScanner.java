package org.openjdk.source.util;

import java.util.Iterator;
import java.util.List;
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
import org.openjdk.source.tree.DirectiveTree;
import org.openjdk.source.tree.DoWhileLoopTree;
import org.openjdk.source.tree.EmptyStatementTree;
import org.openjdk.source.tree.EnhancedForLoopTree;
import org.openjdk.source.tree.ErroneousTree;
import org.openjdk.source.tree.ExportsTree;
import org.openjdk.source.tree.ExpressionStatementTree;
import org.openjdk.source.tree.ExpressionTree;
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
import org.openjdk.source.tree.StatementTree;
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

public class TreeScanner<R, P> implements TreeVisitor<R, P> {
    private R scanAndReduce(Tree tree, P p10, R r10) {
        return reduce(scan(tree, (Tree) p10), r10);
    }

    public R reduce(R r10, R r11) {
        return r10;
    }

    public R scan(Tree tree, P p10) {
        if (tree == null) {
            return null;
        }
        return (R) tree.accept(this, p10);
    }

    @Override
    public R visitAnnotatedType(AnnotatedTypeTree annotatedTypeTree, P p10) {
        return scanAndReduce((Tree) annotatedTypeTree.getUnderlyingType(), (ExpressionTree) p10, (P) scan(annotatedTypeTree.getAnnotations(), (List<? extends AnnotationTree>) p10));
    }

    @Override
    public R visitAnnotation(AnnotationTree annotationTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) annotationTree.getArguments(), (List<? extends ExpressionTree>) p10, (P) scan(annotationTree.getAnnotationType(), (Tree) p10));
    }

    @Override
    public R visitArrayAccess(ArrayAccessTree arrayAccessTree, P p10) {
        return scanAndReduce((Tree) arrayAccessTree.getIndex(), (ExpressionTree) p10, (P) scan((Tree) arrayAccessTree.getExpression(), (ExpressionTree) p10));
    }

    @Override
    public R visitArrayType(ArrayTypeTree arrayTypeTree, P p10) {
        return scan(arrayTypeTree.getType(), (Tree) p10);
    }

    @Override
    public R visitAssert(AssertTree assertTree, P p10) {
        return scanAndReduce((Tree) assertTree.getDetail(), (ExpressionTree) p10, (P) scan((Tree) assertTree.getCondition(), (ExpressionTree) p10));
    }

    @Override
    public R visitAssignment(AssignmentTree assignmentTree, P p10) {
        return scanAndReduce((Tree) assignmentTree.getExpression(), (ExpressionTree) p10, (P) scan((Tree) assignmentTree.getVariable(), (ExpressionTree) p10));
    }

    @Override
    public R visitBinary(BinaryTree binaryTree, P p10) {
        return scanAndReduce((Tree) binaryTree.getRightOperand(), (ExpressionTree) p10, (P) scan((Tree) binaryTree.getLeftOperand(), (ExpressionTree) p10));
    }

    @Override
    public R visitBlock(BlockTree blockTree, P p10) {
        return scan(blockTree.getStatements(), (List<? extends StatementTree>) p10);
    }

    @Override
    public R visitBreak(BreakTree breakTree, P p10) {
        return null;
    }

    @Override
    public R visitCase(CaseTree caseTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) caseTree.getStatements(), (List<? extends StatementTree>) p10, (P) scan((Tree) caseTree.getExpression(), (ExpressionTree) p10));
    }

    @Override
    public R visitCatch(CatchTree catchTree, P p10) {
        return scanAndReduce((Tree) catchTree.getBlock(), (BlockTree) p10, (P) scan((Tree) catchTree.getParameter(), (VariableTree) p10));
    }

    @Override
    public R visitClass(ClassTree classTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) classTree.getMembers(), (List<? extends Tree>) p10, (P) scanAndReduce((Iterable<? extends Tree>) classTree.getImplementsClause(), (List<? extends Tree>) p10, (P) scanAndReduce(classTree.getExtendsClause(), (Tree) p10, (P) scanAndReduce((Iterable<? extends Tree>) classTree.getTypeParameters(), (List<? extends TypeParameterTree>) p10, (P) scan((Tree) classTree.getModifiers(), (ModifiersTree) p10)))));
    }

    @Override
    public R visitCompilationUnit(CompilationUnitTree compilationUnitTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) compilationUnitTree.getTypeDecls(), (List<? extends Tree>) p10, (P) scanAndReduce((Iterable<? extends Tree>) compilationUnitTree.getImports(), (List<? extends ImportTree>) p10, (P) scan((Tree) compilationUnitTree.getPackage(), (PackageTree) p10)));
    }

    @Override
    public R visitCompoundAssignment(CompoundAssignmentTree compoundAssignmentTree, P p10) {
        return scanAndReduce((Tree) compoundAssignmentTree.getExpression(), (ExpressionTree) p10, (P) scan((Tree) compoundAssignmentTree.getVariable(), (ExpressionTree) p10));
    }

    @Override
    public R visitConditionalExpression(ConditionalExpressionTree conditionalExpressionTree, P p10) {
        return scanAndReduce((Tree) conditionalExpressionTree.getFalseExpression(), (ExpressionTree) p10, (P) scanAndReduce((Tree) conditionalExpressionTree.getTrueExpression(), (ExpressionTree) p10, (P) scan((Tree) conditionalExpressionTree.getCondition(), (ExpressionTree) p10)));
    }

    @Override
    public R visitContinue(ContinueTree continueTree, P p10) {
        return null;
    }

    @Override
    public R visitDoWhileLoop(DoWhileLoopTree doWhileLoopTree, P p10) {
        return scanAndReduce((Tree) doWhileLoopTree.getCondition(), (ExpressionTree) p10, (P) scan((Tree) doWhileLoopTree.getStatement(), (StatementTree) p10));
    }

    @Override
    public R visitEmptyStatement(EmptyStatementTree emptyStatementTree, P p10) {
        return null;
    }

    @Override
    public R visitEnhancedForLoop(EnhancedForLoopTree enhancedForLoopTree, P p10) {
        return scanAndReduce((Tree) enhancedForLoopTree.getStatement(), (StatementTree) p10, (P) scanAndReduce((Tree) enhancedForLoopTree.getExpression(), (ExpressionTree) p10, (P) scan((Tree) enhancedForLoopTree.getVariable(), (VariableTree) p10)));
    }

    @Override
    public R visitErroneous(ErroneousTree erroneousTree, P p10) {
        return null;
    }

    @Override
    public R visitExports(ExportsTree exportsTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) exportsTree.getModuleNames(), (List<? extends ExpressionTree>) p10, (P) scan((Tree) exportsTree.getPackageName(), (ExpressionTree) p10));
    }

    @Override
    public R visitExpressionStatement(ExpressionStatementTree expressionStatementTree, P p10) {
        return scan((Tree) expressionStatementTree.getExpression(), (ExpressionTree) p10);
    }

    @Override
    public R visitForLoop(ForLoopTree forLoopTree, P p10) {
        return scanAndReduce((Tree) forLoopTree.getStatement(), (StatementTree) p10, (P) scanAndReduce((Iterable<? extends Tree>) forLoopTree.getUpdate(), (List<? extends ExpressionStatementTree>) p10, (P) scanAndReduce((Tree) forLoopTree.getCondition(), (ExpressionTree) p10, (P) scan(forLoopTree.getInitializer(), (List<? extends StatementTree>) p10))));
    }

    @Override
    public R visitIdentifier(IdentifierTree identifierTree, P p10) {
        return null;
    }

    @Override
    public R visitIf(IfTree ifTree, P p10) {
        return scanAndReduce((Tree) ifTree.getElseStatement(), (StatementTree) p10, (P) scanAndReduce((Tree) ifTree.getThenStatement(), (StatementTree) p10, (P) scan((Tree) ifTree.getCondition(), (ExpressionTree) p10)));
    }

    @Override
    public R visitImport(ImportTree importTree, P p10) {
        return scan(importTree.getQualifiedIdentifier(), (Tree) p10);
    }

    @Override
    public R visitInstanceOf(InstanceOfTree instanceOfTree, P p10) {
        return scanAndReduce(instanceOfTree.getType(), (Tree) p10, (P) scan((Tree) instanceOfTree.getExpression(), (ExpressionTree) p10));
    }

    @Override
    public R visitIntersectionType(IntersectionTypeTree intersectionTypeTree, P p10) {
        return scan(intersectionTypeTree.getBounds(), (List<? extends Tree>) p10);
    }

    @Override
    public R visitLabeledStatement(LabeledStatementTree labeledStatementTree, P p10) {
        return scan((Tree) labeledStatementTree.getStatement(), (StatementTree) p10);
    }

    @Override
    public R visitLambdaExpression(LambdaExpressionTree lambdaExpressionTree, P p10) {
        return scanAndReduce(lambdaExpressionTree.getBody(), (Tree) p10, (P) scan(lambdaExpressionTree.getParameters(), (List<? extends VariableTree>) p10));
    }

    @Override
    public R visitLiteral(LiteralTree literalTree, P p10) {
        return null;
    }

    @Override
    public R visitMemberReference(MemberReferenceTree memberReferenceTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) memberReferenceTree.getTypeArguments(), (List<? extends ExpressionTree>) p10, (P) scan((Tree) memberReferenceTree.getQualifierExpression(), (ExpressionTree) p10));
    }

    @Override
    public R visitMemberSelect(MemberSelectTree memberSelectTree, P p10) {
        return scan((Tree) memberSelectTree.getExpression(), (ExpressionTree) p10);
    }

    @Override
    public R visitMethod(MethodTree methodTree, P p10) {
        return scanAndReduce(methodTree.getDefaultValue(), (Tree) p10, (P) scanAndReduce((Tree) methodTree.getBody(), (BlockTree) p10, (P) scanAndReduce((Iterable<? extends Tree>) methodTree.getThrows(), (List<? extends ExpressionTree>) p10, (P) scanAndReduce((Tree) methodTree.getReceiverParameter(), (VariableTree) p10, (P) scanAndReduce((Iterable<? extends Tree>) methodTree.getParameters(), (List<? extends VariableTree>) p10, (P) scanAndReduce((Iterable<? extends Tree>) methodTree.getTypeParameters(), (List<? extends TypeParameterTree>) p10, (P) scanAndReduce(methodTree.getReturnType(), (Tree) p10, (P) scan((Tree) methodTree.getModifiers(), (ModifiersTree) p10))))))));
    }

    @Override
    public R visitMethodInvocation(MethodInvocationTree methodInvocationTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) methodInvocationTree.getArguments(), (List<? extends ExpressionTree>) p10, (P) scanAndReduce((Tree) methodInvocationTree.getMethodSelect(), (ExpressionTree) p10, (P) scan(methodInvocationTree.getTypeArguments(), (List<? extends Tree>) p10)));
    }

    @Override
    public R visitModifiers(ModifiersTree modifiersTree, P p10) {
        return scan(modifiersTree.getAnnotations(), (List<? extends AnnotationTree>) p10);
    }

    @Override
    public R visitModule(ModuleTree moduleTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) moduleTree.getDirectives(), (List<? extends DirectiveTree>) p10, (P) scanAndReduce((Tree) moduleTree.getName(), (ExpressionTree) p10, (P) scan(moduleTree.getAnnotations(), (List<? extends AnnotationTree>) p10)));
    }

    @Override
    public R visitNewArray(NewArrayTree newArrayTree, P p10) {
        R scanAndReduce = scanAndReduce((Iterable<? extends Tree>) newArrayTree.getAnnotations(), (List<? extends AnnotationTree>) p10, (P) scanAndReduce((Iterable<? extends Tree>) newArrayTree.getInitializers(), (List<? extends ExpressionTree>) p10, (P) scanAndReduce((Iterable<? extends Tree>) newArrayTree.getDimensions(), (List<? extends ExpressionTree>) p10, (P) scan(newArrayTree.getType(), (Tree) p10))));
        Iterator<? extends List<? extends AnnotationTree>> it = newArrayTree.getDimAnnotations().iterator();
        while (it.hasNext()) {
            scanAndReduce = scanAndReduce((Iterable<? extends Tree>) it.next(), (List<? extends AnnotationTree>) p10, (P) scanAndReduce);
        }
        return scanAndReduce;
    }

    @Override
    public R visitNewClass(NewClassTree newClassTree, P p10) {
        return scanAndReduce((Tree) newClassTree.getClassBody(), (ClassTree) p10, (P) scanAndReduce((Iterable<? extends Tree>) newClassTree.getArguments(), (List<? extends ExpressionTree>) p10, (P) scanAndReduce((Iterable<? extends Tree>) newClassTree.getTypeArguments(), (List<? extends Tree>) p10, (P) scanAndReduce((Tree) newClassTree.getIdentifier(), (ExpressionTree) p10, (P) scan((Tree) newClassTree.getEnclosingExpression(), (ExpressionTree) p10)))));
    }

    @Override
    public R visitOpens(OpensTree opensTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) opensTree.getModuleNames(), (List<? extends ExpressionTree>) p10, (P) scan((Tree) opensTree.getPackageName(), (ExpressionTree) p10));
    }

    @Override
    public R visitOther(Tree tree, P p10) {
        return null;
    }

    @Override
    public R visitPackage(PackageTree packageTree, P p10) {
        return scanAndReduce((Tree) packageTree.getPackageName(), (ExpressionTree) p10, (P) scan(packageTree.getAnnotations(), (List<? extends AnnotationTree>) p10));
    }

    @Override
    public R visitParameterizedType(ParameterizedTypeTree parameterizedTypeTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) parameterizedTypeTree.getTypeArguments(), (List<? extends Tree>) p10, (P) scan(parameterizedTypeTree.getType(), (Tree) p10));
    }

    @Override
    public R visitParenthesized(ParenthesizedTree parenthesizedTree, P p10) {
        return scan((Tree) parenthesizedTree.getExpression(), (ExpressionTree) p10);
    }

    @Override
    public R visitPrimitiveType(PrimitiveTypeTree primitiveTypeTree, P p10) {
        return null;
    }

    @Override
    public R visitProvides(ProvidesTree providesTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) providesTree.getImplementationNames(), (List<? extends ExpressionTree>) p10, (P) scan((Tree) providesTree.getServiceName(), (ExpressionTree) p10));
    }

    @Override
    public R visitRequires(RequiresTree requiresTree, P p10) {
        return scan((Tree) requiresTree.getModuleName(), (ExpressionTree) p10);
    }

    @Override
    public R visitReturn(ReturnTree returnTree, P p10) {
        return scan((Tree) returnTree.getExpression(), (ExpressionTree) p10);
    }

    @Override
    public R visitSwitch(SwitchTree switchTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) switchTree.getCases(), (List<? extends CaseTree>) p10, (P) scan((Tree) switchTree.getExpression(), (ExpressionTree) p10));
    }

    @Override
    public R visitSynchronized(SynchronizedTree synchronizedTree, P p10) {
        return scanAndReduce((Tree) synchronizedTree.getBlock(), (BlockTree) p10, (P) scan((Tree) synchronizedTree.getExpression(), (ExpressionTree) p10));
    }

    @Override
    public R visitThrow(ThrowTree throwTree, P p10) {
        return scan((Tree) throwTree.getExpression(), (ExpressionTree) p10);
    }

    @Override
    public R visitTry(TryTree tryTree, P p10) {
        return scanAndReduce((Tree) tryTree.getFinallyBlock(), (BlockTree) p10, (P) scanAndReduce((Iterable<? extends Tree>) tryTree.getCatches(), (List<? extends CatchTree>) p10, (P) scanAndReduce((Tree) tryTree.getBlock(), (BlockTree) p10, (P) scan(tryTree.getResources(), (List<? extends Tree>) p10))));
    }

    @Override
    public R visitTypeCast(TypeCastTree typeCastTree, P p10) {
        return scanAndReduce((Tree) typeCastTree.getExpression(), (ExpressionTree) p10, (P) scan(typeCastTree.getType(), (Tree) p10));
    }

    @Override
    public R visitTypeParameter(TypeParameterTree typeParameterTree, P p10) {
        return scanAndReduce((Iterable<? extends Tree>) typeParameterTree.getBounds(), (List<? extends Tree>) p10, (P) scan(typeParameterTree.getAnnotations(), (List<? extends AnnotationTree>) p10));
    }

    @Override
    public R visitUnary(UnaryTree unaryTree, P p10) {
        return scan((Tree) unaryTree.getExpression(), (ExpressionTree) p10);
    }

    @Override
    public R visitUnionType(UnionTypeTree unionTypeTree, P p10) {
        return scan(unionTypeTree.getTypeAlternatives(), (List<? extends Tree>) p10);
    }

    @Override
    public R visitUses(UsesTree usesTree, P p10) {
        return scan((Tree) usesTree.getServiceName(), (ExpressionTree) p10);
    }

    @Override
    public R visitVariable(VariableTree variableTree, P p10) {
        return scanAndReduce((Tree) variableTree.getInitializer(), (ExpressionTree) p10, (P) scanAndReduce((Tree) variableTree.getNameExpression(), (ExpressionTree) p10, (P) scanAndReduce(variableTree.getType(), (Tree) p10, (P) scan((Tree) variableTree.getModifiers(), (ModifiersTree) p10))));
    }

    @Override
    public R visitWhileLoop(WhileLoopTree whileLoopTree, P p10) {
        return scanAndReduce((Tree) whileLoopTree.getStatement(), (StatementTree) p10, (P) scan((Tree) whileLoopTree.getCondition(), (ExpressionTree) p10));
    }

    @Override
    public R visitWildcard(WildcardTree wildcardTree, P p10) {
        return scan(wildcardTree.getBound(), (Tree) p10);
    }

    private R scanAndReduce(Iterable<? extends Tree> iterable, P p10, R r10) {
        return reduce(scan(iterable, (Iterable<? extends Tree>) p10), r10);
    }

    public R scan(Iterable<? extends Tree> iterable, P p10) {
        R r10 = null;
        if (iterable != null) {
            boolean z10 = true;
            for (Tree tree : iterable) {
                r10 = z10 ? scan(tree, (Tree) p10) : scanAndReduce(tree, (Tree) p10, (P) r10);
                z10 = false;
            }
        }
        return r10;
    }
}
