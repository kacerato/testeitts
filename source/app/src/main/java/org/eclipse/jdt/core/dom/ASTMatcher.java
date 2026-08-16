package org.eclipse.jdt.core.dom;

import java.util.Iterator;
import java.util.List;

public class ASTMatcher {
    private boolean matchDocTags;

    public ASTMatcher() {
        this(false);
    }

    private boolean compareDeprecatedComment(Javadoc javadoc, Javadoc javadoc2) {
        if (javadoc.getAST().apiLevel == 2) {
            return safeEquals(javadoc.getComment(), javadoc2.getComment());
        }
        return true;
    }

    private boolean compareDeprecatedSwitchExpression(SwitchCase switchCase, SwitchCase switchCase2) {
        return safeSubtreeMatch(switchCase.getExpression(), switchCase2.getExpression());
    }

    private Type componentType(ArrayType arrayType) {
        return arrayType.getComponentType();
    }

    public static boolean safeEquals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public boolean match(AnnotationTypeDeclaration annotationTypeDeclaration, Object obj) {
        if (!(obj instanceof AnnotationTypeDeclaration)) {
            return false;
        }
        AnnotationTypeDeclaration annotationTypeDeclaration2 = (AnnotationTypeDeclaration) obj;
        return safeSubtreeMatch(annotationTypeDeclaration.getJavadoc(), annotationTypeDeclaration2.getJavadoc()) && safeSubtreeListMatch(annotationTypeDeclaration.modifiers(), annotationTypeDeclaration2.modifiers()) && safeSubtreeMatch(annotationTypeDeclaration.getName(), annotationTypeDeclaration2.getName()) && safeSubtreeListMatch(annotationTypeDeclaration.bodyDeclarations(), annotationTypeDeclaration2.bodyDeclarations());
    }

