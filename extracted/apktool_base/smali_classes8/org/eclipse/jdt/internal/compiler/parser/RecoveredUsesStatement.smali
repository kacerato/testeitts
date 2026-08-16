.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    return-void
.end method


# virtual methods
.method public toString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Recovered Uses: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUsesStatement;->updatedUsesStatement()Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    return-void
.end method

.method public updatedUsesStatement()Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    return-object v0
.end method
