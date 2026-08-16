.class public final LKe/e$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final f:J = -0x6e8ac9652ad7cd50L


# instance fields
.field public final b:LBe/f;

.field public final c:[LBe/i;

.field public d:I

.field public final e:LGe/h;


# direct methods
.method public constructor <init>(LBe/f;[LBe/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LKe/e$a;->b:LBe/f;

    iput-object p2, p0, LKe/e$a;->c:[LBe/i;

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LKe/e$a;->e:LGe/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LKe/e$a;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LKe/e$a;->e:LGe/h;

    invoke-virtual {v0}, LGe/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LKe/e$a;->c:[LBe/i;

    :cond_2
    iget-object v1, p0, LKe/e$a;->e:LGe/h;

    invoke-virtual {v1}, LGe/h;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, LKe/e$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LKe/e$a;->d:I

    array-length v2, v0

    if-ne v1, v2, :cond_4

    iget-object v0, p0, LKe/e$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    return-void

    :cond_4
    aget-object v1, v0, v1

    invoke-interface {v1, p0}, LBe/i;->b(LBe/f;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LKe/e$a;->e:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LKe/e$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
