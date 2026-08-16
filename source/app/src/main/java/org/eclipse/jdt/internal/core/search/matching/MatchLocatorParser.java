package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntersectionCastTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class MatchLocatorParser extends Parser {
    private ASTVisitor localDeclarationVisitor;
    MatchingNodeSet nodeSet;
    final int patternFineGrain;
    PatternLocator patternLocator;

    public class ClassAndMethodDeclarationVisitor extends ClassButNoMethodDeclarationVisitor {
        public ClassAndMethodDeclarationVisitor() {
            super();
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match(typeDeclaration, matchLocatorParser.nodeSet);
            return true;
        }
    }

    public class MethodButNoClassDeclarationVisitor extends NoClassNoMethodDeclarationVisitor {
        public MethodButNoClassDeclarationVisitor() {
            super();
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match(typeDeclaration, matchLocatorParser.nodeSet);
            return true;
        }
    }

    public class NoClassNoMethodDeclarationVisitor extends ASTVisitor {
        public NoClassNoMethodDeclarationVisitor() {
        }

        @Override
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
            return (constructorDeclaration.bits & 2) != 0;
        }

        @Override
        public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
            return (fieldDeclaration.bits & 2) != 0;
        }

        @Override
        public boolean visit(Initializer initializer, MethodScope methodScope) {
            return (initializer.bits & 2) != 0;
        }

        @Override
        public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
            return (methodDeclaration.bits & 2) != 0;
        }
    }

    public MatchLocatorParser(ProblemReporter problemReporter, MatchLocator matchLocator) {
        super(problemReporter, true);
        this.reportOnlyOneSyntaxError = true;
        this.patternLocator = matchLocator.patternLocator;
        int i10 = matchLocator.matchContainer;
        if ((i10 & 2) != 0) {
            this.localDeclarationVisitor = (i10 & 4) != 0 ? new ClassAndMethodDeclarationVisitor() : new ClassButNoMethodDeclarationVisitor();
        } else {
            this.localDeclarationVisitor = (i10 & 4) != 0 ? new MethodButNoClassDeclarationVisitor() : new NoClassNoMethodDeclarationVisitor();
        }
        this.patternFineGrain = this.patternLocator.fineGrain();
    }

    public static MatchLocatorParser createParser(ProblemReporter problemReporter, MatchLocator matchLocator) {
        return (matchLocator.matchContainer & 1) != 0 ? new ImportMatchLocatorParser(problemReporter, matchLocator) : new MatchLocatorParser(problemReporter, matchLocator);
    }

    private void setTarget(boolean z10) {
        PatternLocator patternLocator = this.patternLocator;
        if (patternLocator instanceof ModuleLocator) {
            ((ModuleLocator) patternLocator).target = z10;
        }
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(TypeReference typeReference, int i10, Annotation[][] annotationArr, boolean z10) {
        TypeReference augmentTypeWithAdditionalDimensions = super.augmentTypeWithAdditionalDimensions(typeReference, i10, annotationArr, z10);
        if (this.nodeSet.removePossibleMatch(typeReference) != null) {
            this.nodeSet.addPossibleMatch(augmentTypeWithAdditionalDimensions);
        } else if (this.nodeSet.removeTrustedMatch(typeReference) != null) {
            this.nodeSet.addTrustedMatch((ASTNode) augmentTypeWithAdditionalDimensions, true);
        }
        return augmentTypeWithAdditionalDimensions;
    }

    @Override
    public void checkComment() {
        Javadoc javadoc;
        TypeReference typeReference;
        TypeReference typeReference2;
        super.checkComment();
        if (this.javadocParser.checkDocComment && (javadoc = this.javadoc) != null && this.patternFineGrain == 0) {
            JavadocSingleNameReference[] javadocSingleNameReferenceArr = javadoc.paramReferences;
            if (javadocSingleNameReferenceArr != null) {
                for (JavadocSingleNameReference javadocSingleNameReference : javadocSingleNameReferenceArr) {
                    this.patternLocator.match((Reference) javadocSingleNameReference, this.nodeSet);
                }
            }
            JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.javadoc.paramTypeParameters;
            if (javadocSingleTypeReferenceArr != null) {
                for (JavadocSingleTypeReference javadocSingleTypeReference : javadocSingleTypeReferenceArr) {
                    this.patternLocator.match((TypeReference) javadocSingleTypeReference, this.nodeSet);
                }
            }
            TypeReference[] typeReferenceArr = this.javadoc.exceptionReferences;
            if (typeReferenceArr != null) {
                for (TypeReference typeReference3 : typeReferenceArr) {
                    this.patternLocator.match(typeReference3, this.nodeSet);
                }
            }
            Expression[] expressionArr = this.javadoc.seeReferences;
            if (expressionArr != null) {
                for (Expression expression : expressionArr) {
                    if (expression instanceof TypeReference) {
                        this.patternLocator.match((TypeReference) expression, this.nodeSet);
                    } else if (expression instanceof JavadocFieldReference) {
                        JavadocFieldReference javadocFieldReference = (JavadocFieldReference) expression;
                        this.patternLocator.match((Reference) javadocFieldReference, this.nodeSet);
                        Expression expression2 = javadocFieldReference.receiver;
                        if ((expression2 instanceof TypeReference) && !expression2.isThis()) {
                            this.patternLocator.match((TypeReference) javadocFieldReference.receiver, this.nodeSet);
                        }
                    } else if (expression instanceof JavadocMessageSend) {
                        JavadocMessageSend javadocMessageSend = (JavadocMessageSend) expression;
                        this.patternLocator.match((MessageSend) javadocMessageSend, this.nodeSet);
                        Expression expression3 = javadocMessageSend.receiver;
                        if ((expression3 instanceof TypeReference) && !expression3.isThis()) {
                            this.patternLocator.match((TypeReference) javadocMessageSend.receiver, this.nodeSet);
                        }
                        Expression[] expressionArr2 = javadocMessageSend.arguments;
                        if (expressionArr2 != null) {
                            int length = expressionArr2.length;
                            for (int i10 = 0; i10 < length; i10++) {
                                Argument argument = ((JavadocArgumentExpression) javadocMessageSend.arguments[i10]).argument;
                                if (argument != null && (typeReference2 = argument.type) != null) {
                                    this.patternLocator.match(typeReference2, this.nodeSet);
                                }
                            }
                        }
                    } else if (expression instanceof JavadocAllocationExpression) {
                        JavadocAllocationExpression javadocAllocationExpression = (JavadocAllocationExpression) expression;
                        this.patternLocator.match((Expression) javadocAllocationExpression, this.nodeSet);
                        TypeReference typeReference4 = javadocAllocationExpression.type;
                        if (typeReference4 != null && !typeReference4.isThis()) {
                            this.patternLocator.match(javadocAllocationExpression.type, this.nodeSet);
                        }
                        Expression[] expressionArr3 = javadocAllocationExpression.arguments;
                        if (expressionArr3 != null) {
                            int length2 = expressionArr3.length;
                            for (int i11 = 0; i11 < length2; i11++) {
                                this.patternLocator.match(javadocAllocationExpression.arguments[i11], this.nodeSet);
                                Argument argument2 = ((JavadocArgumentExpression) javadocAllocationExpression.arguments[i11]).argument;
                                if (argument2 != null && (typeReference = argument2.type) != null) {
                                    this.patternLocator.match(typeReference, this.nodeSet);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public void classInstanceCreation(boolean z10) {
        super.classInstanceCreation(z10);
        int i10 = this.patternFineGrain;
        if (i10 == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        } else if ((i10 & 8192) != 0) {
            this.patternLocator.match(((AllocationExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeAdditionalBound() {
        super.consumeAdditionalBound();
        if ((this.patternFineGrain & 262144) != 0) {
            this.patternLocator.match((TypeReference) this.genericsStack[this.genericsPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeAssignment() {
        super.consumeAssignment();
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeCastExpressionLL1() {
        super.consumeCastExpressionLL1();
        if ((this.patternFineGrain & 2048) != 0) {
            this.patternLocator.match(((CastExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeCastExpressionLL1WithBounds() {
        super.consumeCastExpressionLL1WithBounds();
        if ((this.patternFineGrain & 2048) != 0) {
            for (TypeReference typeReference : ((IntersectionCastTypeReference) ((CastExpression) this.expressionStack[this.expressionPtr]).type).typeReferences) {
                this.patternLocator.match(typeReference, this.nodeSet);
            }
        }
    }

    @Override
    public void consumeCastExpressionWithGenericsArray() {
        super.consumeCastExpressionWithGenericsArray();
        if ((this.patternFineGrain & 2048) != 0) {
            this.patternLocator.match(((CastExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeCastExpressionWithNameArray() {
        super.consumeCastExpressionWithNameArray();
        if ((this.patternFineGrain & 2048) != 0) {
            this.patternLocator.match(((CastExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeCastExpressionWithPrimitiveType() {
        super.consumeCastExpressionWithPrimitiveType();
        if ((this.patternFineGrain & 2048) != 0) {
            this.patternLocator.match(((CastExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeCastExpressionWithQualifiedGenericsArray() {
        super.consumeCastExpressionWithQualifiedGenericsArray();
        if ((this.patternFineGrain & 2048) != 0) {
            this.patternLocator.match(((CastExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeCatchFormalParameter() {
        super.consumeCatchFormalParameter();
        this.patternLocator.match((LocalDeclaration) this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeClassHeaderExtends() {
        this.patternLocator.setFlavors(4096);
        super.consumeClassHeaderExtends();
        if ((this.patternFineGrain & 512) != 0) {
            this.patternLocator.match(((TypeDeclaration) this.astStack[this.astPtr]).superclass, this.nodeSet);
        }
        this.patternLocator.setFlavors(0);
    }

    @Override
    public void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        super.consumeClassInstanceCreationExpressionWithTypeArguments();
        int i10 = this.patternFineGrain;
        if (i10 == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        } else if ((i10 & 8192) != 0) {
            this.patternLocator.match(((AllocationExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeClassInstanceCreationExpressionWithTypeArguments() {
        super.consumeClassInstanceCreationExpressionWithTypeArguments();
        int i10 = this.patternFineGrain;
        if (i10 == 0) {
            this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
        } else if ((i10 & 8192) != 0) {
            this.patternLocator.match(((AllocationExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeEnterAnonymousClassBody(boolean z10) {
        this.patternLocator.setFlavors(4096);
        super.consumeEnterAnonymousClassBody(z10);
        this.patternLocator.setFlavors(0);
    }

    @Override
    public void consumeEnterVariable() {
        boolean z10 = this.nestedMethod[this.nestedType] != 0;
        super.consumeEnterVariable();
        if (z10) {
            if ((this.patternFineGrain & 128) != 0) {
                this.patternLocator.match(((LocalDeclaration) this.astStack[this.astPtr]).type, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 64) != 0) {
            this.patternLocator.match(((FieldDeclaration) this.astStack[this.astPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeExplicitConstructorInvocation(int i10, int i11) {
        super.consumeExplicitConstructorInvocation(i10, i11);
        this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeExplicitConstructorInvocationWithTypeArguments(int i10, int i11) {
        super.consumeExplicitConstructorInvocationWithTypeArguments(i10, i11);
        this.patternLocator.match(this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeExportsHeader() {
        super.consumeExportsHeader();
        this.patternLocator.match(((ExportsStatement) this.astStack[this.astPtr]).pkgRef, this.nodeSet);
    }

    @Override
    public void consumeFieldAccess(boolean z10) {
        super.consumeFieldAccess(z10);
        int i10 = z10 ? 16777216 : 67108864;
        int i11 = this.patternFineGrain;
        if (i11 == 0 || (i10 & i11) != 0) {
            this.patternLocator.match((Reference) this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeFormalParameter(boolean z10) {
        super.consumeFormalParameter(z10);
        this.patternLocator.match((LocalDeclaration) this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeInstanceOfExpression() {
        super.consumeInstanceOfExpression();
        if ((this.patternFineGrain & 1048576) != 0) {
            this.patternLocator.match(((InstanceOfExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeInstanceOfExpressionWithName() {
        super.consumeInstanceOfExpressionWithName();
        if ((this.patternFineGrain & 1048576) != 0) {
            this.patternLocator.match(((InstanceOfExpression) this.expressionStack[this.expressionPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeInterfaceType() {
        this.patternLocator.setFlavors(4096);
        super.consumeInterfaceType();
        if ((this.patternFineGrain & 512) != 0) {
            this.patternLocator.match((TypeReference) this.astStack[this.astPtr], this.nodeSet);
        }
        this.patternLocator.setFlavors(0);
    }

    @Override
    public void consumeLambdaExpression() {
        super.consumeLambdaExpression();
        this.patternLocator.match((LambdaExpression) this.expressionStack[this.expressionPtr], this.nodeSet);
    }

    @Override
    public void consumeLocalVariableDeclaration() {
        super.consumeLocalVariableDeclaration();
        this.patternLocator.match((LocalDeclaration) this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeMarkerAnnotation(boolean z10) {
        super.consumeMarkerAnnotation(z10);
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 65536) != 0) {
            this.patternLocator.match((Annotation) (z10 ? this.typeAnnotationStack[this.typeAnnotationPtr] : this.expressionStack[this.expressionPtr]), this.nodeSet);
        }
    }

    @Override
    public void consumeMemberValuePair() {
        super.consumeMemberValuePair();
        if ((this.patternFineGrain & (-268435457)) != 0) {
            this.patternLocator.match((MemberValuePair) this.astStack[this.astPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeMethodHeaderName(boolean z10) {
        super.consumeMethodHeaderName(z10);
        if ((this.patternFineGrain & 16384) != 0) {
            this.patternLocator.match(((MethodDeclaration) this.astStack[this.astPtr]).returnType, this.nodeSet);
        }
    }

    @Override
    public void consumeMethodHeaderRightParen() {
        Argument[] argumentArr;
        super.consumeMethodHeaderRightParen();
        if ((this.patternFineGrain & 256) == 0 || (argumentArr = ((AbstractMethodDeclaration) this.astStack[this.astPtr]).arguments) == null) {
            return;
        }
        for (Argument argument : argumentArr) {
            this.patternLocator.match(argument.type, this.nodeSet);
        }
    }

    @Override
    public void consumeMethodHeaderThrowsClause() {
        TypeReference[] typeReferenceArr;
        super.consumeMethodHeaderThrowsClause();
        if ((this.patternFineGrain & 1024) == 0 || (typeReferenceArr = ((AbstractMethodDeclaration) this.astStack[this.astPtr]).thrownExceptions) == null) {
            return;
        }
        for (TypeReference typeReference : typeReferenceArr) {
            this.patternLocator.match(typeReference, this.nodeSet);
        }
    }

    @Override
    public void consumeMethodInvocationName() {
        super.consumeMethodInvocationName();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
            return;
        }
        if (messageSend.receiver.isThis()) {
            if ((this.patternFineGrain & 134217728) != 0) {
                this.patternLocator.match(messageSend, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 33554432) != 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
        }
    }

    @Override
    public void consumeMethodInvocationNameWithTypeArguments() {
        super.consumeMethodInvocationNameWithTypeArguments();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
            return;
        }
        if (messageSend.receiver.isThis()) {
            if ((this.patternFineGrain & 134217728) != 0) {
                this.patternLocator.match(messageSend, this.nodeSet);
            }
        } else if ((this.patternFineGrain & 33554432) != 0) {
            this.patternLocator.match(messageSend, this.nodeSet);
        }
    }

    @Override
    public void consumeMethodInvocationPrimary() {
        super.consumeMethodInvocationPrimary();
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 67108864) != 0) {
            this.patternLocator.match((MessageSend) this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeMethodInvocationPrimaryWithTypeArguments() {
        super.consumeMethodInvocationPrimaryWithTypeArguments();
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 67108864) != 0) {
            this.patternLocator.match((MessageSend) this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeMethodInvocationSuper() {
        super.consumeMethodInvocationSuper();
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 16777216) != 0) {
            this.patternLocator.match((MessageSend) this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeMethodInvocationSuperWithTypeArguments() {
        super.consumeMethodInvocationSuperWithTypeArguments();
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 16777216) != 0) {
            this.patternLocator.match((MessageSend) this.expressionStack[this.expressionPtr], this.nodeSet);
        }
    }

    @Override
    public void consumeModuleHeader() {
        super.consumeModuleHeader();
        this.patternLocator.match((ModuleDeclaration) this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeNormalAnnotation(boolean z10) {
        super.consumeNormalAnnotation(z10);
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 65536) != 0) {
            this.patternLocator.match((Annotation) (z10 ? this.typeAnnotationStack[this.typeAnnotationPtr] : this.expressionStack[this.expressionPtr]), this.nodeSet);
        }
    }

    @Override
    public void consumeOnlyTypeArguments() {
        super.consumeOnlyTypeArguments();
        if ((this.patternFineGrain & 131072) == 0 || this.genericsLengthStack[this.genericsLengthPtr] != 1) {
            return;
        }
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        if (typeReference instanceof Wildcard) {
            return;
        }
        this.patternLocator.match(typeReference, this.nodeSet);
    }

    @Override
    public void consumeOpensHeader() {
        super.consumeOpensHeader();
        this.patternLocator.match(((OpensStatement) this.astStack[this.astPtr]).pkgRef, this.nodeSet);
    }

    @Override
    public void consumePrimaryNoNewArrayWithName() {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
        this.intPtr -= 2;
    }

    @Override
    public void consumeProvidesInterface() {
        super.consumeProvidesInterface();
        this.patternLocator.match(((ProvidesStatement) this.astStack[this.astPtr]).serviceInterface, this.nodeSet);
    }

    @Override
    public void consumeProvidesStatement() {
        super.consumeProvidesStatement();
        for (TypeReference typeReference : ((ProvidesStatement) this.astStack[this.astPtr]).implementations) {
            this.patternLocator.match(typeReference, this.nodeSet);
        }
    }

    @Override
    public void consumeReferenceExpression(ReferenceExpression referenceExpression) {
        super.consumeReferenceExpression(referenceExpression);
        int i10 = this.patternFineGrain;
        if (i10 == 0) {
            this.patternLocator.match(referenceExpression, this.nodeSet);
            return;
        }
        if ((i10 & 268435456) != 0) {
            this.patternLocator.match(referenceExpression, this.nodeSet);
            return;
        }
        if (referenceExpression.lhs.isThis()) {
            if ((this.patternFineGrain & 67108864) != 0) {
                this.patternLocator.match(referenceExpression, this.nodeSet);
            }
        } else if (referenceExpression.lhs.isSuper()) {
            if ((this.patternFineGrain & 16777216) != 0) {
                this.patternLocator.match(referenceExpression, this.nodeSet);
            }
        } else {
            Expression expression = referenceExpression.lhs;
            if (((expression instanceof QualifiedNameReference) || (expression instanceof QualifiedTypeReference)) && (this.patternFineGrain & 33554432) != 0) {
                this.patternLocator.match(referenceExpression, this.nodeSet);
            }
        }
    }

    @Override
    public void consumeSingleMemberAnnotation(boolean z10) {
        super.consumeSingleMemberAnnotation(z10);
        int i10 = this.patternFineGrain;
        if (i10 == 0 || (i10 & 65536) != 0) {
            this.patternLocator.match((Annotation) (z10 ? this.typeAnnotationStack[this.typeAnnotationPtr] : this.expressionStack[this.expressionPtr]), this.nodeSet);
        }
    }

    @Override
    public void consumeSingleRequiresModuleName() {
        super.consumeSingleRequiresModuleName();
        this.patternLocator.match(((RequiresStatement) this.astStack[this.astPtr]).module, this.nodeSet);
    }

    @Override
    public void consumeSingleTargetModuleName() {
        super.consumeSingleTargetModuleName();
        setTarget(true);
        this.patternLocator.match((ModuleReference) this.astStack[this.astPtr], this.nodeSet);
        setTarget(false);
    }

    @Override
    public void consumeStatementCatch() {
        super.consumeStatementCatch();
        if ((this.patternFineGrain & 4096) != 0) {
            TypeReference typeReference = ((LocalDeclaration) this.astStack[this.astPtr - 1]).type;
            if (!(typeReference instanceof UnionTypeReference)) {
                this.patternLocator.match(typeReference, this.nodeSet);
                return;
            }
            TypeReference[] typeReferenceArr = ((UnionTypeReference) typeReference).typeReferences;
            for (TypeReference typeReference2 : typeReferenceArr) {
                this.patternLocator.match(typeReference2, this.nodeSet);
            }
        }
    }

    @Override
    public void consumeTypeArgumentList1() {
        super.consumeTypeArgumentList1();
        if ((this.patternFineGrain & 131072) == 0) {
            return;
        }
        int i10 = this.genericsPtr - this.genericsLengthStack[this.genericsLengthPtr];
        while (true) {
            i10++;
            if (i10 > this.genericsPtr) {
                return;
            }
            TypeReference typeReference = (TypeReference) this.genericsStack[i10];
            if (!(typeReference instanceof Wildcard)) {
                this.patternLocator.match(typeReference, this.nodeSet);
            }
        }
    }

    @Override
    public void consumeTypeArgumentList2() {
        super.consumeTypeArgumentList2();
        if ((this.patternFineGrain & 131072) == 0) {
            return;
        }
        int i10 = this.genericsPtr - this.genericsLengthStack[this.genericsLengthPtr];
        while (true) {
            i10++;
            if (i10 > this.genericsPtr) {
                return;
            }
            TypeReference typeReference = (TypeReference) this.genericsStack[i10];
            if (!(typeReference instanceof Wildcard)) {
                this.patternLocator.match(typeReference, this.nodeSet);
            }
        }
    }

    @Override
    public void consumeTypeArgumentList3() {
        super.consumeTypeArgumentList3();
        if ((this.patternFineGrain & 131072) == 0) {
            return;
        }
        int i10 = this.genericsPtr - this.genericsLengthStack[this.genericsLengthPtr];
        while (true) {
            i10++;
            if (i10 > this.genericsPtr) {
                return;
            }
            TypeReference typeReference = (TypeReference) this.genericsStack[i10];
            if (!(typeReference instanceof Wildcard)) {
                this.patternLocator.match(typeReference, this.nodeSet);
            }
        }
    }

    @Override
    public void consumeTypeArgumentReferenceType1() {
        TypeReference[] typeReferenceArr;
        super.consumeTypeArgumentReferenceType1();
        if ((this.patternFineGrain & 131072) == 0 || this.genericsLengthStack[this.genericsLengthPtr] != 1) {
            return;
        }
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            typeReferenceArr = ((ParameterizedSingleTypeReference) typeReference).typeArguments;
        } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            TypeReference[][] typeReferenceArr2 = ((ParameterizedQualifiedTypeReference) typeReference).typeArguments;
            typeReferenceArr = typeReferenceArr2[typeReferenceArr2.length - 1];
        } else {
            typeReferenceArr = null;
        }
        if (typeReferenceArr != null) {
            for (TypeReference typeReference2 : typeReferenceArr) {
                if (!(typeReference2 instanceof Wildcard)) {
                    this.patternLocator.match(typeReference2, this.nodeSet);
                }
            }
        }
    }

    @Override
    public void consumeTypeArgumentReferenceType2() {
        TypeReference[] typeReferenceArr;
        super.consumeTypeArgumentReferenceType2();
        if ((this.patternFineGrain & 131072) == 0 || this.genericsLengthStack[this.genericsLengthPtr] != 1) {
            return;
        }
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            typeReferenceArr = ((ParameterizedSingleTypeReference) typeReference).typeArguments;
        } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            TypeReference[][] typeReferenceArr2 = ((ParameterizedQualifiedTypeReference) typeReference).typeArguments;
            typeReferenceArr = typeReferenceArr2[typeReferenceArr2.length - 1];
        } else {
            typeReferenceArr = null;
        }
        if (typeReferenceArr != null) {
            for (TypeReference typeReference2 : typeReferenceArr) {
                if (!(typeReference2 instanceof Wildcard)) {
                    this.patternLocator.match(typeReference2, this.nodeSet);
                }
            }
        }
    }

    @Override
    public void consumeTypeArguments() {
        super.consumeTypeArguments();
        if ((this.patternFineGrain & 131072) == 0 || this.genericsLengthStack[this.genericsLengthPtr] != 1) {
            return;
        }
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        if (typeReference instanceof Wildcard) {
            return;
        }
        this.patternLocator.match(typeReference, this.nodeSet);
    }

    @Override
    public void consumeTypeElidedLambdaParameter(boolean z10) {
        super.consumeTypeElidedLambdaParameter(z10);
        this.patternLocator.match((LocalDeclaration) this.astStack[this.astPtr], this.nodeSet);
    }

    @Override
    public void consumeTypeParameter1WithExtends() {
        super.consumeTypeParameter1WithExtends();
        if ((this.patternFineGrain & 262144) != 0) {
            this.patternLocator.match(((TypeParameter) this.genericsStack[this.genericsPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeTypeParameter1WithExtendsAndBounds() {
        super.consumeTypeParameter1WithExtendsAndBounds();
        if ((this.patternFineGrain & 262144) != 0) {
            this.patternLocator.match(((TypeParameter) this.genericsStack[this.genericsPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeTypeParameterHeader() {
        super.consumeTypeParameterHeader();
        this.patternLocator.match((TypeParameter) this.genericsStack[this.genericsPtr], this.nodeSet);
    }

    @Override
    public void consumeTypeParameterWithExtends() {
        super.consumeTypeParameterWithExtends();
        if ((this.patternFineGrain & 262144) != 0) {
            this.patternLocator.match(((TypeParameter) this.genericsStack[this.genericsPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeTypeParameterWithExtendsAndBounds() {
        super.consumeTypeParameterWithExtendsAndBounds();
        if ((this.patternFineGrain & 262144) != 0) {
            this.patternLocator.match(((TypeParameter) this.genericsStack[this.genericsPtr]).type, this.nodeSet);
        }
    }

    @Override
    public void consumeUnaryExpression(int i10, boolean z10) {
        super.consumeUnaryExpression(i10, z10);
        this.patternLocator.match(this.expressionStack[this.expressionPtr], this.nodeSet);
    }

    @Override
    public void consumeWildcardBounds1Extends() {
        super.consumeWildcardBounds1Extends();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBounds1Super() {
        super.consumeWildcardBounds1Super();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBounds2Extends() {
        super.consumeWildcardBounds2Extends();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBounds2Super() {
        super.consumeWildcardBounds2Super();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBounds3Extends() {
        super.consumeWildcardBounds3Extends();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBounds3Super() {
        super.consumeWildcardBounds3Super();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBoundsExtends() {
        super.consumeWildcardBoundsExtends();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public void consumeWildcardBoundsSuper() {
        super.consumeWildcardBoundsSuper();
        if ((this.patternFineGrain & 524288) != 0) {
            this.patternLocator.match(((Wildcard) this.genericsStack[this.genericsPtr]).bound, this.nodeSet);
        }
    }

    @Override
    public TypeReference getTypeReference(int i10) {
        TypeReference typeReference = super.getTypeReference(i10);
        if (this.patternFineGrain == 0) {
            this.patternLocator.match(typeReference, this.nodeSet);
        }
        return typeReference;
    }

    @Override
    public NameReference getUnspecifiedReference(boolean z10) {
        NameReference unspecifiedReference = super.getUnspecifiedReference(z10);
        int i10 = this.patternFineGrain;
        if (i10 == 0) {
            this.patternLocator.match((Reference) unspecifiedReference, this.nodeSet);
        } else if ((33554432 & i10) != 0) {
            if (unspecifiedReference instanceof QualifiedNameReference) {
                this.patternLocator.match((Reference) unspecifiedReference, this.nodeSet);
            }
        } else if ((i10 & 134217728) != 0 && (unspecifiedReference instanceof SingleNameReference)) {
            this.patternLocator.match((Reference) unspecifiedReference, this.nodeSet);
        }
        return unspecifiedReference;
    }

    @Override
    public NameReference getUnspecifiedReferenceOptimized() {
        NameReference unspecifiedReferenceOptimized = super.getUnspecifiedReferenceOptimized();
        int i10 = this.patternFineGrain;
        if (i10 == 0) {
            this.patternLocator.match((Reference) unspecifiedReferenceOptimized, this.nodeSet);
        } else {
            boolean z10 = (33554432 & i10) != 0;
            boolean z11 = (i10 & 134217728) != 0;
            if (z10 && z11) {
                this.patternLocator.match((Reference) unspecifiedReferenceOptimized, this.nodeSet);
            } else if (z10) {
                if (unspecifiedReferenceOptimized instanceof QualifiedNameReference) {
                    this.patternLocator.match((Reference) unspecifiedReferenceOptimized, this.nodeSet);
                }
            } else if (z11 && (unspecifiedReferenceOptimized instanceof SingleNameReference)) {
                this.patternLocator.match((Reference) unspecifiedReferenceOptimized, this.nodeSet);
            }
        }
        return unspecifiedReferenceOptimized;
    }

    public void parseBodies(CompilationUnitDeclaration compilationUnitDeclaration) {
        TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        if (typeDeclarationArr == null) {
            return;
        }
        for (TypeDeclaration typeDeclaration : typeDeclarationArr) {
            this.patternLocator.match(typeDeclaration, this.nodeSet);
            parseBodies(typeDeclaration, compilationUnitDeclaration);
        }
    }

    public class ClassButNoMethodDeclarationVisitor extends ASTVisitor {
        public ClassButNoMethodDeclarationVisitor() {
        }

        @Override
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match(constructorDeclaration, matchLocatorParser.nodeSet);
            return (constructorDeclaration.bits & 2) != 0;
        }

        @Override
        public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match(fieldDeclaration, matchLocatorParser.nodeSet);
            return (fieldDeclaration.bits & 2) != 0;
        }

        @Override
        public boolean visit(Initializer initializer, MethodScope methodScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match((FieldDeclaration) initializer, matchLocatorParser.nodeSet);
            return (initializer.bits & 2) != 0;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match(typeDeclaration, matchLocatorParser.nodeSet);
            return true;
        }

        @Override
        public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match(methodDeclaration, matchLocatorParser.nodeSet);
            return (methodDeclaration.bits & 2) != 0;
        }

        @Override
        public boolean visit(AnnotationMethodDeclaration annotationMethodDeclaration, ClassScope classScope) {
            MatchLocatorParser matchLocatorParser = MatchLocatorParser.this;
            matchLocatorParser.patternLocator.match((MethodDeclaration) annotationMethodDeclaration, matchLocatorParser.nodeSet);
            return false;
        }
    }

    public void parseBodies(TypeDeclaration typeDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        if (fieldDeclarationArr != null) {
            for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                if (fieldDeclaration instanceof Initializer) {
                    parse((Initializer) fieldDeclaration, typeDeclaration, compilationUnitDeclaration);
                }
                fieldDeclaration.traverse(this.localDeclarationVisitor, (MethodScope) null);
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                if (abstractMethodDeclaration.sourceStart >= typeDeclaration.bodyStart) {
                    if (abstractMethodDeclaration instanceof MethodDeclaration) {
                        MethodDeclaration methodDeclaration = (MethodDeclaration) abstractMethodDeclaration;
                        parse(methodDeclaration, compilationUnitDeclaration);
                        methodDeclaration.traverse(this.localDeclarationVisitor, (ClassScope) null);
                    } else if (abstractMethodDeclaration instanceof ConstructorDeclaration) {
                        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) abstractMethodDeclaration;
                        parse(constructorDeclaration, compilationUnitDeclaration, false);
                        constructorDeclaration.traverse(this.localDeclarationVisitor, (ClassScope) null);
                    }
                } else if (abstractMethodDeclaration.isDefaultConstructor()) {
                    abstractMethodDeclaration.parseStatements(this, compilationUnitDeclaration);
                }
            }
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
                parseBodies(typeDeclaration2, compilationUnitDeclaration);
                typeDeclaration2.traverse(this.localDeclarationVisitor, (ClassScope) null);
            }
        }
    }
}
