.class public abstract LLe/F$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LBe/n;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LBe/n<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final d:J = 0x65ac35ee8a56a4bfL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LGe/h;


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/F$b;->b:Lhn/c;

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LLe/F$b;->c:LGe/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LLe/F$b;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, LLe/F$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LLe/F$b;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {v1}, LGe/h;->dispose()V

    throw v0
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, LLe/F$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :try_start_0
    iget-object v0, p0, LLe/F$b;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {p1}, LGe/h;->dispose()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    throw p1
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    invoke-virtual {p0}, LLe/F$b;->k()V

    return-void
.end method

.method public final e(LFe/f;)V
    .locals 1

    new-instance v0, LGe/b;

    invoke-direct {v0, p1}, LGe/b;-><init>(LFe/f;)V

    invoke-virtual {p0, v0}, LLe/F$b;->g(LDe/c;)V

    return-void
.end method

.method public f(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, LLe/F$b;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final g(LDe/c;)V
    .locals 1

    iget-object v0, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->b(LDe/c;)Z

    return-void
.end method

.method public final i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/F$b;->j()V

    :cond_0
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, LLe/F$b;->c:LGe/h;

    invoke-virtual {v0}, LGe/h;->d()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public final l()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1}, LLe/F$b;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final serialize()LBe/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/F$i;

    invoke-direct {v0, p0}, LLe/F$i;-><init>(LLe/F$b;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
