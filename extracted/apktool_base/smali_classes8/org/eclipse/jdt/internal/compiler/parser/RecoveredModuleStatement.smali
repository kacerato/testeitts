.class public abstract Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field public moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    return-void
.end method


# virtual methods
.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    return-object v0
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->updatedModuleStatement()Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    if-nez v0, :cond_0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationEnd:I

    :cond_0
    return-void
.end method

.method public updatedModuleStatement()Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    return-object v0
.end method
