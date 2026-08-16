.class public final LKe/B;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/B$a;
    }
.end annotation


# instance fields
.field public final b:[LBe/i;


# direct methods
.method public constructor <init>([LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/B;->b:[LBe/i;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 6

    new-instance v0, LDe/b;

    invoke-direct {v0}, LDe/b;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v2, LKe/B$a;

    iget-object v3, p0, LKe/B;->b:[LBe/i;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p1, v1, v0, v3}, LKe/B$a;-><init>(LBe/f;Ljava/util/concurrent/atomic/AtomicBoolean;LDe/b;I)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object p1, p0, LKe/B;->b:[LBe/i;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v0}, LDe/b;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {v0}, LDe/b;->dispose()V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, LKe/B$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {v4, v2}, LBe/i;->b(LBe/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, LKe/B$a;->a()V

    return-void
.end method
