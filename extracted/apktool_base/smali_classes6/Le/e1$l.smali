.class public final LLe/e1$l;
.super LLe/e1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/e1$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = 0x2ffd21f3bea38aacL


# instance fields
.field public final f:LBe/J;

.field public final g:J

.field public final h:Ljava/util/concurrent/TimeUnit;

.field public final i:I


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0

    invoke-direct {p0}, LLe/e1$a;-><init>()V

    iput-object p5, p0, LLe/e1$l;->f:LBe/J;

    iput p1, p0, LLe/e1$l;->i:I

    iput-wide p2, p0, LLe/e1$l;->g:J

    iput-object p4, p0, LLe/e1$l;->h:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Laf/d;

    iget-object v1, p0, LLe/e1$l;->f:LBe/J;

    iget-object v2, p0, LLe/e1$l;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, LLe/e1$l;->h:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Laf/d;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public g()LLe/e1$f;
    .locals 7

    iget-object v0, p0, LLe/e1$l;->f:LBe/J;

    iget-object v1, p0, LLe/e1$l;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, LLe/e1$l;->g:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLe/e1$f;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    :goto_0
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v2, LLe/e1$f;->b:Ljava/lang/Object;

    check-cast v4, Laf/d;

    invoke-virtual {v4}, Laf/d;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Laf/d;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Laf/d;->a()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Laf/d;

    invoke-virtual {p1}, Laf/d;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 8

    iget-object v0, p0, LLe/e1$l;->f:LBe/J;

    iget-object v1, p0, LLe/e1$l;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, LLe/e1$l;->g:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLe/e1$f;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    const/4 v4, 0x0

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-eqz v2, :cond_1

    iget v5, p0, LLe/e1$a;->c:I

    iget v6, p0, LLe/e1$l;->i:I

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, LLe/e1$a;->c:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    goto :goto_0

    :cond_0
    iget-object v5, v2, LLe/e1$f;->b:Ljava/lang/Object;

    check-cast v5, Laf/d;

    invoke-virtual {v5}, Laf/d;->a()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget v3, p0, LLe/e1$a;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, LLe/e1$a;->c:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, LLe/e1$a;->m(LLe/e1$f;)V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 10

    iget-object v0, p0, LLe/e1$l;->f:LBe/J;

    iget-object v1, p0, LLe/e1$l;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, LLe/e1$l;->g:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLe/e1$f;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    iget v5, p0, LLe/e1$a;->c:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    iget-object v5, v2, LLe/e1$f;->b:Ljava/lang/Object;

    check-cast v5, Laf/d;

    invoke-virtual {v5}, Laf/d;->a()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget v3, p0, LLe/e1$a;->c:I

    sub-int/2addr v3, v6

    iput v3, p0, LLe/e1$a;->c:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/e1$f;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, LLe/e1$a;->m(LLe/e1$f;)V

    :cond_1
    return-void
.end method
