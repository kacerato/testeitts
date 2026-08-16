.class public final Lbf/f;
.super Lbf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbf/f$d;,
        Lbf/f$e;,
        Lbf/f$f;,
        Lbf/f$a;,
        Lbf/f$g;,
        Lbf/f$c;,
        Lbf/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:[Lbf/f$c;

.field public static final f:[Lbf/f$c;

.field public static final g:[Ljava/lang/Object;


# instance fields
.field public final b:Lbf/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lbf/f$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lbf/f$c;

    sput-object v1, Lbf/f;->e:[Lbf/f$c;

    new-array v1, v0, [Lbf/f$c;

    sput-object v1, Lbf/f;->f:[Lbf/f$c;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lbf/f;->g:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbf/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/f$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbf/i;-><init>()V

    iput-object p1, p0, Lbf/f;->b:Lbf/f$b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lbf/f;->e:[Lbf/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static q8()Lbf/f;
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
            "Lbf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/f;

    new-instance v1, Lbf/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbf/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lbf/f;-><init>(Lbf/f$b;)V

    return-object v0
.end method

.method public static r8(I)Lbf/f;
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
            "Lbf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/f;

    new-instance v1, Lbf/f$g;

    invoke-direct {v1, p0}, Lbf/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lbf/f;-><init>(Lbf/f$b;)V

    return-object v0
.end method

.method public static s8()Lbf/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/f;

    new-instance v1, Lbf/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lbf/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lbf/f;-><init>(Lbf/f$b;)V

    return-object v0
.end method

.method public static t8(I)Lbf/f;
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
            "Lbf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/f;

    new-instance v1, Lbf/f$e;

    invoke-direct {v1, p0}, Lbf/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lbf/f;-><init>(Lbf/f$b;)V

    return-object v0
.end method

.method public static u8(JLjava/util/concurrent/TimeUnit;LBe/J;)Lbf/f;
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
            "Lbf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/f;

    new-instance v7, Lbf/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lbf/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-direct {v0, v7}, Lbf/f;-><init>(Lbf/f$b;)V

    return-object v0
.end method

.method public static v8(JLjava/util/concurrent/TimeUnit;LBe/J;I)Lbf/f;
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
            "Lbf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/f;

    new-instance v7, Lbf/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lbf/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-direct {v0, v7}, Lbf/f;-><init>(Lbf/f$b;)V

    return-object v0
.end method


# virtual methods
.method public A8()I
    .locals 1

    iget-object v0, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbf/f$c;

    array-length v0, v0

    return v0
.end method

.method public B8(Lbf/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/f$c<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbf/f$c;

    sget-object v1, Lbf/f;->f:[Lbf/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, Lbf/f;->e:[Lbf/f$c;

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

    sget-object v1, Lbf/f;->e:[Lbf/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lbf/f$c;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public C8()I
    .locals 1

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->size()I

    move-result v0

    return v0
.end method

.method public D8(Ljava/lang/Object;)[Lbf/f$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lbf/f$c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lbf/f$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lbf/f;->f:[Lbf/f$c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lbf/f$c;

    return-object p1

    :cond_0
    sget-object p1, Lbf/f;->f:[Lbf/f$c;

    return-object p1
.end method

.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lbf/f$c;

    invoke-direct {v0, p1, p0}, Lbf/f$c;-><init>(LBe/I;Lbf/f;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-boolean p1, v0, Lbf/f$c;->e:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lbf/f;->o8(Lbf/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, v0, Lbf/f$c;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lbf/f;->B8(Lbf/f$c;)V

    return-void

    :cond_0
    iget-object p1, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {p1, v0}, Lbf/f$b;->d(Lbf/f$c;)V

    :cond_1
    return-void
.end method

.method public a()V
    .locals 5

    iget-boolean v0, p0, Lbf/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/f;->d:Z

    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v1, v0}, Lbf/f$b;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lbf/f;->D8(Ljava/lang/Object;)[Lbf/f$c;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Lbf/f$b;->d(Lbf/f$c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-boolean v0, p0, Lbf/f;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_0
    return-void
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

    iget-boolean v0, p0, Lbf/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0, p1}, Lbf/f$b;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lbf/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Lbf/f$b;->d(Lbf/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j8()Ljava/lang/Throwable;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->j(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k8()Z
    .locals 1

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l8()Z
    .locals 1

    iget-object v0, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbf/f$c;

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

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o8(Lbf/f$c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbf/f$c;

    sget-object v1, Lbf/f;->f:[Lbf/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lbf/f$c;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, Lbf/f;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lbf/f;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/f;->d:Z

    invoke-static {p1}, Lio/reactivex/internal/util/p;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0, p1}, Lbf/f$b;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbf/f;->D8(Ljava/lang/Object;)[Lbf/f$c;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Lbf/f$b;->d(Lbf/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p8()V
    .locals 1

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->a()V

    return-void
.end method

.method public w8()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public x8()[Ljava/lang/Object;
    .locals 2

    sget-object v0, Lbf/f;->g:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbf/f;->y8([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public y8([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0, p1}, Lbf/f$b;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z8()Z
    .locals 1

    iget-object v0, p0, Lbf/f;->b:Lbf/f$b;

    invoke-interface {v0}, Lbf/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
