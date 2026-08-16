.class public Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;
.source "SourceFile"


# instance fields
.field public conflictingTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;->conflictingTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method


# virtual methods
.method public readableName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method import : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;->readableName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
