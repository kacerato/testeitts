.class public Lcom/android/tools/r8/internal/gK;
.super Lcom/android/tools/r8/internal/VJ;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/VJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/gK;->n:Z

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/gK;->o:Z

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/VJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 5
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/gK;->n:Z

    return-void
.end method


# virtual methods
.method public final A2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/gK;->n:Z

    return v0
.end method

.method public final R1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 4

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 17
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 19
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 20
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/Z4$c;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 22
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 23
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 24
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/ir/optimize/X;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/P;
    .locals 2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v0, Lcom/android/tools/r8/ir/optimize/P;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/P;-><init>()V

    .line 27
    iput-object p0, v0, Lcom/android/tools/r8/ir/optimize/P;->b:Lcom/android/tools/r8/internal/VJ;

    .line 28
    iput-object p1, v0, Lcom/android/tools/r8/ir/optimize/P;->f:Lcom/android/tools/r8/graph/H5;

    .line 29
    iget-object v1, p2, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2, p0, v1, p1, p3}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 30
    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$h;->j:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, v0, Lcom/android/tools/r8/ir/optimize/P;->d:Z

    return-object v0

    .line 32
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->o()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/NJ;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v0

    .line 2
    iget v1, p1, Lcom/android/tools/r8/internal/Kn;->o:I

    if-le v0, v1, :cond_0

    .line 3
    iput v0, p1, Lcom/android/tools/r8/internal/Kn;->o:I

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->b(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->c(Lcom/android/tools/r8/internal/Kn;)V

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;Lcom/android/tools/r8/internal/xw0;)I

    move-result v1

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/iq;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/iq;-><init>(IILcom/android/tools/r8/graph/A2;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [I

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;[I)I

    move-result v4

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/hq;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    aget v6, v0, v2

    const/4 v2, 0x1

    aget v7, v0, v2

    const/4 v2, 0x2

    aget v8, v0, v2

    const/4 v2, 0x3

    aget v9, v0, v2

    const/4 v2, 0x4

    aget v10, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/hq;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    move-object v2, v1

    .line 13
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 41
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/gK;->n:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    const/16 v2, 0xcc

    goto :goto_0

    :cond_0
    const/16 v2, 0xb8

    .line 42
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 33
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/gK;->n:Z

    const/16 v3, 0xb8

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 35
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p5, v0, :cond_0

    return v1

    .line 43
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p3, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object p3, p1, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p3, v1, v2}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p3

    if-nez p3, :cond_3

    return v0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/gK;->n:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v2

    if-nez v2, :cond_4

    return v0

    .line 14
    :cond_4
    iget-object v3, v2, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 16
    invoke-virtual {v2, p2, p3}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iget-object p3, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 20
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p3

    .line 21
    iget-boolean p3, p3, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz p3, :cond_6

    return v1

    .line 22
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result p3

    if-eqz p3, :cond_7

    return v0

    .line 23
    :cond_7
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/yE;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    return v1

    .line 24
    :cond_8
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 25
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i0()Lcom/android/tools/r8/internal/gK;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "Static"

    return-object v0
.end method
