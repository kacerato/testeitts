.class public final Lcom/android/tools/r8/internal/mw0;
.super Lcom/android/tools/r8/internal/VT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/VT;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final S0()Lcom/android/tools/r8/internal/mw0;
    .locals 0

    return-object p0
.end method

.method public final a(II)I
    .locals 0

    .line 1
    ushr-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 2
    long-to-int p3, p3

    ushr-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, p3, Lcom/android/tools/r8/internal/Im0;

    if-nez v0, :cond_0

    .line 7
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p3

    .line 9
    iget-wide v0, p3, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p3, v0

    and-int/lit8 p3, p3, 0x1f

    if-nez p3, :cond_1

    return-object p2

    .line 10
    :cond_1
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_2

    .line 11
    check-cast p2, Lcom/android/tools/r8/internal/Im0;

    .line 12
    iget-wide v0, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, v0

    ushr-int/2addr p2, p3

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    int-to-long p2, p2

    .line 14
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->R()I

    move-result v0

    ushr-int/2addr v0, p3

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->S()I

    move-result p2

    ushr-int/2addr p2, p3

    add-int/lit8 p3, p3, -0x1

    const/high16 v1, -0x80000000

    shr-int p3, v1, p3

    or-int/2addr p2, p3

    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/G1;->a(II)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 20
    :cond_3
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Gs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Gs;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Fs;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Fs;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unsupported instruction ShrIntLit16"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/mw0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->S0()Lcom/android/tools/r8/internal/mw0;

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
    new-instance v0, Lcom/android/tools/r8/internal/Is;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Is;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Hs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Hs;-><init>(III)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Js;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Js;-><init>(III)V

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->x2()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/qa;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/qa;->d:Lcom/android/tools/r8/internal/qa;

    return-object v0
.end method
