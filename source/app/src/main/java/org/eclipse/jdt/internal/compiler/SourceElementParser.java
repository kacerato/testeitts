package org.eclipse.jdt.internal.compiler;

import java.util.HashMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.Messages;

public class SourceElementParser extends CommentRecorderParser {
    HashMap nodesToCategories;
    SourceElementNotifier notifier;
    boolean reportLocalDeclarations;
    boolean reportReferenceInfo;
    ISourceElementRequestor requestor;
    HashtableOfObjectToInt sourceEnds;
    boolean useSourceJavadocParser;

    public SourceElementParser(ISourceElementRequestor iSourceElementRequestor, IProblemFactory iProblemFactory, CompilerOptions compilerOptions, boolean z10, boolean z11) {
        this(iSourceElementRequestor, iProblemFactory, compilerOptions, z10, z11, true);
    }

    private void acceptJavadocTypeReference(Expression expression) {
        if (expression instanceof JavadocSingleTypeReference) {
            JavadocSingleTypeReference javadocSingleTypeReference = (JavadocSingleTypeReference) expression;
            this.requestor.acceptTypeReference(javadocSingleTypeReference.token, javadocSingleTypeReference.sourceStart);
        } else if (expression instanceof JavadocQualifiedTypeReference) {
            JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) expression;
            this.requestor.acceptTypeReference(javadocQualifiedTypeReference.tokens, javadocQualifiedTypeReference.sourceStart, javadocQualifiedTypeReference.sourceEnd);
        }
    }

    private void rememberCategories() {
        if (this.useSourceJavadocParser) {
            SourceJavadocParser sourceJavadocParser = (SourceJavadocParser) this.javadocParser;
            char[][] cArr = sourceJavadocParser.categories;
            if (cArr.length > 0) {
                this.nodesToCategories.put(this.astStack[this.astPtr], cArr);
                sourceJavadocParser.categories = CharOperation.NO_CHAR_CHAR;
            }
        }
    }

    private void reset() {
        this.sourceEnds = new HashtableOfObjectToInt();
        this.nodesToCategories = new HashMap();
    }

    public void addUnknownRef(NameReference nameReference) {
        if (nameReference instanceof SingleNameReference) {
            this.requestor.acceptUnknownReference(((SingleNameReference) nameReference).token, nameReference.sourceStart);
        } else {
            this.requestor.acceptUnknownReference(((QualifiedNameReference) nameReference).tokens, nameReference.sourceStart, nameReference.sourceEnd);
        }
    }

    @Override
    public void checkComment() {
        Javadoc javadoc;
        JavadocParser javadocParser;
        int commentPtr = getCommentPtr();
        if ((!this.diet || this.dietInt != 0) && commentPtr >= 0) {
            flushCommentsDefinedPriorTo(this.endStatementPosition);
            commentPtr = getCommentPtr();
        }
        if (this.modifiersSourceStart >= 0) {
            while (commentPtr >= 0) {
                int i10 = this.scanner.commentStarts[commentPtr];
                if (i10 < 0) {
                    i10 = -i10;
                }
                if (i10 <= this.modifiersSourceStart) {
                    break;
                } else {
                    commentPtr--;
                }
            }
        }
        if (commentPtr >= 0) {
            int i11 = this.scanner.commentStarts[0];
            if (i11 < 0) {
                i11 = -i11;
            }
            int i12 = this.forStartPosition;
            if (i12 == 0 || i12 < i11) {
                this.modifiersSourceStart = i11;
            }
            while (commentPtr >= 0 && this.scanner.commentStops[commentPtr] < 0) {
                commentPtr--;
            }
            if (commentPtr >= 0 && (javadocParser = this.javadocParser) != null) {
                int i13 = this.scanner.commentStops[commentPtr] - 1;
                if (javadocParser.shouldReportProblems) {
                    javadocParser.reportProblems = this.currentElement == null || i13 > this.lastJavadocEnd;
                } else {
                    javadocParser.reportProblems = false;
                }
                if (javadocParser.checkDeprecation(commentPtr)) {
                    checkAndSetModifiers(1048576);
                }
                this.javadoc = this.javadocParser.docComment;
                if (this.currentElement == null) {
                    this.lastJavadocEnd = i13;
                }
            }
        }
        if (this.reportReferenceInfo && this.javadocParser.checkDocComment && (javadoc = this.javadoc) != null) {
            TypeReference[] typeReferenceArr = javadoc.exceptionReferences;
            if (typeReferenceArr != null) {
                for (TypeReference typeReference : typeReferenceArr) {
                    if (typeReference instanceof JavadocSingleTypeReference) {
                        JavadocSingleTypeReference javadocSingleTypeReference = (JavadocSingleTypeReference) typeReference;
                        this.requestor.acceptTypeReference(javadocSingleTypeReference.token, javadocSingleTypeReference.sourceStart);
                    } else if (typeReference instanceof JavadocQualifiedTypeReference) {
                        JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) typeReference;
                        this.requestor.acceptTypeReference(javadocQualifiedTypeReference.tokens, javadocQualifiedTypeReference.sourceStart, javadocQualifiedTypeReference.sourceEnd);
                    }
                }
            }
            Expression[] expressionArr = this.javadoc.seeReferences;
            if (expressionArr != null) {
                for (Expression expression : expressionArr) {
                    acceptJavadocTypeReference(expression);
                    if (expression instanceof JavadocFieldReference) {
                        JavadocFieldReference javadocFieldReference = (JavadocFieldReference) expression;
                        this.requestor.acceptFieldReference(javadocFieldReference.token, javadocFieldReference.sourceStart);
                        Expression expression2 = javadocFieldReference.receiver;
                        if (expression2 != null && !expression2.isThis()) {
                            acceptJavadocTypeReference(javadocFieldReference.receiver);
                        }
                    } else if (expression instanceof JavadocMessageSend) {
                        JavadocMessageSend javadocMessageSend = (JavadocMessageSend) expression;
                        Expression[] expressionArr2 = javadocMessageSend.arguments;
                        int length = expressionArr2 == null ? 0 : expressionArr2.length;
                        this.requestor.acceptMethodReference(javadocMessageSend.selector, length, javadocMessageSend.sourceStart);
                        this.requestor.acceptConstructorReference(javadocMessageSend.selector, length, javadocMessageSend.sourceStart);
                        Expression expression3 = javadocMessageSend.receiver;
                        if (expression3 != null && !expression3.isThis()) {
                            acceptJavadocTypeReference(javadocMessageSend.receiver);
                        }
                    } else if (expression instanceof JavadocAllocationExpression) {
                        JavadocAllocationExpression javadocAllocationExpression = (JavadocAllocationExpression) expression;
                        Expression[] expressionArr3 = javadocAllocationExpression.arguments;
                        int length2 = expressionArr3 == null ? 0 : expressionArr3.length;
                        TypeReference typeReference2 = javadocAllocationExpression.type;
                        if (typeReference2 != null) {
                            char[][] parameterizedTypeName = typeReference2.getParameterizedTypeName();
                            this.requestor.acceptConstructorReference(parameterizedTypeName[parameterizedTypeName.length - 1], length2, javadocAllocationExpression.sourceStart);
                            if (!javadocAllocationExpression.type.isThis()) {
                                acceptJavadocTypeReference(javadocAllocationExpression.type);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public void classInstanceCreation(boolean z10) {
        boolean z11 = this.reportReferenceInfo;
        this.reportReferenceInfo = false;
        super.classInstanceCreation(z10);
        this.reportReferenceInfo = z11;
        if (z11) {
            AllocationExpression allocationExpression = (AllocationExpression) this.expressionStack[this.expressionPtr];
            TypeReference typeReference = allocationExpression.type;
            ISourceElementRequestor iSourceElementRequestor = this.requestor;
            char[] concatWith = typeReference instanceof SingleTypeReference ? ((SingleTypeReference) typeReference).token : CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
            Expression[] expressionArr = allocationExpression.arguments;
            iSourceElementRequestor.acceptConstructorReference(concatWith, expressionArr != null ? expressionArr.length : 0, allocationExpression.sourceStart);
        }
    }

    @Override
    public void consumeAnnotationAsModifier() {
        super.consumeAnnotationAsModifier();
        Annotation annotation = (Annotation) this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(annotation.type.getTypeName(), annotation.sourceStart, annotation.sourceEnd);
        }
    }

    @Override
    public void consumeAnnotationTypeDeclarationHeaderName() {
        int i10 = this.astPtr;
        super.consumeAnnotationTypeDeclarationHeaderName();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() {
        int i10 = this.astPtr;
        super.consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeCatchFormalParameter() {
        super.consumeCatchFormalParameter();
        flushCommentsDefinedPriorTo(this.scanner.currentPosition);
    }

    @Override
    public void consumeClassHeaderName1() {
        int i10 = this.astPtr;
        super.consumeClassHeaderName1();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        boolean z10 = this.reportReferenceInfo;
        this.reportReferenceInfo = false;
        super.consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
        this.reportReferenceInfo = z10;
        if (z10) {
            AllocationExpression allocationExpression = (AllocationExpression) this.expressionStack[this.expressionPtr];
            TypeReference typeReference = allocationExpression.type;
            ISourceElementRequestor iSourceElementRequestor = this.requestor;
            char[] concatWith = typeReference instanceof SingleTypeReference ? ((SingleTypeReference) typeReference).token : CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
            Expression[] expressionArr = allocationExpression.arguments;
            iSourceElementRequestor.acceptConstructorReference(concatWith, expressionArr != null ? expressionArr.length : 0, allocationExpression.sourceStart);
        }
    }

    @Override
    public void consumeClassInstanceCreationExpressionWithTypeArguments() {
        boolean z10 = this.reportReferenceInfo;
        this.reportReferenceInfo = false;
        super.consumeClassInstanceCreationExpressionWithTypeArguments();
        this.reportReferenceInfo = z10;
        if (z10) {
            AllocationExpression allocationExpression = (AllocationExpression) this.expressionStack[this.expressionPtr];
            TypeReference typeReference = allocationExpression.type;
            ISourceElementRequestor iSourceElementRequestor = this.requestor;
            char[] concatWith = typeReference instanceof SingleTypeReference ? ((SingleTypeReference) typeReference).token : CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
            Expression[] expressionArr = allocationExpression.arguments;
            iSourceElementRequestor.acceptConstructorReference(concatWith, expressionArr != null ? expressionArr.length : 0, allocationExpression.sourceStart);
        }
    }

    @Override
    public void consumeConstructorHeaderName() {
        int i10 = (int) this.identifierPositionStack[this.identifierPtr];
        int i11 = this.astPtr;
        super.consumeConstructorHeaderName();
        int i12 = this.astPtr;
        if (i12 > i11) {
            this.sourceEnds.put(this.astStack[i12], i10);
            rememberCategories();
        }
    }

    @Override
    public void consumeConstructorHeaderNameWithTypeParameters() {
        int i10 = (int) this.identifierPositionStack[this.identifierPtr];
        int i11 = this.astPtr;
        super.consumeConstructorHeaderNameWithTypeParameters();
        int i12 = this.astPtr;
        if (i12 > i11) {
            this.sourceEnds.put(this.astStack[i12], i10);
            rememberCategories();
        }
    }

    @Override
    public void consumeEnumConstantNoClassBody() {
        super.consumeEnumConstantNoClassBody();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (aSTNode instanceof FieldDeclaration) {
                this.sourceEnds.put(aSTNode, this.scanner.currentPosition - 1);
                rememberCategories();
            }
        }
    }

    @Override
    public void consumeEnumConstantWithClassBody() {
        super.consumeEnumConstantWithClassBody();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (aSTNode instanceof FieldDeclaration) {
                this.sourceEnds.put(aSTNode, this.scanner.currentPosition - 1);
                rememberCategories();
            }
        }
    }

    @Override
    public void consumeEnumHeaderName() {
        int i10 = this.astPtr;
        super.consumeEnumHeaderName();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeEnumHeaderNameWithTypeParameters() {
        int i10 = this.astPtr;
        super.consumeEnumHeaderNameWithTypeParameters();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeExitVariableWithInitialization() {
        super.consumeExitVariableWithInitialization();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (aSTNode instanceof FieldDeclaration) {
                this.sourceEnds.put(aSTNode, this.scanner.currentPosition - 1);
                rememberCategories();
            }
        }
    }

    @Override
    public void consumeExitVariableWithoutInitialization() {
        super.consumeExitVariableWithoutInitialization();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (aSTNode instanceof FieldDeclaration) {
                this.sourceEnds.put(aSTNode, this.scanner.currentPosition - 1);
                rememberCategories();
            }
        }
    }

    @Override
    public void consumeFieldAccess(boolean z10) {
        super.consumeFieldAccess(z10);
        FieldReference fieldReference = (FieldReference) this.expressionStack[this.expressionPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptFieldReference(fieldReference.token, fieldReference.sourceStart);
        }
    }

    @Override
    public void consumeFormalParameter(boolean z10) {
        super.consumeFormalParameter(z10);
        flushCommentsDefinedPriorTo(this.scanner.currentPosition);
    }

    @Override
    public void consumeInterfaceHeaderName1() {
        int i10 = this.astPtr;
        super.consumeInterfaceHeaderName1();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeMarkerAnnotation(boolean z10) {
        super.consumeMarkerAnnotation(z10);
        Annotation annotation = (Annotation) (z10 ? this.typeAnnotationStack[this.typeAnnotationPtr] : this.expressionStack[this.expressionPtr]);
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(annotation.type.getTypeName(), annotation.sourceStart, annotation.sourceEnd);
        }
    }

    @Override
    public void consumeMemberValuePair() {
        super.consumeMemberValuePair();
        MemberValuePair memberValuePair = (MemberValuePair) this.astStack[this.astPtr];
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(memberValuePair.name, 0, memberValuePair.sourceStart);
        }
    }

    @Override
    public void consumeMethodHeaderName(boolean z10) {
        int i10 = (int) this.identifierPositionStack[this.identifierPtr];
        int i11 = this.astPtr;
        super.consumeMethodHeaderName(z10);
        int i12 = this.astPtr;
        if (i12 > i11) {
            this.sourceEnds.put(this.astStack[i12], i10);
            rememberCategories();
        }
        flushCommentsDefinedPriorTo(this.scanner.currentPosition);
    }

    @Override
    public void consumeMethodHeaderNameWithTypeParameters(boolean z10) {
        int i10 = (int) this.identifierPositionStack[this.identifierPtr];
        int i11 = this.astPtr;
        super.consumeMethodHeaderNameWithTypeParameters(z10);
        int i12 = this.astPtr;
        if (i12 > i11) {
            this.sourceEnds.put(this.astStack[i12], i10);
        }
        rememberCategories();
    }

    @Override
    public void consumeMethodInvocationName() {
        super.consumeMethodInvocationName();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        Expression[] expressionArr = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, expressionArr == null ? 0 : expressionArr.length, (int) (messageSend.nameSourcePosition >>> 32));
        }
    }

    @Override
    public void consumeMethodInvocationNameWithTypeArguments() {
        super.consumeMethodInvocationNameWithTypeArguments();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        Expression[] expressionArr = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, expressionArr == null ? 0 : expressionArr.length, (int) (messageSend.nameSourcePosition >>> 32));
        }
    }

    @Override
    public void consumeMethodInvocationPrimary() {
        super.consumeMethodInvocationPrimary();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        Expression[] expressionArr = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, expressionArr == null ? 0 : expressionArr.length, (int) (messageSend.nameSourcePosition >>> 32));
        }
    }

    @Override
    public void consumeMethodInvocationPrimaryWithTypeArguments() {
        super.consumeMethodInvocationPrimaryWithTypeArguments();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        Expression[] expressionArr = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, expressionArr == null ? 0 : expressionArr.length, (int) (messageSend.nameSourcePosition >>> 32));
        }
    }

    @Override
    public void consumeMethodInvocationSuper() {
        super.consumeMethodInvocationSuper();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        Expression[] expressionArr = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, expressionArr == null ? 0 : expressionArr.length, (int) (messageSend.nameSourcePosition >>> 32));
        }
    }

    @Override
    public void consumeMethodInvocationSuperWithTypeArguments() {
        super.consumeMethodInvocationSuperWithTypeArguments();
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        Expression[] expressionArr = messageSend.arguments;
        if (this.reportReferenceInfo) {
            this.requestor.acceptMethodReference(messageSend.selector, expressionArr == null ? 0 : expressionArr.length, (int) (messageSend.nameSourcePosition >>> 32));
        }
    }

    @Override
    public void consumeModuleHeader() {
        int i10 = this.astPtr;
        super.consumeModuleHeader();
        if (this.astPtr > i10) {
            rememberCategories();
        }
    }

    @Override
    public void consumeNormalAnnotation(boolean z10) {
        super.consumeNormalAnnotation(z10);
        Annotation annotation = (Annotation) (z10 ? this.typeAnnotationStack[this.typeAnnotationPtr] : this.expressionStack[this.expressionPtr]);
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(annotation.type.getTypeName(), annotation.sourceStart, annotation.sourceEnd);
        }
    }

    @Override
    public void consumeProvidesStatement() {
        super.consumeProvidesStatement();
        TypeReference typeReference = ((ProvidesStatement) this.astStack[this.astPtr]).serviceInterface;
        this.requestor.acceptTypeReference(typeReference.getTypeName(), typeReference.sourceStart, typeReference.sourceEnd);
    }

    @Override
    public void consumeSingleMemberAnnotation(boolean z10) {
        super.consumeSingleMemberAnnotation(z10);
        SingleMemberAnnotation singleMemberAnnotation = (SingleMemberAnnotation) (z10 ? this.typeAnnotationStack[this.typeAnnotationPtr] : this.expressionStack[this.expressionPtr]);
        if (this.reportReferenceInfo) {
            this.requestor.acceptAnnotationTypeReference(singleMemberAnnotation.type.getTypeName(), singleMemberAnnotation.sourceStart, singleMemberAnnotation.sourceEnd);
            this.requestor.acceptMethodReference(TypeConstants.VALUE, 0, singleMemberAnnotation.sourceStart);
        }
    }

    @Override
    public void consumeSingleStaticImportDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference newImportReference = newImportReference(cArr, jArr, false, 8);
        pushOnAstStack(newImportReference);
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        if (this.currentToken == 26) {
            newImportReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            newImportReference.declarationSourceEnd = newImportReference.sourceEnd;
        }
        newImportReference.declarationEnd = newImportReference.declarationSourceEnd;
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        newImportReference.declarationSourceStart = iArr2[i13];
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            newImportReference.modifiers = 0;
            problemReporter().invalidUsageOfStaticImports(newImportReference);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = newImportReference.declarationSourceEnd + 1;
            this.currentElement = recoveredElement.add(newImportReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            char[][] cArr2 = newImportReference.tokens;
            int length = cArr2.length;
            int i14 = length - 1;
            int i15 = (int) (newImportReference.sourcePositions[i14] >>> 32);
            char[] cArr3 = cArr2[i14];
            this.requestor.acceptFieldReference(cArr3, i15);
            this.requestor.acceptMethodReference(cArr3, 0, i15);
            this.requestor.acceptTypeReference(cArr3, i15);
            if (i14 > 0) {
                char[][] cArr4 = new char[i14];
                System.arraycopy(newImportReference.tokens, 0, cArr4, 0, i14);
                this.requestor.acceptTypeReference(cArr4, newImportReference.sourceStart, (int) newImportReference.sourcePositions[length - 2]);
            }
        }
    }

    @Override
    public void consumeSingleTypeImportDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference newImportReference = newImportReference(cArr, jArr, false, 0);
        pushOnAstStack(newImportReference);
        if (this.currentToken == 26) {
            newImportReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            newImportReference.declarationSourceEnd = newImportReference.sourceEnd;
        }
        int i13 = newImportReference.declarationSourceEnd;
        newImportReference.declarationEnd = i13;
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        newImportReference.declarationSourceStart = iArr2[i14];
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i13 + 1;
            this.currentElement = recoveredElement.add(newImportReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            this.requestor.acceptTypeReference(newImportReference.tokens, newImportReference.sourceStart, newImportReference.sourceEnd);
        }
    }

    @Override
    public void consumeStaticImportOnDemandDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, true, 8);
        pushOnAstStack(importReference);
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        importReference.trailingStarPosition = iArr2[i13];
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        importReference.declarationEnd = importReference.declarationSourceEnd;
        this.intPtr = i13 - 2;
        importReference.declarationSourceStart = iArr2[i14];
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            importReference.modifiers = 0;
            problemReporter().invalidUsageOfStaticImports(importReference);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = importReference.declarationSourceEnd + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            this.requestor.acceptTypeReference(importReference.tokens, importReference.sourceStart, importReference.sourceEnd);
        }
    }

    @Override
    public void consumeTypeElidedLambdaParameter(boolean z10) {
        super.consumeTypeElidedLambdaParameter(z10);
        flushCommentsDefinedPriorTo(this.scanner.currentPosition);
    }

    @Override
    public void consumeTypeImportOnDemandDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, true, 0);
        pushOnAstStack(importReference);
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        importReference.trailingStarPosition = iArr2[i13];
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        int i15 = importReference.declarationSourceEnd;
        importReference.declarationEnd = i15;
        this.intPtr = i13 - 2;
        importReference.declarationSourceStart = iArr2[i14];
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i15 + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
        if (this.reportReferenceInfo) {
            this.requestor.acceptUnknownReference(importReference.tokens, importReference.sourceStart, importReference.sourceEnd);
        }
    }

    @Override
    public void consumeUsesStatement() {
        super.consumeUsesStatement();
        UsesStatement usesStatement = (UsesStatement) this.astStack[this.astPtr];
        this.requestor.acceptTypeReference(usesStatement.serviceInterface.getTypeName(), usesStatement.sourceStart, usesStatement.sourceEnd);
    }

    @Override
    public void consumeWithClause() {
        super.consumeWithClause();
        ProvidesStatement providesStatement = (ProvidesStatement) this.astStack[this.astPtr];
        int i10 = 0;
        while (true) {
            TypeReference[] typeReferenceArr = providesStatement.implementations;
            if (i10 >= typeReferenceArr.length) {
                return;
            }
            TypeReference typeReference = typeReferenceArr[i10];
            this.requestor.acceptTypeReference(typeReference.getTypeName(), typeReference.sourceStart, typeReference.sourceEnd);
            i10++;
        }
    }

    @Override
    public MethodDeclaration convertToMethodDeclaration(ConstructorDeclaration constructorDeclaration, CompilationResult compilationResult) {
        MethodDeclaration convertToMethodDeclaration = super.convertToMethodDeclaration(constructorDeclaration, compilationResult);
        int removeKey = this.sourceEnds.removeKey(constructorDeclaration);
        if (removeKey != -1) {
            this.sourceEnds.put(convertToMethodDeclaration, removeKey);
        }
        char[][] cArr = (char[][]) this.nodesToCategories.remove(constructorDeclaration);
        if (cArr != null) {
            this.nodesToCategories.put(convertToMethodDeclaration, cArr);
        }
        return convertToMethodDeclaration;
    }

    @Override
    public CompilationUnitDeclaration endParse(int i10) {
        Scanner scanner = this.scanner;
        if (scanner.recordLineSeparator) {
            this.requestor.acceptLineSeparatorPositions(scanner.getLineEnds());
        }
        if (this.compilationUnit != null) {
            return super.endParse(i10);
        }
        return null;
    }

    @Override
    public TypeReference getTypeReference(int i10) {
        TypeReference typeReference;
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        this.identifierLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 < 0) {
            TypeReference baseTypeReference = TypeReference.baseTypeReference(-i12, i10, getAnnotationsOnDimensions(i10));
            int[] iArr2 = this.intStack;
            int i13 = this.intPtr;
            int i14 = i13 - 1;
            this.intPtr = i14;
            baseTypeReference.sourceStart = iArr2[i13];
            if (i10 == 0) {
                this.intPtr = i13 - 2;
                baseTypeReference.sourceEnd = iArr2[i14];
            } else {
                this.intPtr = i13 - 2;
                baseTypeReference.sourceEnd = this.rBracketPosition;
            }
            typeReference = baseTypeReference;
            if (this.reportReferenceInfo) {
                this.requestor.acceptTypeReference(baseTypeReference.getParameterizedTypeName(), baseTypeReference.sourceStart, baseTypeReference.sourceEnd);
                typeReference = baseTypeReference;
            }
        } else {
            int[] iArr3 = this.genericsIdentifiersLengthStack;
            int i15 = this.genericsIdentifiersLengthPtr;
            this.genericsIdentifiersLengthPtr = i15 - 1;
            int i16 = iArr3[i15];
            if (i12 == i16) {
                int[] iArr4 = this.genericsLengthStack;
                int i17 = this.genericsLengthPtr;
                if (iArr4[i17] == 0) {
                    if (i12 == 1) {
                        this.genericsLengthPtr = i17 - 1;
                        if (i10 == 0) {
                            char[][] cArr = this.identifierStack;
                            int i18 = this.identifierPtr;
                            char[] cArr2 = cArr[i18];
                            long[] jArr = this.identifierPositionStack;
                            this.identifierPtr = i18 - 1;
                            SingleTypeReference singleTypeReference = new SingleTypeReference(cArr2, jArr[i18]);
                            typeReference = singleTypeReference;
                            if (this.reportReferenceInfo) {
                                this.requestor.acceptTypeReference(singleTypeReference.token, singleTypeReference.sourceStart);
                                typeReference = singleTypeReference;
                            }
                        } else {
                            Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(i10);
                            char[][] cArr3 = this.identifierStack;
                            int i19 = this.identifierPtr;
                            char[] cArr4 = cArr3[i19];
                            long[] jArr2 = this.identifierPositionStack;
                            this.identifierPtr = i19 - 1;
                            ArrayTypeReference arrayTypeReference = new ArrayTypeReference(cArr4, i10, annotationsOnDimensions, jArr2[i19]);
                            arrayTypeReference.sourceEnd = this.endPosition;
                            if (annotationsOnDimensions != null) {
                                arrayTypeReference.bits |= 1048576;
                            }
                            if (this.reportReferenceInfo) {
                                this.requestor.acceptTypeReference(arrayTypeReference.token, arrayTypeReference.sourceStart);
                            }
                            typeReference = arrayTypeReference;
                        }
                    } else {
                        this.genericsLengthPtr = i17 - 1;
                        char[][] cArr5 = new char[i12];
                        int i20 = this.identifierPtr - i12;
                        this.identifierPtr = i20;
                        long[] jArr3 = new long[i12];
                        System.arraycopy(this.identifierStack, i20 + 1, cArr5, 0, i12);
                        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr3, 0, i12);
                        if (i10 == 0) {
                            QualifiedTypeReference qualifiedTypeReference = new QualifiedTypeReference(cArr5, jArr3);
                            typeReference = qualifiedTypeReference;
                            if (this.reportReferenceInfo) {
                                this.requestor.acceptTypeReference(qualifiedTypeReference.tokens, qualifiedTypeReference.sourceStart, qualifiedTypeReference.sourceEnd);
                                typeReference = qualifiedTypeReference;
                            }
                        } else {
                            Annotation[][] annotationsOnDimensions2 = getAnnotationsOnDimensions(i10);
                            ArrayQualifiedTypeReference arrayQualifiedTypeReference = new ArrayQualifiedTypeReference(cArr5, i10, annotationsOnDimensions2, jArr3);
                            int i21 = this.endPosition;
                            arrayQualifiedTypeReference.sourceEnd = i21;
                            if (annotationsOnDimensions2 != null) {
                                arrayQualifiedTypeReference.bits |= 1048576;
                            }
                            if (this.reportReferenceInfo) {
                                this.requestor.acceptTypeReference(arrayQualifiedTypeReference.tokens, arrayQualifiedTypeReference.sourceStart, i21);
                            }
                            typeReference = arrayQualifiedTypeReference;
                        }
                    }
                }
            }
            TypeReference typeReferenceForGenericType = getTypeReferenceForGenericType(i10, i12, i16);
            if (this.reportReferenceInfo) {
                if (i12 == 1 && i16 == 1) {
                    ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReferenceForGenericType;
                    this.requestor.acceptTypeReference(parameterizedSingleTypeReference.token, parameterizedSingleTypeReference.sourceStart);
                } else {
                    ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) typeReferenceForGenericType;
                    this.requestor.acceptTypeReference(parameterizedQualifiedTypeReference.tokens, parameterizedQualifiedTypeReference.sourceStart, parameterizedQualifiedTypeReference.sourceEnd);
                }
            }
            typeReference = typeReferenceForGenericType;
        }
        int annotatableLevels = typeReference.getAnnotatableLevels();
        for (int i22 = annotatableLevels - 1; i22 >= 0; i22--) {
            int[] iArr5 = this.typeAnnotationLengthStack;
            int i23 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i23 - 1;
            int i24 = iArr5[i23];
            if (i24 != 0) {
                if (typeReference.annotations == null) {
                    typeReference.annotations = new Annotation[annotatableLevels];
                }
                Annotation[] annotationArr = this.typeAnnotationStack;
                int i25 = this.typeAnnotationPtr - i24;
                this.typeAnnotationPtr = i25;
                Annotation[] annotationArr2 = new Annotation[i24];
                typeReference.annotations[i22] = annotationArr2;
                System.arraycopy(annotationArr, i25 + 1, annotationArr2, 0, i24);
                if (i22 == 0) {
                    typeReference.sourceStart = typeReference.annotations[0][0].sourceStart;
                }
                typeReference.bits |= 1048576;
            }
        }
        return typeReference;
    }

    @Override
    public NameReference getUnspecifiedReference(boolean z10) {
        if (z10) {
            consumeNonTypeUseName();
        }
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            char[] cArr2 = cArr[i12];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i12 - 1;
            SingleNameReference newSingleNameReference = newSingleNameReference(cArr2, jArr[i12]);
            if (this.reportReferenceInfo) {
                addUnknownRef(newSingleNameReference);
            }
            return newSingleNameReference;
        }
        char[][] cArr3 = new char[i11];
        int i13 = this.identifierPtr - i11;
        this.identifierPtr = i13;
        System.arraycopy(this.identifierStack, i13 + 1, cArr3, 0, i11);
        long[] jArr2 = new long[i11];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i11);
        long[] jArr3 = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        QualifiedNameReference newQualifiedNameReference = newQualifiedNameReference(cArr3, jArr2, (int) (jArr3[i14 + 1] >> 32), (int) jArr3[i14 + i11]);
        if (this.reportReferenceInfo) {
            addUnknownRef(newQualifiedNameReference);
        }
        return newQualifiedNameReference;
    }

    @Override
    public NameReference getUnspecifiedReferenceOptimized() {
        consumeNonTypeUseName();
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            char[] cArr2 = cArr[i12];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i12 - 1;
            SingleNameReference newSingleNameReference = newSingleNameReference(cArr2, jArr[i12]);
            newSingleNameReference.bits = (newSingleNameReference.bits & (-8)) | 3;
            if (this.reportReferenceInfo) {
                addUnknownRef(newSingleNameReference);
            }
            return newSingleNameReference;
        }
        char[][] cArr3 = new char[i11];
        int i13 = this.identifierPtr - i11;
        this.identifierPtr = i13;
        System.arraycopy(this.identifierStack, i13 + 1, cArr3, 0, i11);
        long[] jArr2 = new long[i11];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i11);
        long[] jArr3 = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        QualifiedNameReference newQualifiedNameReference = newQualifiedNameReference(cArr3, jArr2, (int) (jArr3[i14 + 1] >> 32), (int) jArr3[i14 + i11]);
        newQualifiedNameReference.bits = (newQualifiedNameReference.bits & (-8)) | 3;
        if (this.reportReferenceInfo) {
            addUnknownRef(newQualifiedNameReference);
        }
        return newQualifiedNameReference;
    }

    public ImportReference newImportReference(char[][] cArr, long[] jArr, boolean z10, int i10) {
        return new ImportReference(cArr, jArr, z10, i10);
    }

    public QualifiedNameReference newQualifiedNameReference(char[][] cArr, long[] jArr, int i10, int i11) {
        return new QualifiedNameReference(cArr, jArr, i10, i11);
    }

    public SingleNameReference newSingleNameReference(char[] cArr, long j10) {
        return new SingleNameReference(cArr, j10);
    }

    public CompilationUnitDeclaration parseCompilationUnit(ICompilationUnit iCompilationUnit, boolean z10, IProgressMonitor iProgressMonitor) {
        CompilationUnitDeclaration compilationUnitDeclaration;
        boolean z11 = this.diet;
        int i10 = this.dietInt;
        try {
            try {
                this.diet = true;
                this.dietInt = 0;
                this.reportReferenceInfo = z10;
                CompilationResult compilationResult = new CompilationResult(iCompilationUnit, 0, 0, this.options.maxProblemsPerUnit);
                compilationUnitDeclaration = parse(iCompilationUnit, compilationResult);
                if (iProgressMonitor != null) {
                    try {
                        if (iProgressMonitor.isCanceled()) {
                            throw new OperationCanceledException(Messages.operation_cancelled);
                        }
                    } catch (AbortCompilation unused) {
                        this.diet = z11;
                        this.dietInt = i10;
                        reset();
                        return compilationUnitDeclaration;
                    }
                }
                if (this.scanner.recordLineSeparator) {
                    this.requestor.acceptLineSeparatorPositions(compilationResult.getLineSeparatorPositions());
                }
                Scanner scanner = this.scanner;
                int i11 = scanner.initialPosition;
                int i12 = scanner.eofPosition;
                if (this.reportLocalDeclarations || z10) {
                    this.diet = false;
                    getMethodBodies(compilationUnitDeclaration);
                }
                this.scanner.resetTo(i11, i12);
                SourceElementNotifier sourceElementNotifier = this.notifier;
                Scanner scanner2 = this.scanner;
                sourceElementNotifier.notifySourceElementRequestor(compilationUnitDeclaration, scanner2.initialPosition, scanner2.eofPosition, this.reportReferenceInfo, this.sourceEnds, this.nodesToCategories);
                this.diet = z11;
                this.dietInt = i10;
                reset();
                return compilationUnitDeclaration;
            } catch (Throwable th2) {
                this.diet = z11;
                this.dietInt = i10;
                reset();
                throw th2;
            }
        } catch (AbortCompilation unused2) {
            compilationUnitDeclaration = null;
        }
    }

    public void setRequestor(ISourceElementRequestor iSourceElementRequestor) {
        this.requestor = iSourceElementRequestor;
        this.notifier.requestor = iSourceElementRequestor;
    }

    public SourceElementParser(ISourceElementRequestor iSourceElementRequestor, IProblemFactory iProblemFactory, CompilerOptions compilerOptions, boolean z10, boolean z11, boolean z12) {
        super(new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, iProblemFactory), z11);
        this.sourceEnds = new HashtableOfObjectToInt();
        this.nodesToCategories = new HashMap();
        this.useSourceJavadocParser = true;
        this.reportLocalDeclarations = z10;
        this.problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, iProblemFactory) {
            @Override
            public void record(CategorizedProblem categorizedProblem, CompilationResult compilationResult, ReferenceContext referenceContext, boolean z13) {
                compilationResult.record(categorizedProblem, referenceContext, z13);
                SourceElementParser.this.requestor.acceptProblem(categorizedProblem);
            }
        };
        this.requestor = iSourceElementRequestor;
        this.options = compilerOptions;
        this.notifier = new SourceElementNotifier(iSourceElementRequestor, z10);
        this.useSourceJavadocParser = z12;
        if (z12) {
            this.javadocParser = new SourceJavadocParser(this);
        }
    }
}
