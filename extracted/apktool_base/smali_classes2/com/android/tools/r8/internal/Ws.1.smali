.class public Lcom/android/tools/r8/internal/Ws;
.super Lcom/android/tools/r8/internal/I3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I3;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final P()Lcom/android/tools/r8/internal/Ws;
    .locals 0

    return-object p0
.end method

.method public final a(DD)D
    .locals 0

    .line 1
    div-double/2addr p1, p3

    return-wide p1
.end method

.method public final a(FF)F
    .locals 0

    .line 2
    div-float/2addr p1, p2

    return p1
.end method

.method public final a(II)I
    .locals 0

    .line 5
    div-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 6
    div-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/I3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/vo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/vo;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ws;->o()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of p3, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result p3

    if-nez p3, :cond_1

    return p2

    .line 12
    :cond_1
    instance-of p3, p1, Lcom/android/tools/r8/internal/Jj;

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->H()Lcom/android/tools/r8/internal/Jj;

    move-result-object p1

    .line 14
    iget p1, p1, Lcom/android/tools/r8/internal/Jj;->b:I

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/uo;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/uo;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/xo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/xo;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ws;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P()Lcom/android/tools/r8/internal/Ws;

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

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/wo;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/wo;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/zo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/zo;-><init>(III)V

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/yo;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/yo;-><init>(II)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ao;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ao;-><init>(III)V

    return-object v0
.end method

.method public final e(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Co;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Co;-><init>(II)V

    return-object v0
.end method

.method public final e(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Bo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Bo;-><init>(III)V

    return-object v0
.end method

.method public final f(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Do;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Do;-><init>(III)V

    return-object v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/u6;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/V8$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    return-object v0
.end method
