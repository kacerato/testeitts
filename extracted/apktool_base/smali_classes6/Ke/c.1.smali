.class public final LKe/c;
.super LBe/c;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/c$a;
    }
.end annotation


# static fields
.field public static final f:[LKe/c$a;

.field public static final g:[LKe/c$a;


# instance fields
.field public final b:LBe/i;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "LKe/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [LKe/c$a;

    sput-object v1, LKe/c;->f:[LKe/c$a;

    new-array v0, v0, [LKe/c$a;

    sput-object v0, LKe/c;->g:[LKe/c$a;

    return-void
.end method

.method public constructor <init>(LBe/i;)V
    .locals 1

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/c;->b:LBe/i;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, LKe/c;->f:[LKe/c$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LKe/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    new-instance v0, LKe/c$a;

    invoke-direct {v0, p0, p1}, LKe/c$a;-><init>(LKe/c;LBe/f;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    invoke-virtual {p0, v0}, LKe/c;->j1(LKe/c$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LKe/c$a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, LKe/c;->k1(LKe/c$a;)V

    :cond_0
    iget-object p1, p0, LKe/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LKe/c;->b:LBe/i;

    invoke-interface {p1, p0}, LBe/i;->b(LBe/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LKe/c;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, LBe/f;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LKe/c;->g:[LKe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v3, LKe/c$a;->b:LBe/f;

    invoke-interface {v3}, LBe/f;->a()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    return-void
.end method

.method public j1(LKe/c$a;)Z
    .locals 4

    :cond_0
    iget-object v0, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKe/c$a;

    sget-object v1, LKe/c;->g:[LKe/c$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [LKe/c$a;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public k1(LKe/c$a;)V
    .locals 6

    :cond_0
    iget-object v0, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKe/c$a;

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

    sget-object v1, LKe/c;->f:[LKe/c$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [LKe/c$a;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :goto_2
    iget-object v2, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iput-object p1, p0, LKe/c;->e:Ljava/lang/Throwable;

    iget-object v0, p0, LKe/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, LKe/c;->g:[LKe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v3, LKe/c$a;->b:LBe/f;

    invoke-interface {v3, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
