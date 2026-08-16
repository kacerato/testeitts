.class public final Lcom/android/tools/r8/internal/zC;
.super Lcom/android/tools/r8/internal/EC;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/iC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/iC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/EC;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/android/tools/r8/internal/QC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final j(I)Lcom/android/tools/r8/internal/MY;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    new-instance v1, Lcom/android/tools/r8/internal/OY;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/OY;-><init>(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    iget v0, v0, Lcom/android/tools/r8/internal/iC;->g:I

    return v0
.end method

.method public final w()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zC;->f:Lcom/android/tools/r8/internal/iC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method
