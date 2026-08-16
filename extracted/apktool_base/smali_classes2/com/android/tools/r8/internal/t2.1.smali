.class public final Lcom/android/tools/r8/internal/t2;
.super Lcom/android/tools/r8/internal/VT;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/VT;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    .line 1
    and-int/2addr p1, p2

    return p1
.end method

.method public final a(JJ)J
    .locals 0

    .line 2
    and-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 9
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/m;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/gn;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/gn;-><init>(III)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/t2;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 7
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
    new-instance v0, Lcom/android/tools/r8/internal/fn;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/fn;-><init>(II)V

    return-object v0
.end method

.method public final b(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/hn;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/hn;-><init>(III)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/t2;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->u()Lcom/android/tools/r8/internal/t2;

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
    new-instance v0, Lcom/android/tools/r8/internal/jn;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/jn;-><init>(II)V

    return-object v0
.end method

.method public final c(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/in;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/in;-><init>(III)V

    return-object v0
.end method

.method public final d(III)Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kn;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kn;-><init>(III)V

    return-object v0
.end method

.method public final r2()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final u()Lcom/android/tools/r8/internal/t2;
    .locals 0

    return-object p0
.end method

.method public final v2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/qa;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/qa;->e:Lcom/android/tools/r8/internal/qa;

    return-object v0
.end method
