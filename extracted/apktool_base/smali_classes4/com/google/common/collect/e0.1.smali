.class public final Lcom/google/common/collect/e0;
.super Lcom/google/common/collect/J0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/J0<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final d:J


# instance fields
.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:I
    .annotation build Lv2/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/J0;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize (%s) must >= 0"

    invoke-static {v0, v1, p1}, Lw2/H;->k(ZLjava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/e0;->b:Ljava/util/Queue;

    iput p1, p0, Lcom/google/common/collect/e0;->c:I

    return-void
.end method

.method public static H0(I)Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public D0()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e0;->b:Ljava/util/Queue;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/e0;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/r0;->size()I

    move-result v0

    iget v2, p0, Lcom/google/common/collect/e0;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/e0;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/e0;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/e0;->c:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/r0;->clear()V

    iget v1, p0, Lcom/google/common/collect/e0;->c:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/common/collect/D1;->N(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/D1;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0;->o0(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e0;->D0()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e0;->D0()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remainingCapacity()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/e0;->c:I

    invoke-virtual {p0}, Lcom/google/common/collect/r0;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/r0;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
