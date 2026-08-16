.class public final LLe/a0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/a0;
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
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "TU;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final j:J = -0x3fec6c572fe7d027L


# instance fields
.field public final b:J

.field public final c:LLe/a0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/a0$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public volatile f:Z

.field public volatile g:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TU;>;"
        }
    .end annotation
.end field

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(LLe/a0$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/a0$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, LLe/a0$a;->b:J

    iput-object p1, p0, LLe/a0$a;->c:LLe/a0$b;

    iget p1, p1, LLe/a0$b;->f:I

    iput p1, p0, LLe/a0$a;->e:I

    shr-int/lit8 p1, p1, 0x2

    iput p1, p0, LLe/a0$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/a0$a;->f:Z

    iget-object v0, p0, LLe/a0$a;->c:LLe/a0$b;

    invoke-virtual {v0}, LLe/a0$b;->f()V

    return-void
.end method

.method public b(J)V
    .locals 2

    iget v0, p0, LLe/a0$a;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, LLe/a0$a;->h:J

    add-long/2addr v0, p1

    iget p1, p0, LLe/a0$a;->d:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LLe/a0$a;->h:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/d;

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, LLe/a0$a;->h:J

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget v0, p0, LLe/a0$a;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LLe/a0$a;->c:LLe/a0$b;

    invoke-virtual {v0, p1, p0}, LLe/a0$b;->o(Ljava/lang/Object;LLe/a0$a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LLe/a0$a;->c:LLe/a0$b;

    invoke-virtual {p1}, LLe/a0$b;->f()V

    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 3

    invoke-static {p0, p1}, LUe/j;->j(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, LIe/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LIe/l;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, LIe/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LLe/a0$a;->i:I

    iput-object v0, p0, LLe/a0$a;->g:LIe/o;

    iput-boolean v2, p0, LLe/a0$a;->f:Z

    iget-object p1, p0, LLe/a0$a;->c:LLe/a0$b;

    invoke-virtual {p1}, LLe/a0$b;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LLe/a0$a;->i:I

    iput-object v0, p0, LLe/a0$a;->g:LIe/o;

    :cond_1
    iget v0, p0, LLe/a0$a;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, LLe/a0$a;->c:LLe/a0$b;

    invoke-virtual {v0, p0, p1}, LLe/a0$b;->m(LLe/a0$a;Ljava/lang/Throwable;)V

    return-void
.end method
