.class public final Lcom/android/tools/r8/internal/gY;
.super Lcom/android/tools/r8/internal/I3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I3;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final a(DD)D
    .locals 0

    .line 1
    mul-double/2addr p1, p3

    return-wide p1
.end method

.method public final a(FF)F
    .locals 0

    .line 2
    mul-float/2addr p1, p2

    return p1
.end method

.method public final a(II)I
    .locals 0

    .line 3
    mul-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 4
    mul-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    if-ne p1, p3, :cond_0

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Uq;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/Uq;-><init>(III)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Uq;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Uq;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Tq;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Tq;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    if-ne p1, p3, :cond_0

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Wq;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/Wq;-><init>(III)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Wq;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Wq;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/gY;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r0()Lcom/android/tools/r8/internal/gY;

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
    new-instance v0, Lcom/android/tools/r8/internal/Vq;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Vq;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    if-ne p1, p3, :cond_0

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yq;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/Yq;-><init>(III)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yq;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Yq;-><init>(III)V

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Xq;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Xq;-><init>(II)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Zq;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Zq;-><init>(III)V

    return-object v0
.end method

.method public final e(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/br;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/br;-><init>(II)V

    return-object v0
.end method

.method public final e(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ar;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/ar;-><init>(III)V

    return-object v0
.end method

.method public final f(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    if-ne p1, p3, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/cr;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/cr;-><init>(III)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/cr;-><init>(III)V

    return-object v0
.end method

.method public final r0()Lcom/android/tools/r8/internal/gY;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/V8$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    return-object v0
.end method
