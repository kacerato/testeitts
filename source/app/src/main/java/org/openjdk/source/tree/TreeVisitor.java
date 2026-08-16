package org.openjdk.source.tree;

public interface TreeVisitor<R, P> {
    R visitAnnotatedType(AnnotatedTypeTree annotatedTypeTree, P p10);

    R visitAnnotation(AnnotationTree annotationTree, P p10);

    R visitArrayAccess(ArrayAccessTree arrayAccessTree, P p10);

    R visitArrayType(ArrayTypeTree arrayTypeTree, P p10);

    R visitAssert(AssertTree assertTree, P p10);

    R visitAssignment(AssignmentTree assignmentTree, P p10);

    R visitBinary(BinaryTree binaryTree, P p10);

    R visitBlock(BlockTree blockTree, P p10);

    R visitBreak(BreakTree breakTree, P p10);

    R visitCase(CaseTree caseTree, P p10);

    R visitCatch(CatchTree catchTree, P p10);

    R visitClass(ClassTree classTree, P p10);

    R visitCompilationUnit(CompilationUnitTree compilationUnitTree, P p10);

    R visitCompoundAssignment(CompoundAssignmentTree compoundAssignmentTree, P p10);

    R visitConditionalExpression(ConditionalExpressionTree conditionalExpressionTree, P p10);

    R visitContinue(ContinueTree continueTree, P p10);

    R visitDoWhileLoop(DoWhileLoopTree doWhileLoopTree, P p10);

    R visitEmptyStatement(EmptyStatementTree emptyStatementTree, P p10);

    R visitEnhancedForLoop(EnhancedForLoopTree enhancedForLoopTree, P p10);

    R visitErroneous(ErroneousTree erroneousTree, P p10);

    R visitExports(ExportsTree exportsTree, P p10);

    R visitExpressionStatement(ExpressionStatementTree expressionStatementTree, P p10);

    R visitForLoop(ForLoopTree forLoopTree, P p10);

    R visitIdentifier(IdentifierTree identifierTree, P p10);

    R visitIf(IfTree ifTree, P p10);

    R visitImport(ImportTree importTree, P p10);

    R visitInstanceOf(InstanceOfTree instanceOfTree, P p10);

    R visitIntersectionType(IntersectionTypeTree intersectionTypeTree, P p10);

    R visitLabeledStatement(LabeledStatementTree labeledStatementTree, P p10);

    R visitLambdaExpression(LambdaExpressionTree lambdaExpressionTree, P p10);

    R visitLiteral(LiteralTree literalTree, P p10);

    R visitMemberReference(MemberReferenceTree memberReferenceTree, P p10);

    R visitMemberSelect(MemberSelectTree memberSelectTree, P p10);

    R visitMethod(MethodTree methodTree, P p10);

    R visitMethodInvocation(MethodInvocationTree methodInvocationTree, P p10);

    R visitModifiers(ModifiersTree modifiersTree, P p10);

    R visitModule(ModuleTree moduleTree, P p10);

    R visitNewArray(NewArrayTree newArrayTree, P p10);

    R visitNewClass(NewClassTree newClassTree, P p10);

    R visitOpens(OpensTree opensTree, P p10);

    R visitOther(Tree tree, P p10);

    R visitPackage(PackageTree packageTree, P p10);

    R visitParameterizedType(ParameterizedTypeTree parameterizedTypeTree, P p10);

    R visitParenthesized(ParenthesizedTree parenthesizedTree, P p10);

    R visitPrimitiveType(PrimitiveTypeTree primitiveTypeTree, P p10);

    R visitProvides(ProvidesTree providesTree, P p10);

    R visitRequires(RequiresTree requiresTree, P p10);

    R visitReturn(ReturnTree returnTree, P p10);

    R visitSwitch(SwitchTree switchTree, P p10);

    R visitSynchronized(SynchronizedTree synchronizedTree, P p10);

    R visitThrow(ThrowTree throwTree, P p10);

    R visitTry(TryTree tryTree, P p10);

    R visitTypeCast(TypeCastTree typeCastTree, P p10);

    R visitTypeParameter(TypeParameterTree typeParameterTree, P p10);

    R visitUnary(UnaryTree unaryTree, P p10);

    R visitUnionType(UnionTypeTree unionTypeTree, P p10);

    R visitUses(UsesTree usesTree, P p10);

    R visitVariable(VariableTree variableTree, P p10);

    R visitWhileLoop(WhileLoopTree whileLoopTree, P p10);

    R visitWildcard(WildcardTree wildcardTree, P p10);
}
