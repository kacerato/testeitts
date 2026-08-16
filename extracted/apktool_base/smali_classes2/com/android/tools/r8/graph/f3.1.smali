.class public interface abstract Lcom/android/tools/r8/graph/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/c3;->a:Z

    return-void
.end method


# virtual methods
.method public abstract C()Lcom/android/tools/r8/graph/J0;
.end method

.method public abstract P()Lcom/android/tools/r8/graph/i0;
.end method

.method public abstract Q()Lcom/android/tools/r8/graph/a6;
.end method

.method public abstract T()I
.end method

.method public abstract Y()I
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;)I
.end method

.method public a(Lcom/android/tools/r8/graph/f3;Lcom/android/tools/r8/internal/pf;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/graph/f3;->l()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/f3;->l()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/c;->a(II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/c3;->a:Z

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/graph/i0;

    .line 6
    instance-of v0, v0, Lcom/android/tools/r8/graph/a6;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/graph/f3;->Q()Lcom/android/tools/r8/graph/a6;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/f3;->Q()Lcom/android/tools/r8/graph/a6;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/f3;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1

    .line 9
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_4
    return v2

    .line 10
    :cond_5
    invoke-interface {p0}, Lcom/android/tools/r8/graph/f3;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/f3;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/y;Z)Lcom/android/tools/r8/graph/f3;
.end method

.method public abstract a(Lcom/android/tools/r8/dex/X;)V
.end method

.method public abstract a(Lcom/android/tools/r8/dex/r;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/H5;)I
.end method

.method public abstract c(Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract l()I
.end method

.method public abstract o()[Lcom/android/tools/r8/graph/J0$a;
.end method

.method public abstract r()[Lcom/android/tools/r8/graph/J0$b;
.end method

.method public abstract u()Lcom/android/tools/r8/graph/Z0;
.end method
