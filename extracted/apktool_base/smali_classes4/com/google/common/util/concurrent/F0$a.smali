.class public final Lcom/google/common/util/concurrent/F0$a;
.super Lcom/google/common/util/concurrent/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/F0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/W<",
        "Lcom/google/common/util/concurrent/Z<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/common/util/concurrent/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/google/common/util/concurrent/F0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/l<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/util/concurrent/F0$a;->f:Lcom/google/common/util/concurrent/F0;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/W;-><init>()V

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/l;

    iput-object p1, p0, Lcom/google/common/util/concurrent/F0$a;->e:Lcom/google/common/util/concurrent/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0$a;->f:Lcom/google/common/util/concurrent/F0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->D(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/Z;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/F0$a;->i(Lcom/google/common/util/concurrent/Z;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0$a;->f:Lcom/google/common/util/concurrent/F0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/F$a;->isDone()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/F0$a;->j()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0$a;->e:Lcom/google/common/util/concurrent/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/google/common/util/concurrent/Z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0$a;->f:Lcom/google/common/util/concurrent/F0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->E(Lcom/google/common/util/concurrent/Z;)Z

    return-void
.end method

.method public j()Lcom/google/common/util/concurrent/Z;
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/F0$a;->e:Lcom/google/common/util/concurrent/l;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/l;->call()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    iget-object v2, p0, Lcom/google/common/util/concurrent/F0$a;->e:Lcom/google/common/util/concurrent/l;

    invoke-static {v0, v1, v2}, Lw2/H;->V(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Z;

    return-object v0
.end method
