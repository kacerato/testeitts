.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;
.super Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
.source "SourceFile"


# static fields
.field protected static final K_BETWEEN_CASE_AND_COLONORARROW:I = 0x401

.field protected static final K_CAST_STATEMENT:I = 0x403

.field protected static final K_INSIDE_RETURN_STATEMENT:I = 0x402

.field protected static final SELECTION_OR_ASSIST_PARSER:I = 0x600

.field protected static final SELECTION_PARSER:I = 0x400

.field public static final SUPER:[C

.field public static final THIS:[C


# instance fields
.field public assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field public selectionEnd:I

.field private selectionNodeFoundLevel:I

.field public selectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "super"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->SUPER:[C

    const-string v0, "this"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->THIS:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    return-void
.end method

.method private buildMoreCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 8

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result v0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v1, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_2

    :pswitch_1
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne v0, v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v1, p1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    if-lez v0, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v3

    aget-object v0, v0, v4

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v6, v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v4, v5, v4

    sub-int/2addr v6, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v6, v3

    aget-object v7, v5, v6

    if-eqz v4, :cond_0

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-le v7, v0, :cond_0

    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-static {v5, v6, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v0, p1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v4, :cond_1

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aput-object v0, v4, v2

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    goto :goto_0

    :cond_1
    array-length v5, v4

    sub-int/2addr v5, v3

    aput-object v0, v4, v5

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v0

    if-gez v0, :cond_4

    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->wrapWithExplicitConstructorCallIfNeeded(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ge v0, p1, :cond_4

    add-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x401
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkRecoveredType()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastErrorEndPosition:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return v3

    :cond_2
    return v1
.end method


# virtual methods
.method public assistIdentifier()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    return-object v0
.end method

.method public attachOrphanCompletionNode()V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-eqz v3, :cond_0

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnFieldType;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnFieldType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-void

    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->buildMoreCompletionContext(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x207

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->lastIndexOfElement(I)I

    move-result v2

    if-gez v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaExpression()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v1, 0x31

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextOpeningBrace:Z

    goto :goto_1

    :cond_3
    const/16 v1, 0x21

    if-ne v0, v1, :cond_5

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextClosingBrace:Z

    goto :goto_1

    :cond_4
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    :cond_5
    :goto_1
    return-void
.end method

.method public checkRestartRecovery()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_0
    return-void
.end method

.method public classInstanceCreation(Z)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->classInstanceCreation(Z)V

    return-void

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    aget v2, v4, v2

    sub-int/2addr v2, v1

    if-eq v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->classInstanceCreation(Z)V

    return-void

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;-><init>()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v4, v1

    new-array v6, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v5, v4, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkForDiamond(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v2

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_3
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->classInstanceCreation(Z)V

    :goto_0
    return-void
.end method

.method public consumeArrayCreationExpressionWithInitializer()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeArrayCreationExpressionWithInitializer()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_1
    return-void
.end method

.method public consumeArrayCreationExpressionWithoutInitializer()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeArrayCreationExpressionWithoutInitializer()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_1
    return-void
.end method

.method public consumeAssignment()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeAssignment()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->checkRestartRecovery()V

    return-void
.end method

.method public consumeBlock()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeBlock()V

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    :cond_0
    return-void
.end method

.method public consumeBlockStatement()V
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeBlockStatement()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->checkRestartRecovery()V

    return-void
.end method

.method public consumeCastExpressionLL1()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionLL1()V

    return-void
.end method

.method public consumeCastExpressionLL1WithBounds()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionLL1WithBounds()V

    return-void
.end method

.method public consumeCastExpressionWithGenericsArray()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithGenericsArray()V

    return-void
.end method

.method public consumeCastExpressionWithNameArray()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithNameArray()V

    return-void
.end method

.method public consumeCastExpressionWithPrimitiveType()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithPrimitiveType()V

    return-void
.end method

.method public consumeCastExpressionWithQualifiedGenericsArray()V
    .locals 1

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCastExpressionWithQualifiedGenericsArray()V

    return-void
.end method

.method public consumeCatchFormalParameter()V
    .locals 12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-gez v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeCatchFormalParameter()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    if-eqz v0, :cond_4

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v0, v1, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v0, v3, v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v3, :cond_4

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v5, v0, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v10, v0, v3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v4, v4, v6

    move-object v8, v4

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v6, v0, -0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v4, v3

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnArgumentName;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/2addr v6, v2

    aget v4, v4, v6

    const v6, -0x100001

    and-int v9, v4, v6

    move-object v4, v0

    move-wide v6, v10

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnArgumentName;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v5, v3

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v5, v2

    new-array v6, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    long-to-int v0, v10

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    :cond_4
    :goto_0
    return-void
.end method

.method public consumeClassInstanceCreationExpressionQualifiedWithTypeArguments()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionQualifiedWithTypeArguments()V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;-><init>()V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v4, v1

    new-array v6, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v5, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v4

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkForDiamond(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v2, v2, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v4, v1

    new-array v6, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v5, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v4, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionQualifiedWithTypeArguments()V

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v1, v0, v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    aget-object v3, v0, v2

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aput-object v1, v0, v2

    iget v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return-void
.end method

.method public consumeClassInstanceCreationExpressionWithTypeArguments()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionWithTypeArguments()V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;-><init>()V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v4, v1

    new-array v6, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v5, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v4

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->checkForDiamond(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthStack:[I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsLengthPtr:I

    aget v2, v2, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsPtr:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->genericsStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v4, v1

    new-array v6, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v5, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v4, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeClassInstanceCreationExpressionWithTypeArguments()V

    :goto_0
    return-void
.end method

.method public consumeEnterAnonymousClassBody(Z)V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeEnterAnonymousClassBody(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->setAssistIdentifier([C)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v3, v3, 0x300

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->markEnclosingMemberWithLocalType()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v6, v5

    new-array v8, v4, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v8, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v7, v6, v8, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr p1, v5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v4

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_2
    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, p1, v2

    iput p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p1, v5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v2, -0x1

    if-nez p1, :cond_4

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaExpression()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextOpeningBrace:Z

    goto :goto_0

    :cond_3
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    :goto_0
    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->hasReportedError:Z

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_6

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isIndirectlyInsideLambdaExpression()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->ignoreNextOpeningBrace:Z

    goto :goto_1

    :cond_5
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    :goto_1
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_6
    return-void
.end method

.method public consumeEnterVariable()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeEnterVariable()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_1
    return-void
.end method

.method public consumeExitVariableWithInitialization()V
    .locals 6

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeExitVariableWithInitialization()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    if-ge v3, v1, :cond_0

    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    if-lt v5, v1, :cond_1

    :cond_0
    if-le v3, v2, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    if-le v1, v2, :cond_2

    :cond_1
    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->triggerRecoveryUponLambdaClosure(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Z)Z

    return-void
.end method

.method public consumeFieldAccess(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFieldAccess(Z)V

    return-void

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnFieldReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v2, v3, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnFieldReference;-><init>([CJ)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget p1, p1, v1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    invoke-direct {p1, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;-><init>(II)V

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object p1, p1, v1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aput-object v0, p1, v1

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return-void
.end method

.method public consumeFormalParameter(Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-gez v1, :cond_1

    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeFormalParameter(Z)V

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    if-eqz v1, :cond_10

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-le v1, v2, :cond_10

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v4, v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v1, v4, :cond_10

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    goto/16 :goto_6

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v6, v1, v4

    if-nez v6, :cond_2

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    :cond_2
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v9, v6, v7

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v14, v6, v7

    add-int/lit8 v4, v4, -0x2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v5

    const/4 v4, 0x0

    if-nez v1, :cond_3

    move-object v5, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getAnnotationsOnDimensions(I)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    if-eqz p1, :cond_5

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v10, v8, -0x1

    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v7, v7, v8

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthStack:[I

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    add-int/lit8 v11, v10, -0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationLengthPtr:I

    aget v8, v8, v10

    if-eqz v8, :cond_4

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationStack:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    sub-int/2addr v11, v8

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeAnnotationPtr:I

    add-int/2addr v11, v3

    new-array v12, v8, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v10, v11, v12, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    move-object v12, v4

    goto :goto_1

    :cond_5
    move-object v12, v4

    move v7, v6

    :goto_1
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v11, v10, -0x1

    iput v11, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v8, v8, v10

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    if-nez p1, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move-object v12, v8

    goto :goto_5

    :cond_7
    :goto_3
    if-eqz p1, :cond_9

    if-eqz v12, :cond_8

    new-array v4, v3, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object v12, v4, v6

    :cond_8
    invoke-virtual {v0, v8, v3, v4, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v0, v8, v1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->augmentTypeWithAdditionalDimensions(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v8

    :cond_a
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isParameterizedTypeReference()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endStatementPosition:I

    goto :goto_4

    :cond_b
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->endPosition:I

    :goto_4
    iput v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_2

    :goto_5
    if-eqz p1, :cond_d

    if-nez v1, :cond_c

    iput v7, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_c
    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v4

    add-int/lit8 v4, v4, -0x2

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    new-instance v4, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnArgumentName;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/2addr v7, v3

    aget v5, v5, v7

    const v7, -0x100001

    and-int v13, v5, v7

    move-object v8, v4

    move-wide v10, v14

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnArgumentName;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iput v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v7, v5, -0x1

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v5

    if-eqz v1, :cond_e

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v7, v1

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/2addr v7, v3

    new-array v8, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v5, v7, v8, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentRecoveryType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->annotationsConsumed([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_e
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v4, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    long-to-int v1, v14

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v1, :cond_f

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_f
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    :cond_10
    :goto_6
    return-void
.end method

.method public consumeInsideCastExpression()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpression()V

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeInsideCastExpressionLL1()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionLL1()V

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeInsideCastExpressionLL1WithBounds()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionLL1WithBounds()V

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeInsideCastExpressionWithQualifiedGenerics()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInsideCastExpressionWithQualifiedGenerics()V

    const/16 v0, 0x403

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    return-void
.end method

.method public consumeInstanceOfExpression()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInstanceOfExpression()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :goto_0
    return-void
.end method

.method public consumeInstanceOfExpressionWithName()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeInstanceOfExpressionWithName()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :goto_0
    return-void
.end method

.method public consumeLambdaExpression()V
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLambdaExpression()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    if-eq v3, v2, :cond_0

    if-ne v3, v1, :cond_2

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    if-eq v3, v2, :cond_1

    if-ne v3, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnLambdaExpression;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnLambdaExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    aput-object v3, v1, v2

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-le v1, v0, :cond_4

    :cond_3
    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_4
    return-void
.end method

.method public consumeLocalVariableDeclarationStatement()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeLocalVariableDeclarationStatement()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->checkRestartRecovery()V

    return-void
.end method

.method public consumeMarkerAnnotation(Z)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMarkerAnnotation(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    aget-wide v1, v4, v6

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    invoke-virtual {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v3

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/MarkerAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnTypeAnnotationStack(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_1
    return-void
.end method

.method public consumeMemberValuePair()V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMemberValuePair()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v1, v2, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    long-to-int v3, v1

    const/16 v4, 0x20

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v2, v2, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    new-instance v4, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnNameOfMemberValuePair;

    invoke-direct {v4, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnNameOfMemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-void
.end method

.method public consumeMethodInvocationName()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->SUPER:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->THIS:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnExplicitConstructorCall;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnExplicitConstructorCall;-><init>(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v3, v0, v3

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v3, v2

    new-array v5, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$1;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$1;-><init>(Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return-void

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationName()V

    return-void

    :cond_4
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationName()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->requireExtendedRecovery()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    if-ltz v0, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v1, v3, :cond_5

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v3, v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v5, :cond_5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    if-ne v4, v5, :cond_5

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_5
    return-void
.end method

.method public consumeMethodInvocationPrimary()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    if-ne v0, v1, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->SUPER:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->THIS:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnExplicitConstructorCall;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnExplicitConstructorCall;-><init>(I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v3, v2

    new-array v5, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v3

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$2;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$2;-><init>(Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return-void

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationPrimary()V

    return-void

    :cond_4
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeMethodInvocationPrimary()V

    return-void
.end method

.method public consumeNormalAnnotation(Z)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNormalAnnotation(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    aget-wide v1, v4, v6

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    invoke-virtual {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v3

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aget v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/lit8 v3, v3, 0x1

    new-array v4, v0, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/NormalAnnotation;->memberValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v2, v3, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnTypeAnnotationStack(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_1
    return-void
.end method

.method public consumeOpenBlock()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeOpenBlock()V

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    :cond_0
    return-void
.end method

.method public consumeReferenceExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->colonColonStart:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->colonColonStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    if-eq v2, v0, :cond_0

    if-ne v2, v1, :cond_2

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    if-eq v2, v0, :cond_1

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnReferenceExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnReferenceExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    move-object p1, v0

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeReferenceExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V

    return-void
.end method

.method public consumeSingleMemberAnnotation(Z)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleMemberAnnotation(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    aget-wide v1, v4, v6

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v0

    invoke-virtual {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v2, v2, v3

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleMemberAnnotation;->memberValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->declarationSourceEnd:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnTypeAnnotationStack(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnExpressionStack(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_1
    return-void
.end method

.method public consumeStaticImportOnDemandDeclarationName()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeStaticImportOnDemandDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v4, v3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v7, v5, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public consumeToken(I)V
    .locals 4

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeToken(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideMethod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isInsideFieldInitialization()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    const/16 v0, 0x1a

    const/16 v1, 0x402

    const/16 v2, 0x600

    if-eq p1, v0, :cond_6

    const/16 v0, 0x20

    const/16 v3, 0x401

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/16 v0, 0x62

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->pushOnElementStack(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result p1

    if-ne p1, v3, :cond_8

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result p1

    if-eq p1, v3, :cond_5

    goto :goto_0

    :cond_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementKind(I)I

    move-result p1

    if-eq p1, v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->topKnownElementInfo(I)I

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->bracketDepth:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->popElement(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public consumeTypeImportOnDemandDeclarationName()V
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->consumeTypeImportOnDemandDeclarationName()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v4, v1, [J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v3, v2

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v4, v6}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v7, v5, -0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v3, v3, v5

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->trailingStarPosition:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    aget-wide v3, v4, v1

    long-to-int v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intStack:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->intPtr:I

    aget v1, v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->flushCommentsDefinedPriorTo(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v3, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    :cond_2
    return-void
.end method

.method public createAssistImportReference([[C[JI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnImportReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnImportReference;-><init>([[C[JI)V

    return-object v0
.end method

.method public createAssistModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnModuleDeclaration;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnModuleDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)V

    return-object v0
.end method

.method public createAssistModuleReference(I)Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
    .locals 5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget p1, p1, v0

    new-array v0, p1, [[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v2, p1, [J

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnModuleReference;

    invoke-direct {p1, v0, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnModuleReference;-><init>([[C[J)V

    return-object p1
.end method

.method public createAssistPackageReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageReference;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageReference;-><init>([[C[J)V

    return-object v0
.end method

.method public createAssistPackageVisibilityReference([[C[J)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageVisibilityReference;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnPackageVisibilityReference;-><init>([[C[J)V

    return-object v0
.end method

.method public createJavadocParser()Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;-><init>(Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;)V

    return-object v0
.end method

.method public createLocalDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->createLocalDeclaration([CII)Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnLocalName;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnLocalName;-><init>([CII)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    return-object v0
.end method

.method public createParameterizedQualifiedAssistTypeReference([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnParameterizedQualifiedTypeReference;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnParameterizedQualifiedTypeReference;-><init>([[C[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[J)V

    return-object v6
.end method

.method public createParameterizedSingleAssistTypeReference([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnParameterizedSingleTypeReference;

    invoke-direct {v0, p2, p1, p3, p4}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;J)V

    return-object v0
.end method

.method public createQualifiedAssistNameReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedNameReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedNameReference;-><init>([[C[C[J)V

    return-object v0
.end method

.method public createQualifiedAssistTypeReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedTypeReference;-><init>([[C[C[J)V

    return-object v0
.end method

.method public createSingleAssistNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleNameReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleNameReference;-><init>([CJ)V

    return-object v0
.end method

.method public createSingleAssistTypeReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleTypeReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleTypeReference;-><init>([CJ)V

    return-object v0
.end method

.method public bridge synthetic createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    move-result-object v0

    return-object v0
.end method

.method public createSnapShotParser()Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;
    .locals 2

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    return-object v0
.end method

.method public dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;II)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    iput p3, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionStart:I

    iput p4, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionEnd:I

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getUnspecifiedReference(Z)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeNonTypeUseName()V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget p1, p1, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->SUPER:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    const/16 v1, 0x20

    if-lez v0, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aput v0, v5, v6

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr p1, v0

    sub-int/2addr v5, p1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsLengthStack(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthStack:[I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    aget p1, p1, v6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnGenericsIdentifiersLengthStack(I)V

    move p1, v3

    :goto_0
    if-lt p1, v0, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedSuperReference;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getTypeReference(I)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v5, v4

    aget-wide v5, v3, v5

    ushr-long v7, v5, v1

    long-to-int v1, v7

    long-to-int v3, v5

    invoke-direct {p1, v0, v1, v3}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedSuperReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnTypeAnnotationLengthStack(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSuperReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    add-int/lit8 v5, v3, 0x1

    aget-wide v5, v0, v5

    ushr-long/2addr v5, v1

    long-to-int v1, v5

    add-int/2addr v3, v4

    aget-wide v5, v0, v3

    long-to-int v0, v5

    invoke-direct {p1, v1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSuperReference;-><init>(II)V

    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->pushOnAstStack(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietInt:I

    if-eqz p1, :cond_5

    :cond_4
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_5
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    return-object p1

    :cond_6
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->identifierSubSet(I)[[C

    move-result-object v1

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    sub-int/2addr v5, p1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    new-array v6, p1, [J

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/2addr v5, v4

    invoke-static {v7, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object p1

    aget-wide v0, v6, v3

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createSingleAssistNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object p1

    invoke-virtual {p0, v1, p1, v6}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->createQualifiedAssistNameReference([[C[C[J)Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v0, :cond_8

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_8
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return-object p1
.end method

.method public getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->indexOfAssistIdentifier()I

    move-result v0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->getUnspecifiedReferenceOptimized()Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    move-result-object v1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->restartRecovery:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    :cond_1
    return-object v1
.end method

.method public initializeScanner()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method public newMessageSend()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->newMessageSend()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnMessageSend;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnMessageSend;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v3, v2

    new-array v5, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v1, :cond_2

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_2
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return-object v0
.end method

.method public newMessageSendWithTypeArguments()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->newMessageSendWithTypeArguments()Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnMessageSend;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnMessageSend;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthStack:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionLengthPtr:I

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionPtr:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->expressionStack:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/2addr v3, v2

    new-array v5, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->diet:Z

    if-nez v1, :cond_2

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionNodeFoundLevel:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    :cond_2
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->isOrphanCompletionNode:Z

    return-object v0
.end method

.method public newReferenceExpression()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->newReferenceExpression()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnReferenceExpressionName;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnReferenceExpressionName;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;II)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 3

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;II)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    iput p3, v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionStart:I

    iput p4, v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionEnd:I

    invoke-super {p0, p1, p2, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;II)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public resumeAfterRecovery()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->preserveEnclosingBlocks()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->requireExtendedRecovery()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->unstackedAct:I

    const/16 v1, 0x4246

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumeAfterRecovery()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->resetStacks()V

    return v2

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->resetStacks()V

    return v2

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->resumeAfterRecovery()I

    move-result v0

    return v0
.end method

.method public selectionIdentifierCheck()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->checkRecoveredType()Z

    return-void
.end method

.method public setAssistIdentifier([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionScanner;->selectionIdentifier:[C

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "elementKindStack : int[] = {"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    const-string v4, ","

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "elementInfoStack : int[] = {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementPtr:I

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementInfoStack:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->elementKindStack:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public typeElidedArgument()Lorg/eclipse/jdt/internal/compiler/ast/Argument;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->assistIdentifier()[C

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->typeElidedArgument()Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierLengthPtr:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-object v3, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPositionStack:[J

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->identifierPtr:I

    aget-wide v9, v0, v1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnArgumentName;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnArgumentName;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;IZ)V

    const/16 v1, 0x20

    ushr-long v1, v9, v1

    long-to-int v1, v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object v0
.end method

.method public updateRecoveryState()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateFromParserState()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionIdentifierCheck()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->attachOrphanCompletionNode()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->preserveEnclosingBlocks()V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->recoveryTokenCheck()V

    return-void
.end method
