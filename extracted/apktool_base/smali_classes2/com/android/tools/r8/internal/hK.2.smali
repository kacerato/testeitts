.class public final Lcom/android/tools/r8/internal/hK;
.super Lcom/android/tools/r8/internal/WJ;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/WJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/hK;->o:Z

    return-void
.end method


# virtual methods
.method public final A2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hK;->o:Z

    return v0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance p1, Lcom/android/tools/r8/ir/optimize/O;

    sget-object v0, Lcom/android/tools/r8/ir/optimize/N;->d:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/O;-><init>(Lcom/android/tools/r8/ir/optimize/N;Lcom/android/tools/r8/graph/M2;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 25
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
    sget-boolean v1, Lcom/android/tools/r8/internal/hK;->p:Z

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
    new-instance v2, Lcom/android/tools/r8/internal/kq;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/kq;-><init>(IILcom/android/tools/r8/graph/A2;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [I

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;[I)I

    move-result v4

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/jq;

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

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/jq;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    move-object v2, v1

    .line 13
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 23
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/hK;->o:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_0

    const/16 v2, 0xd0

    goto :goto_0

    :cond_0
    const/16 v2, 0xcf

    .line 24
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/hK;->o:Z

    const/16 v3, 0xb7

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/u;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p5, v0, :cond_0

    .line 26
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

    .line 27
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p5}, Lcom/android/tools/r8/shaking/i;->i()Z

    .line 28
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p5

    invoke-virtual {p0, p5, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z

    move-result p1

    return p1

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 32
    iget-object p4, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    if-nez p4, :cond_3

    return v1

    .line 33
    :cond_3
    iget-object p4, p4, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez p4, :cond_4

    return v1

    .line 34
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/shaking/i;

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hK;->o:Z

    .line 35
    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_5
    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {p5, p4, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    goto :goto_0

    .line 37
    :cond_6
    invoke-virtual {p5, p4, p2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 38
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p4

    if-nez p4, :cond_7

    return v1

    .line 39
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 40
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/hK;

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

.method public final j0()Lcom/android/tools/r8/internal/hK;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "Super"

    return-object v0
.end method
