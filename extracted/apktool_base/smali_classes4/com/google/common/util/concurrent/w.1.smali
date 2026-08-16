.class public final Lcom/google/common/util/concurrent/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LI2/f;
    value = "Use ClosingFuture.from(Futures.immediate*Future)"
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/w$y;,
        Lcom/google/common/util/concurrent/w$o;,
        Lcom/google/common/util/concurrent/w$v;,
        Lcom/google/common/util/concurrent/w$u;,
        Lcom/google/common/util/concurrent/w$t;,
        Lcom/google/common/util/concurrent/w$s;,
        Lcom/google/common/util/concurrent/w$r;,
        Lcom/google/common/util/concurrent/w$x;,
        Lcom/google/common/util/concurrent/w$A;,
        Lcom/google/common/util/concurrent/w$z;,
        Lcom/google/common/util/concurrent/w$n;,
        Lcom/google/common/util/concurrent/w$q;,
        Lcom/google/common/util/concurrent/w$m;,
        Lcom/google/common/util/concurrent/w$p;,
        Lcom/google/common/util/concurrent/w$w;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/w$y;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/common/util/concurrent/w$o;

.field public final c:Lcom/google/common/util/concurrent/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/Z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    .line 5
    invoke-static {p1}, Lcom/google/common/util/concurrent/F;->K(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/Z;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/w$m;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w$m<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    .line 17
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/google/common/util/concurrent/w$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$f;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$m;)V

    .line 19
    invoke-static {v0}, Lcom/google/common/util/concurrent/F0;->O(Lcom/google/common/util/concurrent/l;)Lcom/google/common/util/concurrent/F0;

    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    iput-object p1, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/w$p;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w$p<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    .line 9
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/google/common/util/concurrent/w$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$e;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$p;)V

    .line 11
    invoke-static {v0}, Lcom/google/common/util/concurrent/F0;->Q(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/F0;

    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    iput-object p1, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    return-void
.end method

.method public static A(Lcom/google/common/util/concurrent/w$m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$m<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/w$m;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static varargs D(Lcom/google/common/util/concurrent/w;[Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w<",
            "*>;[",
            "Lcom/google/common/util/concurrent/w<",
            "*>;)",
            "Lcom/google/common/util/concurrent/w$r;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/M1;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/w;->E(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/w$r;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/w$r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/w<",
            "*>;>;)",
            "Lcom/google/common/util/concurrent/w$r;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/w$r;-><init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/w$d;)V

    return-object v0
.end method

.method public static F(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;)",
            "Lcom/google/common/util/concurrent/w$s<",
            "TV1;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/util/concurrent/w$s;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$d;)V

    return-object v0
.end method

.method public static G(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV3;>;)",
            "Lcom/google/common/util/concurrent/w$t<",
            "TV1;TV2;TV3;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/util/concurrent/w$t;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$d;)V

    return-object v0
.end method

.method public static H(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV3;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV4;>;)",
            "Lcom/google/common/util/concurrent/w$u<",
            "TV1;TV2;TV3;TV4;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/common/util/concurrent/w$u;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/w$u;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$d;)V

    return-object v6
.end method

.method public static I(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            "V5:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV3;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV4;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV5;>;)",
            "Lcom/google/common/util/concurrent/w$v<",
            "TV1;TV2;TV3;TV4;TV5;>;"
        }
    .end annotation

    new-instance v7, Lcom/google/common/util/concurrent/w$v;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/w$v;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$d;)V

    return-object v7
.end method

.method public static varargs J(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;[Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w<",
            "*>;",
            "Lcom/google/common/util/concurrent/w<",
            "*>;",
            "Lcom/google/common/util/concurrent/w<",
            "*>;",
            "Lcom/google/common/util/concurrent/w<",
            "*>;",
            "Lcom/google/common/util/concurrent/w<",
            "*>;",
            "Lcom/google/common/util/concurrent/w<",
            "*>;[",
            "Lcom/google/common/util/concurrent/w<",
            "*>;)",
            "Lcom/google/common/util/concurrent/w$r;"
        }
    .end annotation

    filled-new-array {p1, p2, p3, p4, p5}, [Lcom/google/common/util/concurrent/w;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/p0;->A(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/p0;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/google/common/collect/p0;->d([Ljava/lang/Object;)Lcom/google/common/collect/p0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/w;->K(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/w$r;

    move-result-object p0

    return-object p0
.end method

.method public static K(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/w$r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/w<",
            "*>;>;)",
            "Lcom/google/common/util/concurrent/w$r;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/util/concurrent/w$r;-><init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/w$d;)V

    return-object v0
.end method

.method public static M(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/w$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;TU;>;)",
            "Lcom/google/common/util/concurrent/w$n<",
            "TV;TU;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/w$i;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/w$i;-><init>(Lcom/google/common/util/concurrent/m;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/w;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w;->p()V

    return-void
.end method

.method public static synthetic c(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w;->i(Lcom/google/common/util/concurrent/w$o;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/w;->o(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/common/util/concurrent/w$A;Lcom/google/common/util/concurrent/w;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/w;->x(Lcom/google/common/util/concurrent/w$A;Lcom/google/common/util/concurrent/w;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    return-object p0
.end method

.method public static synthetic g()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic h(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/w;->q(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static q(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/w$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/w$b;-><init>(Ljava/io/Closeable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "while submitting close to %s; will close inline"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/w;->q(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void
.end method

.method public static t(Lcom/google/common/util/concurrent/Z;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/w;

    invoke-static {p0}, Lcom/google/common/util/concurrent/Q;->q(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Z;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/Z;)V

    new-instance v1, Lcom/google/common/util/concurrent/w$d;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/w$d;-><init>(Lcom/google/common/util/concurrent/w;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/google/common/util/concurrent/Q;->a(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/P;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static w(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/Z;)V

    return-object v0
.end method

.method public static x(Lcom/google/common/util/concurrent/w$A;Lcom/google/common/util/concurrent/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "V:TC;>(",
            "Lcom/google/common/util/concurrent/w$A<",
            "TC;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$z;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/w$z;-><init>(Lcom/google/common/util/concurrent/w;)V

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/w$A;->a(Lcom/google/common/util/concurrent/w$z;)V

    return-void
.end method

.method public static z(Lcom/google/common/util/concurrent/w$p;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$p<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/w$p;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public B(Lcom/google/common/util/concurrent/w$q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$q<",
            "-TV;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/w$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$g;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$q;)V

    iget-object p1, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    invoke-virtual {p1, v0, p2}, Lcom/google/common/util/concurrent/F;->M(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w;->s(Lcom/google/common/util/concurrent/F;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public C(Lcom/google/common/util/concurrent/w$n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$n<",
            "-TV;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/w$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$h;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$n;)V

    iget-object p1, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    invoke-virtual {p1, v0, p2}, Lcom/google/common/util/concurrent/F;->M(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w;->s(Lcom/google/common/util/concurrent/F;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public L()Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .annotation build Lv2/d;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/w$o;->e()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/w$y;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Uh oh! An open ClosingFuture has leaked and will close: {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w;->u()Lcom/google/common/util/concurrent/F;

    :cond_0
    return-void
.end method

.method public final i(Lcom/google/common/util/concurrent/w$o;)V
    .locals 2

    sget-object v0, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->SUBSUMED:Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/w;->o(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public j(Z)Z
    .locals 3
    .annotation build LI2/a;
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "cancelling {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w;->p()V

    :cond_0
    return p1
.end method

.method public k(Ljava/lang/Class;Lcom/google/common/util/concurrent/w$q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/w$q<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/w;->n(Ljava/lang/Class;Lcom/google/common/util/concurrent/w$q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Class;Lcom/google/common/util/concurrent/w$n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/w$n<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/w;->m(Ljava/lang/Class;Lcom/google/common/util/concurrent/w$n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Class;Lcom/google/common/util/concurrent/w$n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "W:TV;>(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/w$n<",
            "-TX;TW;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/w$k;

    invoke-direct {v0, p0, p2}, Lcom/google/common/util/concurrent/w$k;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$n;)V

    iget-object p2, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/common/util/concurrent/F;->I(Ljava/lang/Class;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w;->s(Lcom/google/common/util/concurrent/F;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Class;Lcom/google/common/util/concurrent/w$q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "W:TV;>(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/w$q<",
            "-TX;TW;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/w$j;

    invoke-direct {v0, p0, p2}, Lcom/google/common/util/concurrent/w$j;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$q;)V

    iget-object p2, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/common/util/concurrent/F;->I(Ljava/lang/Class;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w;->s(Lcom/google/common/util/concurrent/F;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/w;->r(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)Z

    move-result v0

    const-string v1, "Expected state to be %s, but it was %s"

    invoke-static {v0, v1, p1, p2}, Lw2/H;->B0(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 3

    sget-object v0, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "closing {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/w$o;->close()V

    return-void
.end method

.method public final r(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1, p2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final s(Lcom/google/common/util/concurrent/F;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/F<",
            "TU;>;)",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/Z;)V

    iget-object p1, v0, Lcom/google/common/util/concurrent/w;->b:Lcom/google/common/util/concurrent/w$o;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/w;->i(Lcom/google/common/util/concurrent/w$o;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/google/common/util/concurrent/F;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->WILL_CLOSE:Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/w;->r(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/w;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "will close {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    new-instance v1, Lcom/google/common/util/concurrent/w$l;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/w$l;-><init>(Lcom/google/common/util/concurrent/w;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/w$c;->a:[I

    iget-object v1, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToFuture() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToFuture() after calling finishToValueAndCloser()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finishToFuture() after deriving another step"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Lcom/google/common/util/concurrent/w$A;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w$A<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/common/util/concurrent/w$y;->OPEN:Lcom/google/common/util/concurrent/w$y;

    sget-object v1, Lcom/google/common/util/concurrent/w$y;->WILL_CREATE_VALUE_AND_CLOSER:Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/w;->r(Lcom/google/common/util/concurrent/w$y;Lcom/google/common/util/concurrent/w$y;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/google/common/util/concurrent/w$c;->a:[I

    iget-object p2, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/w$y;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, p0, Lcom/google/common/util/concurrent/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call finishToValueAndCloser() after calling finishToFuture()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call finishToValueAndCloser() twice"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call finishToValueAndCloser() after deriving another step"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    new-instance v1, Lcom/google/common/util/concurrent/w$a;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/w$a;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$A;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public y()Lcom/google/common/util/concurrent/Z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w;->c:Lcom/google/common/util/concurrent/F;

    const/4 v1, 0x0

    invoke-static {v1}, Lw2/v;->b(Ljava/lang/Object;)Lw2/t;

    move-result-object v1

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/F;->L(Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Q;->q(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0
.end method
