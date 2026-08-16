.class public final LZe/f;
.super LZe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZe/f$d;,
        LZe/f$e;,
        LZe/f$f;,
        LZe/f$a;,
        LZe/f$g;,
        LZe/f$c;,
        LZe/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LZe/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:[Ljava/lang/Object;

.field public static final g:[LZe/f$c;

.field public static final h:[LZe/f$c;


# instance fields
.field public final c:LZe/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "LZe/f$c<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, LZe/f;->f:[Ljava/lang/Object;

    new-array v1, v0, [LZe/f$c;

    sput-object v1, LZe/f;->g:[LZe/f$c;

    new-array v0, v0, [LZe/f$c;

    sput-object v0, LZe/f;->h:[LZe/f$c;

    return-void
.end method

.method public constructor <init>(LZe/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/f$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LZe/c;-><init>()V

    iput-object p1, p0, LZe/f;->c:LZe/f$b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, LZe/f;->g:[LZe/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static V8()LZe/f;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LZe/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LZe/f;

    new-instance v1, LZe/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LZe/f$g;-><init>(I)V

    invoke-direct {v0, v1}, LZe/f;-><init>(LZe/f$b;)V

    return-object v0
.end method

.method public static W8(I)LZe/f;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "LZe/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LZe/f;

    new-instance v1, LZe/f$g;

    invoke-direct {v1, p0}, LZe/f$g;-><init>(I)V

    invoke-direct {v0, v1}, LZe/f;-><init>(LZe/f$b;)V

    return-object v0
.end method

.method public static X8()LZe/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LZe/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LZe/f;

    new-instance v1, LZe/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, LZe/f$e;-><init>(I)V

    invoke-direct {v0, v1}, LZe/f;-><init>(LZe/f$b;)V

    return-object v0
.end method

.method public static Y8(I)LZe/f;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "LZe/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LZe/f;

    new-instance v1, LZe/f$e;

    invoke-direct {v1, p0}, LZe/f$e;-><init>(I)V

    invoke-direct {v0, v1}, LZe/f;-><init>(LZe/f$b;)V

    return-object v0
.end method

.method public static Z8(JLjava/util/concurrent/TimeUnit;LBe/J;)LZe/f;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LZe/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LZe/f;

    new-instance v7, LZe/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, LZe/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-direct {v0, v7}, LZe/f;-><init>(LZe/f$b;)V

    return-object v0
.end method

.method public static a9(JLjava/util/concurrent/TimeUnit;LBe/J;I)LZe/f;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LZe/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LZe/f;

    new-instance v7, LZe/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, LZe/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-direct {v0, v7}, LZe/f;-><init>(LZe/f$b;)V

    return-object v0
.end method


# virtual methods
.method public O8()Ljava/lang/Throwable;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZe/f$b;->getError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public P8()Z
    .locals 2

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZe/f$b;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q8()Z
    .locals 1

    iget-object v0, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZe/f$c;

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
    .locals 2

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZe/f$b;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T8(LZe/f$c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZe/f$c;

    sget-object v1, LZe/f;->h:[LZe/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [LZe/f$c;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public U8()V
    .locals 1

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->a()V

    return-void
.end method

.method public a()V
    .locals 5

    iget-boolean v0, p0, LZe/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/f;->d:Z

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->complete()V

    iget-object v1, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, LZe/f;->h:[LZe/f$c;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LZe/f$c;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, LZe/f$b;->e(LZe/f$c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b9()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c9()[Ljava/lang/Object;
    .locals 2

    sget-object v0, LZe/f;->f:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, LZe/f;->d9([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public d9([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0, p1}, LZe/f$b;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e9()Z
    .locals 1

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f9(LZe/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/f$c<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZe/f$c;

    sget-object v1, LZe/f;->h:[LZe/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, LZe/f;->g:[LZe/f$c;

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    array-length v1, v0

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

    sget-object v1, LZe/f;->g:[LZe/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [LZe/f$c;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public g9()I
    .locals 1

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0}, LZe/f$b;->size()I

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, LZe/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0, p1}, LZe/f$b;->c(Ljava/lang/Object;)V

    iget-object p1, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LZe/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, LZe/f$b;->e(LZe/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h9()I
    .locals 1

    iget-object v0, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZe/f$c;

    array-length v0, v0

    return v0
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-boolean v0, p0, LZe/f;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lhn/d;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    return-void
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

    new-instance v0, LZe/f$c;

    invoke-direct {v0, p1, p0}, LZe/f$c;-><init>(Lhn/c;LZe/f;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {p0, v0}, LZe/f;->T8(LZe/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v0, LZe/f$c;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, LZe/f;->f9(LZe/f$c;)V

    return-void

    :cond_0
    iget-object p1, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {p1, v0}, LZe/f$b;->e(LZe/f$c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, LZe/f;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/f;->d:Z

    iget-object v0, p0, LZe/f;->c:LZe/f$b;

    invoke-interface {v0, p1}, LZe/f$b;->d(Ljava/lang/Throwable;)V

    iget-object p1, p0, LZe/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LZe/f;->h:[LZe/f$c;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LZe/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, LZe/f$b;->e(LZe/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
