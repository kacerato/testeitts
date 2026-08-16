.class public final Lcom/android/tools/r8/internal/rZ;
.super Lcom/android/tools/r8/internal/zE;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final k:I

.field public final l:J

.field public final m:[S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;IJ[S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/zE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput p2, p0, Lcom/android/tools/r8/internal/rZ;->k:I

    iput-wide p3, p0, Lcom/android/tools/r8/internal/rZ;->l:J

    iput-object p5, p0, Lcom/android/tools/r8/internal/rZ;->m:[S

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 5

    .line 23
    sget-object v0, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/rZ;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 24
    iget-wide v1, p0, Lcom/android/tools/r8/internal/rZ;->l:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 25
    sget-boolean v1, Lcom/android/tools/r8/internal/rZ;->n:Z

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/rZ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 29
    iget-wide p2, p0, Lcom/android/tools/r8/internal/rZ;->l:J

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/G1;->a(I)Lcom/android/tools/r8/internal/MQ;

    move-result-object p1

    .line 30
    sget-boolean p2, Lcom/android/tools/r8/internal/Co0;->c:Z

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance p2, Lcom/android/tools/r8/internal/Co0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Co0;-><init>(Lcom/android/tools/r8/internal/Q30;)V

    return-object p2

    .line 33
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 22
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
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/Jo;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Jo;-><init>(I)V

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->h:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/Bn;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/Bn;-><init>(Lcom/android/tools/r8/internal/rZ;Lcom/android/tools/r8/internal/Jo;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Conversion from DEX to classfile not supported for NewArrayFilledData"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 6

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/rZ;->k:I

    iget-wide v1, p0, Lcom/android/tools/r8/internal/rZ;->l:J

    iget-object v3, p0, Lcom/android/tools/r8/internal/rZ;->m:[S

    .line 12
    iget-object v4, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v5, Lcom/android/tools/r8/internal/JS;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/JS;-><init>(IJ[S)V

    .line 15
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xd7

    .line 17
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 1

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Conversion from DEX to classfile not supported for NewArrayFilledData"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/rZ;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_7

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result p1

    if-le p1, p2, :cond_0

    goto :goto_3

    .line 8
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/rZ;->n:Z

    if-nez p1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez p1, :cond_4

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of p1, p1, Lcom/android/tools/r8/internal/oZ;

    if-eqz p1, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    return p3

    :cond_7
    :goto_3
    return p2
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v0()Lcom/android/tools/r8/internal/rZ;

    move-result-object p1

    .line 3
    iget v0, p1, Lcom/android/tools/r8/internal/rZ;->k:I

    iget v2, p0, Lcom/android/tools/r8/internal/rZ;->k:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p1, Lcom/android/tools/r8/internal/rZ;->l:J

    iget-wide v4, p0, Lcom/android/tools/r8/internal/rZ;->l:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/rZ;->m:[S

    iget-object v0, p0, Lcom/android/tools/r8/internal/rZ;->m:[S

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    const/16 v0, 0xff

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/rZ;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "NewArrayFilledData defines no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public final v0()Lcom/android/tools/r8/internal/rZ;
    .locals 0

    return-object p0
.end method
