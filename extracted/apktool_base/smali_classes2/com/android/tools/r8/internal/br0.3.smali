.class public abstract Lcom/android/tools/r8/internal/br0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ar0;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    .line 8
    aget p0, p0, p1

    int-to-long p0, p0

    .line 9
    iget-wide v4, v0, Lcom/android/tools/r8/internal/kU;->a:J

    cmp-long v2, v4, p0

    if-gtz v2, :cond_0

    iget-wide v4, v0, Lcom/android/tools/r8/internal/kU;->b:J

    cmp-long p0, p0, v4

    if-gtz p0, :cond_0

    return v3

    :cond_0
    return v1

    .line 10
    :cond_1
    sget-boolean v2, Lcom/android/tools/r8/internal/br0;->a:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O0()Lcom/android/tools/r8/internal/lq0;

    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    .line 14
    aget-object p0, p0, p1

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/d61;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/d61;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public static a(Lcom/android/tools/r8/internal/ar0;Lcom/android/tools/r8/internal/F1;I)Z
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object p0

    .line 21
    iget-object p0, p0, Lcom/android/tools/r8/internal/tI;->o:[I

    .line 22
    aget p0, p0, p2

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->Y()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->G()Lcom/android/tools/r8/internal/Bh;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Bh;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object p1

    int-to-long v4, p0

    .line 26
    iget-wide v6, p1, Lcom/android/tools/r8/internal/kU;->a:J

    cmp-long p0, v6, v4

    if-gtz p0, :cond_1

    iget-wide p0, p1, Lcom/android/tools/r8/internal/kU;->b:J

    cmp-long p0, v4, p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1

    .line 27
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/br0;->a:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->k2()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O0()Lcom/android/tools/r8/internal/lq0;

    move-result-object p0

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    .line 31
    aget-object p0, p0, p2

    .line 32
    new-instance p2, Lcom/android/tools/r8/internal/d61;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/d61;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-eq p0, p1, :cond_6

    return v3

    :cond_6
    return v1
.end method
