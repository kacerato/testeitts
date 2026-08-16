.class public final Lcom/google/common/collect/d3$f;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/common/collect/d3$g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/google/common/collect/d3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/d3$f;->e:Lcom/google/common/collect/d3;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d3$f;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/d3$f;->e(Ljava/lang/Object;)Lcom/google/common/collect/d3$g;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/d3$f;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/d3$f;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/d3$g;

    iget-object v1, v0, Lcom/google/common/collect/d3$g;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/common/collect/d3$g;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/d3$f;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/d3$f;->e(Ljava/lang/Object;)Lcom/google/common/collect/d3$g;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d3$f;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/common/collect/d3$g;->a:Ljava/lang/Object;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)Lcom/google/common/collect/d3$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/d3$g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d3$g;

    iget-object v1, p0, Lcom/google/common/collect/d3$f;->e:Lcom/google/common/collect/d3;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/d3;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/d3$g;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object v0
.end method
