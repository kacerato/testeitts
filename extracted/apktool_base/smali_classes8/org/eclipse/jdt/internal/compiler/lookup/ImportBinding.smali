.class public Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.source "SourceFile"


# instance fields
.field public compoundName:[[C

.field public onDemand:Z

.field public reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field public resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;


# direct methods
.method public constructor <init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    return-void
.end method


# virtual methods
.method public isStatic()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final kind()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public readableName()[C
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    const/16 v1, 0x2e

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->readableName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
