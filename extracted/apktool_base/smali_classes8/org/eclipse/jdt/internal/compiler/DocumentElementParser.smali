.class public Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.source "SourceFile"


# instance fields
.field private declarationSourceStart:I

.field private extendsDim:I

.field intArrayPtr:I

.field intArrayStack:[[I

.field private lastFieldBodyEndPosition:I

.field private lastFieldEndPosition:I

.field requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

.field private selectorSourcePositions:J

.field private typeDims:I

.field private typeStartPosition:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    invoke-direct {v0, v1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    const/16 p1, 0x1e

    new-array p1, p1, [[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setMethodsFullRecovery(Z)V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->setStatementsRecovery(Z)V

    return-void
.end method

.method private isLocalDeclaration()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private returnTypeName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[C
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    return-object p1

    :cond_0
    mul-int/lit8 v4, v3, 0x2

    const/16 v5, 0x5b

    aput-char v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x5d

    aput-char v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object p1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkComment()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v4, v4, v1

    if-ltz v4, :cond_4

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v3, v3, v1

    if-ltz v3, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-ge v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    const/high16 v1, 0x100000

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkAndSetModifiers(I)V

    :cond_2
    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-gez v0, :cond_3

    neg-int v0, v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    :cond_3
    return-void

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public consumeCatchFormalParameter()V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v3, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v4, v0, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v2, 0x1

    aget v7, v1, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v3, v3, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void
.end method

.method public consumeClassBodyDeclaration()V
    .locals 9

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassBodyDeclaration()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptInitializer(II[IIIII)V

    return-void
.end method

.method public consumeClassDeclaration()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassDeclaration()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitClass(II)V

    return-void
.end method

.method public consumeClassHeader()V
    .locals 22

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassHeader()V

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/16 v3, 0x2e

    if-eqz v2, :cond_2

    array-length v4, v2

    new-array v5, v4, [[C

    new-array v6, v4, [I

    new-array v7, v4, [I

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v4, :cond_1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_1

    :cond_1
    aget-object v9, v2, v8

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v10

    invoke-static {v10, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v10

    aput-object v10, v5, v8

    iget v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v10, v6, v8

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v4, -0x1

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_3

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v8, v3, v4

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeStartPosition:I

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v21, v1, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-interface/range {v6 .. v21}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterClass(I[IIII[CII[CII[[C[I[II)V

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v8, v5, -0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v8, v2, v5

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeStartPosition:I

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v1

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v15

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v21, v3, -0x1

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-interface/range {v6 .. v21}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterClass(I[IIII[CII[CII[[C[I[II)V

    :goto_2
    return-void
.end method

.method public consumeClassHeaderName1()V
    .locals 7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v1, v1, v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->markEnclosingMemberWithLocalType()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->blockReal()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v1, v2

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/16 v1, 0x20

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v1, v2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeStartPosition:I

    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v5, v2, -0x3

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v4

    add-int/lit8 v6, v2, -0x4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v5, v1, v5

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v6

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    if-le v3, v4, :cond_2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v3, v3, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    return-void
.end method

.method public consumeCompilationUnit()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitCompilationUnit(I)V

    return-void
.end method

.method public consumeConstructorDeclaration()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorDeclaration()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitConstructor(II)V

    return-void
.end method

.method public consumeConstructorHeader()V
    .locals 32

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeConstructorHeader()V

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    array-length v5, v2

    new-array v6, v5, [[C

    new-array v7, v5, [[C

    new-array v8, v5, [I

    new-array v9, v5, [I

    new-array v10, v5, [I

    new-array v11, v5, [I

    move v12, v3

    :goto_0
    if-lt v12, v5, :cond_1

    move-object/from16 v21, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto :goto_1

    :cond_1
    aget-object v13, v2, v12

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v14}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->returnTypeName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[C

    move-result-object v15

    aput-object v15, v6, v12

    iget-object v15, v13, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v15, v7, v12

    iget v15, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v15, v8, v12

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v13, v9, v12

    iget v13, v14, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v13, v10, v12

    iget v13, v14, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v21, v4

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    :goto_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_4

    array-length v5, v2

    new-array v6, v5, [[C

    new-array v7, v5, [I

    new-array v8, v5, [I

    :goto_2
    if-lt v3, v5, :cond_3

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    goto :goto_3

    :cond_3
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v9

    const/16 v10, 0x2e

    invoke-static {v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v9

    aput-object v9, v6, v3

    iget v9, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v9, v7, v3

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v28, v4

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    :goto_3
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v15, v2, v3

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    move/from16 v16, v2

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    move/from16 v17, v2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    move-object/from16 v18, v2

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move/from16 v19, v1

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->selectorSourcePositions:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    move/from16 v20, v1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    move/from16 v27, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v31, v1, -0x1

    invoke-interface/range {v13 .. v31}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterConstructor(I[III[CII[[C[I[I[[C[I[II[[C[I[II)V

    return-void
.end method

.method public consumeConstructorHeaderName()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->selectorSourcePositions:J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    add-int/lit8 v4, v2, -0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v1, v3

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    add-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v3, v3, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->selectorSourcePositions:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lParenPos:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    return-void
.end method

.method public consumeDefaultModifiers()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->checkComment()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->resetModifiers()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStackLengthStack(I)V

    return-void
.end method

.method public consumeDiet()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeDiet()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    return-void
.end method

.method public consumeEnhancedForStatementHeaderInit(Z)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    aget-wide v1, v2, v1

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    long-to-int v1, v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createLocalDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v2

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    add-int/lit8 v6, v2, -0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v1, v3

    add-int/lit8 v7, v2, -0x3

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v6, v1, v6

    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v1, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    move v2, v5

    move v3, v2

    move v6, v3

    :goto_0
    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v7

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v4, v4, v7

    const/high16 v7, 0x100000

    if-eqz v4, :cond_1

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v9, v4

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v9, v9, 0x1

    new-array v10, v4, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v8, v9, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v4, v7

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1
    if-eqz p1, :cond_2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    goto :goto_1

    :cond_2
    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    :goto_1
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v7

    or-int/2addr p1, v1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v2

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public consumeEnterCompilationUnit()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterCompilationUnit()V

    return-void
.end method

.method public consumeEnterVariable()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldBodyEndPosition:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldEndPosition:I

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitField(II)V

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v13, v2, v3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v2, v3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v5

    if-nez v2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    :goto_0
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v6, v6, v7

    const/16 v7, 0x20

    if-eqz v6, :cond_2

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    ushr-long v8, v3, v7

    long-to-int v8, v8

    long-to-int v9, v3

    invoke-direct {v6, v13, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;-><init>([CII)V

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    ushr-long v8, v3, v7

    long-to-int v8, v8

    long-to-int v9, v3

    invoke-direct {v6, v13, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;-><init>([CII)V

    :goto_1
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v8, v8, v9

    const/4 v10, 0x0

    if-nez v8, :cond_4

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    aget v8, v8, v9

    if-eqz v8, :cond_3

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v11, v9, -0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v12, v8, v9

    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    add-int/lit8 v12, v9, -0x2

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v11, v8, v11

    iput v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    add-int/lit8 v11, v9, -0x3

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v12, v8, v12

    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    add-int/lit8 v9, v9, -0x4

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v8, v8, v11

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v11, v9, -0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v12, v11, -0x1

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v14, v9, v11

    iput v14, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    add-int/lit8 v14, v11, -0x2

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v12, v9, v12

    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    add-int/lit8 v11, v11, -0x3

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v9, v9, v14

    iput v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    :goto_2
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v12, v11, -0x1

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v9, v9, v11

    if-eqz v9, :cond_5

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v12, v9

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v12, v12, 0x1

    new-array v14, v9, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v14, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v11, v12, v14, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int v8, v11, v8

    aget-object v8, v9, v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v9, v9, v11

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iput v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    iput v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v9, :cond_5

    array-length v11, v9

    new-array v12, v11, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v9, v10, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v0, v8, v2, v5, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v5

    goto :goto_4

    :cond_6
    move-object v5, v8

    :goto_4
    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v10, 0x100000

    and-int/2addr v9, v10

    or-int/2addr v5, v9

    iput v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v10, v5, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v5, v9

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    aget v10, v5, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v5, v9

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v9, v5, v9

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v10, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iget v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiersSourceStart:I

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->returnTypeName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[C

    move-result-object v12

    iget v14, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v15, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeDims:I

    ushr-long v6, v3, v7

    long-to-int v7, v6

    long-to-int v3, v3

    if-nez v2, :cond_7

    const/4 v4, -0x1

    :goto_5
    move/from16 v17, v4

    goto :goto_6

    :cond_7
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    goto :goto_5

    :goto_6
    move-object v4, v1

    move-object v6, v9

    move v1, v7

    move v7, v10

    move/from16 v16, v8

    move v8, v11

    move-object v9, v12

    move v10, v14

    move v11, v15

    move/from16 v12, v16

    move v14, v1

    move v15, v3

    move/from16 v16, v2

    invoke-interface/range {v4 .. v17}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterField(I[III[CIII[CIIII)V

    :cond_8
    return-void
.end method

.method public consumeExitVariableWithInitialization()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithInitialization()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldEndPosition:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldBodyEndPosition:I

    return-void
.end method

.method public consumeExitVariableWithoutInitialization()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithoutInitialization()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldEndPosition:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldBodyEndPosition:I

    return-void
.end method

.method public consumeFieldDeclaration()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->variablesCounter:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v0, v0, v1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFieldDeclaration()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldBodyEndPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldEndPosition:I

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitField(II)V

    :cond_1
    return-void
.end method

.method public consumeFormalParameter(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v4, :cond_1

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v8, v8, v9

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v9, v6

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    move-object v15, v8

    goto :goto_1

    :cond_1
    move-object v15, v7

    :goto_1
    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v8, v6

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v17, v8, v9

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v10, v9, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v18, v8, v9

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    if-nez v1, :cond_2

    move-object v2, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v9, v8, -0x1

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v3, v8

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v8, v8, v9

    if-eqz v8, :cond_3

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v10, v8

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v10, v6

    new-array v11, v8, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v9, v10, v11, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    :goto_3
    move-object v11, v7

    goto :goto_4

    :cond_4
    move v3, v5

    goto :goto_3

    :goto_4
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    if-nez p1, :cond_5

    if-eqz v1, :cond_a

    :cond_5
    if-eqz p1, :cond_7

    if-eqz v11, :cond_6

    new-array v7, v6, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object v11, v7, v5

    :cond_6
    invoke-virtual {v0, v8, v6, v7, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v0, v8, v1, v2, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isParameterizedTypeReference()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    goto :goto_5

    :cond_9
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    :goto_5
    iput v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_a
    if-eqz p1, :cond_c

    if-nez v1, :cond_b

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_b
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v1, -0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    if-eqz v4, :cond_d

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/2addr v3, v6

    aget v2, v2, v3

    const v3, -0x100001

    and-int v16, v2, v3

    move-object v10, v1

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    move-object v14, v8

    invoke-direct/range {v10 .. v16}, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/NameReference;I)V

    goto :goto_6

    :cond_d
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/2addr v3, v6

    aget v21, v2, v3

    move-object/from16 v16, v1

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    :goto_6
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    if-eqz v2, :cond_e

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v4, v6

    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v3, v4, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentRecoveryType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationsConsumed([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_e
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    sub-int/2addr v1, v6

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void
.end method

.method public consumeInterfaceDeclaration()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceDeclaration()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitInterface(II)V

    return-void
.end method

.method public consumeInterfaceHeader()V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInterfaceHeader()V

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    array-length v4, v2

    new-array v5, v4, [[C

    new-array v6, v4, [I

    new-array v7, v4, [I

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move v4, v3

    move-object v14, v5

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v6

    const/16 v7, 0x2e

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    aput-object v6, v14, v3

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v6, v15, v3

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v5, v16, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v3, -0x1

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v7, v4, -0x1

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v7, v3, v4

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeStartPosition:I

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v1, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v17, v1, -0x1

    invoke-interface/range {v5 .. v17}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterInterface(I[IIII[CII[[C[I[II)V

    return-void
.end method

.method public consumeInterfaceHeaderName1()V
    .locals 7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v1, v1, v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->markEnclosingMemberWithLocalType()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->blockReal()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v1, v2

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/16 v1, 0x20

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v1, v2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeStartPosition:I

    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v5, v2, -0x3

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v1, v4

    add-int/lit8 v6, v2, -0x4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v5, v1, v5

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v6

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    if-le v3, v4, :cond_2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v3, v3, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    return-void
.end method

.method public consumeInternalCompilationUnit()V
    .locals 0

    return-void
.end method

.method public consumeInternalCompilationUnitWithTypes()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public consumeLocalVariableDeclaration()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLocalVariableDeclaration()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void
.end method

.method public consumeMethodDeclaration(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodDeclaration(ZZ)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object p1, p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    invoke-interface {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->exitMethod(II)V

    return-void
.end method

.method public consumeMethodHeader()V
    .locals 29

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeader()V

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->isLocalDeclaration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->returnTypeName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[C

    move-result-object v8

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v3, :cond_2

    array-length v6, v3

    new-array v7, v6, [[C

    new-array v9, v6, [[C

    new-array v10, v6, [I

    new-array v11, v6, [I

    new-array v12, v6, [I

    new-array v13, v6, [I

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v6, :cond_1

    move-object v15, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    goto :goto_1

    :cond_1
    aget-object v15, v3, v14

    iget-object v4, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->returnTypeName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[C

    move-result-object v17

    aput-object v17, v7, v14

    iget-object v5, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v5, v9, v14

    iget v5, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v5, v10, v14

    iget v5, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v5, v11, v14

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v5, v12, v14

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v4, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_4

    array-length v4, v3

    new-array v5, v4, [I

    new-array v6, v4, [I

    new-array v7, v4, [[C

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v4, :cond_3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v24, v7

    goto :goto_3

    :cond_3
    aget-object v10, v3, v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v11

    const/16 v12, 0x2e

    invoke-static {v11, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v11

    aput-object v11, v7, v9

    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v11, v5, v9

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v7, v6, -0x1

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v5, v5, v6

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeDims:I

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->selectorSourcePositions:J

    const-wide v16, 0xffffffffL

    and-long v1, v1, v16

    long-to-int v14, v1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->extendsDim:I

    if-nez v2, :cond_5

    const/16 v16, -0x1

    move/from16 v23, v2

    move/from16 v28, v16

    goto :goto_4

    :cond_5
    move/from16 v23, v2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    move/from16 v28, v2

    :goto_4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v27, v2, -0x1

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v21, v1

    move/from16 v22, v23

    move/from16 v23, v28

    invoke-interface/range {v3 .. v27}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->enterMethod(I[III[CIII[CII[[C[I[I[[C[I[IIII[[C[I[II)V

    return-void
.end method

.method public consumeMethodHeaderExtendedDims()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->extendsDim:I

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    :cond_0
    return-void
.end method

.method public consumeMethodHeaderName(Z)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->selectorSourcePositions:J

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->typeDims:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v0, v1

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    add-int/lit8 v3, v1, -0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v0, v2

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v3

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v2, v2, 0x1

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->selectorSourcePositions:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    return-void
.end method

.method public consumeMethodHeaderNameWithTypeParameters(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->recordStringLiterals:Z

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v2, v3

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v6

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rejectIllegalLeadingTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_1
    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v6, 0x100000

    and-int/2addr v2, v6

    or-int/2addr p1, v2

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget p1, p1, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v2, v5

    new-array v7, p1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    invoke-static {v6, v2, v7, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v7, p1, v2

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    add-int/lit8 v7, v2, -0x2

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v6, p1, v6

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiersSourceStart:I

    add-int/lit8 v2, v2, -0x3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, p1, v7

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v6, v2, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget p1, p1, v2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v6, p1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v6, v5

    new-array v7, p1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v2, v6, v7, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/16 v2, 0x20

    ushr-long v2, v3, v2

    long-to-int v2, v2

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lParenPos:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v2, v5

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_6

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v2, :cond_4

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v3, v6, v0, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v4, v7, v0, v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object p1, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->pendingTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    :cond_5
    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_6
    :goto_2
    return-void
.end method

.method public consumeModifiers()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->checkComment()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->resetModifiers()V

    return-void
.end method

.method public consumePackageComment()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->checkComment()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->resetModifiers()V

    return-void
.end method

.method public consumePackageDeclarationName()V
    .locals 7

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePackageDeclarationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptPackage(II[I[CI)V

    return-void
.end method

.method public consumePackageDeclarationNameWithModifiers()V
    .locals 7

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePackageDeclarationNameWithModifiers()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptPackage(II[I[CI)V

    return-void
.end method

.method public consumePushModifiers()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->checkComment()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    :goto_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->resetModifiers()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStackLengthStack(I)V

    return-void
.end method

.method public consumePushRealModifiers()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->checkComment()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    :goto_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->resetModifiers()V

    return-void
.end method

.method public consumeSingleStaticImportDeclarationName()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleStaticImportDeclarationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptImport(II[I[CIZI)V

    return-void
.end method

.method public consumeSingleTypeImportDeclarationName()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleTypeImportDeclarationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptImport(II[I[CIZI)V

    return-void
.end method

.method public consumeStaticImportOnDemandDeclarationName()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStaticImportOnDemandDeclarationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptImport(II[I[CIZI)V

    return-void
.end method

.method public consumeStaticInitializer()V
    .locals 9

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStaticInitializer()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v3, v4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v6, v3, v5

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/16 v5, 0x8

    move v3, v8

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptInitializer(II[IIIII)V

    return-void
.end method

.method public consumeStaticOnly()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->checkComment()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnIntStack(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->jumpOverMethodBody()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->resetModifiers()V

    return-void
.end method

.method public consumeTypeImportOnDemandDeclarationName()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getJavaDocPositions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->pushOnIntArrayStack([I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeImportOnDemandDeclarationName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->getImportName()[[C

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptImport(II[I[CIZI)V

    return-void
.end method

.method public endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->recordLineSeparator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->requestor:Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnds()[I

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/internal/compiler/IDocumentElementRequestor;->acceptLineSeparatorPositions([I)V

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public flushCommentsDefinedPriorTo(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->lastFieldEndPosition:I

    return p1
.end method

.method public initialize()V
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->initialize()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void
.end method

.method public initialize(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->initialize(Z)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    return-void
.end method

.method public parse()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse()V

    return-void
.end method

.method public parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize(Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForCompilationUnit()V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5, v5, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    array-length p1, v0

    invoke-direct {v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, v0

    invoke-virtual {p1, v5, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parseConstructor([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForClassBodyDeclarations()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parseField([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForFieldDeclaration()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parseImport([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForImportDeclaration()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parseInitializer([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForInitializer()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parseMethod([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForGenericMethodDeclaration()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parsePackage([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForPackageDeclaration()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parseType([C)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->initialize()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForTypeDeclaration()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length v1, p1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->parse()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object v0
.end method

.method public pushOnIntArrayStack([I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    if-lt v2, v1, :cond_0

    add-int/lit16 v2, v1, 0xff

    new-array v2, v2, [[I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayStack:[[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    aput-object p1, v0, v1

    return-void
.end method

.method public resetModifiers()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->resetModifiers()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->declarationSourceStart:I

    return-void
.end method

.method public resumeOnSyntaxError()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intArrayPtr = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/DocumentElementParser;->intArrayPtr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
