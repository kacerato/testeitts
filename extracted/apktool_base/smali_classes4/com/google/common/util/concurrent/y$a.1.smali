.class public final Lcom/google/common/util/concurrent/y$a;
.super Lcom/google/common/util/concurrent/y$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/y<",
        "TV;>.c<",
        "Lcom/google/common/util/concurrent/Z<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/google/common/util/concurrent/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lcom/google/common/util/concurrent/y;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/y;Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/util/concurrent/y$a;->h:Lcom/google/common/util/concurrent/y;

    invoke-direct {p0, p1, p3}, Lcom/google/common/util/concurrent/y$c;-><init>(Lcom/google/common/util/concurrent/y;Ljava/util/concurrent/Executor;)V

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/l;

    iput-object p1, p0, Lcom/google/common/util/concurrent/y$a;->g:Lcom/google/common/util/concurrent/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/y$a;->k()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$a;->g:Lcom/google/common/util/concurrent/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/Z;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/y$a;->l(Lcom/google/common/util/concurrent/Z;)V

    return-void
.end method

.method public k()Lcom/google/common/util/concurrent/Z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$a;->g:Lcom/google/common/util/concurrent/l;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/l;->call()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    iget-object v2, p0, Lcom/google/common/util/concurrent/y$a;->g:Lcom/google/common/util/concurrent/l;

    invoke-static {v0, v1, v2}, Lw2/H;->V(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Z;

    return-object v0
.end method

.method public l(Lcom/google/common/util/concurrent/Z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$a;->h:Lcom/google/common/util/concurrent/y;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->E(Lcom/google/common/util/concurrent/Z;)Z

    return-void
.end method
