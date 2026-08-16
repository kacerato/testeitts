.class public final Lcom/google/common/collect/P1$h;
.super Lcom/google/common/collect/P1$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/P1$n<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/P1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/P1$n;-><init>(Lcom/google/common/collect/P1$a;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-virtual {v0}, Lcom/google/common/collect/P1;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/P1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-virtual {v2}, Lcom/google/common/collect/P1;->r()Lw2/m;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-virtual {v0}, Lcom/google/common/collect/P1;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$g;

    iget-object v1, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/P1$g;-><init>(Lcom/google/common/collect/P1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/P1;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$h;->b:Lcom/google/common/collect/P1;

    invoke-virtual {v0}, Lcom/google/common/collect/P1;->size()I

    move-result v0

    return v0
.end method
