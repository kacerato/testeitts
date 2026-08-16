.class public Lcom/android/tools/r8/internal/yk0;
.super Lcom/android/tools/r8/internal/sL;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/sL;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/sL;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final G0()Lcom/android/tools/r8/internal/yk0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 11
    :cond_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 12
    :cond_1
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

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yk0;->b(Lcom/android/tools/r8/internal/Kn;)Lcom/android/tools/r8/internal/tn;

    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->f:Lcom/android/tools/r8/internal/EW;

    .line 18
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/An;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/An;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xb0

    .line 5
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ab;

    .line 24
    sget-boolean v1, Lcom/android/tools/r8/internal/yk0;->l:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    .line 27
    :goto_1
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Kn;)Lcom/android/tools/r8/internal/tn;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Nr;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Nr;-><init>()V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/yk0;->l:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Mr;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Mr;-><init>(I)V

    return-object v0

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Lr;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Lr;-><init>(I)V

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Or;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Or;-><init>(I)V

    return-object v0

    .line 15
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result p1

    return p1

    .line 20
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/yk0;->l:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    if-nez v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    :cond_7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    return v1
.end method

.method public final g2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/yk0;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Return defines no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public final v2()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w2()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/yk0;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method
