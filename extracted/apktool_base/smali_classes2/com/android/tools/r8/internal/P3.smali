.class public Lcom/android/tools/r8/internal/P3;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final Z0()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 27
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 18
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 8
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 9
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/sn;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/sn;-><init>(II)V

    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xbe

    .line 14
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/W8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/W8;-><init>()V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->z()Lcom/android/tools/r8/internal/P3;

    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/P3;

    return p1
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final r2()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final t2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Lcom/android/tools/r8/internal/P3;
    .locals 0

    return-object p0
.end method
