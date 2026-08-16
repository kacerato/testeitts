.class public final LOe/r;
.super LOe/a;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/r$b;,
        LOe/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:[LOe/r$a;

.field public static final m:[LOe/r$a;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "LOe/r$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public volatile f:J

.field public final g:LOe/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:LOe/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:I

.field public j:Ljava/lang/Throwable;

.field public volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [LOe/r$a;

    sput-object v1, LOe/r;->l:[LOe/r$a;

    new-array v0, v0, [LOe/r$a;

    sput-object v0, LOe/r;->m:[LOe/r$a;

    return-void
.end method

.method public constructor <init>(LBe/B;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput p2, p0, LOe/r;->d:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LOe/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, LOe/r$b;

    invoke-direct {p1, p2}, LOe/r$b;-><init>(I)V

    iput-object p1, p0, LOe/r;->g:LOe/r$b;

    iput-object p1, p0, LOe/r;->h:LOe/r$b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, LOe/r;->l:[LOe/r$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LOe/r$a;

    invoke-direct {v0, p1, p0}, LOe/r$a;-><init>(LBe/I;LOe/r;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {p0, v0}, LOe/r;->j8(LOe/r$a;)V

    iget-object p1, p0, LOe/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LOe/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, p0}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LOe/r;->o8(LOe/r$a;)V

    :goto_0
    return-void
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/r;->k:Z

    iget-object v0, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LOe/r;->m:[LOe/r$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOe/r$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, LOe/r;->o8(LOe/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, LOe/r;->i:I

    iget v1, p0, LOe/r;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, LOe/r$b;

    invoke-direct {v1, v0}, LOe/r$b;-><init>(I)V

    iget-object v0, v1, LOe/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iput v3, p0, LOe/r;->i:I

    iget-object p1, p0, LOe/r;->h:LOe/r$b;

    iput-object v1, p1, LOe/r$b;->b:LOe/r$b;

    iput-object v1, p0, LOe/r;->h:LOe/r$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LOe/r;->h:LOe/r$b;

    iget-object v1, v1, LOe/r$b;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    iput v0, p0, LOe/r;->i:I

    :goto_0
    iget-wide v0, p0, LOe/r;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, LOe/r;->f:J

    iget-object p1, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LOe/r$a;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, LOe/r;->o8(LOe/r$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public j8(LOe/r$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/r$a<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOe/r$a;

    sget-object v1, LOe/r;->m:[LOe/r$a;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [LOe/r$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    iget-object v1, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public k8()J
    .locals 2

    iget-wide v0, p0, LOe/r;->f:J

    return-wide v0
.end method

.method public l8()Z
    .locals 1

    iget-object v0, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOe/r$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m8()Z
    .locals 1

    iget-object v0, p0, LOe/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public n8(LOe/r$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/r$a<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOe/r$a;

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

    sget-object v1, LOe/r;->l:[LOe/r$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [LOe/r$a;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public o8(LOe/r$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/r$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, LOe/r$a;->f:J

    iget v2, p1, LOe/r$a;->e:I

    iget-object v3, p1, LOe/r$a;->d:LOe/r$b;

    iget-object v4, p1, LOe/r$a;->b:LBe/I;

    iget v5, p0, LOe/r;->d:I

    const/4 v6, 0x1

    move v7, v6

    :cond_1
    :goto_0
    iget-boolean v8, p1, LOe/r$a;->g:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    iput-object v9, p1, LOe/r$a;->d:LOe/r$b;

    return-void

    :cond_2
    iget-boolean v8, p0, LOe/r;->k:Z

    iget-wide v10, p0, LOe/r;->f:J

    cmp-long v10, v10, v0

    const/4 v11, 0x0

    if-nez v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v11

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    iput-object v9, p1, LOe/r$a;->d:LOe/r$b;

    iget-object p1, p0, LOe/r;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    invoke-interface {v4, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v4}, LBe/I;->a()V

    :goto_2
    return-void

    :cond_5
    if-nez v10, :cond_7

    if-ne v2, v5, :cond_6

    iget-object v2, v3, LOe/r$b;->b:LOe/r$b;

    move-object v3, v2

    move v2, v11

    :cond_6
    iget-object v8, v3, LOe/r$b;->a:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-interface {v4, v8}, LBe/I;->h(Ljava/lang/Object;)V

    add-int/2addr v2, v6

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    :cond_7
    iput-wide v0, p1, LOe/r$a;->f:J

    iput v2, p1, LOe/r$a;->e:I

    iput-object v3, p1, LOe/r$a;->d:LOe/r$b;

    neg-int v7, v7

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iput-object p1, p0, LOe/r;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/r;->k:Z

    iget-object p1, p0, LOe/r;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, LOe/r;->m:[LOe/r$a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LOe/r$a;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, LOe/r;->o8(LOe/r$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
