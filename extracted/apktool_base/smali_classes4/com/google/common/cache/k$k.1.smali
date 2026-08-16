.class public final Lcom/google/common/cache/k$k;
.super Lcom/google/common/cache/k$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/k<",
        "TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/cache/k;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$k;->c:Lcom/google/common/cache/k;

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$c;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$k;->c:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/k$j;

    iget-object v1, p0, Lcom/google/common/cache/k$k;->c:Lcom/google/common/cache/k;

    invoke-direct {v0, v1}, Lcom/google/common/cache/k$j;-><init>(Lcom/google/common/cache/k;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$k;->c:Lcom/google/common/cache/k;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
