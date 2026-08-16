.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;


# instance fields
.field public annotationCount:I

.field public annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field public discardBody:Z

.field public localTypeCount:I

.field public localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

.field public methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

.field public methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

.field public modifiers:I

.field public modifiersStart:I

.field pendingAnnotationCount:I

.field pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field pendingModifersSourceStart:I

.field pendingModifiers:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->discardBody:Z

    const/4 p3, -0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifersSourceStart:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->bodyStartsAtHeaderEnd()Z

    move-result p1

    xor-int/lit8 p3, p1, 0x1

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-lez v0, :cond_1

    .line 3
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 5
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez p3, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 9
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 10
    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz p3, :cond_3

    .line 11
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->addBlockStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;)V

    goto :goto_0

    .line 12
    :cond_3
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-direct {p3, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    .line 13
    :goto_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    return-object p1

    :cond_4
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 15
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v0, v0, -0x11

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    .line 18
    aget-object v0, v0, v2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->sourceName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-lez v0, :cond_2

    .line 20
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v2, v0, :cond_2

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_1

    return-object p0

    .line 22
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p1, :cond_3

    .line 24
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 25
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_3
    return-object p0

    .line 26
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_5

    return-object p0

    .line 27
    :cond_5
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_1

    .line 31
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_1

    .line 32
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 35
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 36
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isArgument()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    .line 38
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-lez v3, :cond_3

    move v3, v2

    .line 39
    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_2

    .line 40
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    goto :goto_1

    .line 41
    :cond_2
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 43
    :cond_4
    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    .line 44
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 45
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_1

    .line 46
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_1

    .line 47
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 48
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 50
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 51
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 52
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    .line 53
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-lez v3, :cond_3

    move v3, v2

    .line 54
    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_2

    .line 55
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    goto :goto_1

    .line 56
    :cond_2
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 58
    :cond_4
    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 6

    .line 59
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_1

    .line 60
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->methodRecoveryActivated:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    .line 65
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v0, :cond_3

    const/4 v0, 0x5

    .line 66
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 67
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypeCount:I

    goto :goto_0

    .line 68
    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypeCount:I

    array-length v4, v0

    if-ne v3, v4, :cond_4

    mul-int/lit8 v4, v3, 0x2

    .line 69
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 70
    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :cond_4
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 72
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypeCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypeCount:I

    aput-object v0, p1, p2

    .line 73
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    if-lez p1, :cond_5

    .line 74
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 75
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifiers:I

    .line 76
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifersSourceStart:I

    .line 77
    invoke-virtual {v0, p2, p1, v1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 78
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 79
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p1, :cond_6

    .line 80
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 81
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_6
    return-object v0

    .line 82
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 83
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 84
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_8

    return-object p0

    .line 85
    :cond_8
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 86
    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-nez v0, :cond_a

    .line 87
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 88
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 89
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    .line 90
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    .line 91
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 92
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    .line 93
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifiers:I

    .line 94
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifersSourceStart:I

    .line 95
    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attachPendingModifiers([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->resetPendingModifiers()V

    .line 97
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p0

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;-><init>(IIILorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public addModifier(II)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifiers:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifersSourceStart:I

    if-gez p1, :cond_0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifersSourceStart:I

    :cond_0
    return-void
.end method

.method public attach([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    .line 5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    .line 6
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v0, v4, v6, v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    if-eq v3, v2, :cond_1

    return-void

    .line 7
    :cond_1
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiersSourceStart:I

    if-le v1, v0, :cond_2

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v1, :cond_3

    .line 10
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 11
    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    goto :goto_0

    .line 12
    :cond_3
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-eqz v1, :cond_4

    .line 13
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 14
    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    :cond_4
    :goto_0
    return-void
.end method

.method public attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V
    .locals 6

    if-lez p2, :cond_4

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    .line 16
    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v1

    .line 18
    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_1

    .line 19
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    aget-object v5, p1, v2

    aput-object v5, v3, v4

    goto :goto_2

    .line 20
    :cond_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v0, v3

    if-ne v4, v5, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 21
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 22
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    .line 23
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->modifiers:I

    .line 24
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->modifiersStart:I

    :cond_5
    return-void
.end method

.method public bodyStartsAtHeaderEnd()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    return-object v0
.end method

.method public resetPendingModifiers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingAnnotationCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifiers:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->pendingModifersSourceStart:I

    return-void
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered method:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v2, 0x0

    const-string v3, "\n"

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_3

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypeCount:I

    if-lt v2, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateBodyStart(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    return-void
.end method

.method public updateFromParserState()V
    .locals 12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->bodyStartsAtHeaderEnd()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    if-lez v1, :cond_18

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-lez v2, :cond_18

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_6

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v1, v1, v2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_4

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v4, v4, v2

    instance-of v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v4, :cond_1

    move v3, v5

    :cond_1
    add-int/2addr v1, v6

    :goto_1
    if-lt v6, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int v7, v2, v6

    aget-object v4, v4, v7

    instance-of v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_3

    move v3, v5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderThrowsClause()V

    goto/16 :goto_d

    :cond_5
    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    goto/16 :goto_d

    :cond_6
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    const/16 v7, 0x17

    if-eq v3, v7, :cond_7

    const/16 v7, 0x1a

    if-ne v3, v7, :cond_8

    :cond_7
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v7, v3, v2

    sub-int/2addr v7, v6

    aput v7, v3, v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v3, v6

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v1, v6

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    :cond_8
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v1, v1, v2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v6

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lParenPos:I

    if-ge v4, v3, :cond_9

    move v3, v6

    goto :goto_3

    :cond_9
    move v3, v5

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-lez v1, :cond_b

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v8, v7, v8

    instance-of v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-static {v7, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    sub-int/2addr v2, v6

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v3, v1

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v1, v1, v2

    sub-int/2addr v3, v1

    add-int/lit8 v2, v3, 0x1

    move v3, v6

    goto :goto_4

    :cond_b
    :goto_5
    move v7, v5

    :goto_6
    if-lt v7, v1, :cond_c

    goto :goto_8

    :cond_c
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int v9, v2, v7

    aget-object v8, v8, v9

    instance-of v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v10, :cond_10

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v10

    iget v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v11, v11, -0x11

    if-nez v11, :cond_f

    array-length v11, v10

    if-ne v11, v6, :cond_d

    aget-object v10, v10, v5

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->sourceName()[C

    move-result-object v11

    invoke-static {v10, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_e

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v8, v6

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rParenPos:I

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aput v7, v1, v2

    sub-int/2addr v9, v6

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    goto :goto_8

    :cond_10
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    aput v7, v1, v2

    sub-int/2addr v9, v6

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iput v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentToken:I

    :goto_8
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->listLength:I

    if-lez v1, :cond_17

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    if-lez v1, :cond_17

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    aget v1, v2, v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_11

    move v3, v6

    goto :goto_9

    :cond_11
    move v3, v5

    :goto_9
    if-eqz v3, :cond_15

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v7, v7, v2

    instance-of v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v7, :cond_12

    move v3, v5

    :cond_12
    add-int/2addr v1, v6

    move v7, v6

    :goto_a
    if-lt v7, v1, :cond_13

    goto :goto_b

    :cond_13
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int v9, v2, v7

    aget-object v8, v8, v9

    instance-of v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v8, :cond_14

    move v3, v5

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    if-eqz v3, :cond_17

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeMethodHeaderRightParen()V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->currentElement:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-ne v1, p0, :cond_17

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v2, :cond_16

    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_c

    :cond_16
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_c
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastCheckPoint:I

    :cond_17
    if-eqz v4, :cond_18

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    add-int/2addr v2, v6

    array-length v3, v4

    invoke-static {v4, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    array-length v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthStack:[I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astLengthPtr:I

    array-length v0, v4

    aput v0, v1, v2

    :cond_18
    :goto_d
    return-void
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAnnotationMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->updateSourceEndIfNecessary(II)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->updateSourceEndIfNecessary(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->lastIgnoredToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->updatedMethodDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceSuccessorStart:I

    if-lt v0, p2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceStart:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updatedMethodDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->modifiers:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    or-int/2addr v0, v2

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->modifiersStart:I

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v0, v2, :cond_0

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    array-length v3, v2

    :goto_0
    add-int v4, v3, v0

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-lez v3, :cond_2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotationCount:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    if-ge v2, v3, :cond_4

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->updatedAnnotationReference()Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->updatedBlock(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Block;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_5

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_6

    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v3, :cond_6

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iput-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-nez p1, :cond_9

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-nez p2, :cond_9

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v0, p2, 0x1

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    if-ne v0, v1, :cond_8

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    goto :goto_3

    :cond_8
    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    :cond_9
    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->localTypeCount:I

    if-lez p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    return-object p1
.end method
