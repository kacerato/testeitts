.class public final LLe/A1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/A1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final h:J = 0x3540c639803a63b9L


# instance fields
.field public final b:LLe/A1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/A1$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:I

.field public volatile e:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:I


# direct methods
.method public constructor <init>(LLe/A1$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/A1$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/A1$a;->b:LLe/A1$b;

    iput-wide p2, p0, LLe/A1$a;->c:J

    iput p4, p0, LLe/A1$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LLe/A1$a;->b:LLe/A1$b;

    iget-wide v1, p0, LLe/A1$a;->c:J

    iget-wide v3, v0, LLe/A1$b;->l:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LLe/A1$a;->f:Z

    invoke-virtual {v0}, LLe/A1$b;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/A1$a;->b:LLe/A1$b;

    iget-wide v1, p0, LLe/A1$a;->c:J

    iget-wide v3, v0, LLe/A1$b;->l:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, LLe/A1$a;->g:I

    if-nez v1, :cond_0

    iget-object v1, p0, LLe/A1$a;->e:LIe/o;

    invoke-interface {v1, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LLe/A1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v0}, LLe/A1$b;->c()V

    :cond_1
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

    iput v1, p0, LLe/A1$a;->g:I

    iput-object v0, p0, LLe/A1$a;->e:LIe/o;

    iput-boolean v2, p0, LLe/A1$a;->f:Z

    iget-object p1, p0, LLe/A1$a;->b:LLe/A1$b;

    invoke-virtual {p1}, LLe/A1$b;->c()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, LLe/A1$a;->g:I

    iput-object v0, p0, LLe/A1$a;->e:LIe/o;

    iget v0, p0, LLe/A1$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    return-void

    :cond_1
    new-instance v0, LRe/b;

    iget v1, p0, LLe/A1$a;->d:I

    invoke-direct {v0, v1}, LRe/b;-><init>(I)V

    iput-object v0, p0, LLe/A1$a;->e:LIe/o;

    iget v0, p0, LLe/A1$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, LLe/A1$a;->b:LLe/A1$b;

    iget-wide v1, p0, LLe/A1$a;->c:J

    iget-wide v3, v0, LLe/A1$b;->l:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, v0, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, v0, LLe/A1$b;->e:Z

    if-nez p1, :cond_0

    iget-object p1, v0, LLe/A1$b;->i:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/A1$a;->f:Z

    invoke-virtual {v0}, LLe/A1$b;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
