.class public abstract Lcom/google/common/collect/j1;
.super Lcom/google/common/collect/r1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/j1$a;,
        Lcom/google/common/collect/j1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract H()Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->H()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->H()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->v()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->H()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 2
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/j1$a;

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->H()Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/j1$a;-><init>(Lcom/google/common/collect/i1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->H()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j1;->H()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->u()Z

    move-result v0

    return v0
.end method
