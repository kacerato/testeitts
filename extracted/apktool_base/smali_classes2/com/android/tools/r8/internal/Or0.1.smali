.class public Lcom/android/tools/r8/internal/Or0;
.super Lcom/android/tools/r8/internal/sL;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/sL;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final R0()Lcom/android/tools/r8/internal/Or0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 26
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

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/Ds;

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 21
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 22
    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 23
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ds;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xbf

    .line 5
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x1

    if-ne p2, p3, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of p3, p2, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p3, :cond_1

    return v1

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->E3:Lcom/android/tools/r8/graph/M2;

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result p1

    return p1
.end method

.method public final m2()Z
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

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Or0;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Throw defines no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method
