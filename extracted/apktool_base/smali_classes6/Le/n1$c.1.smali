.class public final LLe/n1$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:J = 0x42abb13cc59281abL


# instance fields
.field public final b:LLe/n1$b;

.field public final c:I

.field public final d:I

.field public e:J

.field public volatile f:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field public h:I


# direct methods
.method public constructor <init>(LLe/n1$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/n1$c;->b:LLe/n1$b;

    shr-int/lit8 p1, p2, 0x2

    sub-int p1, p2, p1

    iput p1, p0, LLe/n1$c;->d:I

    iput p2, p0, LLe/n1$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/n1$c;->g:Z

    iget-object v0, p0, LLe/n1$c;->b:LLe/n1$b;

    invoke-interface {v0}, LLe/n1$b;->f()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LLe/n1$c;->f:LIe/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    iget v0, p0, LLe/n1$c;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, LLe/n1$c;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, LLe/n1$c;->d:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LLe/n1$c;->e:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhn/d;

    invoke-interface {v2, v0, v1}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, LLe/n1$c;->e:J

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, LLe/n1$c;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/n1$c;->f:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, LLe/n1$c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p1, p0, LLe/n1$c;->b:LLe/n1$b;

    invoke-interface {p1}, LLe/n1$b;->f()V

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

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LIe/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, LLe/n1$c;->h:I

    iput-object v0, p0, LLe/n1$c;->f:LIe/o;

    iput-boolean v2, p0, LLe/n1$c;->g:Z

    iget-object p1, p0, LLe/n1$c;->b:LLe/n1$b;

    invoke-interface {p1}, LLe/n1$b;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LLe/n1$c;->h:I

    iput-object v0, p0, LLe/n1$c;->f:LIe/o;

    iget v0, p0, LLe/n1$c;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    return-void

    :cond_1
    new-instance v0, LRe/b;

    iget v1, p0, LLe/n1$c;->c:I

    invoke-direct {v0, v1}, LRe/b;-><init>(I)V

    iput-object v0, p0, LLe/n1$c;->f:LIe/o;

    iget v0, p0, LLe/n1$c;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/n1$c;->b:LLe/n1$b;

    invoke-interface {v0, p1}, LLe/n1$b;->c(Ljava/lang/Throwable;)V

    return-void
.end method
