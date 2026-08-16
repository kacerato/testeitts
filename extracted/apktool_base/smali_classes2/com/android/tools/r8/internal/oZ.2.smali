.class public Lcom/android/tools/r8/internal/oZ;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    .line 16
    sget-boolean p3, Lcom/android/tools/r8/internal/oZ;->l:Z

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 18
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_3

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_7

    if-nez p3, :cond_6

    if-nez p3, :cond_4

    .line 23
    iget-object p3, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 25
    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result p2

    if-ltz p2, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_6
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/G1;->a(I)Lcom/android/tools/r8/internal/MQ;

    move-result-object p1

    .line 31
    sget-boolean p2, Lcom/android/tools/r8/internal/Co0;->c:Z

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance p2, Lcom/android/tools/r8/internal/Co0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Co0;-><init>(Lcom/android/tools/r8/internal/Q30;)V

    return-object p2

    .line 34
    :cond_7
    :goto_3
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 2

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    .line 41
    sget-boolean v0, Lcom/android/tools/r8/internal/oZ;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 43
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->a:Lcom/android/tools/r8/ir/optimize/B;

    return-object p1

    .line 46
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 48
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

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

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 6
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 9
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 10
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/hr;

    iget-object v3, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/hr;-><init>(IILcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xbc

    .line 15
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 53
    sget-boolean v0, Lcom/android/tools/r8/internal/oZ;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/xa;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 35
    sget-boolean p3, Lcom/android/tools/r8/internal/oZ;->l:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 37
    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/oZ;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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

    const/16 v0, 0x2f

    return v0
.end method

.method public final t0()Lcom/android/tools/r8/internal/oZ;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u2()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
