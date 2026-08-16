.class public final LLe/e1;
.super LEe/a;
.source "SourceFile"

# interfaces
.implements LIe/h;
.implements LGe/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/e1$c;,
        LLe/e1$i;,
        LLe/e1$k;,
        LLe/e1$h;,
        LLe/e1$b;,
        LLe/e1$e;,
        LLe/e1$l;,
        LLe/e1$m;,
        LLe/e1$a;,
        LLe/e1$f;,
        LLe/e1$n;,
        LLe/e1$g;,
        LLe/e1$d;,
        LLe/e1$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LEe/a<",
        "TT;>;",
        "LIe/h<",
        "TT;>;",
        "LGe/g;"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/Callable;


# instance fields
.field public final c:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/e1$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LLe/e1$g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LLe/e1$c;

    invoke-direct {v0}, LLe/e1$c;-><init>()V

    sput-object v0, LLe/e1;->g:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Lhn/b;LBe/l;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/e1$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LLe/e1$g<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LEe/a;-><init>()V

    iput-object p1, p0, LLe/e1;->f:Lhn/b;

    iput-object p2, p0, LLe/e1;->c:LBe/l;

    iput-object p3, p0, LLe/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, LLe/e1;->e:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static Z8(LBe/l;I)LEe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;I)",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {p0}, LLe/e1;->d9(LBe/l;)LEe/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LLe/e1$h;

    invoke-direct {v0, p1}, LLe/e1$h;-><init>(I)V

    invoke-static {p0, v0}, LLe/e1;->c9(LBe/l;Ljava/util/concurrent/Callable;)LEe/a;

    move-result-object p0

    return-object p0
.end method

.method public static a9(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)LEe/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LLe/e1;->b9(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;I)LEe/a;

    move-result-object p0

    return-object p0
.end method

.method public static b9(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;I)LEe/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, LLe/e1$k;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LLe/e1$k;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {p0, v6}, LLe/e1;->c9(LBe/l;Ljava/util/concurrent/Callable;)LEe/a;

    move-result-object p0

    return-object p0
.end method

.method public static c9(LBe/l;Ljava/util/concurrent/Callable;)LEe/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LLe/e1$g<",
            "TT;>;>;)",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, LLe/e1$i;

    invoke-direct {v1, v0, p1}, LLe/e1$i;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    new-instance v2, LLe/e1;

    invoke-direct {v2, v1, p0, v0, p1}, LLe/e1;-><init>(Lhn/b;LBe/l;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, LYe/a;->T(LEe/a;)LEe/a;

    move-result-object p0

    return-object p0
.end method

.method public static d9(LBe/l;)LEe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "+TT;>;)",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LLe/e1;->g:Ljava/util/concurrent/Callable;

    invoke-static {p0, v0}, LLe/e1;->c9(LBe/l;Ljava/util/concurrent/Callable;)LEe/a;

    move-result-object p0

    return-object p0
.end method

.method public static e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;
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
            "LEe/a<",
            "TU;>;>;",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TU;>;+",
            "Lhn/b<",
            "TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, LLe/e1$e;

    invoke-direct {v0, p0, p1}, LLe/e1$e;-><init>(Ljava/util/concurrent/Callable;LFe/o;)V

    return-object v0
.end method

.method public static f9(LEe/a;LBe/J;)LEe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LEe/a<",
            "TT;>;",
            "LBe/J;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/l;->n4(LBe/J;)LBe/l;

    move-result-object p1

    new-instance v0, LLe/e1$b;

    invoke-direct {v0, p0, p1}, LLe/e1$b;-><init>(LEe/a;LBe/l;)V

    invoke-static {v0}, LYe/a;->T(LEe/a;)LEe/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public S8(LFe/g;)V
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
    iget-object v0, p0, LLe/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/e1$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LLe/e1$j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    iget-object v1, p0, LLe/e1;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLe/e1$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, LLe/e1$j;

    invoke-direct {v2, v1}, LLe/e1$j;-><init>(LLe/e1$g;)V

    iget-object v1, p0, LLe/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    iget-object v1, v0, LLe/e1$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, LLe/e1$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    :try_start_1
    invoke-interface {p1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    iget-object p1, p0, LLe/e1;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    iget-object v0, v0, LLe/e1$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public b(LDe/c;)V
    .locals 2

    iget-object v0, p0, LLe/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, LLe/e1$j;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public m6(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/e1;->f:Lhn/b;

    invoke-interface {v0, p1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method

.method public source()Lhn/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LLe/e1;->c:LBe/l;

    return-object v0
.end method
