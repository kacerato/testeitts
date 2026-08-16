package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class DocumentElementParser extends Parser {
    private int declarationSourceStart;
    private int extendsDim;
    int intArrayPtr;
    int[][] intArrayStack;
    private int lastFieldBodyEndPosition;
    private int lastFieldEndPosition;
    IDocumentElementRequestor requestor;
    private long selectorSourcePositions;
    private int typeDims;
    private int typeStartPosition;

    public DocumentElementParser(IDocumentElementRequestor iDocumentElementRequestor, IProblemFactory iProblemFactory, CompilerOptions compilerOptions) {
        super(new ProblemReporter(DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, iProblemFactory), false);
        this.requestor = iDocumentElementRequestor;
        this.intArrayStack = new int[30];
        this.options = compilerOptions;
        this.javadocParser.checkDocComment = false;
        setMethodsFullRecovery(false);
        setStatementsRecovery(false);
    }

    private boolean isLocalDeclaration() {
        for (int i10 = this.nestedType; i10 >= 0; i10--) {
            if (this.nestedMethod[i10] != 0) {
                return true;
            }
        }
        return false;
    }

    private char[] returnTypeName(TypeReference typeReference) {
        int dimensions = typeReference.dimensions();
        if (dimensions == 0) {
            return CharOperation.concatWith(typeReference.getTypeName(), '.');
        }
        char[] cArr = new char[dimensions * 2];
        for (int i10 = 0; i10 < dimensions; i10++) {
            int i11 = i10 * 2;
            cArr[i11] = '[';
            cArr[i11 + 1] = JavaElement.JEM_TYPE_PARAMETER;
        }
        return CharOperation.concat(CharOperation.concatWith(typeReference.getTypeName(), '.'), cArr);
    }

    @Override
    public void checkComment() {
        boolean z10;
        int i10;
        pushOnIntArrayStack(getJavaDocPositions());
        int i11 = this.scanner.commentPtr;
        for (int i12 = i11; i12 >= 0; i12--) {
            Scanner scanner = this.scanner;
            int i13 = scanner.commentStarts[i12];
            if (i13 >= 0 && scanner.commentStops[i12] >= 0 && ((i10 = this.modifiersSourceStart) == -1 || i10 >= i13)) {
                z10 = this.javadocParser.checkDeprecation(i12);
                break;
            }
        }
        z10 = false;
        if (z10) {
            checkAndSetModifiers(1048576);
        }
        if (i11 >= 0) {
            int i14 = this.scanner.commentStarts[0];
            this.declarationSourceStart = i14;
            if (i14 < 0) {
                this.declarationSourceStart = -i14;
            }
        }
    }

    @Override
    public void consumeCatchFormalParameter() {
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        ASTNode[] aSTNodeArr = this.astStack;
        int i12 = this.astPtr;
        this.astPtr = i12 - 1;
        TypeReference typeReference = (TypeReference) aSTNodeArr[i12];
        this.intPtr = i11 - 4;
        Argument argument = new Argument(cArr2, j10, typeReference, this.intStack[this.intPtr + 1]);
        argument.bits &= -5;
        int[] iArr = this.expressionLengthStack;
        int i13 = this.expressionLengthPtr;
        this.expressionLengthPtr = i13 - 1;
        int i14 = iArr[i13];
        if (i14 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i15 = this.expressionPtr - i14;
            this.expressionPtr = i15;
            Annotation[] annotationArr = new Annotation[i14];
            argument.annotations = annotationArr;
            System.arraycopy(expressionArr, i15 + 1, annotationArr, 0, i14);
        }
        pushOnAstStack(argument);
        this.intArrayPtr--;
    }

    @Override
    public void consumeClassBodyDeclaration() {
        super.consumeClassBodyDeclaration();
        Initializer initializer = (Initializer) this.astStack[this.astPtr];
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = initializer.declarationSourceStart;
        int i11 = initializer.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        int[] iArr2 = iArr[i12];
        int i13 = this.modifiersSourceStart;
        Block block = initializer.block;
        iDocumentElementRequestor.acceptInitializer(i10, i11, iArr2, 0, i13, block.sourceStart, block.sourceEnd);
    }

    @Override
    public void consumeClassDeclaration() {
        super.consumeClassDeclaration();
        if (isLocalDeclaration()) {
            return;
        }
        this.requestor.exitClass(this.endStatementPosition, ((TypeDeclaration) this.astStack[this.astPtr]).declarationSourceEnd);
    }

    @Override
    public void consumeClassHeader() {
        char[][] cArr;
        int[] iArr;
        int[] iArr2;
        super.consumeClassHeader();
        if (isLocalDeclaration()) {
            this.intArrayPtr--;
            return;
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        if (typeReferenceArr != null) {
            int length = typeReferenceArr.length;
            char[][] cArr2 = new char[length];
            int[] iArr3 = new int[length];
            int[] iArr4 = new int[length];
            for (int i10 = 0; i10 < length; i10++) {
                TypeReference typeReference = typeReferenceArr[i10];
                cArr2[i10] = CharOperation.concatWith(typeReference.getTypeName(), '.');
                iArr3[i10] = typeReference.sourceStart;
                iArr4[i10] = typeReference.sourceEnd;
            }
            cArr = cArr2;
            iArr = iArr3;
            iArr2 = iArr4;
        } else {
            cArr = null;
            iArr = null;
            iArr2 = null;
        }
        this.scanner.commentPtr = -1;
        TypeReference typeReference2 = typeDeclaration.superclass;
        if (typeReference2 == null) {
            IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
            int i11 = typeDeclaration.declarationSourceStart;
            int[][] iArr5 = this.intArrayStack;
            int i12 = this.intArrayPtr;
            this.intArrayPtr = i12 - 1;
            iDocumentElementRequestor.enterClass(i11, iArr5[i12], typeDeclaration.modifiers, typeDeclaration.modifiersSourceStart, this.typeStartPosition, typeDeclaration.name, typeDeclaration.sourceStart, typeDeclaration.sourceEnd, null, -1, -1, cArr, iArr, iArr2, r2.currentPosition - 1);
            return;
        }
        IDocumentElementRequestor iDocumentElementRequestor2 = this.requestor;
        int i13 = typeDeclaration.declarationSourceStart;
        int[][] iArr6 = this.intArrayStack;
        int i14 = this.intArrayPtr;
        this.intArrayPtr = i14 - 1;
        iDocumentElementRequestor2.enterClass(i13, iArr6[i14], typeDeclaration.modifiers, typeDeclaration.modifiersSourceStart, this.typeStartPosition, typeDeclaration.name, typeDeclaration.sourceStart, typeDeclaration.sourceEnd, CharOperation.concatWith(typeReference2.getTypeName(), '.'), typeReference2.sourceStart, typeReference2.sourceEnd, cArr, iArr, iArr2, this.scanner.currentPosition - 1);
    }

    @Override
    public void consumeClassHeaderName1() {
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        typeDeclaration.name = cArr[i11];
        this.identifierLengthPtr--;
        int[] iArr2 = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        int i13 = iArr2[i12];
        typeDeclaration.declarationSourceStart = i13;
        this.typeStartPosition = i13;
        int i14 = i12 - 3;
        this.intPtr = i14;
        int i15 = iArr2[i12 - 2];
        int i16 = i12 - 4;
        this.intPtr = i16;
        typeDeclaration.modifiersSourceStart = iArr2[i14];
        this.intPtr = i12 - 5;
        typeDeclaration.modifiers = iArr2[i16];
        if (i13 > i15) {
            typeDeclaration.declarationSourceStart = i15;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i17 = this.expressionLengthPtr;
        this.expressionLengthPtr = i17 - 1;
        int i18 = iArr3[i17];
        if (i18 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i19 = this.expressionPtr - i18;
            this.expressionPtr = i19;
            Annotation[] annotationArr = new Annotation[i18];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i19 + 1, annotationArr, 0, i18);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        pushOnAstStack(typeDeclaration);
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    @Override
    public void consumeCompilationUnit() {
        this.requestor.exitCompilationUnit(this.scanner.source.length - 1);
    }

    @Override
    public void consumeConstructorDeclaration() {
        super.consumeConstructorDeclaration();
        if (isLocalDeclaration()) {
            return;
        }
        this.requestor.exitConstructor(this.endStatementPosition, ((ConstructorDeclaration) this.astStack[this.astPtr]).declarationSourceEnd);
    }

    @Override
    public void consumeConstructorHeader() {
        char[][] cArr;
        int[] iArr;
        int[] iArr2;
        char[][] cArr2;
        int[] iArr3;
        int[] iArr4;
        char[][] cArr3;
        int[] iArr5;
        int[] iArr6;
        super.consumeConstructorHeader();
        if (isLocalDeclaration()) {
            this.intArrayPtr--;
            return;
        }
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) this.astStack[this.astPtr];
        Argument[] argumentArr = constructorDeclaration.arguments;
        if (argumentArr != null) {
            int length = argumentArr.length;
            char[][] cArr4 = new char[length];
            char[][] cArr5 = new char[length];
            int[] iArr7 = new int[length];
            int[] iArr8 = new int[length];
            int[] iArr9 = new int[length];
            int[] iArr10 = new int[length];
            for (int i10 = 0; i10 < length; i10++) {
                Argument argument = argumentArr[i10];
                TypeReference typeReference = argument.type;
                cArr4[i10] = returnTypeName(typeReference);
                cArr5[i10] = argument.name;
                iArr7[i10] = argument.sourceStart;
                iArr8[i10] = argument.sourceEnd;
                iArr9[i10] = typeReference.sourceStart;
                iArr10[i10] = typeReference.sourceEnd;
            }
            cArr = cArr4;
            cArr2 = cArr5;
            iArr3 = iArr7;
            iArr4 = iArr8;
            iArr = iArr9;
            iArr2 = iArr10;
        } else {
            cArr = null;
            iArr = null;
            iArr2 = null;
            cArr2 = null;
            iArr3 = null;
            iArr4 = null;
        }
        TypeReference[] typeReferenceArr = constructorDeclaration.thrownExceptions;
        if (typeReferenceArr != null) {
            int length2 = typeReferenceArr.length;
            char[][] cArr6 = new char[length2];
            int[] iArr11 = new int[length2];
            int[] iArr12 = new int[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                TypeReference typeReference2 = typeReferenceArr[i11];
                cArr6[i11] = CharOperation.concatWith(typeReference2.getTypeName(), '.');
                iArr11[i11] = typeReference2.sourceStart;
                iArr12[i11] = typeReference2.sourceEnd;
            }
            cArr3 = cArr6;
            iArr5 = iArr11;
            iArr6 = iArr12;
        } else {
            cArr3 = null;
            iArr5 = null;
            iArr6 = null;
        }
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i12 = constructorDeclaration.declarationSourceStart;
        int[][] iArr13 = this.intArrayStack;
        int i13 = this.intArrayPtr;
        this.intArrayPtr = i13 - 1;
        iDocumentElementRequestor.enterConstructor(i12, iArr13[i13], constructorDeclaration.modifiers, constructorDeclaration.modifiersSourceStart, constructorDeclaration.selector, constructorDeclaration.sourceStart, (int) (this.selectorSourcePositions & 4294967295L), cArr, iArr, iArr2, cArr2, iArr3, iArr4, this.rParenPos, cArr3, iArr5, iArr6, this.scanner.currentPosition - 1);
    }

    @Override
    public void consumeConstructorHeaderName() {
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(this.compilationUnit.compilationResult);
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        constructorDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        this.selectorSourcePositions = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        int i12 = i11 - 1;
        this.intPtr = i12;
        constructorDeclaration.declarationSourceStart = iArr[i11];
        int i13 = i11 - 2;
        this.intPtr = i13;
        constructorDeclaration.modifiersSourceStart = iArr[i12];
        this.intPtr = i11 - 3;
        constructorDeclaration.modifiers = iArr[i13];
        int[] iArr2 = this.expressionLengthStack;
        int i14 = this.expressionLengthPtr;
        this.expressionLengthPtr = i14 - 1;
        int i15 = iArr2[i14];
        if (i15 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i16 = this.expressionPtr - i15;
            this.expressionPtr = i16;
            Annotation[] annotationArr = new Annotation[i15];
            constructorDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i16 + 1, annotationArr, 0, i15);
        }
        constructorDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        constructorDeclaration.sourceStart = (int) (this.selectorSourcePositions >>> 32);
        pushOnAstStack(constructorDeclaration);
        int i17 = this.lParenPos;
        constructorDeclaration.sourceEnd = i17;
        constructorDeclaration.bodyStart = i17 + 1;
    }

    @Override
    public void consumeDefaultModifiers() {
        checkComment();
        pushOnIntStack(this.modifiers);
        pushOnIntStack(-1);
        int i10 = this.declarationSourceStart;
        if (i10 < 0) {
            i10 = this.scanner.startPosition;
        }
        pushOnIntStack(i10);
        resetModifiers();
        pushOnExpressionStackLengthStack(0);
    }

    @Override
    public void consumeDiet() {
        super.consumeDiet();
        pushOnIntArrayStack(getJavaDocPositions());
    }

    @Override
    public void consumeEnhancedForStatementHeaderInit(boolean z10) {
        int i10;
        int i11;
        int i12;
        char[][] cArr = this.identifierStack;
        int i13 = this.identifierPtr;
        char[] cArr2 = cArr[i13];
        long j10 = this.identifierPositionStack[i13];
        LocalDeclaration createLocalDeclaration = createLocalDeclaration(cArr2, (int) (j10 >>> 32), (int) j10);
        createLocalDeclaration.declarationSourceEnd = createLocalDeclaration.declarationEnd;
        int[] iArr = this.intStack;
        int i14 = this.intPtr;
        int i15 = i14 - 1;
        this.intPtr = i15;
        int i16 = iArr[i14];
        this.identifierPtr--;
        this.identifierLengthPtr--;
        if (z10) {
            int i17 = i14 - 2;
            this.intPtr = i17;
            i11 = iArr[i15];
            int i18 = i14 - 3;
            this.intPtr = i18;
            i12 = iArr[i17];
            this.intPtr = i14 - 4;
            i10 = iArr[i18];
        } else {
            this.intPtr = i14 - 4;
            i10 = 0;
            i11 = 0;
            i12 = 0;
        }
        int i19 = this.intPtr;
        this.intPtr = i19 - 1;
        TypeReference typeReference = getTypeReference(iArr[i19] + i16);
        int[] iArr2 = this.expressionLengthStack;
        int i20 = this.expressionLengthPtr;
        this.expressionLengthPtr = i20 - 1;
        int i21 = iArr2[i20];
        if (i21 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i22 = this.expressionPtr - i21;
            this.expressionPtr = i22;
            Annotation[] annotationArr = new Annotation[i21];
            createLocalDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i22 + 1, annotationArr, 0, i21);
            createLocalDeclaration.bits |= 1048576;
        }
        if (z10) {
            createLocalDeclaration.declarationSourceStart = i11;
            createLocalDeclaration.modifiersSourceStart = i12;
            createLocalDeclaration.modifiers = i10;
        } else {
            createLocalDeclaration.declarationSourceStart = typeReference.sourceStart;
        }
        createLocalDeclaration.type = typeReference;
        createLocalDeclaration.bits |= typeReference.bits & 1048576;
        int[] iArr3 = this.intStack;
        int i23 = this.intPtr;
        this.intPtr = i23 - 1;
        ForeachStatement foreachStatement = new ForeachStatement(createLocalDeclaration, iArr3[i23]);
        pushOnAstStack(foreachStatement);
        foreachStatement.sourceEnd = createLocalDeclaration.declarationSourceEnd;
    }

    @Override
    public void consumeEnterCompilationUnit() {
        this.requestor.enterCompilationUnit();
    }

    @Override
    public void consumeEnterVariable() {
        TypeReference typeReference;
        boolean isLocalDeclaration = isLocalDeclaration();
        if (!isLocalDeclaration && this.variablesCounter[this.nestedType] != 0) {
            this.requestor.exitField(this.lastFieldBodyEndPosition, this.lastFieldEndPosition);
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        int i12 = iArr[i11];
        Annotation[][] annotationsOnDimensions = i12 == 0 ? null : getAnnotationsOnDimensions(i12);
        AbstractVariableDeclaration localDeclaration = this.nestedMethod[this.nestedType] != 0 ? new LocalDeclaration(cArr2, (int) (j10 >>> 32), (int) j10) : new FieldDeclaration(cArr2, (int) (j10 >>> 32), (int) j10);
        this.identifierLengthPtr--;
        int[] iArr2 = this.variablesCounter;
        int i13 = this.nestedType;
        int i14 = iArr2[i13];
        if (i14 == 0) {
            if (this.nestedMethod[i13] != 0) {
                int[] iArr3 = this.intStack;
                int i15 = this.intPtr;
                int i16 = i15 - 1;
                this.intPtr = i16;
                localDeclaration.declarationSourceStart = iArr3[i15];
                int i17 = i15 - 2;
                this.intPtr = i17;
                localDeclaration.modifiersSourceStart = iArr3[i16];
                int i18 = i15 - 3;
                this.intPtr = i18;
                localDeclaration.modifiers = iArr3[i17];
                this.intPtr = i15 - 4;
                typeReference = getTypeReference(iArr3[i18]);
                pushOnAstStack(typeReference);
            } else {
                int[] iArr4 = this.intStack;
                int i19 = this.intPtr;
                this.intPtr = i19 - 1;
                typeReference = getTypeReference(iArr4[i19]);
                pushOnAstStack(typeReference);
                int[] iArr5 = this.intStack;
                int i20 = this.intPtr;
                int i21 = i20 - 1;
                this.intPtr = i21;
                localDeclaration.declarationSourceStart = iArr5[i20];
                int i22 = i20 - 2;
                this.intPtr = i22;
                localDeclaration.modifiersSourceStart = iArr5[i21];
                this.intPtr = i20 - 3;
                localDeclaration.modifiers = iArr5[i22];
            }
            int[] iArr6 = this.expressionLengthStack;
            int i23 = this.expressionLengthPtr;
            this.expressionLengthPtr = i23 - 1;
            int i24 = iArr6[i23];
            if (i24 != 0) {
                Expression[] expressionArr = this.expressionStack;
                int i25 = this.expressionPtr - i24;
                this.expressionPtr = i25;
                Annotation[] annotationArr = new Annotation[i24];
                localDeclaration.annotations = annotationArr;
                System.arraycopy(expressionArr, i25 + 1, annotationArr, 0, i24);
            }
        } else {
            ASTNode[] aSTNodeArr = this.astStack;
            int i26 = this.astPtr;
            typeReference = (TypeReference) aSTNodeArr[i26 - i14];
            AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) aSTNodeArr[i26];
            localDeclaration.declarationSourceStart = abstractVariableDeclaration.declarationSourceStart;
            localDeclaration.modifiers = abstractVariableDeclaration.modifiers;
            localDeclaration.modifiersSourceStart = abstractVariableDeclaration.modifiersSourceStart;
            Annotation[] annotationArr2 = abstractVariableDeclaration.annotations;
            if (annotationArr2 != null) {
                int length = annotationArr2.length;
                Annotation[] annotationArr3 = new Annotation[length];
                localDeclaration.annotations = annotationArr3;
                System.arraycopy(annotationArr2, 0, annotationArr3, 0, length);
            }
        }
        localDeclaration.type = i12 != 0 ? augmentTypeWithAdditionalDimensions(typeReference, i12, annotationsOnDimensions, false) : typeReference;
        localDeclaration.bits |= typeReference.bits & 1048576;
        int[] iArr7 = this.variablesCounter;
        int i27 = this.nestedType;
        iArr7[i27] = iArr7[i27] + 1;
        int[] iArr8 = this.nestedMethod;
        iArr8[i27] = iArr8[i27] + 1;
        pushOnAstStack(localDeclaration);
        int[] iArr9 = this.intArrayStack[this.intArrayPtr];
        if (isLocalDeclaration) {
            return;
        }
        this.requestor.enterField(localDeclaration.declarationSourceStart, iArr9, localDeclaration.modifiers, localDeclaration.modifiersSourceStart, returnTypeName(localDeclaration.type), typeReference.sourceStart, typeReference.sourceEnd, this.typeDims, cArr2, (int) (j10 >>> 32), (int) j10, i12, i12 == 0 ? -1 : this.endPosition);
    }

    @Override
    public void consumeExitVariableWithInitialization() {
        super.consumeExitVariableWithInitialization();
        this.nestedMethod[this.nestedType] = r0[r1] - 1;
        this.lastFieldEndPosition = this.scanner.currentPosition - 1;
        this.lastFieldBodyEndPosition = ((AbstractVariableDeclaration) this.astStack[this.astPtr]).initialization.sourceEnd;
    }

    @Override
    public void consumeExitVariableWithoutInitialization() {
        super.consumeExitVariableWithoutInitialization();
        this.nestedMethod[this.nestedType] = r0[r1] - 1;
        Scanner scanner = this.scanner;
        this.lastFieldEndPosition = scanner.currentPosition - 1;
        this.lastFieldBodyEndPosition = scanner.startPosition - 1;
    }

    @Override
    public void consumeFieldDeclaration() {
        int i10 = this.variablesCounter[this.nestedType];
        super.consumeFieldDeclaration();
        this.intArrayPtr--;
        if (isLocalDeclaration() || i10 == 0) {
            return;
        }
        this.requestor.exitField(this.lastFieldBodyEndPosition, this.lastFieldEndPosition);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeFormalParameter(boolean z10) {
        NameReference nameReference;
        int i10;
        Annotation[] annotationArr;
        TypeReference typeReference;
        int i11;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        int i13 = i12 - 1;
        this.intPtr = i13;
        boolean z11 = iArr[i12] == 0;
        if (z11) {
            Expression[] expressionArr = this.expressionStack;
            int i14 = this.expressionPtr;
            this.expressionPtr = i14 - 1;
            NameReference nameReference2 = (NameReference) expressionArr[i14];
            this.expressionLengthPtr--;
            nameReference = nameReference2;
        } else {
            nameReference = null;
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i15 = this.identifierPtr;
        char[] cArr2 = cArr[i15];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i15 - 1;
        long j10 = jArr[i15];
        this.intPtr = i12 - 2;
        int i16 = iArr[i13];
        Annotation[][] annotationsOnDimensions = i16 == 0 ? null : getAnnotationsOnDimensions(i16);
        if (z10) {
            int[] iArr2 = this.intStack;
            int i17 = this.intPtr;
            this.intPtr = i17 - 1;
            i10 = iArr2[i17];
            int[] iArr3 = this.typeAnnotationLengthStack;
            int i18 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i18 - 1;
            int i19 = iArr3[i18];
            if (i19 != 0) {
                Annotation[] annotationArr2 = this.typeAnnotationStack;
                int i20 = this.typeAnnotationPtr - i19;
                this.typeAnnotationPtr = i20;
                annotationArr = new Annotation[i19];
                System.arraycopy(annotationArr2, i20 + 1, annotationArr, 0, i19);
                int[] iArr4 = this.intStack;
                int i21 = this.intPtr;
                this.intPtr = i21 - 1;
                typeReference = getTypeReference(iArr4[i21]);
                if (!z10 || i16 != 0) {
                    if (z10) {
                        typeReference = augmentTypeWithAdditionalDimensions(typeReference, 1, annotationArr != null ? new Annotation[][]{annotationArr} : null, true);
                    }
                    if (i16 != 0) {
                        typeReference = augmentTypeWithAdditionalDimensions(typeReference, i16, annotationsOnDimensions, false);
                    }
                    typeReference.sourceEnd = !typeReference.isParameterizedTypeReference() ? this.endStatementPosition : this.endPosition;
                }
                if (z10) {
                    if (i16 == 0) {
                        typeReference.sourceEnd = i10;
                    }
                    typeReference.bits |= 16384;
                }
                this.intPtr -= 3;
                AbstractVariableDeclaration receiver = !z11 ? new Receiver(cArr2, j10, typeReference, nameReference, this.intStack[this.intPtr + 1] & (-1048577)) : new Argument(cArr2, j10, typeReference, this.intStack[this.intPtr + 1]);
                int[] iArr5 = this.expressionLengthStack;
                int i22 = this.expressionLengthPtr;
                this.expressionLengthPtr = i22 - 1;
                i11 = iArr5[i22];
                if (i11 != 0) {
                    Expression[] expressionArr2 = this.expressionStack;
                    int i23 = this.expressionPtr - i11;
                    this.expressionPtr = i23;
                    Annotation[] annotationArr3 = new Annotation[i11];
                    receiver.annotations = annotationArr3;
                    System.arraycopy(expressionArr2, i23 + 1, annotationArr3, 0, i11);
                    RecoveredType currentRecoveryType = currentRecoveryType();
                    if (currentRecoveryType != null) {
                        currentRecoveryType.annotationsConsumed(receiver.annotations);
                    }
                }
                pushOnAstStack(receiver);
                this.intArrayPtr--;
            }
        } else {
            i10 = 0;
        }
        annotationArr = null;
        int[] iArr42 = this.intStack;
        int i212 = this.intPtr;
        this.intPtr = i212 - 1;
        typeReference = getTypeReference(iArr42[i212]);
        if (!z10) {
        }
        if (z10) {
        }
        if (i16 != 0) {
        }
        typeReference.sourceEnd = !typeReference.isParameterizedTypeReference() ? this.endStatementPosition : this.endPosition;
        if (z10) {
        }
        this.intPtr -= 3;
        if (!z11) {
        }
        int[] iArr52 = this.expressionLengthStack;
        int i222 = this.expressionLengthPtr;
        this.expressionLengthPtr = i222 - 1;
        i11 = iArr52[i222];
        if (i11 != 0) {
        }
        pushOnAstStack(receiver);
        this.intArrayPtr--;
    }

    @Override
    public void consumeInterfaceDeclaration() {
        super.consumeInterfaceDeclaration();
        if (isLocalDeclaration()) {
            return;
        }
        this.requestor.exitInterface(this.endStatementPosition, ((TypeDeclaration) this.astStack[this.astPtr]).declarationSourceEnd);
    }

    @Override
    public void consumeInterfaceHeader() {
        int i10;
        char[][] cArr;
        int[] iArr;
        int[] iArr2;
        super.consumeInterfaceHeader();
        if (isLocalDeclaration()) {
            this.intArrayPtr--;
            return;
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        if (typeReferenceArr != null) {
            i10 = typeReferenceArr.length;
            cArr = new char[i10];
            iArr = new int[i10];
            iArr2 = new int[i10];
        } else {
            i10 = 0;
            cArr = null;
            iArr = null;
            iArr2 = null;
        }
        if (typeReferenceArr != null) {
            for (int i11 = 0; i11 < i10; i11++) {
                TypeReference typeReference = typeReferenceArr[i11];
                cArr[i11] = CharOperation.concatWith(typeReference.getTypeName(), '.');
                iArr[i11] = typeReference.sourceStart;
                iArr2[i11] = typeReference.sourceEnd;
            }
        }
        this.scanner.commentPtr = -1;
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i12 = typeDeclaration.declarationSourceStart;
        int[][] iArr3 = this.intArrayStack;
        int i13 = this.intArrayPtr;
        this.intArrayPtr = i13 - 1;
        iDocumentElementRequestor.enterInterface(i12, iArr3[i13], typeDeclaration.modifiers, typeDeclaration.modifiersSourceStart, this.typeStartPosition, typeDeclaration.name, typeDeclaration.sourceStart, typeDeclaration.sourceEnd, cArr, iArr, iArr2, r2.currentPosition - 1);
    }

    @Override
    public void consumeInterfaceHeaderName1() {
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        typeDeclaration.name = cArr[i11];
        this.identifierLengthPtr--;
        int[] iArr2 = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        int i13 = iArr2[i12];
        typeDeclaration.declarationSourceStart = i13;
        this.typeStartPosition = i13;
        int i14 = i12 - 3;
        this.intPtr = i14;
        int i15 = iArr2[i12 - 2];
        int i16 = i12 - 4;
        this.intPtr = i16;
        typeDeclaration.modifiersSourceStart = iArr2[i14];
        this.intPtr = i12 - 5;
        typeDeclaration.modifiers = iArr2[i16] | 512;
        if (i13 > i15) {
            typeDeclaration.declarationSourceStart = i15;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i17 = this.expressionLengthPtr;
        this.expressionLengthPtr = i17 - 1;
        int i18 = iArr3[i17];
        if (i18 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i19 = this.expressionPtr - i18;
            this.expressionPtr = i19;
            Annotation[] annotationArr = new Annotation[i18];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i19 + 1, annotationArr, 0, i18);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        pushOnAstStack(typeDeclaration);
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    @Override
    public void consumeInternalCompilationUnit() {
    }

    @Override
    public void consumeInternalCompilationUnitWithTypes() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            TypeDeclaration[] typeDeclarationArr = new TypeDeclaration[i11];
            this.compilationUnit.types = typeDeclarationArr;
            int i12 = this.astPtr - i11;
            this.astPtr = i12;
            System.arraycopy(this.astStack, i12 + 1, typeDeclarationArr, 0, i11);
        }
    }

    @Override
    public void consumeLocalVariableDeclaration() {
        super.consumeLocalVariableDeclaration();
        this.intArrayPtr--;
    }

    @Override
    public void consumeMethodDeclaration(boolean z10, boolean z11) {
        super.consumeMethodDeclaration(z10, z11);
        if (isLocalDeclaration()) {
            return;
        }
        this.requestor.exitMethod(this.endStatementPosition, ((MethodDeclaration) this.astStack[this.astPtr]).declarationSourceEnd);
    }

    @Override
    public void consumeMethodHeader() {
        char[][] cArr;
        int[] iArr;
        int[] iArr2;
        char[][] cArr2;
        int[] iArr3;
        int[] iArr4;
        char[][] cArr3;
        int[] iArr5;
        int[] iArr6;
        int i10;
        int i11;
        super.consumeMethodHeader();
        if (isLocalDeclaration()) {
            this.intArrayPtr--;
            return;
        }
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        TypeReference typeReference = methodDeclaration.returnType;
        char[] returnTypeName = returnTypeName(typeReference);
        Argument[] argumentArr = methodDeclaration.arguments;
        if (argumentArr != null) {
            int length = argumentArr.length;
            char[][] cArr4 = new char[length];
            char[][] cArr5 = new char[length];
            int[] iArr7 = new int[length];
            int[] iArr8 = new int[length];
            int[] iArr9 = new int[length];
            int[] iArr10 = new int[length];
            for (int i12 = 0; i12 < length; i12++) {
                Argument argument = argumentArr[i12];
                TypeReference typeReference2 = argument.type;
                cArr4[i12] = returnTypeName(typeReference2);
                cArr5[i12] = argument.name;
                iArr7[i12] = argument.sourceStart;
                iArr8[i12] = argument.sourceEnd;
                iArr9[i12] = typeReference2.sourceStart;
                iArr10[i12] = typeReference2.sourceEnd;
            }
            cArr = cArr4;
            cArr2 = cArr5;
            iArr3 = iArr7;
            iArr4 = iArr8;
            iArr = iArr9;
            iArr2 = iArr10;
        } else {
            cArr = null;
            iArr = null;
            iArr2 = null;
            cArr2 = null;
            iArr3 = null;
            iArr4 = null;
        }
        TypeReference[] typeReferenceArr = methodDeclaration.thrownExceptions;
        if (typeReferenceArr != null) {
            int length2 = typeReferenceArr.length;
            int[] iArr11 = new int[length2];
            int[] iArr12 = new int[length2];
            char[][] cArr6 = new char[length2];
            for (int i13 = 0; i13 < length2; i13++) {
                TypeReference typeReference3 = typeReferenceArr[i13];
                cArr6[i13] = CharOperation.concatWith(typeReference3.getTypeName(), '.');
                iArr11[i13] = typeReference3.sourceStart;
                iArr12[i13] = typeReference3.sourceEnd;
            }
            iArr5 = iArr11;
            iArr6 = iArr12;
            cArr3 = cArr6;
        } else {
            cArr3 = null;
            iArr5 = null;
            iArr6 = null;
        }
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i14 = methodDeclaration.declarationSourceStart;
        int[][] iArr13 = this.intArrayStack;
        int i15 = this.intArrayPtr;
        this.intArrayPtr = i15 - 1;
        int[] iArr14 = iArr13[i15];
        int i16 = methodDeclaration.modifiers;
        int i17 = methodDeclaration.modifiersSourceStart;
        int i18 = typeReference.sourceStart;
        int i19 = typeReference.sourceEnd;
        int i20 = this.typeDims;
        char[] cArr7 = methodDeclaration.selector;
        int i21 = methodDeclaration.sourceStart;
        int i22 = (int) (this.selectorSourcePositions & 4294967295L);
        int i23 = this.rParenPos;
        int i24 = this.extendsDim;
        if (i24 == 0) {
            i10 = i24;
            i11 = -1;
        } else {
            i10 = i24;
            i11 = this.endPosition;
        }
        iDocumentElementRequestor.enterMethod(i14, iArr14, i16, i17, returnTypeName, i18, i19, i20, cArr7, i21, i22, cArr, iArr, iArr2, cArr2, iArr3, iArr4, i23, i10, i11, cArr3, iArr5, iArr6, this.scanner.currentPosition - 1);
    }

    @Override
    public void consumeMethodHeaderExtendedDims() {
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        this.extendsDim = i11;
        if (i11 != 0) {
            methodDeclaration.sourceEnd = this.endPosition;
            TypeReference augmentTypeWithAdditionalDimensions = augmentTypeWithAdditionalDimensions(methodDeclaration.returnType, i11, getAnnotationsOnDimensions(i11), false);
            methodDeclaration.returnType = augmentTypeWithAdditionalDimensions;
            methodDeclaration.bits = (augmentTypeWithAdditionalDimensions.bits & 1048576) | methodDeclaration.bits;
            if (this.currentToken == 49) {
                methodDeclaration.bodyStart = this.endPosition + 1;
            }
        }
    }

    @Override
    public void consumeMethodHeaderName(boolean z10) {
        MethodDeclaration annotationMethodDeclaration = z10 ? new AnnotationMethodDeclaration(this.compilationUnit.compilationResult) : new MethodDeclaration(this.compilationUnit.compilationResult);
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        annotationMethodDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        this.selectorSourcePositions = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        int i12 = iArr[i11];
        this.typeDims = i12;
        TypeReference typeReference = getTypeReference(i12);
        annotationMethodDeclaration.returnType = typeReference;
        annotationMethodDeclaration.bits = (typeReference.bits & 1048576) | annotationMethodDeclaration.bits;
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        annotationMethodDeclaration.declarationSourceStart = iArr2[i13];
        int i15 = i13 - 2;
        this.intPtr = i15;
        annotationMethodDeclaration.modifiersSourceStart = iArr2[i14];
        this.intPtr = i13 - 3;
        annotationMethodDeclaration.modifiers = iArr2[i15];
        int[] iArr3 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr3[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            annotationMethodDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        annotationMethodDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        annotationMethodDeclaration.sourceStart = (int) (this.selectorSourcePositions >>> 32);
        pushOnAstStack(annotationMethodDeclaration);
        annotationMethodDeclaration.bodyStart = this.scanner.currentPosition - 1;
    }

    @Override
    public void consumeMethodHeaderNameWithTypeParameters(boolean z10) {
        MethodDeclaration methodDeclaration;
        if (z10) {
            methodDeclaration = new AnnotationMethodDeclaration(this.compilationUnit.compilationResult);
            this.recordStringLiterals = false;
        } else {
            methodDeclaration = new MethodDeclaration(this.compilationUnit.compilationResult);
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        methodDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        TypeReference typeReference = getTypeReference(iArr[i11]);
        methodDeclaration.returnType = typeReference;
        if (z10) {
            rejectIllegalLeadingTypeAnnotations(typeReference);
        }
        methodDeclaration.bits |= methodDeclaration.returnType.bits & 1048576;
        int[] iArr2 = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr2[i12];
        int i14 = this.genericsPtr - i13;
        this.genericsPtr = i14;
        TypeParameter[] typeParameterArr = new TypeParameter[i13];
        methodDeclaration.typeParameters = typeParameterArr;
        System.arraycopy(this.genericsStack, i14 + 1, typeParameterArr, 0, i13);
        int[] iArr3 = this.intStack;
        int i15 = this.intPtr;
        int i16 = i15 - 1;
        this.intPtr = i16;
        methodDeclaration.declarationSourceStart = iArr3[i15];
        int i17 = i15 - 2;
        this.intPtr = i17;
        methodDeclaration.modifiersSourceStart = iArr3[i16];
        this.intPtr = i15 - 3;
        methodDeclaration.modifiers = iArr3[i17];
        int[] iArr4 = this.expressionLengthStack;
        int i18 = this.expressionLengthPtr;
        this.expressionLengthPtr = i18 - 1;
        int i19 = iArr4[i18];
        if (i19 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i20 = this.expressionPtr - i19;
            this.expressionPtr = i20;
            Annotation[] annotationArr = new Annotation[i19];
            methodDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i20 + 1, annotationArr, 0, i19);
        }
        methodDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        methodDeclaration.sourceStart = (int) (j10 >>> 32);
        pushOnAstStack(methodDeclaration);
        int i21 = this.lParenPos;
        methodDeclaration.sourceEnd = i21;
        methodDeclaration.bodyStart = i21 + 1;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            boolean z11 = recoveredElement instanceof RecoveredType;
            if (!z11) {
                int i22 = methodDeclaration.returnType.sourceStart;
                Scanner scanner = this.scanner;
                int lineNumber = Util.getLineNumber(i22, scanner.lineEnds, 0, scanner.linePtr);
                int i23 = methodDeclaration.sourceStart;
                Scanner scanner2 = this.scanner;
                if (lineNumber != Util.getLineNumber(i23, scanner2.lineEnds, 0, scanner2.linePtr)) {
                    this.lastCheckPoint = methodDeclaration.sourceStart;
                    this.restartRecovery = true;
                    return;
                }
            }
            if (z11) {
                ((RecoveredType) this.currentElement).pendingTypeParameters = null;
            }
            this.lastCheckPoint = methodDeclaration.bodyStart;
            this.currentElement = this.currentElement.add(methodDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    @Override
    public void consumeModifiers() {
        checkComment();
        pushOnIntStack(this.modifiers);
        pushOnIntStack(this.modifiersSourceStart);
        int i10 = this.declarationSourceStart;
        if (i10 < 0) {
            i10 = this.modifiersSourceStart;
        }
        pushOnIntStack(i10);
        resetModifiers();
    }

    @Override
    public void consumePackageComment() {
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5) {
            checkComment();
        } else {
            pushOnIntArrayStack(getJavaDocPositions());
        }
        resetModifiers();
    }

    @Override
    public void consumePackageDeclarationName() {
        super.consumePackageDeclarationName();
        ImportReference importReference = this.compilationUnit.currentPackage;
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = importReference.declarationSourceStart;
        int i11 = importReference.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        iDocumentElementRequestor.acceptPackage(i10, i11, iArr[i12], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart);
    }

    @Override
    public void consumePackageDeclarationNameWithModifiers() {
        super.consumePackageDeclarationNameWithModifiers();
        ImportReference importReference = this.compilationUnit.currentPackage;
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = importReference.declarationSourceStart;
        int i11 = importReference.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        iDocumentElementRequestor.acceptPackage(i10, i11, iArr[i12], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart);
    }

    @Override
    public void consumePushModifiers() {
        checkComment();
        pushOnIntStack(this.modifiers);
        int i10 = this.modifiersSourceStart;
        if (i10 < 0) {
            pushOnIntStack(-1);
            int i11 = this.declarationSourceStart;
            if (i11 < 0) {
                i11 = this.scanner.startPosition;
            }
            pushOnIntStack(i11);
        } else {
            pushOnIntStack(i10);
            int i12 = this.declarationSourceStart;
            if (i12 < 0) {
                i12 = this.modifiersSourceStart;
            }
            pushOnIntStack(i12);
        }
        resetModifiers();
        pushOnExpressionStackLengthStack(0);
    }

    @Override
    public void consumePushRealModifiers() {
        checkComment();
        pushOnIntStack(this.modifiers);
        int i10 = this.modifiersSourceStart;
        if (i10 < 0) {
            pushOnIntStack(-1);
            int i11 = this.declarationSourceStart;
            if (i11 < 0) {
                i11 = this.scanner.startPosition;
            }
            pushOnIntStack(i11);
        } else {
            pushOnIntStack(i10);
            int i12 = this.declarationSourceStart;
            if (i12 < 0) {
                i12 = this.modifiersSourceStart;
            }
            pushOnIntStack(i12);
        }
        resetModifiers();
    }

    @Override
    public void consumeSingleStaticImportDeclarationName() {
        pushOnIntArrayStack(getJavaDocPositions());
        super.consumeSingleStaticImportDeclarationName();
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = importReference.declarationSourceStart;
        int i11 = importReference.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        iDocumentElementRequestor.acceptImport(i10, i11, iArr[i12], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, false, 8);
    }

    @Override
    public void consumeSingleTypeImportDeclarationName() {
        pushOnIntArrayStack(getJavaDocPositions());
        super.consumeSingleTypeImportDeclarationName();
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = importReference.declarationSourceStart;
        int i11 = importReference.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        iDocumentElementRequestor.acceptImport(i10, i11, iArr[i12], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, false, 0);
    }

    @Override
    public void consumeStaticImportOnDemandDeclarationName() {
        pushOnIntArrayStack(getJavaDocPositions());
        super.consumeStaticImportOnDemandDeclarationName();
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = importReference.declarationSourceStart;
        int i11 = importReference.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        iDocumentElementRequestor.acceptImport(i10, i11, iArr[i12], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, true, 8);
    }

    @Override
    public void consumeStaticInitializer() {
        super.consumeStaticInitializer();
        Initializer initializer = (Initializer) this.astStack[this.astPtr];
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = initializer.declarationSourceStart;
        int i11 = initializer.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        int[] iArr2 = iArr[i12];
        int[] iArr3 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        iDocumentElementRequestor.acceptInitializer(i10, i11, iArr2, 8, iArr3[i13], initializer.block.sourceStart, i11);
    }

    @Override
    public void consumeStaticOnly() {
        checkComment();
        pushOnIntStack(this.modifiersSourceStart);
        pushOnIntStack(this.scanner.currentPosition);
        int i10 = this.declarationSourceStart;
        if (i10 < 0) {
            i10 = this.modifiersSourceStart;
        }
        pushOnIntStack(i10);
        jumpOverMethodBody();
        int[] iArr = this.nestedMethod;
        int i11 = this.nestedType;
        iArr[i11] = iArr[i11] + 1;
        resetModifiers();
    }

    @Override
    public void consumeTypeImportOnDemandDeclarationName() {
        pushOnIntArrayStack(getJavaDocPositions());
        super.consumeTypeImportOnDemandDeclarationName();
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        IDocumentElementRequestor iDocumentElementRequestor = this.requestor;
        int i10 = importReference.declarationSourceStart;
        int i11 = importReference.declarationSourceEnd;
        int[][] iArr = this.intArrayStack;
        int i12 = this.intArrayPtr;
        this.intArrayPtr = i12 - 1;
        iDocumentElementRequestor.acceptImport(i10, i11, iArr[i12], CharOperation.concatWith(importReference.getImportName(), '.'), importReference.sourceStart, true, 0);
    }

    @Override
    public CompilationUnitDeclaration endParse(int i10) {
        Scanner scanner = this.scanner;
        if (scanner.recordLineSeparator) {
            this.requestor.acceptLineSeparatorPositions(scanner.getLineEnds());
        }
        return super.endParse(i10);
    }

    @Override
    public int flushCommentsDefinedPriorTo(int i10) {
        int flushCommentsDefinedPriorTo = super.flushCommentsDefinedPriorTo(i10);
        this.lastFieldEndPosition = flushCommentsDefinedPriorTo;
        return flushCommentsDefinedPriorTo;
    }

    @Override
    public void initialize(boolean z10) {
        super.initialize(z10);
        this.intArrayPtr = -1;
    }

    @Override
    public void parse() {
        this.diet = true;
        this.dietInt = 0;
        super.parse();
    }

    public void parseCompilationUnit(ICompilationUnit iCompilationUnit) {
        char[] contents = iCompilationUnit.getContents();
        try {
            initialize(true);
            goForCompilationUnit();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(iCompilationUnit, 0, 0, this.options.maxProblemsPerUnit), contents.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, contents.length);
            this.scanner.setSource(contents);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parseConstructor(char[] cArr) {
        try {
            initialize();
            goForClassBodyDeclarations();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parseField(char[] cArr) {
        try {
            initialize();
            goForFieldDeclaration();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parseImport(char[] cArr) {
        try {
            initialize();
            goForImportDeclaration();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parseInitializer(char[] cArr) {
        try {
            initialize();
            goForInitializer();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parseMethod(char[] cArr) {
        try {
            initialize();
            goForGenericMethodDeclaration();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parsePackage(char[] cArr) {
        try {
            initialize();
            goForPackageDeclaration();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    public void parseType(char[] cArr) {
        try {
            initialize();
            goForTypeDeclaration();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), new CompilationResult(cArr, 0, 0, this.options.maxProblemsPerUnit), cArr.length);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            this.scanner.resetTo(0, cArr.length);
            this.scanner.setSource(cArr);
            parse();
        } catch (AbortCompilation unused) {
        }
    }

    @Override
    public ProblemReporter problemReporter() {
        ProblemReporter problemReporter = this.problemReporter;
        problemReporter.referenceContext = this.referenceContext;
        return problemReporter;
    }

    public void pushOnIntArrayStack(int[] iArr) {
        int[][] iArr2 = this.intArrayStack;
        int length = iArr2.length;
        int i10 = this.intArrayPtr + 1;
        this.intArrayPtr = i10;
        if (i10 >= length) {
            int[][] iArr3 = new int[length + 255];
            this.intArrayStack = iArr3;
            System.arraycopy(iArr2, 0, iArr3, 0, length);
        }
        this.intArrayStack[this.intArrayPtr] = iArr;
    }

    @Override
    public void resetModifiers() {
        super.resetModifiers();
        this.declarationSourceStart = -1;
    }

    @Override
    public int resumeOnSyntaxError() {
        return 0;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("intArrayPtr = " + this.intArrayPtr + "\n");
        stringBuffer.append(super.toString());
        return stringBuffer.toString();
    }

    @Override
    public void initialize() {
        super.initialize();
        this.intArrayPtr = -1;
    }
}
