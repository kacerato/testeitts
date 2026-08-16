.class public final LKe/E;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/E$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/E;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 5

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    :try_start_0
    iget-object v1, p0, LKe/E;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "The source iterator returned is null"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, LKe/E$a;

    invoke-direct {v3, p1, v0, v2}, LKe/E$a;-><init>(LBe/f;LDe/b;Ljava/util/concurrent/atomic/AtomicInteger;)V

    :goto_0
    invoke-virtual {v0}, LDe/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_1

    invoke-virtual {v3}, LKe/E$a;->a()V

    return-void

    :cond_1
    invoke-virtual {v0}, LDe/b;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v4, "The iterator returned a null CompletableSource"

    invoke-static {p1, v4}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, LDe/b;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-interface {p1, v3}, LBe/i;->b(LBe/f;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, LDe/b;->dispose()V

    invoke-virtual {v3, p1}, LKe/E$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, LDe/b;->dispose()V

    invoke-virtual {v3, p1}, LKe/E$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
