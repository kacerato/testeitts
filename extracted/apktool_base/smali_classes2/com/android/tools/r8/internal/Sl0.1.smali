.class public final Lcom/android/tools/r8/internal/Sl0;
.super Lcom/android/tools/r8/internal/VT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/VT;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final J0()Lcom/android/tools/r8/internal/Sl0;
    .locals 0

    return-object p0
.end method

.method public final a(II)I
    .locals 0

    .line 1
    shr-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 2
    long-to-int p3, p3

    shr-long/2addr p1, p3

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

    .line 10
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/m;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;I)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/gs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/gs;-><init>(III)V

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
    new-instance v0, Lcom/android/tools/r8/internal/fs;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/fs;-><init>(II)V

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
    instance-of v0, p1, Lcom/android/tools/r8/internal/Sl0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J0()Lcom/android/tools/r8/internal/Sl0;

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
    new-instance v0, Lcom/android/tools/r8/internal/is;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/is;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/hs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/hs;-><init>(III)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/js;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/js;-><init>(III)V

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Sl0;
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

    const/16 v0, 0x3a

    return v0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/qa;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/qa;->c:Lcom/android/tools/r8/internal/qa;

    return-object v0
.end method
