.class public final Lcom/google/common/util/concurrent/w$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/w<",
            "*>;>;"
        }
    .end annotation
.end field

.field public volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/w<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/g1;

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$x;->a:Lcom/google/common/collect/g1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/g1;Lcom/google/common/util/concurrent/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/w$x;-><init>(Lcom/google/common/collect/g1;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/w$x;Lcom/google/common/util/concurrent/w$r$e;Lcom/google/common/util/concurrent/w$o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/w$x;->c(Lcom/google/common/util/concurrent/w$r$e;Lcom/google/common/util/concurrent/w$o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/w$x;Lcom/google/common/util/concurrent/w$r$d;Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/w$x;->d(Lcom/google/common/util/concurrent/w$r$d;Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/F;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/google/common/util/concurrent/w$r$e;Lcom/google/common/util/concurrent/w$o;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$r$e<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/w$o;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/w$o;->a(Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/w$w;

    move-result-object v2

    invoke-interface {p1, v2, p0}, Lcom/google/common/util/concurrent/w$r$e;->a(Lcom/google/common/util/concurrent/w$w;Lcom/google/common/util/concurrent/w$x;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    throw p1
.end method

.method public final d(Lcom/google/common/util/concurrent/w$r$d;Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/F;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$r$d<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/w$o;",
            ")",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/w$o;->a(Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/w$w;

    move-result-object v2

    invoke-interface {p1, v2, p0}, Lcom/google/common/util/concurrent/w$r$d;->a(Lcom/google/common/util/concurrent/w$w;Lcom/google/common/util/concurrent/w$x;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/w;->c(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$o;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    throw p1
.end method

.method public final e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w<",
            "TD;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$x;->b:Z

    invoke-static {v0}, Lw2/H;->g0(Z)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$x;->a:Lcom/google/common/collect/g1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
