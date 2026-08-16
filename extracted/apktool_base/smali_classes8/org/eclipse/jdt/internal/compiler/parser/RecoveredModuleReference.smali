.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field public moduleReference:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->moduleReference:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-void
.end method


# virtual methods
.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->moduleReference:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-object v0
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->moduleReference:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Recovered ModuleReference: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->moduleReference:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->updatedModuleReference()Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-void
.end method

.method public updatedModuleReference()Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->moduleReference:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    return-object v0
.end method
