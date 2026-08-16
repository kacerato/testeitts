.class public final Lcom/android/tools/r8/internal/if0;
.super Lcom/android/tools/r8/internal/I3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I3;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final E0()Lcom/android/tools/r8/internal/if0;
    .locals 0

    return-object p0
.end method

.method public final a(DD)D
    .locals 0

    .line 1
    rem-double/2addr p1, p3

    return-wide p1
.end method

.method public final a(FF)F
    .locals 0

    .line 2
    rem-float/2addr p1, p2

    return p1
.end method

.method public final a(II)I
    .locals 0

    .line 5
    rem-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 6
    rem-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/I3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Cr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Cr;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/if0;->o()Z

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
    new-instance v0, Lcom/android/tools/r8/internal/Br;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Br;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Er;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Er;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/if0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->E0()Lcom/android/tools/r8/internal/if0;

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
    new-instance v0, Lcom/android/tools/r8/internal/Dr;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Dr;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Gr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Gr;-><init>(III)V

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Fr;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Fr;-><init>(II)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Hr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Hr;-><init>(III)V

    return-object v0
.end method

.method public final e(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Jr;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Jr;-><init>(II)V

    return-object v0
.end method

.method public final e(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ir;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ir;-><init>(III)V

    return-object v0
.end method

.method public final f(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Kr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Kr;-><init>(III)V

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

    const/16 v0, 0x37

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/V8$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    return-object v0
.end method
