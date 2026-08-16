.class public final LOe/X$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x3fec6c572fe7d027L


# instance fields
.field public final b:J

.field public final c:LOe/X$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/X$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public volatile e:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TU;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(LOe/X$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/X$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, LOe/X$a;->b:J

    iput-object p1, p0, LOe/X$a;->c:LOe/X$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/X$a;->d:Z

    iget-object v0, p0, LOe/X$a;->c:LOe/X$b;

    invoke-virtual {v0}, LOe/X$b;->g()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LOe/X$a;->f:I

    iput-object p1, p0, LOe/X$a;->e:LIe/o;

    iput-boolean v1, p0, LOe/X$a;->d:Z

    iget-object p1, p0, LOe/X$a;->c:LOe/X$b;

    invoke-virtual {p1}, LOe/X$b;->g()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LOe/X$a;->f:I

    iput-object p1, p0, LOe/X$a;->e:LIe/o;

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget v0, p0, LOe/X$a;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/X$a;->c:LOe/X$b;

    invoke-virtual {v0, p1, p0}, LOe/X$b;->l(Ljava/lang/Object;LOe/X$a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOe/X$a;->c:LOe/X$b;

    invoke-virtual {p1}, LOe/X$b;->g()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/X$a;->c:LOe/X$b;

    iget-object v0, v0, LOe/X$b;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LOe/X$a;->c:LOe/X$b;

    iget-boolean v0, p1, LOe/X$b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, LOe/X$b;->f()Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/X$a;->d:Z

    iget-object p1, p0, LOe/X$a;->c:LOe/X$b;

    invoke-virtual {p1}, LOe/X$b;->g()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
