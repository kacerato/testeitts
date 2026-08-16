.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;
.source "SourceFile"


# instance fields
.field impl:Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;->impl:Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Recovered Provides: "

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;->updatedProvidesStatement()Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    return-void
.end method

.method public updatedProvidesStatement()Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredProvidesStatement;->impl:Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v1, v3, v2

    goto :goto_0

    :cond_0
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_0
    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :cond_1
    return-object v0
.end method
