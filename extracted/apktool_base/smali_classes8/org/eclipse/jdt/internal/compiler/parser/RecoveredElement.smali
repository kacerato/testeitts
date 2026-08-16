.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bracketBalance:I

.field public foundOpeningBrace:Z

.field public lambdaNestLevel:I

.field public parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

.field protected recoveringParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    .line 4
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->recoveringParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 15
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 19
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 20
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 22
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 23
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 24
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 34
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 35
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 27
    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v0, :cond_1

    .line 28
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_1

    .line 29
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    .line 30
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v1, v2, :cond_1

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ge v1, v0, :cond_1

    return-object p0

    .line 31
    :cond_1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 32
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    .line 38
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    .line 40
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->previousAvailableLineEnd(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public addBlockStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;)V
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->blockDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->add(Lorg/eclipse/jdt/internal/compiler/ast/Statement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public addModifier(II)V
    .locals 0

    return-void
.end method

.method public depth()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public enclosingInitializer()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredInitializer;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public enclosingMethod()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredMethod;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public enclosingType()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public getLastStart()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_0
    return v0
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->recoveringParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public preserveEnclosingBlocks()V
    .locals 3

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->preserveContent:Z

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->preserveContent:Z

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public previousAvailableLineEnd(I)I
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    if-nez v1, :cond_1

    return p1

    :cond_1
    const/4 v2, 0x0

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return p1

    :cond_2
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    sub-int/2addr v1, v2

    aget v1, v3, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-lt v2, p1, :cond_3

    return v1

    :cond_3
    aget-char v3, v0, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resetPendingModifiers()V
    .locals 0

    return-void
.end method

.method public sourceEnd()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tabString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-gtz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public topElement()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public type()Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    goto :goto_0
.end method

.method public updateBodyStart(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->foundOpeningBrace:Z

    return-void
.end method

.method public updateFromParserState()V
    .locals 0

    return-void
.end method

.method public updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public updateOnOpeningBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateBodyStart(I)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    return-void
.end method

.method public updateSourceEndIfNecessary(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateSourceEndIfNecessary(II)V

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 0

    .line 1
    return-void
.end method
