.class public Lcom/android/tools/r8/internal/d2;
.super Lcom/android/tools/r8/internal/I3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I3;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/d2;
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/d2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/d2;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->x2()V

    return-object v0
.end method


# virtual methods
.method public final a(DD)D
    .locals 0

    .line 1
    add-double/2addr p1, p3

    return-wide p1
.end method

.method public final a(FF)F
    .locals 0

    .line 2
    add-float/2addr p1, p2

    return p1
.end method

.method public final a(II)I
    .locals 0

    .line 3
    add-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 4
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Pm;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Pm;-><init>(III)V

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
    new-instance v0, Lcom/android/tools/r8/internal/Om;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Om;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Rm;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Rm;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t()Lcom/android/tools/r8/internal/d2;

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
    new-instance v0, Lcom/android/tools/r8/internal/Qm;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Qm;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Tm;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Tm;-><init>(III)V

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Sm;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Sm;-><init>(II)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Um;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Um;-><init>(III)V

    return-object v0
.end method

.method public final e(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Wm;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Wm;-><init>(II)V

    return-object v0
.end method

.method public final e(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Vm;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Vm;-><init>(III)V

    return-object v0
.end method

.method public final f(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Xm;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Xm;-><init>(III)V

    return-object v0
.end method

.method public final h1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t()Lcom/android/tools/r8/internal/d2;
    .locals 0

    return-object p0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/V8$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    return-object v0
.end method
