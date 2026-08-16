.class public final Lcom/google/common/collect/m1$h;
.super Lcom/google/common/collect/c1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c1<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final d:J


# instance fields
.field public final transient c:Lcom/google/common/collect/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lq3/i;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m1<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m1$h;->c:Lcom/google/common/collect/m1;

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Object;I)I
    .locals 2
    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1$h;->c:Lcom/google/common/collect/m1;

    iget-object v0, v0, Lcom/google/common/collect/m1;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->L()Lcom/google/common/collect/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/c1;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/c1;->b([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/m1$h;->c:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m1$h;->c:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->M()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m1$h;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m1$h;->c:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->size()I

    move-result v0

    return v0
.end method