    public final boolean safeSubtreeListMatch(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        Iterator it = list.iterator();
        Iterator it2 = list2.iterator();
        while (it.hasNext()) {
            if (!((ASTNode) it.next()).subtreeMatch(this, (ASTNode) it2.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean safeSubtreeMatch(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return ((ASTNode) obj).subtreeMatch(this, obj2);
    }

    public ASTMatcher(boolean z10) {
        this.matchDocTags = z10;
    }

    public boolean match(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration, Object obj) {
        if (!(obj instanceof AnnotationTypeMemberDeclaration)) {
            return false;
        }
        AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration2 = (AnnotationTypeMemberDeclaration) obj;
        return safeSubtreeMatch(annotationTypeMemberDeclaration.getJavadoc(), annotationTypeMemberDeclaration2.getJavadoc()) && safeSubtreeListMatch(annotationTypeMemberDeclaration.modifiers(), annotationTypeMemberDeclaration2.modifiers()) && safeSubtreeMatch(annotationTypeMemberDeclaration.getType(), annotationTypeMemberDeclaration2.getType()) && safeSubtreeMatch(annotationTypeMemberDeclaration.getName(), annotationTypeMemberDeclaration2.getName()) && safeSubtreeMatch(annotationTypeMemberDeclaration.getDefault(), annotationTypeMemberDeclaration2.getDefault());
    }

    public boolean match(AnonymousClassDeclaration anonymousClassDeclaration, Object obj) {
        if (obj instanceof AnonymousClassDeclaration) {
            return safeSubtreeListMatch(anonymousClassDeclaration.bodyDeclarations(), ((AnonymousClassDeclaration) obj).bodyDeclarations());
        }
        return false;
    }

    public boolean match(ArrayAccess arrayAccess, Object obj) {
        if (!(obj instanceof ArrayAccess)) {
            return false;
        }
        ArrayAccess arrayAccess2 = (ArrayAccess) obj;
        return safeSubtreeMatch(arrayAccess.getArray(), arrayAccess2.getArray()) && safeSubtreeMatch(arrayAccess.getIndex(), arrayAccess2.getIndex());
    }

    public boolean match(ArrayCreation arrayCreation, Object obj) {
        if (!(obj instanceof ArrayCreation)) {
            return false;
        }
        ArrayCreation arrayCreation2 = (ArrayCreation) obj;
        return safeSubtreeMatch(arrayCreation.getType(), arrayCreation2.getType()) && safeSubtreeListMatch(arrayCreation.dimensions(), arrayCreation2.dimensions()) && safeSubtreeMatch(arrayCreation.getInitializer(), arrayCreation2.getInitializer());
    }

    public boolean match(ArrayInitializer arrayInitializer, Object obj) {
        if (obj instanceof ArrayInitializer) {
            return safeSubtreeListMatch(arrayInitializer.expressions(), ((ArrayInitializer) obj).expressions());
        }
        return false;
    }

    public boolean match(ArrayType arrayType, Object obj) {
        if (!(obj instanceof ArrayType)) {
            return false;
        }
        ArrayType arrayType2 = (ArrayType) obj;
        if (arrayType.getAST().apiLevel < 8) {
            return safeSubtreeMatch(componentType(arrayType), componentType(arrayType2));
        }
        return safeSubtreeMatch(arrayType.getElementType(), arrayType2.getElementType()) && safeSubtreeListMatch(arrayType.dimensions(), arrayType2.dimensions());
    }

    public boolean match(AssertStatement assertStatement, Object obj) {
        if (!(obj instanceof AssertStatement)) {
            return false;
        }
        AssertStatement assertStatement2 = (AssertStatement) obj;
        return safeSubtreeMatch(assertStatement.getExpression(), assertStatement2.getExpression()) && safeSubtreeMatch(assertStatement.getMessage(), assertStatement2.getMessage());
    }

    public boolean match(Assignment assignment, Object obj) {
        if (!(obj instanceof Assignment)) {
            return false;
        }
        Assignment assignment2 = (Assignment) obj;
        return assignment.getOperator().equals(assignment2.getOperator()) && safeSubtreeMatch(assignment.getLeftHandSide(), assignment2.getLeftHandSide()) && safeSubtreeMatch(assignment.getRightHandSide(), assignment2.getRightHandSide());
    }

    public boolean match(Block block, Object obj) {
        if (obj instanceof Block) {
            return safeSubtreeListMatch(block.statements(), ((Block) obj).statements());
        }
        return false;
    }

    public boolean match(BlockComment blockComment, Object obj) {
        return obj instanceof BlockComment;
    }

    public boolean match(BooleanLiteral booleanLiteral, Object obj) {
        return (obj instanceof BooleanLiteral) && booleanLiteral.booleanValue() == ((BooleanLiteral) obj).booleanValue();
    }

    public boolean match(BreakStatement breakStatement, Object obj) {
        if (!(obj instanceof BreakStatement)) {
            return false;
        }
        BreakStatement breakStatement2 = (BreakStatement) obj;
        if (breakStatement.getAST().apiLevel < 12 || breakStatement.getExpression() == null) {
            return safeSubtreeMatch(breakStatement.getLabel(), breakStatement2.getLabel());
        }
        return safeSubtreeMatch(breakStatement.getExpression(), breakStatement2.getExpression()) && breakStatement.isImplicit() == breakStatement2.isImplicit();
    }

    public boolean match(CastExpression castExpression, Object obj) {
        if (!(obj instanceof CastExpression)) {
            return false;
        }
        CastExpression castExpression2 = (CastExpression) obj;
        return safeSubtreeMatch(castExpression.getType(), castExpression2.getType()) && safeSubtreeMatch(castExpression.getExpression(), castExpression2.getExpression());
    }

    public boolean match(CatchClause catchClause, Object obj) {
        if (!(obj instanceof CatchClause)) {
            return false;
        }
        CatchClause catchClause2 = (CatchClause) obj;
        return safeSubtreeMatch(catchClause.getException(), catchClause2.getException()) && safeSubtreeMatch(catchClause.getBody(), catchClause2.getBody());
    }

    public boolean match(CharacterLiteral characterLiteral, Object obj) {
        if (obj instanceof CharacterLiteral) {
            return safeEquals(characterLiteral.getEscapedValue(), ((CharacterLiteral) obj).getEscapedValue());
        }
        return false;
    }

    public boolean match(ClassInstanceCreation classInstanceCreation, Object obj) {
        if (!(obj instanceof ClassInstanceCreation)) {
            return false;
        }
        ClassInstanceCreation classInstanceCreation2 = (ClassInstanceCreation) obj;
        int i10 = classInstanceCreation.getAST().apiLevel;
        if (i10 != 2 || safeSubtreeMatch(classInstanceCreation.internalGetName(), classInstanceCreation2.internalGetName())) {
            return (i10 < 3 || (safeSubtreeListMatch(classInstanceCreation.typeArguments(), classInstanceCreation2.typeArguments()) && safeSubtreeMatch(classInstanceCreation.getType(), classInstanceCreation2.getType()))) && safeSubtreeMatch(classInstanceCreation.getExpression(), classInstanceCreation2.getExpression()) && safeSubtreeListMatch(classInstanceCreation.arguments(), classInstanceCreation2.arguments()) && safeSubtreeMatch(classInstanceCreation.getAnonymousClassDeclaration(), classInstanceCreation2.getAnonymousClassDeclaration());
        }
        return false;
    }

    public boolean match(CompilationUnit compilationUnit, Object obj) {
        if (!(obj instanceof CompilationUnit)) {
            return false;
        }
        CompilationUnit compilationUnit2 = (CompilationUnit) obj;
        return (compilationUnit.getAST().apiLevel < 9 || safeSubtreeMatch(compilationUnit.getModule(), compilationUnit2.getModule())) && safeSubtreeMatch(compilationUnit.getPackage(), compilationUnit2.getPackage()) && safeSubtreeListMatch(compilationUnit.imports(), compilationUnit2.imports()) && safeSubtreeListMatch(compilationUnit.types(), compilationUnit2.types());
    }

    public boolean match(ConditionalExpression conditionalExpression, Object obj) {
        if (!(obj instanceof ConditionalExpression)) {
            return false;
        }
        ConditionalExpression conditionalExpression2 = (ConditionalExpression) obj;
        return safeSubtreeMatch(conditionalExpression.getExpression(), conditionalExpression2.getExpression()) && safeSubtreeMatch(conditionalExpression.getThenExpression(), conditionalExpression2.getThenExpression()) && safeSubtreeMatch(conditionalExpression.getElseExpression(), conditionalExpression2.getElseExpression());
    }

    public boolean match(ConstructorInvocation constructorInvocation, Object obj) {
        if (!(obj instanceof ConstructorInvocation)) {
            return false;
        }
        ConstructorInvocation constructorInvocation2 = (ConstructorInvocation) obj;
        if (constructorInvocation.getAST().apiLevel < 3 || safeSubtreeListMatch(constructorInvocation.typeArguments(), constructorInvocation2.typeArguments())) {
            return safeSubtreeListMatch(constructorInvocation.arguments(), constructorInvocation2.arguments());
        }
        return false;
    }

    public boolean match(ContinueStatement continueStatement, Object obj) {
        if (obj instanceof ContinueStatement) {
            return safeSubtreeMatch(continueStatement.getLabel(), ((ContinueStatement) obj).getLabel());
        }
        return false;
    }

    public boolean match(CreationReference creationReference, Object obj) {
        if (!(obj instanceof CreationReference)) {
            return false;
        }
        CreationReference creationReference2 = (CreationReference) obj;
        return safeSubtreeMatch(creationReference.getType(), creationReference2.getType()) && safeSubtreeListMatch(creationReference.typeArguments(), creationReference2.typeArguments());
    }

    public boolean match(Dimension dimension, Object obj) {
        if (obj instanceof Dimension) {
            return safeSubtreeListMatch(dimension.annotations(), ((Dimension) obj).annotations());
        }
        return false;
    }

    public boolean match(DoStatement doStatement, Object obj) {
        if (!(obj instanceof DoStatement)) {
            return false;
        }
        DoStatement doStatement2 = (DoStatement) obj;
        return safeSubtreeMatch(doStatement.getExpression(), doStatement2.getExpression()) && safeSubtreeMatch(doStatement.getBody(), doStatement2.getBody());
    }

    public boolean match(EmptyStatement emptyStatement, Object obj) {
        return obj instanceof EmptyStatement;
    }

    public boolean match(EnhancedForStatement enhancedForStatement, Object obj) {
        if (!(obj instanceof EnhancedForStatement)) {
            return false;
        }
        EnhancedForStatement enhancedForStatement2 = (EnhancedForStatement) obj;
        return safeSubtreeMatch(enhancedForStatement.getParameter(), enhancedForStatement2.getParameter()) && safeSubtreeMatch(enhancedForStatement.getExpression(), enhancedForStatement2.getExpression()) && safeSubtreeMatch(enhancedForStatement.getBody(), enhancedForStatement2.getBody());
    }

    public boolean match(EnumConstantDeclaration enumConstantDeclaration, Object obj) {
        if (!(obj instanceof EnumConstantDeclaration)) {
            return false;
        }
        EnumConstantDeclaration enumConstantDeclaration2 = (EnumConstantDeclaration) obj;
        return safeSubtreeMatch(enumConstantDeclaration.getJavadoc(), enumConstantDeclaration2.getJavadoc()) && safeSubtreeListMatch(enumConstantDeclaration.modifiers(), enumConstantDeclaration2.modifiers()) && safeSubtreeMatch(enumConstantDeclaration.getName(), enumConstantDeclaration2.getName()) && safeSubtreeListMatch(enumConstantDeclaration.arguments(), enumConstantDeclaration2.arguments()) && safeSubtreeMatch(enumConstantDeclaration.getAnonymousClassDeclaration(), enumConstantDeclaration2.getAnonymousClassDeclaration());
    }

    public boolean match(EnumDeclaration enumDeclaration, Object obj) {
        if (!(obj instanceof EnumDeclaration)) {
            return false;
        }
        EnumDeclaration enumDeclaration2 = (EnumDeclaration) obj;
        return safeSubtreeMatch(enumDeclaration.getJavadoc(), enumDeclaration2.getJavadoc()) && safeSubtreeListMatch(enumDeclaration.modifiers(), enumDeclaration2.modifiers()) && safeSubtreeMatch(enumDeclaration.getName(), enumDeclaration2.getName()) && safeSubtreeListMatch(enumDeclaration.superInterfaceTypes(), enumDeclaration2.superInterfaceTypes()) && safeSubtreeListMatch(enumDeclaration.enumConstants(), enumDeclaration2.enumConstants()) && safeSubtreeListMatch(enumDeclaration.bodyDeclarations(), enumDeclaration2.bodyDeclarations());
    }

    public boolean match(ExportsDirective exportsDirective, Object obj) {
        if (!(obj instanceof ExportsDirective)) {
            return false;
        }
        ExportsDirective exportsDirective2 = (ExportsDirective) obj;
        return safeSubtreeMatch(exportsDirective.getName(), exportsDirective2.getName()) && safeSubtreeListMatch(exportsDirective.modules(), exportsDirective2.modules());
    }

    public boolean match(ExpressionMethodReference expressionMethodReference, Object obj) {
        if (!(obj instanceof ExpressionMethodReference)) {
            return false;
        }
        ExpressionMethodReference expressionMethodReference2 = (ExpressionMethodReference) obj;
        return safeSubtreeMatch(expressionMethodReference.getExpression(), expressionMethodReference2.getExpression()) && safeSubtreeListMatch(expressionMethodReference.typeArguments(), expressionMethodReference2.typeArguments()) && safeSubtreeMatch(expressionMethodReference.getName(), expressionMethodReference2.getName());
    }

    public boolean match(ExpressionStatement expressionStatement, Object obj) {
        if (obj instanceof ExpressionStatement) {
            return safeSubtreeMatch(expressionStatement.getExpression(), ((ExpressionStatement) obj).getExpression());
        }
        return false;
    }

    public boolean match(FieldAccess fieldAccess, Object obj) {
        if (!(obj instanceof FieldAccess)) {
            return false;
        }
        FieldAccess fieldAccess2 = (FieldAccess) obj;
        return safeSubtreeMatch(fieldAccess.getExpression(), fieldAccess2.getExpression()) && safeSubtreeMatch(fieldAccess.getName(), fieldAccess2.getName());
    }

    public boolean match(FieldDeclaration fieldDeclaration, Object obj) {
        if (!(obj instanceof FieldDeclaration)) {
            return false;
        }
        FieldDeclaration fieldDeclaration2 = (FieldDeclaration) obj;
        int i10 = fieldDeclaration.getAST().apiLevel;
        if (i10 != 2 || fieldDeclaration.getModifiers() == fieldDeclaration2.getModifiers()) {
            return (i10 < 3 || safeSubtreeListMatch(fieldDeclaration.modifiers(), fieldDeclaration2.modifiers())) && safeSubtreeMatch(fieldDeclaration.getJavadoc(), fieldDeclaration2.getJavadoc()) && safeSubtreeMatch(fieldDeclaration.getType(), fieldDeclaration2.getType()) && safeSubtreeListMatch(fieldDeclaration.fragments(), fieldDeclaration2.fragments());
        }
        return false;
    }

    public boolean match(ForStatement forStatement, Object obj) {
        if (!(obj instanceof ForStatement)) {
            return false;
        }
        ForStatement forStatement2 = (ForStatement) obj;
        return safeSubtreeListMatch(forStatement.initializers(), forStatement2.initializers()) && safeSubtreeMatch(forStatement.getExpression(), forStatement2.getExpression()) && safeSubtreeListMatch(forStatement.updaters(), forStatement2.updaters()) && safeSubtreeMatch(forStatement.getBody(), forStatement2.getBody());
    }

    public boolean match(IfStatement ifStatement, Object obj) {
        if (!(obj instanceof IfStatement)) {
            return false;
        }
        IfStatement ifStatement2 = (IfStatement) obj;
        return safeSubtreeMatch(ifStatement.getExpression(), ifStatement2.getExpression()) && safeSubtreeMatch(ifStatement.getThenStatement(), ifStatement2.getThenStatement()) && safeSubtreeMatch(ifStatement.getElseStatement(), ifStatement2.getElseStatement());
    }

    public boolean match(ImportDeclaration importDeclaration, Object obj) {
        if (!(obj instanceof ImportDeclaration)) {
            return false;
        }
        ImportDeclaration importDeclaration2 = (ImportDeclaration) obj;
        return (importDeclaration.getAST().apiLevel < 3 || importDeclaration.isStatic() == importDeclaration2.isStatic()) && safeSubtreeMatch(importDeclaration.getName(), importDeclaration2.getName()) && importDeclaration.isOnDemand() == importDeclaration2.isOnDemand();
    }

    public boolean match(InfixExpression infixExpression, Object obj) {
        if (!(obj instanceof InfixExpression)) {
            return false;
        }
        InfixExpression infixExpression2 = (InfixExpression) obj;
        return !(infixExpression.hasExtendedOperands() && infixExpression2.hasExtendedOperands() && !safeSubtreeListMatch(infixExpression.extendedOperands(), infixExpression2.extendedOperands())) && infixExpression.hasExtendedOperands() == infixExpression2.hasExtendedOperands() && infixExpression.getOperator().equals(infixExpression2.getOperator()) && safeSubtreeMatch(infixExpression.getLeftOperand(), infixExpression2.getLeftOperand()) && safeSubtreeMatch(infixExpression.getRightOperand(), infixExpression2.getRightOperand());
    }

    public boolean match(Initializer initializer, Object obj) {
        if (!(obj instanceof Initializer)) {
            return false;
        }
        Initializer initializer2 = (Initializer) obj;
        int i10 = initializer.getAST().apiLevel;
        if (i10 != 2 || initializer.getModifiers() == initializer2.getModifiers()) {
            return (i10 < 3 || safeSubtreeListMatch(initializer.modifiers(), initializer2.modifiers())) && safeSubtreeMatch(initializer.getJavadoc(), initializer2.getJavadoc()) && safeSubtreeMatch(initializer.getBody(), initializer2.getBody());
        }
        return false;
    }

    public boolean match(InstanceofExpression instanceofExpression, Object obj) {
        if (!(obj instanceof InstanceofExpression)) {
            return false;
        }
        InstanceofExpression instanceofExpression2 = (InstanceofExpression) obj;
        return safeSubtreeMatch(instanceofExpression.getLeftOperand(), instanceofExpression2.getLeftOperand()) && safeSubtreeMatch(instanceofExpression.getRightOperand(), instanceofExpression2.getRightOperand());
    }

    public boolean match(IntersectionType intersectionType, Object obj) {
        if (obj instanceof IntersectionType) {
            return safeSubtreeListMatch(intersectionType.types(), ((IntersectionType) obj).types());
        }
        return false;
    }

    public boolean match(Javadoc javadoc, Object obj) {
        if (!(obj instanceof Javadoc)) {
            return false;
        }
        Javadoc javadoc2 = (Javadoc) obj;
        if (this.matchDocTags) {
            return safeSubtreeListMatch(javadoc.tags(), javadoc2.tags());
        }
        return compareDeprecatedComment(javadoc, javadoc2);
    }

    public boolean match(LabeledStatement labeledStatement, Object obj) {
        if (!(obj instanceof LabeledStatement)) {
            return false;
        }
        LabeledStatement labeledStatement2 = (LabeledStatement) obj;
        return safeSubtreeMatch(labeledStatement.getLabel(), labeledStatement2.getLabel()) && safeSubtreeMatch(labeledStatement.getBody(), labeledStatement2.getBody());
    }

    public boolean match(LambdaExpression lambdaExpression, Object obj) {
        if (!(obj instanceof LambdaExpression)) {
            return false;
        }
        LambdaExpression lambdaExpression2 = (LambdaExpression) obj;
        return lambdaExpression.hasParentheses() == lambdaExpression2.hasParentheses() && safeSubtreeListMatch(lambdaExpression.parameters(), lambdaExpression2.parameters()) && safeSubtreeMatch(lambdaExpression.getBody(), lambdaExpression2.getBody());
    }

    public boolean match(LineComment lineComment, Object obj) {
        return obj instanceof LineComment;
    }

    public boolean match(MarkerAnnotation markerAnnotation, Object obj) {
        if (obj instanceof MarkerAnnotation) {
            return safeSubtreeMatch(markerAnnotation.getTypeName(), ((MarkerAnnotation) obj).getTypeName());
        }
        return false;
    }

    public boolean match(MemberRef memberRef, Object obj) {
        if (!(obj instanceof MemberRef)) {
            return false;
        }
        MemberRef memberRef2 = (MemberRef) obj;
        return safeSubtreeMatch(memberRef.getQualifier(), memberRef2.getQualifier()) && safeSubtreeMatch(memberRef.getName(), memberRef2.getName());
    }

    public boolean match(MemberValuePair memberValuePair, Object obj) {
        if (!(obj instanceof MemberValuePair)) {
            return false;
        }
        MemberValuePair memberValuePair2 = (MemberValuePair) obj;
        return safeSubtreeMatch(memberValuePair.getName(), memberValuePair2.getName()) && safeSubtreeMatch(memberValuePair.getValue(), memberValuePair2.getValue());
    }

    public boolean match(MethodRef methodRef, Object obj) {
        if (!(obj instanceof MethodRef)) {
            return false;
        }
        MethodRef methodRef2 = (MethodRef) obj;
        return safeSubtreeMatch(methodRef.getQualifier(), methodRef2.getQualifier()) && safeSubtreeMatch(methodRef.getName(), methodRef2.getName()) && safeSubtreeListMatch(methodRef.parameters(), methodRef2.parameters());
    }

    public boolean match(MethodRefParameter methodRefParameter, Object obj) {
        if (!(obj instanceof MethodRefParameter)) {
            return false;
        }
        MethodRefParameter methodRefParameter2 = (MethodRefParameter) obj;
        return (methodRefParameter.getAST().apiLevel < 3 || methodRefParameter.isVarargs() == methodRefParameter2.isVarargs()) && safeSubtreeMatch(methodRefParameter.getType(), methodRefParameter2.getType()) && safeSubtreeMatch(methodRefParameter.getName(), methodRefParameter2.getName());
    }

    public boolean match(MethodDeclaration methodDeclaration, Object obj) {
        if (!(obj instanceof MethodDeclaration)) {
            return false;
        }
        MethodDeclaration methodDeclaration2 = (MethodDeclaration) obj;
        int i10 = methodDeclaration.getAST().apiLevel;
        return methodDeclaration.isConstructor() == methodDeclaration2.isConstructor() && safeSubtreeMatch(methodDeclaration.getJavadoc(), methodDeclaration2.getJavadoc()) && (i10 < 3 ? methodDeclaration.getModifiers() == methodDeclaration2.getModifiers() && safeSubtreeMatch(methodDeclaration.internalGetReturnType(), methodDeclaration2.internalGetReturnType()) : safeSubtreeListMatch(methodDeclaration.modifiers(), methodDeclaration2.modifiers()) && safeSubtreeListMatch(methodDeclaration.typeParameters(), methodDeclaration2.typeParameters()) && safeSubtreeMatch(methodDeclaration.getReturnType2(), methodDeclaration2.getReturnType2())) && safeSubtreeMatch(methodDeclaration.getName(), methodDeclaration2.getName()) && (i10 < 8 || (safeSubtreeMatch(methodDeclaration.getReceiverType(), methodDeclaration2.getReceiverType()) && safeSubtreeMatch(methodDeclaration.getReceiverQualifier(), methodDeclaration2.getReceiverQualifier()))) && safeSubtreeListMatch(methodDeclaration.parameters(), methodDeclaration2.parameters()) && (i10 < 8 ? methodDeclaration.getExtraDimensions() == methodDeclaration2.getExtraDimensions() && safeSubtreeListMatch(methodDeclaration.internalThrownExceptions(), methodDeclaration2.internalThrownExceptions()) : safeSubtreeListMatch(methodDeclaration.extraDimensions(), methodDeclaration2.extraDimensions()) && safeSubtreeListMatch(methodDeclaration.thrownExceptionTypes(), methodDeclaration2.thrownExceptionTypes())) && safeSubtreeMatch(methodDeclaration.getBody(), methodDeclaration2.getBody());
    }

    public boolean match(MethodInvocation methodInvocation, Object obj) {
        if (!(obj instanceof MethodInvocation)) {
            return false;
        }
        MethodInvocation methodInvocation2 = (MethodInvocation) obj;
        return (methodInvocation.getAST().apiLevel < 3 || safeSubtreeListMatch(methodInvocation.typeArguments(), methodInvocation2.typeArguments())) && safeSubtreeMatch(methodInvocation.getExpression(), methodInvocation2.getExpression()) && safeSubtreeMatch(methodInvocation.getName(), methodInvocation2.getName()) && safeSubtreeListMatch(methodInvocation.arguments(), methodInvocation2.arguments());
    }

    public boolean match(Modifier modifier, Object obj) {
        return (obj instanceof Modifier) && modifier.getKeyword() == ((Modifier) obj).getKeyword();
    }

    public boolean match(ModuleDeclaration moduleDeclaration, Object obj) {
        if (!(obj instanceof ModuleDeclaration)) {
            return false;
        }
        ModuleDeclaration moduleDeclaration2 = (ModuleDeclaration) obj;
        return safeSubtreeMatch(moduleDeclaration.getJavadoc(), moduleDeclaration2.getJavadoc()) && safeSubtreeListMatch(moduleDeclaration.annotations(), moduleDeclaration2.annotations()) && moduleDeclaration.isOpen() == moduleDeclaration2.isOpen() && safeSubtreeMatch(moduleDeclaration.getName(), moduleDeclaration2.getName()) && safeSubtreeListMatch(moduleDeclaration.moduleStatements(), moduleDeclaration2.moduleStatements());
    }

    public boolean match(ModuleModifier moduleModifier, Object obj) {
        return (obj instanceof ModuleModifier) && moduleModifier.getKeyword() == ((ModuleModifier) obj).getKeyword();
    }

    public boolean match(NameQualifiedType nameQualifiedType, Object obj) {
        if (!(obj instanceof NameQualifiedType)) {
            return false;
        }
        NameQualifiedType nameQualifiedType2 = (NameQualifiedType) obj;
        return safeSubtreeMatch(nameQualifiedType.getQualifier(), nameQualifiedType2.getQualifier()) && safeSubtreeListMatch(nameQualifiedType.annotations(), nameQualifiedType2.annotations()) && safeSubtreeMatch(nameQualifiedType.getName(), nameQualifiedType2.getName());
    }

    public boolean match(NormalAnnotation normalAnnotation, Object obj) {
        if (!(obj instanceof NormalAnnotation)) {
            return false;
        }
        NormalAnnotation normalAnnotation2 = (NormalAnnotation) obj;
        return safeSubtreeMatch(normalAnnotation.getTypeName(), normalAnnotation2.getTypeName()) && safeSubtreeListMatch(normalAnnotation.values(), normalAnnotation2.values());
    }

    public boolean match(NullLiteral nullLiteral, Object obj) {
        return obj instanceof NullLiteral;
    }

    public boolean match(NumberLiteral numberLiteral, Object obj) {
        if (obj instanceof NumberLiteral) {
            return safeEquals(numberLiteral.getToken(), ((NumberLiteral) obj).getToken());
        }
        return false;
    }

    public boolean match(OpensDirective opensDirective, Object obj) {
        if (!(obj instanceof OpensDirective)) {
            return false;
        }
        OpensDirective opensDirective2 = (OpensDirective) obj;
        return safeSubtreeMatch(opensDirective.getName(), opensDirective2.getName()) && safeSubtreeListMatch(opensDirective.modules(), opensDirective2.modules());
    }

    public boolean match(PackageDeclaration packageDeclaration, Object obj) {
        if (!(obj instanceof PackageDeclaration)) {
            return false;
        }
        PackageDeclaration packageDeclaration2 = (PackageDeclaration) obj;
        if (packageDeclaration.getAST().apiLevel < 3 || (safeSubtreeMatch(packageDeclaration.getJavadoc(), packageDeclaration2.getJavadoc()) && safeSubtreeListMatch(packageDeclaration.annotations(), packageDeclaration2.annotations()))) {
            return safeSubtreeMatch(packageDeclaration.getName(), packageDeclaration2.getName());
        }
        return false;
    }

    public boolean match(ParameterizedType parameterizedType, Object obj) {
        if (!(obj instanceof ParameterizedType)) {
            return false;
        }
        ParameterizedType parameterizedType2 = (ParameterizedType) obj;
        return safeSubtreeMatch(parameterizedType.getType(), parameterizedType2.getType()) && safeSubtreeListMatch(parameterizedType.typeArguments(), parameterizedType2.typeArguments());
    }

    public boolean match(ParenthesizedExpression parenthesizedExpression, Object obj) {
        if (obj instanceof ParenthesizedExpression) {
            return safeSubtreeMatch(parenthesizedExpression.getExpression(), ((ParenthesizedExpression) obj).getExpression());
        }
        return false;
    }

    public boolean match(PostfixExpression postfixExpression, Object obj) {
        if (!(obj instanceof PostfixExpression)) {
            return false;
        }
        PostfixExpression postfixExpression2 = (PostfixExpression) obj;
        return postfixExpression.getOperator().equals(postfixExpression2.getOperator()) && safeSubtreeMatch(postfixExpression.getOperand(), postfixExpression2.getOperand());
    }

    public boolean match(PrefixExpression prefixExpression, Object obj) {
        if (!(obj instanceof PrefixExpression)) {
            return false;
        }
        PrefixExpression prefixExpression2 = (PrefixExpression) obj;
        return prefixExpression.getOperator().equals(prefixExpression2.getOperator()) && safeSubtreeMatch(prefixExpression.getOperand(), prefixExpression2.getOperand());
    }

    public boolean match(PrimitiveType primitiveType, Object obj) {
        if (!(obj instanceof PrimitiveType)) {
            return false;
        }
        PrimitiveType primitiveType2 = (PrimitiveType) obj;
        return (primitiveType.getAST().apiLevel < 8 || safeSubtreeListMatch(primitiveType.annotations(), primitiveType2.annotations())) && primitiveType.getPrimitiveTypeCode() == primitiveType2.getPrimitiveTypeCode();
    }

    public boolean match(ProvidesDirective providesDirective, Object obj) {
        if (!(obj instanceof ProvidesDirective)) {
            return false;
        }
        ProvidesDirective providesDirective2 = (ProvidesDirective) obj;
        return safeSubtreeMatch(providesDirective.getName(), providesDirective2.getName()) && safeSubtreeListMatch(providesDirective.implementations(), providesDirective2.implementations());
    }

    public boolean match(QualifiedName qualifiedName, Object obj) {
        if (!(obj instanceof QualifiedName)) {
            return false;
        }
        QualifiedName qualifiedName2 = (QualifiedName) obj;
        return safeSubtreeMatch(qualifiedName.getQualifier(), qualifiedName2.getQualifier()) && safeSubtreeMatch(qualifiedName.getName(), qualifiedName2.getName());
    }

    public boolean match(QualifiedType qualifiedType, Object obj) {
        if (!(obj instanceof QualifiedType)) {
            return false;
        }
        QualifiedType qualifiedType2 = (QualifiedType) obj;
        return safeSubtreeMatch(qualifiedType.getQualifier(), qualifiedType2.getQualifier()) && (qualifiedType.getAST().apiLevel < 8 || safeSubtreeListMatch(qualifiedType.annotations(), qualifiedType2.annotations())) && safeSubtreeMatch(qualifiedType.getName(), qualifiedType2.getName());
    }

    public boolean match(RequiresDirective requiresDirective, Object obj) {
        if (!(obj instanceof RequiresDirective)) {
            return false;
        }
        RequiresDirective requiresDirective2 = (RequiresDirective) obj;
        return safeSubtreeListMatch(requiresDirective.modifiers(), requiresDirective2.modifiers()) && safeSubtreeMatch(requiresDirective.getName(), requiresDirective2.getName());
    }

    public boolean match(ReturnStatement returnStatement, Object obj) {
        if (obj instanceof ReturnStatement) {
            return safeSubtreeMatch(returnStatement.getExpression(), ((ReturnStatement) obj).getExpression());
        }
        return false;
    }

    public boolean match(SimpleName simpleName, Object obj) {
        if (obj instanceof SimpleName) {
            return simpleName.getIdentifier().equals(((SimpleName) obj).getIdentifier());
        }
        return false;
    }

    public boolean match(SimpleType simpleType, Object obj) {
        if (!(obj instanceof SimpleType)) {
            return false;
        }
        SimpleType simpleType2 = (SimpleType) obj;
        return (simpleType.getAST().apiLevel < 8 || safeSubtreeListMatch(simpleType.annotations(), simpleType2.annotations())) && safeSubtreeMatch(simpleType.getName(), simpleType2.getName());
    }

    public boolean match(SingleMemberAnnotation singleMemberAnnotation, Object obj) {
        if (!(obj instanceof SingleMemberAnnotation)) {
            return false;
        }
        SingleMemberAnnotation singleMemberAnnotation2 = (SingleMemberAnnotation) obj;
        return safeSubtreeMatch(singleMemberAnnotation.getTypeName(), singleMemberAnnotation2.getTypeName()) && safeSubtreeMatch(singleMemberAnnotation.getValue(), singleMemberAnnotation2.getValue());
    }

    public boolean match(SingleVariableDeclaration singleVariableDeclaration, Object obj) {
        if (!(obj instanceof SingleVariableDeclaration)) {
            return false;
        }
        SingleVariableDeclaration singleVariableDeclaration2 = (SingleVariableDeclaration) obj;
        int i10 = singleVariableDeclaration.getAST().apiLevel;
        if (i10 < 3 ? singleVariableDeclaration.getModifiers() == singleVariableDeclaration2.getModifiers() : safeSubtreeListMatch(singleVariableDeclaration.modifiers(), singleVariableDeclaration2.modifiers())) {
            if (safeSubtreeMatch(singleVariableDeclaration.getType(), singleVariableDeclaration2.getType()) && ((i10 < 8 || !singleVariableDeclaration.isVarargs() || safeSubtreeListMatch(singleVariableDeclaration.varargsAnnotations(), singleVariableDeclaration2.varargsAnnotations())) && ((i10 < 3 || singleVariableDeclaration.isVarargs() == singleVariableDeclaration2.isVarargs()) && safeSubtreeMatch(singleVariableDeclaration.getName(), singleVariableDeclaration2.getName()) && (i10 < 8 ? singleVariableDeclaration.getExtraDimensions() == singleVariableDeclaration2.getExtraDimensions() : safeSubtreeListMatch(singleVariableDeclaration.extraDimensions(), singleVariableDeclaration2.extraDimensions())) && safeSubtreeMatch(singleVariableDeclaration.getInitializer(), singleVariableDeclaration2.getInitializer())))) {
                return true;
            }
        }
        return false;
    }

    public boolean match(StringLiteral stringLiteral, Object obj) {
        if (obj instanceof StringLiteral) {
            return safeEquals(stringLiteral.getEscapedValue(), ((StringLiteral) obj).getEscapedValue());
        }
        return false;
    }

    public boolean match(SuperConstructorInvocation superConstructorInvocation, Object obj) {
        if (!(obj instanceof SuperConstructorInvocation)) {
            return false;
        }
        SuperConstructorInvocation superConstructorInvocation2 = (SuperConstructorInvocation) obj;
        return (superConstructorInvocation.getAST().apiLevel < 3 || safeSubtreeListMatch(superConstructorInvocation.typeArguments(), superConstructorInvocation2.typeArguments())) && safeSubtreeMatch(superConstructorInvocation.getExpression(), superConstructorInvocation2.getExpression()) && safeSubtreeListMatch(superConstructorInvocation.arguments(), superConstructorInvocation2.arguments());
    }

    public boolean match(SuperFieldAccess superFieldAccess, Object obj) {
        if (!(obj instanceof SuperFieldAccess)) {
            return false;
        }
        SuperFieldAccess superFieldAccess2 = (SuperFieldAccess) obj;
        return safeSubtreeMatch(superFieldAccess.getName(), superFieldAccess2.getName()) && safeSubtreeMatch(superFieldAccess.getQualifier(), superFieldAccess2.getQualifier());
    }

    public boolean match(SuperMethodInvocation superMethodInvocation, Object obj) {
        if (!(obj instanceof SuperMethodInvocation)) {
            return false;
        }
        SuperMethodInvocation superMethodInvocation2 = (SuperMethodInvocation) obj;
        return (superMethodInvocation.getAST().apiLevel < 3 || safeSubtreeListMatch(superMethodInvocation.typeArguments(), superMethodInvocation2.typeArguments())) && safeSubtreeMatch(superMethodInvocation.getQualifier(), superMethodInvocation2.getQualifier()) && safeSubtreeMatch(superMethodInvocation.getName(), superMethodInvocation2.getName()) && safeSubtreeListMatch(superMethodInvocation.arguments(), superMethodInvocation2.arguments());
    }

    public boolean match(SuperMethodReference superMethodReference, Object obj) {
        if (!(obj instanceof SuperMethodReference)) {
            return false;
        }
        SuperMethodReference superMethodReference2 = (SuperMethodReference) obj;
        return safeSubtreeMatch(superMethodReference.getQualifier(), superMethodReference2.getQualifier()) && safeSubtreeListMatch(superMethodReference.typeArguments(), superMethodReference2.typeArguments()) && safeSubtreeMatch(superMethodReference.getName(), superMethodReference2.getName());
    }

    public boolean match(SwitchCase switchCase, Object obj) {
        if (!(obj instanceof SwitchCase)) {
            return false;
        }
        SwitchCase switchCase2 = (SwitchCase) obj;
        if (switchCase.getAST().apiLevel >= 12) {
            return safeSubtreeListMatch(switchCase.expressions(), switchCase2.expressions());
        }
        return compareDeprecatedSwitchExpression(switchCase, switchCase2);
    }

    public boolean match(SwitchExpression switchExpression, Object obj) {
        if (!(obj instanceof SwitchExpression)) {
            return false;
        }
        SwitchExpression switchExpression2 = (SwitchExpression) obj;
        return safeSubtreeMatch(switchExpression.getExpression(), switchExpression2.getExpression()) && safeSubtreeListMatch(switchExpression.statements(), switchExpression2.statements());
    }

    public boolean match(SwitchStatement switchStatement, Object obj) {
        if (!(obj instanceof SwitchStatement)) {
            return false;
        }
        SwitchStatement switchStatement2 = (SwitchStatement) obj;
        return safeSubtreeMatch(switchStatement.getExpression(), switchStatement2.getExpression()) && safeSubtreeListMatch(switchStatement.statements(), switchStatement2.statements());
    }

    public boolean match(SynchronizedStatement synchronizedStatement, Object obj) {
        if (!(obj instanceof SynchronizedStatement)) {
            return false;
        }
        SynchronizedStatement synchronizedStatement2 = (SynchronizedStatement) obj;
        return safeSubtreeMatch(synchronizedStatement.getExpression(), synchronizedStatement2.getExpression()) && safeSubtreeMatch(synchronizedStatement.getBody(), synchronizedStatement2.getBody());
    }

    public boolean match(TagElement tagElement, Object obj) {
        if (!(obj instanceof TagElement)) {
            return false;
        }
        TagElement tagElement2 = (TagElement) obj;
        return safeEquals(tagElement.getTagName(), tagElement2.getTagName()) && safeSubtreeListMatch(tagElement.fragments(), tagElement2.fragments());
    }

    public boolean match(TextElement textElement, Object obj) {
        if (obj instanceof TextElement) {
            return safeEquals(textElement.getText(), ((TextElement) obj).getText());
        }
        return false;
    }

    public boolean match(ThisExpression thisExpression, Object obj) {
        if (obj instanceof ThisExpression) {
            return safeSubtreeMatch(thisExpression.getQualifier(), ((ThisExpression) obj).getQualifier());
        }
        return false;
    }

    public boolean match(ThrowStatement throwStatement, Object obj) {
        if (obj instanceof ThrowStatement) {
            return safeSubtreeMatch(throwStatement.getExpression(), ((ThrowStatement) obj).getExpression());
        }
        return false;
    }

    public boolean match(TryStatement tryStatement, Object obj) {
        if (!(obj instanceof TryStatement)) {
            return false;
        }
        TryStatement tryStatement2 = (TryStatement) obj;
        return (tryStatement.getAST().apiLevel < 4 || safeSubtreeListMatch(tryStatement.resources(), tryStatement2.resources())) && safeSubtreeMatch(tryStatement.getBody(), tryStatement2.getBody()) && safeSubtreeListMatch(tryStatement.catchClauses(), tryStatement2.catchClauses()) && safeSubtreeMatch(tryStatement.getFinally(), tryStatement2.getFinally());
    }

    public boolean match(TypeDeclaration typeDeclaration, Object obj) {
        if (!(obj instanceof TypeDeclaration)) {
            return false;
        }
        TypeDeclaration typeDeclaration2 = (TypeDeclaration) obj;
        int i10 = typeDeclaration.getAST().apiLevel;
        if (i10 != 2 || (typeDeclaration.getModifiers() == typeDeclaration2.getModifiers() && safeSubtreeMatch(typeDeclaration.internalGetSuperclass(), typeDeclaration2.internalGetSuperclass()) && safeSubtreeListMatch(typeDeclaration.internalSuperInterfaces(), typeDeclaration2.internalSuperInterfaces()))) {
            return (i10 < 3 || (safeSubtreeListMatch(typeDeclaration.modifiers(), typeDeclaration2.modifiers()) && safeSubtreeListMatch(typeDeclaration.typeParameters(), typeDeclaration2.typeParameters()) && safeSubtreeMatch(typeDeclaration.getSuperclassType(), typeDeclaration2.getSuperclassType()) && safeSubtreeListMatch(typeDeclaration.superInterfaceTypes(), typeDeclaration2.superInterfaceTypes()))) && typeDeclaration.isInterface() == typeDeclaration2.isInterface() && safeSubtreeMatch(typeDeclaration.getJavadoc(), typeDeclaration2.getJavadoc()) && safeSubtreeMatch(typeDeclaration.getName(), typeDeclaration2.getName()) && safeSubtreeListMatch(typeDeclaration.bodyDeclarations(), typeDeclaration2.bodyDeclarations());
        }
        return false;
    }

    public boolean match(TypeDeclarationStatement typeDeclarationStatement, Object obj) {
        if (obj instanceof TypeDeclarationStatement) {
            return safeSubtreeMatch(typeDeclarationStatement.getDeclaration(), ((TypeDeclarationStatement) obj).getDeclaration());
        }
        return false;
    }

    public boolean match(TypeLiteral typeLiteral, Object obj) {
        if (obj instanceof TypeLiteral) {
            return safeSubtreeMatch(typeLiteral.getType(), ((TypeLiteral) obj).getType());
        }
        return false;
    }

    public boolean match(TypeMethodReference typeMethodReference, Object obj) {
        if (!(obj instanceof TypeMethodReference)) {
            return false;
        }
        TypeMethodReference typeMethodReference2 = (TypeMethodReference) obj;
        return safeSubtreeMatch(typeMethodReference.getType(), typeMethodReference2.getType()) && safeSubtreeListMatch(typeMethodReference.typeArguments(), typeMethodReference2.typeArguments()) && safeSubtreeMatch(typeMethodReference.getName(), typeMethodReference2.getName());
    }

    public boolean match(TypeParameter typeParameter, Object obj) {
        if (!(obj instanceof TypeParameter)) {
            return false;
        }
        TypeParameter typeParameter2 = (TypeParameter) obj;
        return (typeParameter.getAST().apiLevel < 8 || safeSubtreeListMatch(typeParameter.modifiers(), typeParameter2.modifiers())) && safeSubtreeMatch(typeParameter.getName(), typeParameter2.getName()) && safeSubtreeListMatch(typeParameter.typeBounds(), typeParameter2.typeBounds());
    }

    public boolean match(UnionType unionType, Object obj) {
        if (obj instanceof UnionType) {
            return safeSubtreeListMatch(unionType.types(), ((UnionType) obj).types());
        }
        return false;
    }

    public boolean match(UsesDirective usesDirective, Object obj) {
        if (obj instanceof UsesDirective) {
            return safeSubtreeMatch(usesDirective.getName(), ((UsesDirective) obj).getName());
        }
        return false;
    }

    public boolean match(VariableDeclarationExpression variableDeclarationExpression, Object obj) {
        if (!(obj instanceof VariableDeclarationExpression)) {
            return false;
        }
        VariableDeclarationExpression variableDeclarationExpression2 = (VariableDeclarationExpression) obj;
        int i10 = variableDeclarationExpression.getAST().apiLevel;
        if (i10 != 2 || variableDeclarationExpression.getModifiers() == variableDeclarationExpression2.getModifiers()) {
            return (i10 < 3 || safeSubtreeListMatch(variableDeclarationExpression.modifiers(), variableDeclarationExpression2.modifiers())) && safeSubtreeMatch(variableDeclarationExpression.getType(), variableDeclarationExpression2.getType()) && safeSubtreeListMatch(variableDeclarationExpression.fragments(), variableDeclarationExpression2.fragments());
        }
        return false;
    }

    public boolean match(VariableDeclarationFragment variableDeclarationFragment, Object obj) {
        if (!(obj instanceof VariableDeclarationFragment)) {
            return false;
        }
        VariableDeclarationFragment variableDeclarationFragment2 = (VariableDeclarationFragment) obj;
        return safeSubtreeMatch(variableDeclarationFragment.getName(), variableDeclarationFragment2.getName()) && (variableDeclarationFragment.getAST().apiLevel < 8 ? variableDeclarationFragment.getExtraDimensions() == variableDeclarationFragment2.getExtraDimensions() : safeSubtreeListMatch(variableDeclarationFragment.extraDimensions(), variableDeclarationFragment2.extraDimensions())) && safeSubtreeMatch(variableDeclarationFragment.getInitializer(), variableDeclarationFragment2.getInitializer());
    }

    public boolean match(VariableDeclarationStatement variableDeclarationStatement, Object obj) {
        if (!(obj instanceof VariableDeclarationStatement)) {
            return false;
        }
        VariableDeclarationStatement variableDeclarationStatement2 = (VariableDeclarationStatement) obj;
        int i10 = variableDeclarationStatement.getAST().apiLevel;
        if (i10 != 2 || variableDeclarationStatement.getModifiers() == variableDeclarationStatement2.getModifiers()) {
            return (i10 < 3 || safeSubtreeListMatch(variableDeclarationStatement.modifiers(), variableDeclarationStatement2.modifiers())) && safeSubtreeMatch(variableDeclarationStatement.getType(), variableDeclarationStatement2.getType()) && safeSubtreeListMatch(variableDeclarationStatement.fragments(), variableDeclarationStatement2.fragments());
        }
        return false;
    }

    public boolean match(WhileStatement whileStatement, Object obj) {
        if (!(obj instanceof WhileStatement)) {
            return false;
        }
        WhileStatement whileStatement2 = (WhileStatement) obj;
        return safeSubtreeMatch(whileStatement.getExpression(), whileStatement2.getExpression()) && safeSubtreeMatch(whileStatement.getBody(), whileStatement2.getBody());
    }

    public boolean match(WildcardType wildcardType, Object obj) {
        if (!(obj instanceof WildcardType)) {
            return false;
        }
        WildcardType wildcardType2 = (WildcardType) obj;
        return (wildcardType.getAST().apiLevel < 8 || safeSubtreeListMatch(wildcardType.annotations(), wildcardType2.annotations())) && wildcardType.isUpperBound() == wildcardType2.isUpperBound() && safeSubtreeMatch(wildcardType.getBound(), wildcardType2.getBound());
    }
}
