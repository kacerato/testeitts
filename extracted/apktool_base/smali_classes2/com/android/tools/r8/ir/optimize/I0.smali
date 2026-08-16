.class public abstract Lcom/android/tools/r8/ir/optimize/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/ir/optimize/G0;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/ir/optimize/G0;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, v1}, Lcom/android/tools/r8/ir/optimize/G0;-><init>(ILjava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/I0;->a:Lcom/android/tools/r8/ir/optimize/G0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zE;)I
    .locals 6

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;II)Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    .line 36
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result p0

    if-nez p0, :cond_3

    .line 37
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object p0

    .line 38
    sget-object v1, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p3, p2, p1, p0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zE;)I
    .locals 3

    .line 21
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 23
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->J1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->X()Lcom/android/tools/r8/internal/WD;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/WD;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 25
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->X1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->o0()Lcom/android/tools/r8/internal/WX;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-ne v0, p0, :cond_4

    .line 28
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1

    .line 29
    :cond_4
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object p0

    .line 30
    sget-object v0, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/G0;
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/I0;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 32
    :cond_1
    :goto_0
    new-instance v0, Lv/j;

    invoke-direct {v0, p2, p1, p0}, Lv/j;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)V

    invoke-static {p2, v0}, Lcom/android/tools/r8/ir/optimize/I0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/C0;)Lcom/android/tools/r8/ir/optimize/G0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/G0;
    .locals 3

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/I0;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    sget-object p0, Lcom/android/tools/r8/ir/optimize/I0;->a:Lcom/android/tools/r8/ir/optimize/G0;

    return-object p0

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 20
    new-instance v2, Lv/i;

    invoke-direct {v2, v0, p0, v1}, Lv/i;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {p1, v2}, Lcom/android/tools/r8/ir/optimize/I0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/C0;)Lcom/android/tools/r8/ir/optimize/G0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/C0;)Lcom/android/tools/r8/ir/optimize/G0;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/ir/optimize/H0;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/H0;-><init>()V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 3
    new-instance v2, Lcom/android/tools/r8/ir/optimize/B0;

    invoke-direct {v2, v1, p1, v0}, Lcom/android/tools/r8/ir/optimize/B0;-><init>(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/ir/optimize/C0;Lcom/android/tools/r8/ir/optimize/H0;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/Uj;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x3

    .line 6
    iput p0, v0, Lcom/android/tools/r8/ir/optimize/H0;->c:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ys0;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/ir/optimize/F0;

    .line 8
    iget p1, p0, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    .line 9
    iput p1, v0, Lcom/android/tools/r8/ir/optimize/H0;->c:I

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/F0;->b:Ljava/util/AbstractCollection;

    .line 11
    iput-object p0, v0, Lcom/android/tools/r8/ir/optimize/H0;->b:Ljava/util/AbstractCollection;

    .line 12
    :goto_0
    iget p0, v0, Lcom/android/tools/r8/ir/optimize/H0;->c:I

    invoke-static {p0}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 13
    sget-object p0, Lcom/android/tools/r8/ir/optimize/I0;->a:Lcom/android/tools/r8/ir/optimize/G0;

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lcom/android/tools/r8/ir/optimize/G0;

    iget p1, v0, Lcom/android/tools/r8/ir/optimize/H0;->c:I

    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/H0;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/H0;->b:Ljava/util/AbstractCollection;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/tools/r8/ir/optimize/G0;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object p0
.end method
