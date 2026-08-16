.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/TerminalTokens;


# instance fields
.field public initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

.field public localTypeCount:I

.field public localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

.field pendingAnnotationCount:I

.field pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field pendingModifersSourceStart:I

.field pendingModifiers:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-lez v0, :cond_1

    .line 2
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    return-object v0

    .line 11
    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v3, 0x0

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 12
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez v2, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 15
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v0, v0, -0x11

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-lez v0, :cond_2

    .line 20
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_2

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_1

    return-object p0

    .line 22
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0

    .line 23
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_4

    return-object p0

    .line 24
    :cond_4
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 25
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 6

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_1

    .line 27
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 32
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 33
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 34
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    .line 35
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-lez v3, :cond_3

    move v3, v2

    .line 36
    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_2

    .line 37
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    goto :goto_1

    .line 38
    :cond_2
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 40
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 41
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    .line 42
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    .line 43
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    .line 44
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attachPendingModifiers([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 45
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 46
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;IZ)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 6

    .line 47
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_1

    .line 48
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 50
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 53
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v1, :cond_2

    .line 56
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 57
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    .line 58
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    .line 59
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    .line 60
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attachPendingModifiers([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 61
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 62
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 6

    .line 63
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-eqz v0, :cond_1

    .line 64
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-le v1, v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 66
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->methodRecoveryActivated:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v0, :cond_3

    const/4 v0, 0x5

    .line 70
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 71
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypeCount:I

    goto :goto_0

    .line 72
    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypeCount:I

    array-length v4, v0

    if-ne v3, v4, :cond_4

    mul-int/lit8 v4, v3, 0x2

    .line 73
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 74
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :cond_4
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 76
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypes:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypeCount:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypeCount:I

    aput-object v0, p1, p2

    .line 77
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    if-lez p1, :cond_5

    .line 78
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 79
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    .line 80
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    .line 81
    invoke-virtual {v0, p2, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 82
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 83
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    if-nez p1, :cond_6

    .line 84
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    .line 85
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    :cond_6
    return-object v0

    .line 86
    :cond_7
    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 87
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v1, :cond_8

    .line 90
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 91
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    .line 92
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    .line 93
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    .line 94
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->attachPendingModifiers([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 95
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->resetPendingModifiers()V

    .line 96
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

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

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public addModifier(II)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    if-gez p1, :cond_0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    :cond_0
    return-void
.end method

.method public resetPendingModifiers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingAnnotationCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifiers:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->pendingModifersSourceStart:I

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered initializer:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const-string v2, "\n"

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotationCount:I

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->annotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->updateSourceEndIfNecessary(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    return-object p0
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v1, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceSuccessorStart:I

    if-lt v1, p2, :cond_2

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceEnd:I

    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    goto :goto_0

    :cond_0
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    :goto_0
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceStart:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->rBraceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    goto :goto_2

    :cond_1
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    goto :goto_2

    :cond_2
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    if-ge p2, v1, :cond_3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    goto :goto_1

    :cond_3
    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    :goto_1
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-le p1, p2, :cond_4

    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz p1, :cond_4

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :cond_4
    :goto_2
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz p1, :cond_5

    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_5
    return-void
.end method

.method public updatedFieldDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->initializerBody:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->updatedBlock(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Block;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;->localTypeCount:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredField;->fieldDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez p2, :cond_2

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_2
    return-object p1
.end method
