.class public Lcom/android/tools/r8/internal/mK;
.super Lcom/android/tools/r8/internal/WJ;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/WJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final A2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final T1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 25
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v1, v0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 29
    iget-object v2, v0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v2, v0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/tools/r8/ir/optimize/X;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 41
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

    if-eqz v1, :cond_4

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/mK;->o:Z

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
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WJ;->d(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WJ;->e(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Lcom/android/tools/r8/internal/mq;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/mq;-><init>(IILcom/android/tools/r8/graph/A2;)V

    goto :goto_3

    .line 11
    :cond_3
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/Zp;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/Zp;-><init>(IILcom/android/tools/r8/graph/A2;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [I

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;[I)I

    move-result v4

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WJ;->d(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WJ;->e(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/lq;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    aget v2, v0, v2

    aget v7, v0, v7

    aget v9, v0, v6

    aget v10, v0, v5

    aget v0, v0, v3

    move-object v3, v1

    move-object v5, v8

    move v6, v2

    move v8, v9

    move v9, v10

    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/lq;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    :goto_1
    move-object v2, v1

    goto :goto_3

    .line 18
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/Yp;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    aget v2, v0, v2

    aget v7, v0, v7

    aget v9, v0, v6

    aget v10, v0, v5

    aget v0, v0, v3

    move-object v3, v1

    move-object v5, v8

    move v6, v2

    move v8, v9

    move v9, v10

    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/Yp;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    goto :goto_1

    .line 20
    :goto_3
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb6

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    const/16 v2, 0xb6

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 34
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p5, v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p5

    if-eqz p5, :cond_0

    return v1

    :cond_0
    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    return v1

    .line 43
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p5}, Lcom/android/tools/r8/shaking/i;->i()Z

    .line 44
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p5

    invoke-virtual {p0, p5, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z

    move-result p1

    return p1

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 48
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/shaking/i;

    iget-object p5, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, p5, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p4

    if-nez p4, :cond_3

    return v1

    .line 50
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 51
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->T1()Z

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

.method public final k0()Lcom/android/tools/r8/internal/mK;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "Virtual"

    return-object v0
.end method
