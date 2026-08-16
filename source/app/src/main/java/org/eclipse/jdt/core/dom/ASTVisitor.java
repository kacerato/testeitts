package org.eclipse.jdt.core.dom;

public abstract class ASTVisitor {
    private boolean visitDocTags;

    public ASTVisitor() {
        this(false);
    }

    public void endVisit(AnnotationTypeDeclaration annotationTypeDeclaration) {
    }

    public void postVisit(ASTNode aSTNode) {
    }

    public void preVisit(ASTNode aSTNode) {
    }

    public boolean preVisit2(ASTNode aSTNode) {
        preVisit(aSTNode);
        return true;
    }

    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        return true;
    }

    public ASTVisitor(boolean z10) {
        this.visitDocTags = z10;
    }

    public void endVisit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
    }

    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        return true;
    }

    public void endVisit(AnonymousClassDeclaration anonymousClassDeclaration) {
    }

    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        return true;
    }

    public void endVisit(ArrayAccess arrayAccess) {
    }

    public boolean visit(ArrayAccess arrayAccess) {
        return true;
    }

    public void endVisit(ArrayCreation arrayCreation) {
    }

    public boolean visit(ArrayCreation arrayCreation) {
        return true;
    }

    public void endVisit(ArrayInitializer arrayInitializer) {
    }

    public boolean visit(ArrayInitializer arrayInitializer) {
        return true;
    }

    public void endVisit(ArrayType arrayType) {
    }

    public boolean visit(ArrayType arrayType) {
        return true;
    }

    public void endVisit(AssertStatement assertStatement) {
    }

    public boolean visit(AssertStatement assertStatement) {
        return true;
    }

    public void endVisit(Assignment assignment) {
    }

    public boolean visit(Assignment assignment) {
        return true;
    }

    public void endVisit(Block block) {
    }

    public boolean visit(Block block) {
        return true;
    }

    public void endVisit(BlockComment blockComment) {
    }

    public boolean visit(BlockComment blockComment) {
        return true;
    }

    public void endVisit(BooleanLiteral booleanLiteral) {
    }

    public boolean visit(BooleanLiteral booleanLiteral) {
        return true;
    }

    public void endVisit(BreakStatement breakStatement) {
    }

    public boolean visit(BreakStatement breakStatement) {
        return true;
    }

    public void endVisit(CastExpression castExpression) {
    }

    public boolean visit(CastExpression castExpression) {
        return true;
    }

    public void endVisit(CatchClause catchClause) {
    }

    public boolean visit(CatchClause catchClause) {
        return true;
    }

    public void endVisit(CharacterLiteral characterLiteral) {
    }

    public boolean visit(CharacterLiteral characterLiteral) {
        return true;
    }

    public void endVisit(ClassInstanceCreation classInstanceCreation) {
    }

    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        return true;
    }

    public void endVisit(CompilationUnit compilationUnit) {
    }

    public boolean visit(CompilationUnit compilationUnit) {
        return true;
    }

    public void endVisit(ConditionalExpression conditionalExpression) {
    }

    public boolean visit(ConditionalExpression conditionalExpression) {
        return true;
    }

    public void endVisit(ConstructorInvocation constructorInvocation) {
    }

    public boolean visit(ConstructorInvocation constructorInvocation) {
        return true;
    }

    public void endVisit(ContinueStatement continueStatement) {
    }

    public boolean visit(ContinueStatement continueStatement) {
        return true;
    }

    public void endVisit(CreationReference creationReference) {
    }

    public boolean visit(CreationReference creationReference) {
        return true;
    }

    public void endVisit(Dimension dimension) {
    }

    public boolean visit(Dimension dimension) {
        return true;
    }

    public void endVisit(DoStatement doStatement) {
    }

    public boolean visit(DoStatement doStatement) {
        return true;
    }

    public void endVisit(EmptyStatement emptyStatement) {
    }

    public boolean visit(EmptyStatement emptyStatement) {
        return true;
    }

    public void endVisit(EnhancedForStatement enhancedForStatement) {
    }

    public boolean visit(EnhancedForStatement enhancedForStatement) {
        return true;
    }

    public void endVisit(EnumConstantDeclaration enumConstantDeclaration) {
    }

    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        return true;
    }

    public void endVisit(EnumDeclaration enumDeclaration) {
    }

    public boolean visit(EnumDeclaration enumDeclaration) {
        return true;
    }

    public void endVisit(ExportsDirective exportsDirective) {
    }

    public boolean visit(ExportsDirective exportsDirective) {
        return true;
    }

    public void endVisit(ExpressionMethodReference expressionMethodReference) {
    }

    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        return true;
    }

    public void endVisit(ExpressionStatement expressionStatement) {
    }

    public boolean visit(ExpressionStatement expressionStatement) {
        return true;
    }

    public void endVisit(FieldAccess fieldAccess) {
    }

    public boolean visit(FieldAccess fieldAccess) {
        return true;
    }

    public void endVisit(FieldDeclaration fieldDeclaration) {
    }

    public boolean visit(FieldDeclaration fieldDeclaration) {
        return true;
    }

    public void endVisit(ForStatement forStatement) {
    }

    public boolean visit(ForStatement forStatement) {
        return true;
    }

    public void endVisit(IfStatement ifStatement) {
    }

    public boolean visit(IfStatement ifStatement) {
        return true;
    }

    public void endVisit(ImportDeclaration importDeclaration) {
    }

    public boolean visit(ImportDeclaration importDeclaration) {
        return true;
    }

    public void endVisit(InfixExpression infixExpression) {
    }

    public boolean visit(InfixExpression infixExpression) {
        return true;
    }

    public void endVisit(Initializer initializer) {
    }

    public boolean visit(Initializer initializer) {
        return true;
    }

    public void endVisit(InstanceofExpression instanceofExpression) {
    }

    public boolean visit(InstanceofExpression instanceofExpression) {
        return true;
    }

    public void endVisit(IntersectionType intersectionType) {
    }

    public boolean visit(IntersectionType intersectionType) {
        return true;
    }

    public void endVisit(Javadoc javadoc) {
    }

    public boolean visit(LabeledStatement labeledStatement) {
        return true;
    }

    public void endVisit(LabeledStatement labeledStatement) {
    }

    public boolean visit(LambdaExpression lambdaExpression) {
        return true;
    }

    public void endVisit(LambdaExpression lambdaExpression) {
    }

    public boolean visit(LineComment lineComment) {
        return true;
    }

    public void endVisit(LineComment lineComment) {
    }

    public boolean visit(MarkerAnnotation markerAnnotation) {
        return true;
    }

    public void endVisit(MarkerAnnotation markerAnnotation) {
    }

    public boolean visit(MemberRef memberRef) {
        return true;
    }

    public void endVisit(MemberRef memberRef) {
    }

    public boolean visit(MemberValuePair memberValuePair) {
        return true;
    }

    public void endVisit(MemberValuePair memberValuePair) {
    }

    public boolean visit(MethodDeclaration methodDeclaration) {
        return true;
    }

    public void endVisit(MethodDeclaration methodDeclaration) {
    }

    public boolean visit(MethodInvocation methodInvocation) {
        return true;
    }

    public void endVisit(MethodInvocation methodInvocation) {
    }

    public boolean visit(MethodRef methodRef) {
        return true;
    }

    public void endVisit(MethodRef methodRef) {
    }

    public boolean visit(MethodRefParameter methodRefParameter) {
        return true;
    }

    public void endVisit(MethodRefParameter methodRefParameter) {
    }

    public boolean visit(Modifier modifier) {
        return true;
    }

    public void endVisit(Modifier modifier) {
    }

    public boolean visit(ModuleDeclaration moduleDeclaration) {
        return true;
    }

    public void endVisit(ModuleDeclaration moduleDeclaration) {
    }

    public boolean visit(ModuleModifier moduleModifier) {
        return true;
    }

    public void endVisit(ModuleModifier moduleModifier) {
    }

    public boolean visit(NameQualifiedType nameQualifiedType) {
        return true;
    }

    public void endVisit(NameQualifiedType nameQualifiedType) {
    }

    public boolean visit(NormalAnnotation normalAnnotation) {
        return true;
    }

    public void endVisit(NormalAnnotation normalAnnotation) {
    }

    public boolean visit(NullLiteral nullLiteral) {
        return true;
    }

    public void endVisit(NullLiteral nullLiteral) {
    }

    public boolean visit(NumberLiteral numberLiteral) {
        return true;
    }

    public void endVisit(NumberLiteral numberLiteral) {
    }

    public boolean visit(OpensDirective opensDirective) {
        return true;
    }

    public void endVisit(OpensDirective opensDirective) {
    }

    public boolean visit(PackageDeclaration packageDeclaration) {
        return true;
    }

    public void endVisit(PackageDeclaration packageDeclaration) {
    }

    public boolean visit(ParameterizedType parameterizedType) {
        return true;
    }

    public void endVisit(ParameterizedType parameterizedType) {
    }

    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        return true;
    }

    public void endVisit(ParenthesizedExpression parenthesizedExpression) {
    }

    public boolean visit(PostfixExpression postfixExpression) {
        return true;
    }

    public void endVisit(PostfixExpression postfixExpression) {
    }

    public boolean visit(PrefixExpression prefixExpression) {
        return true;
    }

    public void endVisit(PrefixExpression prefixExpression) {
    }

    public boolean visit(PrimitiveType primitiveType) {
        return true;
    }

    public void endVisit(PrimitiveType primitiveType) {
    }

    public boolean visit(ProvidesDirective providesDirective) {
        return true;
    }

    public void endVisit(ProvidesDirective providesDirective) {
    }

    public boolean visit(QualifiedName qualifiedName) {
        return true;
    }

    public void endVisit(QualifiedName qualifiedName) {
    }

    public boolean visit(QualifiedType qualifiedType) {
        return true;
    }

    public void endVisit(QualifiedType qualifiedType) {
    }

    public boolean visit(RequiresDirective requiresDirective) {
        return true;
    }

    public void endVisit(RequiresDirective requiresDirective) {
    }

    public boolean visit(ReturnStatement returnStatement) {
        return true;
    }

    public void endVisit(ReturnStatement returnStatement) {
    }

    public boolean visit(SimpleName simpleName) {
        return true;
    }

    public void endVisit(SimpleName simpleName) {
    }

    public boolean visit(SimpleType simpleType) {
        return true;
    }

    public void endVisit(SimpleType simpleType) {
    }

    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        return true;
    }

    public void endVisit(SingleMemberAnnotation singleMemberAnnotation) {
    }

    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        return true;
    }

    public void endVisit(SingleVariableDeclaration singleVariableDeclaration) {
    }

    public boolean visit(StringLiteral stringLiteral) {
        return true;
    }

    public void endVisit(StringLiteral stringLiteral) {
    }

    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        return true;
    }

    public void endVisit(SuperConstructorInvocation superConstructorInvocation) {
    }

    public boolean visit(SuperFieldAccess superFieldAccess) {
        return true;
    }

    public void endVisit(SuperFieldAccess superFieldAccess) {
    }

    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        return true;
    }

    public void endVisit(SuperMethodInvocation superMethodInvocation) {
    }

    public boolean visit(SuperMethodReference superMethodReference) {
        return true;
    }

    public void endVisit(SuperMethodReference superMethodReference) {
    }

    public boolean visit(SwitchCase switchCase) {
        return true;
    }

    public void endVisit(SwitchCase switchCase) {
    }

    public boolean visit(SwitchExpression switchExpression) {
        return true;
    }

    public void endVisit(SwitchExpression switchExpression) {
    }

    public boolean visit(SwitchStatement switchStatement) {
        return true;
    }

    public void endVisit(SwitchStatement switchStatement) {
    }

    public boolean visit(SynchronizedStatement synchronizedStatement) {
        return true;
    }

    public void endVisit(SynchronizedStatement synchronizedStatement) {
    }

    public boolean visit(TagElement tagElement) {
        return true;
    }

    public void endVisit(TagElement tagElement) {
    }

    public boolean visit(TextElement textElement) {
        return true;
    }

    public void endVisit(TextElement textElement) {
    }

    public boolean visit(ThisExpression thisExpression) {
        return true;
    }

    public void endVisit(ThisExpression thisExpression) {
    }

    public boolean visit(ThrowStatement throwStatement) {
        return true;
    }

    public void endVisit(ThrowStatement throwStatement) {
    }

    public boolean visit(TryStatement tryStatement) {
        return true;
    }

    public void endVisit(TryStatement tryStatement) {
    }

    public boolean visit(TypeDeclaration typeDeclaration) {
        return true;
    }

    public void endVisit(TypeDeclaration typeDeclaration) {
    }

    public boolean visit(TypeDeclarationStatement typeDeclarationStatement) {
        return true;
    }

    public void endVisit(TypeDeclarationStatement typeDeclarationStatement) {
    }

    public boolean visit(TypeLiteral typeLiteral) {
        return true;
    }

    public void endVisit(TypeLiteral typeLiteral) {
    }

    public boolean visit(TypeMethodReference typeMethodReference) {
        return true;
    }

    public void endVisit(TypeMethodReference typeMethodReference) {
    }

    public boolean visit(TypeParameter typeParameter) {
        return true;
    }

    public void endVisit(TypeParameter typeParameter) {
    }

    public boolean visit(UnionType unionType) {
        return true;
    }

    public void endVisit(UnionType unionType) {
    }

    public boolean visit(UsesDirective usesDirective) {
        return true;
    }

    public void endVisit(UsesDirective usesDirective) {
    }

    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        return true;
    }

    public void endVisit(VariableDeclarationExpression variableDeclarationExpression) {
    }

    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        return true;
    }

    public void endVisit(VariableDeclarationFragment variableDeclarationFragment) {
    }

    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        return true;
    }

    public void endVisit(VariableDeclarationStatement variableDeclarationStatement) {
    }

    public boolean visit(WhileStatement whileStatement) {
        return true;
    }

    public void endVisit(WhileStatement whileStatement) {
    }

    public boolean visit(WildcardType wildcardType) {
        return true;
    }

    public void endVisit(WildcardType wildcardType) {
    }

    public boolean visit(Javadoc javadoc) {
        return this.visitDocTags;
    }
}
