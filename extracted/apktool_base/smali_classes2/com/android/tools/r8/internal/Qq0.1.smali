.class public final Lcom/android/tools/r8/internal/Qq0;
.super Lcom/android/tools/r8/internal/I3;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I3;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final P0()Lcom/android/tools/r8/internal/Qq0;
    .locals 0

    return-object p0
.end method

.method public final a(DD)D
    .locals 0

    .line 1
    sub-double/2addr p1, p3

    return-wide p1
.end method

.method public final a(FF)F
    .locals 0

    .line 2
    sub-float/2addr p1, p2

    return p1
.end method

.method public final a(II)I
    .locals 0

    .line 3
    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 4
    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/vs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/vs;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 12

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/u6;->a(Lcom/android/tools/r8/internal/Je0;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qq0;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/Qq0;->n:Z

    if-nez v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 17
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 18
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget v4, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 21
    iget-object v5, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v5, v3, v4}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v3

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->x2()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/Qr;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/tools/r8/internal/Qr;-><init>(III)V

    goto/16 :goto_6

    :cond_3
    if-nez v0, :cond_5

    .line 24
    iget-wide v4, v1, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/P10;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_5
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Pr;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/tools/r8/internal/Pr;-><init>(III)V

    goto/16 :goto_6

    .line 27
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qq0;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/Qq0;->n:Z

    const-wide/16 v3, 0x7fff

    const-wide/16 v5, -0x8000

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 29
    iget-object v8, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    if-ne v8, v1, :cond_7

    .line 30
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    .line 32
    iget-wide v7, v1, Lcom/android/tools/r8/internal/qh;->l:J

    neg-long v7, v7

    cmp-long v1, v5, v7

    if-gtz v1, :cond_7

    cmp-long v1, v7, v3

    if-gtz v1, :cond_7

    goto :goto_2

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 35
    iget v7, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 36
    iget-object v8, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v8, v1, v7}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    if-nez v0, :cond_a

    .line 37
    iget-object v7, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 38
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/Qq0;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 40
    iget v7, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 41
    iget-object v8, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v8, v2, v7}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    .line 43
    iget-wide v8, v7, Lcom/android/tools/r8/internal/qh;->l:J

    neg-long v8, v8

    const-wide/16 v10, -0x80

    cmp-long v10, v10, v8

    if-gtz v10, :cond_b

    const-wide/16 v10, 0x7f

    cmp-long v10, v8, v10

    if-gtz v10, :cond_b

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/Vm;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v3

    neg-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Vm;-><init>(III)V

    goto :goto_6

    :cond_b
    if-nez v0, :cond_d

    cmp-long v0, v5, v8

    if-gtz v0, :cond_c

    cmp-long v0, v8, v3

    if-gtz v0, :cond_c

    goto :goto_4

    .line 45
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_d
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/Um;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v3

    neg-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Um;-><init>(III)V

    goto :goto_6

    .line 47
    :cond_e
    sget-boolean v0, Lcom/android/tools/r8/internal/Qq0;->n:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 49
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 50
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 52
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 53
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 55
    iget v3, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 56
    iget-object v4, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v2

    .line 57
    new-instance v3, Lcom/android/tools/r8/internal/zs;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/tools/r8/internal/zs;-><init>(III)V

    move-object v0, v3

    .line 58
    :goto_6
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    .line 59
    :cond_11
    :goto_7
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I3;->a(Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final b(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/us;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/us;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/xs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/xs;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P0()Lcom/android/tools/r8/internal/Qq0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/ws;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ws;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/zs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/zs;-><init>(III)V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 5
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Qq0;->n:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v2, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v2, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 9
    iget-wide v4, p1, Lcom/android/tools/r8/internal/qh;->l:J

    neg-long v4, v4

    const-wide/16 v6, -0x8000

    cmp-long p1, v6, v4

    if-gtz p1, :cond_5

    const-wide/16 v6, 0x7fff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v3
.end method

.method public final d(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ys;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ys;-><init>(II)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unsupported instruction SubIntLit16"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/As;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/As;-><init>(II)V

    return-object v0
.end method

.method public final e(III)Lcom/android/tools/r8/internal/Np;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unsupported instruction SubIntLit8"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Bs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Bs;-><init>(III)V

    return-object v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w2()I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qq0;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    const/16 v2, 0xf

    const/16 v3, 0xff

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/tools/r8/internal/Qq0;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/u6;->e(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->x2()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Qq0;->c(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/tools/r8/internal/Qq0;->n:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v4, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v1, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/tools/r8/internal/qh;->l:J

    neg-long v0, v0

    const-wide/16 v4, -0x8000

    cmp-long v4, v4, v0

    if-gtz v4, :cond_4

    const-wide/16 v4, 0x7fff

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/tools/r8/internal/qh;->l:J

    neg-long v0, v0

    const-wide/16 v4, -0x80

    cmp-long v4, v4, v0

    if-gtz v4, :cond_6

    const-wide/16 v4, 0x7f

    cmp-long v0, v0, v4

    if-gtz v0, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    return v3
.end method

.method public final z2()Lcom/android/tools/r8/internal/V8$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    return-object v0
.end method
