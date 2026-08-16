.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field nestedBlock:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

.field public statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->resetPendingModifiers()V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_0

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v2, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parser()Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->statementRecoveryActivated:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->addBlockStatement(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;)V

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->nestedBlock:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->add(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-object v0
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered statement:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 p1, p1, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->updateSourceEndIfNecessary(II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->parent:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->updateOnClosingBrace(II)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public updateParseTree()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez v0, :cond_0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_0
    return-void
.end method

.method public updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/ast/Statement;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->nestedBlock:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredBlock;->updatedStatement(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-object p1
.end method
