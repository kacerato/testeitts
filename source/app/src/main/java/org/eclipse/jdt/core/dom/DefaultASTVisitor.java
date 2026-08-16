package org.eclipse.jdt.core.dom;

public class DefaultASTVisitor extends ASTVisitor {
    public DefaultASTVisitor() {
    }

    @Override
    public void endVisit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        endVisitNode(annotationTypeDeclaration);
    }

    public void endVisitNode(ASTNode aSTNode) {
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        return visitNode(annotationTypeDeclaration);
    }

    public boolean visitNode(ASTNode aSTNode) {
        return true;
    }

    public DefaultASTVisitor(boolean z10) {
        super(z10);
    }

    @Override
    public void endVisit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        endVisitNode(annotationTypeMemberDeclaration);
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        return visitNode(annotationTypeMemberDeclaration);
    }

    @Override
    public void endVisit(AnonymousClassDeclaration anonymousClassDeclaration) {
        endVisitNode(anonymousClassDeclaration);
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        return visitNode(anonymousClassDeclaration);
    }

    @Override
    public void endVisit(ArrayAccess arrayAccess) {
        endVisitNode(arrayAccess);
    }

    @Override
    public boolean visit(ArrayAccess arrayAccess) {
        return visitNode(arrayAccess);
    }

    @Override
    public void endVisit(ArrayCreation arrayCreation) {
        endVisitNode(arrayCreation);
    }

    @Override
    public boolean visit(ArrayCreation arrayCreation) {
        return visitNode(arrayCreation);
    }

    @Override
    public void endVisit(ArrayInitializer arrayInitializer) {
        endVisitNode(arrayInitializer);
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        return visitNode(arrayInitializer);
    }

    @Override
    public void endVisit(ArrayType arrayType) {
        endVisitNode(arrayType);
    }

    @Override
    public boolean visit(ArrayType arrayType) {
        visitNode(arrayType);
        return false;
    }

    @Override
    public void endVisit(AssertStatement assertStatement) {
        endVisitNode(assertStatement);
    }

    @Override
    public boolean visit(AssertStatement assertStatement) {
        return visitNode(assertStatement);
    }

    @Override
    public void endVisit(Assignment assignment) {
        endVisitNode(assignment);
    }

    @Override
    public boolean visit(Assignment assignment) {
        return visitNode(assignment);
    }

    @Override
    public void endVisit(Block block) {
        endVisitNode(block);
    }

    @Override
    public boolean visit(Block block) {
        return visitNode(block);
    }

    @Override
    public void endVisit(BlockComment blockComment) {
        endVisitNode(blockComment);
    }

    @Override
    public boolean visit(BlockComment blockComment) {
        return visitNode(blockComment);
    }

    @Override
    public void endVisit(BooleanLiteral booleanLiteral) {
        endVisitNode(booleanLiteral);
    }

    @Override
    public boolean visit(BooleanLiteral booleanLiteral) {
        return visitNode(booleanLiteral);
    }

    @Override
    public void endVisit(BreakStatement breakStatement) {
        endVisitNode(breakStatement);
    }

    @Override
    public boolean visit(BreakStatement breakStatement) {
        return visitNode(breakStatement);
    }

    @Override
    public void endVisit(CastExpression castExpression) {
        endVisitNode(castExpression);
    }

    @Override
    public boolean visit(CastExpression castExpression) {
        return visitNode(castExpression);
    }

    @Override
    public void endVisit(CatchClause catchClause) {
        endVisitNode(catchClause);
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        return visitNode(catchClause);
    }

    @Override
    public void endVisit(CharacterLiteral characterLiteral) {
        endVisitNode(characterLiteral);
    }

    @Override
    public boolean visit(CharacterLiteral characterLiteral) {
        return visitNode(characterLiteral);
    }

    @Override
    public void endVisit(ClassInstanceCreation classInstanceCreation) {
        endVisitNode(classInstanceCreation);
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        return visitNode(classInstanceCreation);
    }

    @Override
    public void endVisit(CompilationUnit compilationUnit) {
        endVisitNode(compilationUnit);
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        return visitNode(compilationUnit);
    }

    @Override
    public void endVisit(ConditionalExpression conditionalExpression) {
        endVisitNode(conditionalExpression);
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        return visitNode(conditionalExpression);
    }

    @Override
    public void endVisit(ConstructorInvocation constructorInvocation) {
        endVisitNode(constructorInvocation);
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        return visitNode(constructorInvocation);
    }

    @Override
    public void endVisit(ContinueStatement continueStatement) {
        endVisitNode(continueStatement);
    }

    @Override
    public boolean visit(ContinueStatement continueStatement) {
        return visitNode(continueStatement);
    }

    @Override
    public void endVisit(CreationReference creationReference) {
        endVisitNode(creationReference);
    }

    @Override
    public boolean visit(CreationReference creationReference) {
        return visitNode(creationReference);
    }

    @Override
    public void endVisit(Dimension dimension) {
        endVisitNode(dimension);
    }

    @Override
    public boolean visit(Dimension dimension) {
        return visitNode(dimension);
    }

    @Override
    public void endVisit(DoStatement doStatement) {
        endVisitNode(doStatement);
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        return visitNode(doStatement);
    }

    @Override
    public void endVisit(EmptyStatement emptyStatement) {
        endVisitNode(emptyStatement);
    }

    @Override
    public boolean visit(EmptyStatement emptyStatement) {
        return visitNode(emptyStatement);
    }

    @Override
    public void endVisit(EnhancedForStatement enhancedForStatement) {
        endVisitNode(enhancedForStatement);
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        return visitNode(enhancedForStatement);
    }

    @Override
    public void endVisit(EnumConstantDeclaration enumConstantDeclaration) {
        endVisitNode(enumConstantDeclaration);
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        return visitNode(enumConstantDeclaration);
    }

    @Override
    public void endVisit(EnumDeclaration enumDeclaration) {
        endVisitNode(enumDeclaration);
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        return visitNode(enumDeclaration);
    }

    @Override
    public void endVisit(ExpressionMethodReference expressionMethodReference) {
        endVisitNode(expressionMethodReference);
    }

    @Override
    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        return visitNode(expressionMethodReference);
    }

    @Override
    public void endVisit(ExpressionStatement expressionStatement) {
        endVisitNode(expressionStatement);
    }

    @Override
    public boolean visit(ExpressionStatement expressionStatement) {
        return visitNode(expressionStatement);
    }

    @Override
    public void endVisit(FieldAccess fieldAccess) {
        endVisitNode(fieldAccess);
    }

    @Override
    public boolean visit(FieldAccess fieldAccess) {
        return visitNode(fieldAccess);
    }

    @Override
    public void endVisit(FieldDeclaration fieldDeclaration) {
        endVisitNode(fieldDeclaration);
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        return visitNode(fieldDeclaration);
    }

    @Override
    public void endVisit(ForStatement forStatement) {
        endVisitNode(forStatement);
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        return visitNode(forStatement);
    }

    @Override
    public void endVisit(IfStatement ifStatement) {
        endVisitNode(ifStatement);
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        return visitNode(ifStatement);
    }

    @Override
    public void endVisit(ImportDeclaration importDeclaration) {
        endVisitNode(importDeclaration);
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        return visitNode(importDeclaration);
    }

    @Override
    public void endVisit(InfixExpression infixExpression) {
        endVisitNode(infixExpression);
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        return visitNode(infixExpression);
    }

    @Override
    public void endVisit(Initializer initializer) {
        endVisitNode(initializer);
    }

    @Override
    public boolean visit(Initializer initializer) {
        return visitNode(initializer);
    }

    @Override
    public void endVisit(InstanceofExpression instanceofExpression) {
        endVisitNode(instanceofExpression);
    }

    @Override
    public boolean visit(InstanceofExpression instanceofExpression) {
        return visitNode(instanceofExpression);
    }

    @Override
    public void endVisit(IntersectionType intersectionType) {
        endVisitNode(intersectionType);
    }

    @Override
    public boolean visit(IntersectionType intersectionType) {
        return visitNode(intersectionType);
    }

    @Override
    public void endVisit(Javadoc javadoc) {
        endVisitNode(javadoc);
    }

    @Override
    public boolean visit(Javadoc javadoc) {
        if (super.visit(javadoc)) {
            return visitNode(javadoc);
        }
        return false;
    }

    @Override
    public void endVisit(LabeledStatement labeledStatement) {
        endVisitNode(labeledStatement);
    }

    @Override
    public void endVisit(LambdaExpression lambdaExpression) {
        endVisitNode(lambdaExpression);
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        return visitNode(labeledStatement);
    }

    @Override
    public void endVisit(LineComment lineComment) {
        endVisitNode(lineComment);
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        return visitNode(lambdaExpression);
    }

    @Override
    public void endVisit(MarkerAnnotation markerAnnotation) {
        endVisitNode(markerAnnotation);
    }

    @Override
    public boolean visit(LineComment lineComment) {
        return visitNode(lineComment);
    }

    @Override
    public void endVisit(MemberRef memberRef) {
        endVisitNode(memberRef);
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        return visitNode(markerAnnotation);
    }

    @Override
    public void endVisit(MemberValuePair memberValuePair) {
        endVisitNode(memberValuePair);
    }

    @Override
    public boolean visit(MemberRef memberRef) {
        return visitNode(memberRef);
    }

    @Override
    public void endVisit(MethodDeclaration methodDeclaration) {
        endVisitNode(methodDeclaration);
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair) {
        return visitNode(memberValuePair);
    }

    @Override
    public void endVisit(MethodInvocation methodInvocation) {
        endVisitNode(methodInvocation);
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        return visitNode(methodDeclaration);
    }

    @Override
    public void endVisit(MethodRef methodRef) {
        endVisitNode(methodRef);
    }

    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        return visitNode(methodInvocation);
    }

    @Override
    public void endVisit(MethodRefParameter methodRefParameter) {
        endVisitNode(methodRefParameter);
    }

    @Override
    public boolean visit(MethodRef methodRef) {
        return visitNode(methodRef);
    }

    @Override
    public void endVisit(Modifier modifier) {
        endVisitNode(modifier);
    }

    @Override
    public boolean visit(Modifier modifier) {
        return visitNode(modifier);
    }

    @Override
    public void endVisit(ModuleDeclaration moduleDeclaration) {
        endVisitNode(moduleDeclaration);
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        return visitNode(moduleDeclaration);
    }

    public void endVisit(ModuleDirective moduleDirective) {
        endVisitNode(moduleDirective);
    }

    public boolean visit(ModuleDirective moduleDirective) {
        return visitNode(moduleDirective);
    }

    @Override
    public void endVisit(NameQualifiedType nameQualifiedType) {
        endVisitNode(nameQualifiedType);
    }

    @Override
    public boolean visit(MethodRefParameter methodRefParameter) {
        return visitNode(methodRefParameter);
    }

    @Override
    public void endVisit(NormalAnnotation normalAnnotation) {
        endVisitNode(normalAnnotation);
    }

    @Override
    public boolean visit(NameQualifiedType nameQualifiedType) {
        return visitNode(nameQualifiedType);
    }

    @Override
    public void endVisit(NullLiteral nullLiteral) {
        endVisitNode(nullLiteral);
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        return visitNode(normalAnnotation);
    }

    @Override
    public void endVisit(NumberLiteral numberLiteral) {
        endVisitNode(numberLiteral);
    }

    @Override
    public boolean visit(NullLiteral nullLiteral) {
        return visitNode(nullLiteral);
    }

    @Override
    public void endVisit(PackageDeclaration packageDeclaration) {
        endVisitNode(packageDeclaration);
    }

    @Override
    public boolean visit(NumberLiteral numberLiteral) {
        return visitNode(numberLiteral);
    }

    @Override
    public void endVisit(ParameterizedType parameterizedType) {
        endVisitNode(parameterizedType);
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        return visitNode(packageDeclaration);
    }

    @Override
    public void endVisit(ParenthesizedExpression parenthesizedExpression) {
        endVisitNode(parenthesizedExpression);
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        return visitNode(parameterizedType);
    }

    @Override
    public void endVisit(PostfixExpression postfixExpression) {
        endVisitNode(postfixExpression);
    }

    @Override
    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        return visitNode(parenthesizedExpression);
    }

    @Override
    public void endVisit(PrefixExpression prefixExpression) {
        endVisitNode(prefixExpression);
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression) {
        return visitNode(postfixExpression);
    }

    @Override
    public void endVisit(PrimitiveType primitiveType) {
        endVisitNode(primitiveType);
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression) {
        return visitNode(prefixExpression);
    }

    @Override
    public void endVisit(QualifiedName qualifiedName) {
        endVisitNode(qualifiedName);
    }

    @Override
    public boolean visit(PrimitiveType primitiveType) {
        return visitNode(primitiveType);
    }

    @Override
    public void endVisit(QualifiedType qualifiedType) {
        endVisitNode(qualifiedType);
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        return visitNode(qualifiedName);
    }

    @Override
    public void endVisit(ReturnStatement returnStatement) {
        endVisitNode(returnStatement);
    }

    @Override
    public boolean visit(QualifiedType qualifiedType) {
        return visitNode(qualifiedType);
    }

    @Override
    public void endVisit(SimpleName simpleName) {
        endVisitNode(simpleName);
    }

    @Override
    public boolean visit(ReturnStatement returnStatement) {
        return visitNode(returnStatement);
    }

    @Override
    public void endVisit(SimpleType simpleType) {
        endVisitNode(simpleType);
    }

    @Override
    public boolean visit(SimpleName simpleName) {
        return visitNode(simpleName);
    }

    @Override
    public void endVisit(SingleMemberAnnotation singleMemberAnnotation) {
        endVisitNode(singleMemberAnnotation);
    }

    @Override
    public boolean visit(SimpleType simpleType) {
        return visitNode(simpleType);
    }

    @Override
    public void endVisit(SingleVariableDeclaration singleVariableDeclaration) {
        endVisitNode(singleVariableDeclaration);
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        return visitNode(singleMemberAnnotation);
    }

    @Override
    public void endVisit(StringLiteral stringLiteral) {
        endVisitNode(stringLiteral);
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        return visitNode(singleVariableDeclaration);
    }

    @Override
    public void endVisit(SuperConstructorInvocation superConstructorInvocation) {
        endVisitNode(superConstructorInvocation);
    }

    @Override
    public boolean visit(StringLiteral stringLiteral) {
        return visitNode(stringLiteral);
    }

    @Override
    public void endVisit(SuperFieldAccess superFieldAccess) {
        endVisitNode(superFieldAccess);
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        return visitNode(superConstructorInvocation);
    }

    @Override
    public void endVisit(SuperMethodInvocation superMethodInvocation) {
        endVisitNode(superMethodInvocation);
    }

    @Override
    public boolean visit(SuperFieldAccess superFieldAccess) {
        return visitNode(superFieldAccess);
    }

    @Override
    public void endVisit(SuperMethodReference superMethodReference) {
        endVisitNode(superMethodReference);
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        return visitNode(superMethodInvocation);
    }

    @Override
    public void endVisit(SwitchExpression switchExpression) {
        endVisitNode(switchExpression);
    }

    @Override
    public boolean visit(SuperMethodReference superMethodReference) {
        return visitNode(superMethodReference);
    }

    @Override
    public void endVisit(SwitchCase switchCase) {
        endVisitNode(switchCase);
    }

    @Override
    public boolean visit(SwitchCase switchCase) {
        return visitNode(switchCase);
    }

    @Override
    public void endVisit(SwitchStatement switchStatement) {
        endVisitNode(switchStatement);
    }

    @Override
    public boolean visit(SwitchExpression switchExpression) {
        return visitNode(switchExpression);
    }

    @Override
    public void endVisit(SynchronizedStatement synchronizedStatement) {
        endVisitNode(synchronizedStatement);
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        return visitNode(switchStatement);
    }

    @Override
    public void endVisit(TagElement tagElement) {
        endVisitNode(tagElement);
    }

    @Override
    public boolean visit(SynchronizedStatement synchronizedStatement) {
        return visitNode(synchronizedStatement);
    }

    @Override
    public void endVisit(TextElement textElement) {
        endVisitNode(textElement);
    }

    @Override
    public boolean visit(TagElement tagElement) {
        return visitNode(tagElement);
    }

    @Override
    public void endVisit(ThisExpression thisExpression) {
        endVisitNode(thisExpression);
    }

    @Override
    public boolean visit(TextElement textElement) {
        return visitNode(textElement);
    }

    @Override
    public void endVisit(ThrowStatement throwStatement) {
        endVisitNode(throwStatement);
    }

    @Override
    public boolean visit(ThisExpression thisExpression) {
        return visitNode(thisExpression);
    }

    @Override
    public void endVisit(TryStatement tryStatement) {
        endVisitNode(tryStatement);
    }

    @Override
    public boolean visit(ThrowStatement throwStatement) {
        return visitNode(throwStatement);
    }

    @Override
    public void endVisit(TypeDeclaration typeDeclaration) {
        endVisitNode(typeDeclaration);
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        return visitNode(tryStatement);
    }

    @Override
    public void endVisit(TypeDeclarationStatement typeDeclarationStatement) {
        endVisitNode(typeDeclarationStatement);
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        return visitNode(typeDeclaration);
    }

    @Override
    public void endVisit(TypeLiteral typeLiteral) {
        endVisitNode(typeLiteral);
    }

    @Override
    public boolean visit(TypeDeclarationStatement typeDeclarationStatement) {
        return visitNode(typeDeclarationStatement);
    }

    @Override
    public void endVisit(TypeMethodReference typeMethodReference) {
        endVisitNode(typeMethodReference);
    }

    @Override
    public boolean visit(TypeLiteral typeLiteral) {
        return visitNode(typeLiteral);
    }

    @Override
    public void endVisit(TypeParameter typeParameter) {
        endVisitNode(typeParameter);
    }

    @Override
    public boolean visit(TypeMethodReference typeMethodReference) {
        return visitNode(typeMethodReference);
    }

    @Override
    public void endVisit(UnionType unionType) {
        endVisitNode(unionType);
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        return visitNode(typeParameter);
    }

    @Override
    public void endVisit(VariableDeclarationExpression variableDeclarationExpression) {
        endVisitNode(variableDeclarationExpression);
    }

    @Override
    public boolean visit(UnionType unionType) {
        return visitNode(unionType);
    }

    @Override
    public void endVisit(VariableDeclarationFragment variableDeclarationFragment) {
        endVisitNode(variableDeclarationFragment);
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        return visitNode(variableDeclarationExpression);
    }

    @Override
    public void endVisit(VariableDeclarationStatement variableDeclarationStatement) {
        endVisitNode(variableDeclarationStatement);
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        return visitNode(variableDeclarationFragment);
    }

    @Override
    public void endVisit(WhileStatement whileStatement) {
        endVisitNode(whileStatement);
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        return visitNode(variableDeclarationStatement);
    }

    @Override
    public void endVisit(WildcardType wildcardType) {
        endVisitNode(wildcardType);
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        return visitNode(whileStatement);
    }

    @Override
    public boolean visit(WildcardType wildcardType) {
        return visitNode(wildcardType);
    }
}
