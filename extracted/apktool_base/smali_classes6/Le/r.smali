.class public final LLe/r;
.super LLe/a;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/r$b;,
        LLe/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final m:[LLe/r$a;

.field public static final n:[LLe/r$a;


# instance fields
.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "LLe/r$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public volatile g:J

.field public final h:LLe/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:LLe/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Ljava/lang/Throwable;

.field public volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [LLe/r$a;

    sput-object v1, LLe/r;->m:[LLe/r$a;

    new-array v0, v0, [LLe/r$a;

    sput-object v0, LLe/r;->n:[LLe/r$a;

    return-void
.end method

.method public constructor <init>(LBe/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput p2, p0, LLe/r;->e:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LLe/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, LLe/r$b;

    invoke-direct {p1, p2}, LLe/r$b;-><init>(I)V

    iput-object p1, p0, LLe/r;->h:LLe/r$b;

    iput-object p1, p0, LLe/r;->i:LLe/r$b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, LLe/r;->m:[LLe/r$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public O8(LLe/r$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/r$a<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLe/r$a;

    sget-object v1, LLe/r;->n:[LLe/r$a;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [LLe/r$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    iget-object v1, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public P8()J
    .locals 2

    iget-wide v0, p0, LLe/r;->g:J

    return-wide v0
.end method

.method public Q8()Z
    .locals 1

    iget-object v0, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLe/r$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R8()Z
    .locals 1

    iget-object v0, p0, LLe/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public S8(LLe/r$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/r$a<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLe/r$a;

    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    sget-object v1, LLe/r;->m:[LLe/r$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [LLe/r$a;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public T8(LLe/r$a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/r$a<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, v1, LLe/r$a;->g:J

    iget v4, v1, LLe/r$a;->f:I

    iget-object v5, v1, LLe/r$a;->e:LLe/r$b;

    iget-object v6, v1, LLe/r$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v7, v1, LLe/r$a;->b:Lhn/c;

    iget v8, v0, LLe/r;->e:I

    const/4 v9, 0x1

    move v10, v9

    :cond_1
    :goto_0
    iget-boolean v11, v0, LLe/r;->l:Z

    iget-wide v12, v0, LLe/r;->g:J

    cmp-long v12, v12, v2

    const/4 v13, 0x0

    if-nez v12, :cond_2

    move v12, v9

    goto :goto_1

    :cond_2
    move v12, v13

    :goto_1
    const/4 v14, 0x0

    if-eqz v11, :cond_4

    if-eqz v12, :cond_4

    iput-object v14, v1, LLe/r$a;->e:LLe/r$b;

    iget-object v1, v0, LLe/r;->k:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    invoke-interface {v7, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Lhn/c;->a()V

    :goto_2
    return-void

    :cond_4
    if-nez v12, :cond_7

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v15, v11, v15

    if-nez v15, :cond_5

    iput-object v14, v1, LLe/r$a;->e:LLe/r$b;

    return-void

    :cond_5
    cmp-long v11, v11, v2

    if-eqz v11, :cond_7

    if-ne v4, v8, :cond_6

    iget-object v4, v5, LLe/r$b;->b:LLe/r$b;

    move-object v5, v4

    move v4, v13

    :cond_6
    iget-object v11, v5, LLe/r$b;->a:[Ljava/lang/Object;

    aget-object v11, v11, v4

    invoke-interface {v7, v11}, Lhn/c;->h(Ljava/lang/Object;)V

    add-int/2addr v4, v9

    const-wide/16 v11, 0x1

    add-long/2addr v2, v11

    goto :goto_0

    :cond_7
    iput-wide v2, v1, LLe/r$a;->g:J

    iput v4, v1, LLe/r$a;->f:I

    iput-object v5, v1, LLe/r$a;->e:LLe/r$b;

    neg-int v10, v10

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v10

    if-nez v10, :cond_1

    return-void
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/r;->l:Z

    iget-object v0, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LLe/r;->n:[LLe/r$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLe/r$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, LLe/r;->T8(LLe/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, LLe/r;->j:I

    iget v1, p0, LLe/r;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, LLe/r$b;

    invoke-direct {v1, v0}, LLe/r$b;-><init>(I)V

    iget-object v0, v1, LLe/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iput v3, p0, LLe/r;->j:I

    iget-object p1, p0, LLe/r;->i:LLe/r$b;

    iput-object v1, p1, LLe/r$b;->b:LLe/r$b;

    iput-object v1, p0, LLe/r;->i:LLe/r$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LLe/r;->i:LLe/r$b;

    iget-object v1, v1, LLe/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    iput v0, p0, LLe/r;->j:I

    :goto_0
    iget-wide v0, p0, LLe/r;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, LLe/r;->g:J

    iget-object p1, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LLe/r$a;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, LLe/r;->T8(LLe/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    return-void
.end method

.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LLe/r$a;

    invoke-direct {v0, p1, p0}, LLe/r$a;-><init>(Lhn/c;LLe/r;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {p0, v0}, LLe/r;->O8(LLe/r$a;)V

    iget-object p1, p0, LLe/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LLe/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, p0}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LLe/r;->T8(LLe/r$a;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, LLe/r;->l:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LLe/r;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/r;->l:Z

    iget-object p1, p0, LLe/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, LLe/r;->n:[LLe/r$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LLe/r$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, LLe/r;->T8(LLe/r$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
