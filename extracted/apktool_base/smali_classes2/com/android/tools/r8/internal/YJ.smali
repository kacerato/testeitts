.class public final Lcom/android/tools/r8/internal/YJ;
.super Lcom/android/tools/r8/internal/VJ;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final n:Lcom/android/tools/r8/graph/I2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/VJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    return-void
.end method


# virtual methods
.method public final A2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/P;
    .locals 0

    .line 33
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/NJ;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 12

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
    sget-boolean v1, Lcom/android/tools/r8/internal/YJ;->o:Z

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
    new-instance v2, Lcom/android/tools/r8/internal/gq;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    .line 11
    invoke-direct {v2, v1, v0, v3, v4}, Lcom/android/tools/r8/internal/gq;-><init>(IILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [I

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;[I)I

    move-result v4

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/fq;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 16
    iget-object v6, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    .line 17
    aget v7, v0, v2

    const/4 v2, 0x1

    aget v8, v0, v2

    const/4 v2, 0x2

    aget v9, v0, v2

    const/4 v2, 0x3

    aget v10, v0, v2

    const/4 v2, 0x4

    aget v11, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/tools/r8/internal/fq;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;IIIII)V

    move-object v2, v1

    .line 18
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const/16 v1, 0xde

    .line 30
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 4

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 20
    iget-object v1, p1, Lcom/android/tools/r8/internal/h9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 21
    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 22
    iget-object v3, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    const/16 v2, 0xb6

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, v1, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/YJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->h0()Lcom/android/tools/r8/internal/YJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

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

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h0()Lcom/android/tools/r8/internal/YJ;
    .locals 0

    return-object p0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final v2()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final w2()Lcom/android/tools/r8/internal/kK;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "Polymorphic"

    return-object v0
.end method
