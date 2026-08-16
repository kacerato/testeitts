.class public final LKe/C;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/C$a;
    }
.end annotation


# instance fields
.field public final b:[LBe/i;


# direct methods
.method public constructor <init>([LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/C;->b:[LBe/i;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 8

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, LKe/C;->b:[LBe/i;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lio/reactivex/internal/util/c;

    invoke-direct {v2}, Lio/reactivex/internal/util/c;-><init>()V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object v3, p0, LKe/C;->b:[LBe/i;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v0}, LDe/b;->d()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "A completable source is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    :cond_1
    new-instance v7, LKe/C$a;

    invoke-direct {v7, p1, v0, v2, v1}, LKe/C$a;-><init>(LBe/f;LDe/b;Lio/reactivex/internal/util/c;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v7}, LBe/i;->b(LBe/f;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, LBe/f;->a()V

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
