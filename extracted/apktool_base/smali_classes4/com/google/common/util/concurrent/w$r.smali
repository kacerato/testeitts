.class public Lcom/google/common/util/concurrent/w$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LI2/f;
    value = "Use ClosingFuture.whenAllSucceed() or .whenAllComplete() instead."
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/w$r$d;,
        Lcom/google/common/util/concurrent/w$r$e;
    }
.end annotation


# static fields
.field public static final d:Lw2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/t<",
            "Lcom/google/common/util/concurrent/w<",
            "*>;",
            "Lcom/google/common/util/concurrent/F<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/common/util/concurrent/w$o;

.field public final b:Z

.field public final c:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/w<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/w$r$c;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/w$r$c;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/w$r;->d:Lw2/t;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/w<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w$r;->a:Lcom/google/common/util/concurrent/w$o;

    .line 4
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/w$r;->b:Z

    .line 5
    invoke-static {p2}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$r;->c:Lcom/google/common/collect/g1;

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/w;

    .line 7
    iget-object v0, p0, Lcom/google/common/util/concurrent/w$r;->a:Lcom/google/common/util/concurrent/w$o;

    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/w;->c(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/w$r;-><init>(ZLjava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/w$r;)Lcom/google/common/util/concurrent/w$o;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$r;->a:Lcom/google/common/util/concurrent/w$o;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/google/common/util/concurrent/w$r$e;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$r$e<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$r$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$r$a;-><init>(Lcom/google/common/util/concurrent/w$r;Lcom/google/common/util/concurrent/w$r$e;)V

    new-instance p1, Lcom/google/common/util/concurrent/w;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w$r;->d()Lcom/google/common/util/concurrent/Q$e;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/common/util/concurrent/Q$e;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/w$d;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$r;->a:Lcom/google/common/util/concurrent/w$o;

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public c(Lcom/google/common/util/concurrent/w$r$d;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$r$d<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$r$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$r$b;-><init>(Lcom/google/common/util/concurrent/w$r;Lcom/google/common/util/concurrent/w$r$d;)V

    new-instance p1, Lcom/google/common/util/concurrent/w;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w$r;->d()Lcom/google/common/util/concurrent/Q$e;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/common/util/concurrent/Q$e;->b(Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/w$d;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$r;->a:Lcom/google/common/util/concurrent/w$o;

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final d()Lcom/google/common/util/concurrent/Q$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Q$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$r;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w$r;->e()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Q;->B(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Q$e;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/w$r;->e()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Q;->z(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Q$e;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final e()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/F<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$r;->c:Lcom/google/common/collect/g1;

    invoke-static {v0}, Lcom/google/common/collect/p0;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/w$r;->d:Lw2/t;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->J(Lw2/t;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/p0;->D()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method
