.class public Lcom/google/common/cache/k$K$b;
.super Lcom/google/common/collect/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/k$K;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "Lcom/google/common/cache/p<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/cache/k$K;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k$K;Lcom/google/common/cache/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$K$b;->c:Lcom/google/common/cache/k$K;

    invoke-direct {p0, p2}, Lcom/google/common/collect/l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/cache/p;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$K$b;->b(Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->k()Lcom/google/common/cache/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/cache/k$K$b;->c:Lcom/google/common/cache/k$K;

    iget-object v0, v0, Lcom/google/common/cache/k$K;->b:Lcom/google/common/cache/p;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
