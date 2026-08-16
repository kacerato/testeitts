.class public final LLe/S0;
.super LEe/a;
.source "SourceFile"

# interfaces
.implements LIe/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/S0$a;,
        LLe/S0$b;,
        LLe/S0$c;
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
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x8000000000000000L


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
            "LLe/S0$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/b;LBe/l;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/S0$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, LEe/a;-><init>()V

    iput-object p1, p0, LLe/S0;->f:Lhn/b;

    iput-object p2, p0, LLe/S0;->c:LBe/l;

    iput-object p3, p0, LLe/S0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput p4, p0, LLe/S0;->e:I

    return-void
.end method

.method public static Z8(LBe/l;I)LEe/a;
    .locals 3
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

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, LLe/S0$a;

    invoke-direct {v1, v0, p1}, LLe/S0$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    new-instance v2, LLe/S0;

    invoke-direct {v2, v1, p0, v0, p1}, LLe/S0;-><init>(Lhn/b;LBe/l;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-static {v2}, LYe/a;->T(LEe/a;)LEe/a;

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
    iget-object v0, p0, LLe/S0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/S0$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LLe/S0$c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, LLe/S0$c;

    iget-object v2, p0, LLe/S0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, LLe/S0;->e:I

    invoke-direct {v1, v2, v3}, LLe/S0$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    iget-object v2, p0, LLe/S0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, v0, LLe/S0$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, LLe/S0$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    :try_start_0
    invoke-interface {p1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    iget-object p1, p0, LLe/S0;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
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

    iget-object v0, p0, LLe/S0;->f:Lhn/b;

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

    iget-object v0, p0, LLe/S0;->c:LBe/l;

    return-object v0
.end method
