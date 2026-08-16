.class public final LJe/s;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final g:J = -0x4b2db39073b2fa8dL


# instance fields
.field public final b:LJe/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJe/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:I


# direct methods
.method public constructor <init>(LJe/t;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJe/t<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LJe/s;->b:LJe/t;

    iput p2, p0, LJe/s;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LJe/s;->b:LJe/t;

    invoke-interface {v0, p0}, LJe/t;->i(LJe/s;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LJe/s;->f:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, LJe/s;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LJe/s;->f:I

    iput-object p1, p0, LJe/s;->d:LIe/o;

    iput-boolean v1, p0, LJe/s;->e:Z

    iget-object p1, p0, LJe/s;->b:LJe/t;

    invoke-interface {p1, p0}, LJe/t;->i(LJe/s;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LJe/s;->f:I

    iput-object p1, p0, LJe/s;->d:LIe/o;

    return-void

    :cond_1
    iget p1, p0, LJe/s;->c:I

    neg-int p1, p1

    invoke-static {p1}, Lio/reactivex/internal/util/u;->c(I)LIe/o;

    move-result-object p1

    iput-object p1, p0, LJe/s;->d:LIe/o;

    :cond_2
    return-void
.end method

.method public f()LIe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LIe/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LJe/s;->d:LIe/o;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/s;->e:Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, LJe/s;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, LJe/s;->b:LJe/t;

    invoke-interface {v0, p0, p1}, LJe/t;->g(LJe/s;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJe/s;->b:LJe/t;

    invoke-interface {p1}, LJe/t;->f()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LJe/s;->b:LJe/t;

    invoke-interface {v0, p0, p1}, LJe/t;->j(LJe/s;Ljava/lang/Throwable;)V

    return-void
.end method
