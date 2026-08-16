.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field public typeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-void
.end method


# virtual methods
.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Recovered typereference: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;->updatedImportReference()Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-void
.end method

.method public updateTypeReference()Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object v0
.end method

.method public updatedImportReference()Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredTypeReference;->typeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object v0
.end method
