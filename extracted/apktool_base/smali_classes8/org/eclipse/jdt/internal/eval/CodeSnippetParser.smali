.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/Parser;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# instance fields
.field codeSnippetEnd:I

.field codeSnippetStart:I

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field hasRecoveredOnExpression:Z

.field lastStatement:I

.field lineSeparatorLength:I

.field problemCountBeforeRecovery:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/eval/EvaluationContext;ZII)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lastStatement:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->problemCountBeforeRecovery:I

    iput p4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    iput p5, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportOnlyOneSyntaxError:Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iput-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    return-void
.end method

.method private isTopLevelType()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->switchNestingLevel:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private recordLastStatementIfNeeded()V
    .locals 3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lastStatement:I

    :cond_0
    return-void
.end method


# virtual methods
.method public classInstanceCreation(Z)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v3, v1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v4, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkForDiamond(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dispatchDeclarationInto(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz p1, :cond_3

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_3
    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    :goto_1
    return-void
.end method

.method public consumeClassDeclaration()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassDeclaration()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeClassHeaderName1()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedMethod:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->nestedType:I

    aget v0, v0, v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetTypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetTypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->markEnclosingMemberWithLocalType()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->blockReal()V

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v1, v2

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v2, v3, v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v2, v3

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    add-int/lit8 v4, v3, -0x2

    add-int/lit8 v5, v3, -0x3

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v4, v2, v4

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiersSourceStart:I

    add-int/lit8 v3, v3, -0x4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v5

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    if-ltz v4, :cond_2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v2, :cond_3

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    return-void
.end method

.method public consumeClassInstanceCreationExpressionWithTypeArguments()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v3, v3, v4

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v4, v2

    new-array v6, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v5, v4, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v3, v3, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v4, v2

    new-array v2, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v5, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v3, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dispatchDeclarationInto(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    if-nez v0, :cond_2

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->containsComment(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v0, :cond_3

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v3, v3, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v4, v2

    new-array v2, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v5, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_3
    :goto_0
    return-void
.end method

.method public consumeEmptyStatement()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEmptyStatement()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeEnhancedForStatement()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnhancedForStatement()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeExpressionStatement()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExpressionStatement()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeFieldAccess(Z)V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v2, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;-><init>([CJLorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, p1, v1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->codeSnippetMissingClass(Ljava/lang/String;II)V

    new-instance p1, Lorg/eclipse/jdt/internal/eval/CodeSnippetSuperReference;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-direct {p1, v1, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSuperReference;-><init>(II)V

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aput-object v0, p1, v1

    :goto_0
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

.method public consumeLocalVariableDeclarationStatement()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLocalVariableDeclarationStatement()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeMethodDeclaration(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-super/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodDeclaration(ZZ)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v2, v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->isTopLevelType()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    array-length v6, v3

    sub-int/2addr v6, v5

    :goto_0
    if-ltz v6, :cond_1

    aget-object v3, v3, v6

    instance-of v7, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v7, :cond_1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v7, v3, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v8, Lorg/eclipse/jdt/internal/eval/CodeSnippetReturnStatement;

    iget v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v8, v7, v9, v10}, Lorg/eclipse/jdt/internal/eval/CodeSnippetReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    aput-object v8, v3, v6

    :cond_1
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    sub-int/2addr v3, v5

    int-to-long v6, v3

    const/16 v8, 0x20

    shl-long v9, v6, v8

    add-long/2addr v9, v6

    new-array v6, v5, [J

    aput-wide v9, v6, v1

    iget-object v7, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    if-eqz v7, :cond_8

    array-length v7, v7

    add-int/lit8 v11, v7, 0x1

    new-array v11, v11, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move v12, v1

    :goto_1
    if-lt v12, v7, :cond_3

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    invoke-direct {v13}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;-><init>()V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->explicitDeclarations:I

    invoke-direct {v4, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iput v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v4, v13, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v14, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    iput v3, v14, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v14, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    new-array v3, v7, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v3, v14, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    :goto_2
    if-lt v1, v7, :cond_2

    iput-object v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aput-object v13, v11, v7

    iput-object v11, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    goto/16 :goto_4

    :cond_2
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    aget-object v4, v4, v1

    invoke-direct {v3, v4, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    iget-object v4, v14, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    sget-object v12, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->LOCAL_VAR_PREFIX:[C

    iget-object v15, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    aget-object v15, v15, v1

    invoke-static {v12, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v12

    invoke-direct {v8, v12, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    iget v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v6, v8, v3, v12}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    aput-object v6, v4, v1

    add-int/2addr v1, v5

    goto :goto_2

    :cond_3
    iget-object v13, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    aget-object v13, v13, v12

    const/16 v14, 0x5b

    invoke-static {v14, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v15

    if-ltz v15, :cond_4

    invoke-static {v13, v1, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v13

    :cond_4
    invoke-static {v8, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v15

    if-ltz v15, :cond_5

    invoke-static {v13, v1, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v13

    :cond_5
    const/16 v15, 0x2e

    invoke-static {v15, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v8

    if-ne v8, v4, :cond_6

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    invoke-direct {v8, v13, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    goto :goto_3

    :cond_6
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-static {v15, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v13

    invoke-direct {v8, v13, v6}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    :goto_3
    iget-object v13, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableTypeNames:[[C

    aget-object v13, v13, v12

    invoke-static {v14, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result v13

    if-lez v13, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v0, v8, v13, v14, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    :cond_7
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    sget-object v14, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->LOCAL_VAR_PREFIX:[C

    iget-object v15, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    aget-object v15, v15, v12

    invoke-static {v14, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v14

    invoke-direct {v13, v14, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v15, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    aget-object v15, v15, v12

    invoke-direct {v14, v15, v3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;-><init>([CII)V

    iput-object v13, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v8, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableModifiers:[I

    aget v8, v8, v12

    iput v8, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    aput-object v14, v11, v12

    add-int/2addr v12, v5

    const/16 v8, 0x20

    goto/16 :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method public consumeMethodInvocationName()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->newMessageSend()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v4, v1, v3

    iput-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    long-to-int v1, v4

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v3

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v4, v1, v3

    const/4 v5, 0x0

    if-ne v4, v2, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v1, v5, v5, v3, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;-><init>(IILorg/eclipse/jdt/internal/eval/EvaluationContext;Z)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v2

    aput v4, v1, v3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v4, v2

    new-array v6, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v3, v4, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    aget-object v4, v6, v5

    sub-int/2addr v1, v2

    aget-object v1, v6, v1

    invoke-virtual {v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->misplacedTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationName()V

    :goto_1
    return-void
.end method

.method public consumeMethodInvocationNameWithTypeArguments()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->newMessageSendWithTypeArguments()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v1, v2

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 v1, 0x20

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v1, v1, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 v2, v2, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodInvocationNameWithTypeArguments()V

    :goto_0
    return-void
.end method

.method public consumeMethodInvocationSuper()V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->newMessageSend()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v1, v2

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetSuperReference;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSuperReference;-><init>(II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method

.method public consumeMethodInvocationSuperWithTypeArguments()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->newMessageSendWithTypeArguments()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v1, v2

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v1, v1, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 v2, v2, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetSuperReference;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSuperReference;-><init>(II)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method

.method public consumePrimaryNoNewArrayThis()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;-><init>(IILorg/eclipse/jdt/internal/eval/EvaluationContext;Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumePrimaryNoNewArrayThis()V

    :goto_0
    return-void
.end method

.method public consumeStatementBreak()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementBreak()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementBreakWithLabel()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementBreakWithLabel()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementCatch()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementCatch()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementContinue()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementContinue()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementContinueWithLabel()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementContinueWithLabel()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementDo()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementDo()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementFor()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementFor()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementIfNoElse()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementIfNoElse()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementIfWithElse()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementIfWithElse()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementLabel()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementLabel()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementReturn()V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->hasRecoveredOnExpression:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->isTopLevelType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetReturnStatement;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementReturn()V

    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementSwitch()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementSwitch()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementSynchronized()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementSynchronized()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementThrow()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementThrow()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementTry(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementTry(ZZ)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public consumeStatementWhile()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStatementWhile()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 10

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->hasRecoveredOnExpression:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/16 v1, 0x4246

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_9

    move v1, v3

    :goto_0
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v1, v4, :cond_8

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreFurtherInvestigation:Z

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->consumeStatementReturn()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->localVariableNames:[[C

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    const/4 v2, 0x1

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v1, 0x2

    :goto_3
    if-le v0, v4, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeBlockStatements()V

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodBody()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->consumeMethodDeclaration(ZZ)V

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassBodyDeclarations()V

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassBodyDeclarationsopt()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->consumeClassDeclaration()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->consumeInternalCompilationUnitWithTypes()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCompilationUnit()V

    :cond_7
    const/16 v0, 0x4245

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastAct:I

    goto/16 :goto_a

    :cond_8
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    move v4, v3

    move v5, v4

    :goto_4
    iget v6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->problemCountBeforeRecovery:I

    const v7, 0x600000dc

    if-lt v4, v6, :cond_f

    move v4, v3

    :goto_5
    if-lt v6, v1, :cond_c

    if-le v4, v5, :cond_a

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget v5, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->problemCountBeforeRecovery:I

    sub-int v6, v1, v5

    invoke-static {v4, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->problemCountBeforeRecovery:I

    sub-int/2addr v3, v4

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_6

    :cond_a
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->problemCountBeforeRecovery:I

    sub-int v4, v1, v4

    sub-int/2addr v3, v4

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    :goto_6
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    :goto_7
    if-lt v3, v1, :cond_b

    goto :goto_a

    :cond_b
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v8, v8, v6

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v8

    if-ne v8, v7, :cond_d

    goto :goto_8

    :cond_d
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v8, v8, v6

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v8

    if-le v8, v4, :cond_e

    iget v9, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    if-gt v8, v9, :cond_e

    move v4, v8

    :cond_e
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_f
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v6

    if-ne v6, v7, :cond_10

    goto :goto_9

    :cond_10
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v6

    if-le v6, v5, :cond_11

    iget v7, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    if-gt v6, v7, :cond_11

    move v5, v6

    :cond_11
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_12
    :goto_a
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endParse(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNonTypeUseName()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget p1, p1, v0

    if-ne p1, v2, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;-><init>([CJLorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    goto :goto_0

    :cond_1
    new-array v5, p1, [[C

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, p1, [J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetQualifiedNameReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v1, v3

    const/16 v7, 0x20

    shr-long/2addr v3, v7

    long-to-int v7, v3

    add-int/2addr v2, p1

    aget-wide v2, v1, v2

    long-to-int v8, v2

    iget-object v9, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/eval/CodeSnippetQualifiedNameReference;-><init>([[C[JIILorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object p1

    return-object p1
.end method

.method public getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNonTypeUseName()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lineSeparatorLength:I

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v2, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;-><init>([CJLorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-object v0

    :cond_0
    new-array v3, v0, [[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/2addr v1, v2

    const/4 v5, 0x0

    invoke-static {v4, v1, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v0, [J

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/2addr v6, v2

    invoke-static {v1, v6, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetQualifiedNameReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v6, v5, 0x1

    aget-wide v6, v2, v6

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    add-int/2addr v5, v0

    aget-wide v7, v2, v5

    long-to-int v0, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    move-object v2, v1

    move v5, v6

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/eval/CodeSnippetQualifiedNameReference;-><init>([[C[JIILorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, -0x8

    or-int/lit8 v0, v0, 0x3

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-object v1

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v0

    return-object v0
.end method

.method public ignoreExpressionAssignment()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreExpressionAssignment()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->recordLastStatementIfNeeded()V

    return-void
.end method

.method public newMessageSend()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v2, v2, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public newMessageSendWithTypeArguments()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;-><init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v2, v2, 0x1

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public reportSyntaxErrors(ZI)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lastStatement:I

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/16 p2, 0x40

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->reportSyntaxErrors(ZI)V

    return-void
.end method

.method public resumeOnSyntaxError()I
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->hasRecoveredOnExpression:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->problemCountBeforeRecovery:I

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lastStatement:I

    if-gez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lastStatement:I

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->lastStatement:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->initialPosition:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->codeSnippetEnd:I

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    const/4 v2, -0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentPtr:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->goForExpression(Z)V

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetParser;->hasRecoveredOnExpression:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->hasReportedError:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->hasError:Z

    return v0

    :cond_3
    :goto_0
    return v1
.end method
