.class public final Lcom/android/tools/r8/internal/fy0;
.super Lcom/android/tools/r8/internal/VT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/VT;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final T0()Lcom/android/tools/r8/internal/fy0;
    .locals 0

    return-object p0
.end method

.method public final a(II)I
    .locals 0

    .line 1
    xor-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 2
    xor-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 4
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, p3, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Lcom/android/tools/r8/internal/Im0;

    .line 8
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p3

    .line 10
    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    xor-int/2addr p2, p3

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p2, p2

    .line 12
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result v1

    and-int/2addr v0, v1

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v2

    and-int/2addr v1, v2

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p2

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p3

    and-int/2addr p2, p3

    or-int/2addr p2, v1

    .line 20
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 21
    :cond_1
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/Os;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Os;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final b(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ns;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Ns;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ps;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ps;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/fy0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->T0()Lcom/android/tools/r8/internal/fy0;

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

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Rs;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Rs;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Qs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Qs;-><init>(III)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ss;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ss;-><init>(III)V

    return-object v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/qa;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    return-object v0
.end method
