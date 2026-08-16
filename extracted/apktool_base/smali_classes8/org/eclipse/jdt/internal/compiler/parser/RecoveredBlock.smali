.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;


# instance fields
.field public blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

.field pendingAnnotationCount:I

.field pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field public pendingArgument:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

.field pendingModifersSourceStart:I

.field pendingModifiers:I

.field public preserveContent:Z

.field public statementCount:I

.field public statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->preserveContent:Z

    const/4 p3, -0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p3

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->methodRecoveryActivated:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p3

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->preserveContent:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    .line 3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-ne v1, p0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    return-object p0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_0

    .line 8
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_0

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingArgument:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attach(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;)V

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingArgument:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    .line 14
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->addBlockStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;)V

    .line 16
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attach(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;)V

    .line 17
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    .line 58
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v0, v0, -0x11

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    .line 61
    aget-object v0, v0, v2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->sourceName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_1

    .line 63
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0

    .line 65
    :cond_2
    :goto_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 66
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isRecoveredFromLoneIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_2

    .line 21
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_2

    .line 22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    if-eqz p3, :cond_1

    return-object p0

    .line 23
    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    invoke-direct {p3, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 25
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    if-lez p2, :cond_3

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 27
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifiers:I

    .line 28
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    .line 29
    invoke-virtual {p3, v0, p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 30
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    .line 31
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz p2, :cond_4

    .line 32
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingArgument:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    return-object p0

    .line 33
    :cond_4
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attach(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;)V

    .line 34
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez p1, :cond_5

    return-object p3

    :cond_5
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    .line 37
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_1

    .line 38
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_1

    if-eqz p3, :cond_0

    return-object p0

    .line 39
    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    invoke-direct {p3, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 41
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attach(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;)V

    .line 42
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->isEndKnown(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p3

    :cond_2
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 44
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v0, :cond_1

    .line 45
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    if-eqz p3, :cond_0

    return-object p0

    .line 47
    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-direct {p3, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 49
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    if-lez p2, :cond_2

    .line 50
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 51
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifiers:I

    .line 52
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    .line 53
    invoke-virtual {p3, v0, p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 54
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->resetPendingModifiers()V

    .line 55
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attach(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;)V

    .line 56
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez p1, :cond_3

    return-object p3

    :cond_3
    return-object p0
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

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

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public addModifier(II)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifiers:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    if-gez p1, :cond_0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    :cond_0
    return-void
.end method

.method public attach(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public attachPendingModifiers([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifiers:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    return-void
.end method

.method public isEndKnown(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    return-object v0
.end method

.method public resetPendingModifiers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingAnnotationCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifiers:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->pendingModifersSourceStart:I

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered block:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->updateSourceEndIfNecessary(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingInitializer()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-object p1

    :cond_2
    return-object p0
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->updatedBlock(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Block;

    return-void
.end method

.method public updatedBlock(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Block;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/Block;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->preserveContent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->enclosingInitializer()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    move-result-object v4

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    if-eqz v4, :cond_3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ge v3, v6, :cond_3

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v5, v3, -0x1

    :cond_3
    :goto_0
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredLocalVariable;->localDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v3, :cond_6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    goto :goto_1

    :cond_4
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v3, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez v3, :cond_6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_1

    :cond_5
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v3, :cond_6

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez v3, :cond_6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v3, 0x0

    move v4, v3

    move v6, v4

    :goto_2
    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statementCount:I

    if-lt v4, v7, :cond_b

    if-nez v6, :cond_7

    return-object v1

    :cond_7
    if-eq v6, v7, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    new-array p2, v6, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-static {v2, v3, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez p2, :cond_a

    if-ge v0, v5, :cond_9

    iput v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    goto :goto_4

    :cond_9
    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_a
    :goto_4
    return-object p1

    :cond_b
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->statements:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;

    aget-object v7, v7, v4

    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v7

    if-eqz v7, :cond_11

    move v8, v3

    :goto_5
    if-lt v8, v4, :cond_f

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v2, v6

    instance-of v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v6, :cond_d

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-le v6, v0, :cond_c

    :goto_6
    move v0, v6

    :cond_c
    move v6, v8

    goto :goto_7

    :cond_d
    instance-of v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v6, :cond_e

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-le v6, v0, :cond_c

    goto :goto_6

    :cond_e
    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-le v6, v0, :cond_c

    goto :goto_6

    :cond_f
    aget-object v9, v2, v8

    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v10, :cond_10

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v9, :cond_10

    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-lt v10, v11, :cond_10

    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v10, v9, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_12
    :goto_8
    return-object v1
.end method

.method public updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/Statement;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->updatedBlock(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Block;

    move-result-object p1

    return-object p1
.end method
