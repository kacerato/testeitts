.class public final LOe/S0;
.super LVe/a;
.source "SourceFile"

# interfaces
.implements LIe/g;
.implements LGe/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/S0$g;,
        LOe/S0$e;,
        LOe/S0$k;,
        LOe/S0$l;,
        LOe/S0$i;,
        LOe/S0$c;,
        LOe/S0$o;,
        LOe/S0$m;,
        LOe/S0$n;,
        LOe/S0$a;,
        LOe/S0$f;,
        LOe/S0$p;,
        LOe/S0$h;,
        LOe/S0$d;,
        LOe/S0$j;,
        LOe/S0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LVe/a<",
        "TT;>;",
        "LIe/g<",
        "TT;>;",
        "LGe/g;"
    }
.end annotation


# static fields
.field public static final f:LOe/S0$b;


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/S0$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:LOe/S0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/S0$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LOe/S0$o;

    invoke-direct {v0}, LOe/S0$o;-><init>()V

    sput-object v0, LOe/S0;->f:LOe/S0$b;

    return-void
.end method

.method public constructor <init>(LBe/G;LBe/G;Ljava/util/concurrent/atomic/AtomicReference;LOe/S0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/S0$j<",
            "TT;>;>;",
            "LOe/S0$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LVe/a;-><init>()V

    iput-object p1, p0, LOe/S0;->e:LBe/G;

    iput-object p2, p0, LOe/S0;->b:LBe/G;

    iput-object p3, p0, LOe/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, LOe/S0;->d:LOe/S0$b;

    return-void
.end method

.method public static A8(LVe/a;LBe/J;)LVe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LVe/a<",
            "TT;>;",
            "LBe/J;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/B;->c4(LBe/J;)LBe/B;

    move-result-object p1

    new-instance v0, LOe/S0$g;

    invoke-direct {v0, p0, p1}, LOe/S0$g;-><init>(LVe/a;LBe/B;)V

    invoke-static {v0}, LYe/a;->U(LVe/a;)LVe/a;

    move-result-object p0

    return-object p0
.end method

.method public static u8(LBe/G;I)LVe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;I)",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {p0}, LOe/S0;->y8(LBe/G;)LVe/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LOe/S0$i;

    invoke-direct {v0, p1}, LOe/S0$i;-><init>(I)V

    invoke-static {p0, v0}, LOe/S0;->x8(LBe/G;LOe/S0$b;)LVe/a;

    move-result-object p0

    return-object p0
.end method

.method public static v8(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LOe/S0;->w8(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;I)LVe/a;

    move-result-object p0

    return-object p0
.end method

.method public static w8(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;I)LVe/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LOe/S0$l;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LOe/S0$l;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {p0, v6}, LOe/S0;->x8(LBe/G;LOe/S0$b;)LVe/a;

    move-result-object p0

    return-object p0
.end method

.method public static x8(LBe/G;LOe/S0$b;)LVe/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;",
            "LOe/S0$b<",
            "TT;>;)",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, LOe/S0$k;

    invoke-direct {v1, v0, p1}, LOe/S0$k;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LOe/S0$b;)V

    new-instance v2, LOe/S0;

    invoke-direct {v2, v1, p0, v0, p1}, LOe/S0;-><init>(LBe/G;LBe/G;Ljava/util/concurrent/atomic/AtomicReference;LOe/S0$b;)V

    invoke-static {v2}, LYe/a;->U(LVe/a;)LVe/a;

    move-result-object p0

    return-object p0
.end method

.method public static y8(LBe/G;)LVe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;)",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LOe/S0;->f:LOe/S0$b;

    invoke-static {p0, v0}, LOe/S0;->x8(LBe/G;LOe/S0$b;)LVe/a;

    move-result-object p0

    return-object p0
.end method

.method public static z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LVe/a<",
            "TU;>;>;",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TU;>;+",
            "LBe/G<",
            "TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, LOe/S0$e;

    invoke-direct {v0, p0, p1}, LOe/S0$e;-><init>(Ljava/util/concurrent/Callable;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/S0;->e:LBe/G;

    invoke-interface {v0, p1}, LBe/G;->c(LBe/I;)V

    return-void
.end method

.method public b(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, LOe/S0$j;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public n8(LFe/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, LOe/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOe/S0$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOe/S0$j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, LOe/S0;->d:LOe/S0$b;

    invoke-interface {v1}, LOe/S0$b;->call()LOe/S0$h;

    move-result-object v1

    new-instance v2, LOe/S0$j;

    invoke-direct {v2, v1}, LOe/S0$j;-><init>(LOe/S0$h;)V

    iget-object v1, p0, LOe/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    iget-object v1, v0, LOe/S0$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, LOe/S0$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object p1, p0, LOe/S0;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    iget-object v0, v0, LOe/S0$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public source()LBe/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/G<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/S0;->b:LBe/G;

    return-object v0
.end method
