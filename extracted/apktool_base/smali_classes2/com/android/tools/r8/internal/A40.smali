.class public final Lcom/android/tools/r8/internal/A40;
.super Lcom/android/tools/r8/internal/VT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/VT;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final A0()Lcom/android/tools/r8/internal/A40;
    .locals 0

    return-object p0
.end method

.method public final a(II)I
    .locals 0

    .line 1
    or-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 2
    or-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/or;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/or;-><init>(III)V

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

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 5
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

.method public final b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/A40;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(II)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/nr;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/nr;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/pr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/pr;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, p1, Lcom/android/tools/r8/internal/A40;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->A0()Lcom/android/tools/r8/internal/A40;

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
    new-instance v0, Lcom/android/tools/r8/internal/rr;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/rr;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/qr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/qr;-><init>(III)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/sr;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/sr;-><init>(III)V

    return-object v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/qa;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/qa;->f:Lcom/android/tools/r8/internal/qa;

    return-object v0
.end method
