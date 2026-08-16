.class public final Lcom/android/tools/r8/internal/Cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j9;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/mm;

.field public final e:Lcom/android/tools/r8/internal/hm;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/internal/mm;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mm;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cm;->d:Lcom/android/tools/r8/internal/mm;

    new-instance v0, Lcom/android/tools/r8/internal/hm;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/hm;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Cm;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;
    .locals 2

    .line 213
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 214
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/g1;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;
    .locals 3

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/Gf;

    .line 43
    iget v1, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    add-int/lit8 v2, v1, 0x1

    .line 44
    iput v2, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    .line 45
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/Gf;-><init>(Lcom/android/tools/r8/internal/Ff;Lcom/android/tools/r8/graph/H2;I)V

    .line 46
    sget-boolean p1, Lcom/android/tools/r8/internal/Af;->d:Z

    if-nez p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->e:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 3
    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;
    .locals 3

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Gf;

    .line 9
    iget v1, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    add-int/lit8 v2, v1, 0x1

    .line 10
    iput v2, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/Gf;-><init>(Lcom/android/tools/r8/internal/Ff;Lcom/android/tools/r8/graph/H2;I)V

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/Af;->d:Z

    if-nez p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->T:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->q:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->n:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->o:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Fm;)Lcom/android/tools/r8/graph/A2;
    .locals 12

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 28
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/aC0;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/aC0;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v10, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/bC0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/bC0;-><init>()V

    .line 33
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/cC0;

    invoke-direct {v4, p2}, Lcom/android/tools/r8/internal/cC0;-><init>(Lcom/android/tools/r8/internal/Fm;)V

    new-instance p2, Lcom/android/tools/r8/internal/dC0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/dC0;-><init>()V

    .line 34
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {v9, v2}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v2

    .line 35
    new-instance v5, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v6

    sget-object v11, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v5, v1, v1, v6, v11}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    move-object v1, v0

    move-object v6, v10

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object v6

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 38
    invoke-interface {v9, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v3

    move-object v1, v7

    move-object v2, v8

    move-object v4, v10

    move-object v5, p2

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/I0;)Lcom/android/tools/r8/graph/e0;

    move-result-object p2

    .line 40
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 207
    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    .line 208
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 209
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 210
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 211
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 122
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->h()Ljava/util/Map;

    move-result-object v0

    .line 126
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ui;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, p2, :cond_1

    .line 127
    iget-object v0, v0, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    .line 129
    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v1, :cond_4

    if-ne p1, p2, :cond_2

    .line 130
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    .line 134
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    filled-new-array {p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v2, p3, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 135
    invoke-virtual {p1, v1, p2, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/tools/r8/internal/lC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lC0;-><init>()V

    .line 89
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/internal/Gf;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/mC0;

    invoke-direct {v3, p0, p2, p1, p6}, Lcom/android/tools/r8/internal/mC0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V

    .line 90
    invoke-virtual {v0, v1, p5, v2, v3}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 91
    invoke-interface {p3, p1, p4}, Lcom/android/tools/r8/internal/Hm;->z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 11

    move-object v7, p0

    move-object v8, p2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    if-eqz v1, :cond_2

    .line 49
    sget-boolean v2, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Fm;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    move-object v9, v0

    goto :goto_1

    .line 51
    :cond_3
    iget-object v1, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move-object v9, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 52
    iget-object v1, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move-object v10, v1

    goto :goto_2

    :cond_4
    move-object v10, v0

    .line 53
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 54
    iget-object v1, v7, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    const/4 v3, 0x1

    .line 55
    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-ne v9, v0, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    move-object v1, v9

    move-object v2, v10

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0

    .line 58
    :cond_6
    invoke-virtual {p0, v0, v9, v10}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-eqz v1, :cond_7

    return-object v1

    .line 59
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 61
    iget-object v0, v7, Lcom/android/tools/r8/internal/Cm;->d:Lcom/android/tools/r8/internal/mm;

    .line 62
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fm;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 63
    iget-object v2, v0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 64
    invoke-virtual {v2, v10, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iget-object v0, v0, Lcom/android/tools/r8/internal/mm;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    .line 65
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 66
    sget-boolean v2, Lcom/android/tools/r8/internal/mm;->c:Z

    if-nez v2, :cond_9

    .line 67
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 68
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 70
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    return-object v0

    .line 71
    :cond_a
    sget-boolean v3, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v3, :cond_c

    .line 72
    iget-object v4, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xU;->m()Ljava/util/Map;

    move-result-object v4

    .line 77
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    .line 78
    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 79
    :cond_c
    :goto_5
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fm;)Lcom/android/tools/r8/internal/Am;

    move-result-object v1

    if-ne v0, v9, :cond_d

    .line 80
    iget-object v0, v1, Lcom/android/tools/r8/internal/Am;->a:Lcom/android/tools/r8/graph/A2;

    goto :goto_6

    .line 81
    :cond_d
    iget-object v0, v1, Lcom/android/tools/r8/internal/Am;->b:Lcom/android/tools/r8/graph/A2;

    :goto_6
    if-nez v3, :cond_f

    .line 82
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v9, v1, :cond_e

    goto :goto_7

    .line 83
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_7
    if-nez v3, :cond_11

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v10, v1, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_8
    return-object v0
.end method

.method public final a(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 10

    move-object v7, p0

    move-object v0, p5

    if-eqz p6, :cond_2

    .line 103
    sget-boolean v1, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object p6

    :cond_2
    if-eqz p1, :cond_3

    move-object v8, v0

    goto :goto_1

    .line 104
    :cond_3
    iget-object v1, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, p5}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move-object v8, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 105
    iget-object v1, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, p5}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    :cond_4
    move-object v9, v0

    .line 106
    :goto_2
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 107
    iget-object v1, v7, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    const/4 v3, 0x1

    .line 108
    invoke-virtual {p5, v3, v1}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-ne v8, v0, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 109
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    move-object v1, v8

    move-object v2, v9

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0

    .line 111
    :cond_6
    invoke-virtual {p0, p5, v8, v9}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-eqz v1, :cond_7

    return-object v1

    .line 112
    :cond_7
    invoke-virtual {p0, p5}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 114
    iget-object v0, v7, Lcom/android/tools/r8/internal/Cm;->d:Lcom/android/tools/r8/internal/mm;

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0

    .line 115
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Am;

    move-result-object v1

    if-ne v0, v8, :cond_9

    .line 116
    iget-object v0, v1, Lcom/android/tools/r8/internal/Am;->a:Lcom/android/tools/r8/graph/A2;

    goto :goto_4

    .line 117
    :cond_9
    iget-object v0, v1, Lcom/android/tools/r8/internal/Am;->b:Lcom/android/tools/r8/graph/A2;

    .line 118
    :goto_4
    sget-boolean v1, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v1, :cond_b

    .line 119
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v8, v1, :cond_a

    goto :goto_5

    .line 120
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    .line 152
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 156
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 157
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 158
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v1, :cond_4

    goto :goto_2

    .line 159
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 160
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Bm;)Lcom/android/tools/r8/graph/H2;
    .locals 2

    .line 196
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 198
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 199
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 200
    new-instance v0, Lcom/android/tools/r8/internal/gC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gC0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 201
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 203
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 204
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 205
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Bm;->a()Lcom/android/tools/r8/synthesis/I;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/internal/o9;)Lcom/android/tools/r8/graph/H2;
    .locals 13

    move-object v6, p0

    move-object/from16 v7, p4

    .line 238
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    iget-object v1, v6, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 239
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 240
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_3
    :goto_1
    iget-object v0, v6, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    move-object v3, p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 244
    iget-object v0, v6, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 245
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 246
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v8

    .line 247
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/Bm;->a()Lcom/android/tools/r8/synthesis/I;

    move-result-object v9

    .line 248
    iget-object v10, v6, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v11, Lcom/android/tools/r8/internal/jC0;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/jC0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;)V

    .line 249
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/tools/r8/internal/kC0;

    invoke-direct {v12, v7}, Lcom/android/tools/r8/internal/kC0;-><init>(Lcom/android/tools/r8/internal/Gm;)V

    move-object v7, v8

    move-object v8, v9

    move-object v9, p2

    .line 250
    invoke-virtual/range {v7 .. v12}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/internal/Fm;Ljava/util/List;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/I0;
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p5

    .line 255
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 257
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 258
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v9

    .line 259
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Bm;->a()Lcom/android/tools/r8/synthesis/I;

    move-result-object v10

    .line 260
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v11

    iget-object v12, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v13, Lcom/android/tools/r8/internal/UB0;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/UB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Ljava/lang/Iterable;Ljava/util/function/BiFunction;)V

    .line 262
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/VB0;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/internal/VB0;-><init>(Lcom/android/tools/r8/internal/Fm;)V

    .line 263
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-static {v11}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v1

    .line 265
    iget-object v2, v9, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 266
    invoke-interface {v10, v2}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v2

    move-object p1, v9

    move-object/from16 p2, v2

    move-object/from16 p3, v13

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v12

    .line 267
    invoke-virtual/range {p1 .. p6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/synthesis/m;)Lcom/android/tools/r8/graph/g1;
    .locals 3

    if-eqz p3, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz p3, :cond_1

    .line 292
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 293
    :goto_1
    iget-object p3, p4, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 294
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->p0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, p3, p2, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    const/16 p3, 0x1011

    .line 295
    invoke-static {p3}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object p3

    .line 296
    sget-object v1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 297
    new-instance v1, Lcom/android/tools/r8/graph/g1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 298
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object p2

    .line 299
    iput-object p3, p2, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 300
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object p2

    .line 301
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    .line 302
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/List;)Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    .line 303
    iput-object v0, p1, Lcom/android/tools/r8/synthesis/m;->i:Lcom/android/tools/r8/graph/M2;

    .line 304
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    .line 305
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 306
    iget-object p4, p1, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object p4, p1, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object p1

    .line 309
    new-instance p3, Lcom/android/tools/r8/internal/NB0;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/tools/r8/internal/NB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/M2;)V

    .line 310
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-object p2
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 7

    .line 100
    new-instance v6, Lcom/android/tools/r8/internal/r10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 101
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/r10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V

    .line 102
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/r10;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 320
    new-instance p3, Lcom/android/tools/r8/internal/Zx0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 321
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p3, v0, p1, p2}, Lcom/android/tools/r8/internal/Zx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;)V

    .line 322
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Zx0;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/j1;
    .locals 17

    move-object/from16 v0, p0

    .line 375
    iget-object v7, v0, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    new-instance v8, Lcom/android/tools/r8/internal/PB0;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v8, v1, v2}, Lcom/android/tools/r8/internal/PB0;-><init>(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;)V

    .line 376
    iget-object v1, v7, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 377
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 378
    sget-boolean v2, Lcom/android/tools/r8/internal/hm;->d:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, v7, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 379
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    .line 380
    iget-object v2, v2, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 381
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 383
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v13, v1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 384
    :goto_3
    iget-object v1, v7, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 385
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    move-object/from16 v12, p4

    .line 386
    invoke-virtual {v1, v12, v13}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v9

    const/4 v3, 0x1

    move-object v1, v7

    move-object/from16 v2, p4

    move-object/from16 v4, p1

    move-object v5, v9

    move-object v6, v8

    .line 388
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/hm;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    const/4 v3, 0x0

    .line 389
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;

    move-result-object v15

    .line 390
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object v4, v14

    move-object v5, v15

    .line 391
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 392
    new-instance v2, Lcom/android/tools/r8/internal/e;

    iget-object v10, v7, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 393
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    move-object v9, v2

    move-object/from16 v16, p5

    invoke-direct/range {v9 .. v16}, Lcom/android/tools/r8/internal/e;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)V

    .line 394
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/e;->b()Lcom/android/tools/r8/graph/G;

    move-result-object v2

    .line 395
    iget-object v3, v7, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Am;
    .locals 6

    .line 185
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 186
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 187
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 189
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Bm;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/android/tools/r8/internal/Bm;->c:Lcom/android/tools/r8/internal/Bm;

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Bm;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 191
    invoke-static {v0}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 192
    invoke-static {p1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 193
    new-instance v3, Lcom/android/tools/r8/internal/Am;

    iget-object v4, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 194
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 195
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lcom/android/tools/r8/internal/Am;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-object v3
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fm;)Lcom/android/tools/r8/internal/Am;
    .locals 12

    .line 161
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Am;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v0, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 165
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 166
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xU;->m()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 170
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ay0;

    .line 171
    iget-object v1, v1, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    .line 172
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 173
    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v8

    .line 174
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 175
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 176
    sget-object v2, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    .line 177
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/eC0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/eC0;-><init>(Lcom/android/tools/r8/internal/hm;)V

    .line 178
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v9

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    move-object v6, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/internal/Fm;Ljava/util/List;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/I0;

    move-result-object v11

    .line 179
    sget-object v1, Lcom/android/tools/r8/internal/Bm;->c:Lcom/android/tools/r8/internal/Bm;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    .line 180
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/fC0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/fC0;-><init>(Lcom/android/tools/r8/internal/hm;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, v9

    .line 181
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/internal/Fm;Ljava/util/List;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/I0;

    move-result-object p2

    .line 182
    new-instance v0, Lcom/android/tools/r8/internal/Am;

    .line 183
    invoke-virtual {p0, v11, v9, p1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 184
    invoke-virtual {p0, p2, p1, v9}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Am;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/hC;
    .locals 8

    .line 323
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    .line 324
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 325
    iget-object v2, v0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    .line 326
    iget-object v3, v0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 327
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 328
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 329
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 330
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->Y:Lcom/android/tools/r8/graph/L2;

    .line 331
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/hA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 332
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/android/tools/r8/internal/hA;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;)V

    .line 333
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hA;->b()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 334
    invoke-virtual {v2, v0, v3}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    .line 336
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 337
    iget-object v2, v1, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    .line 338
    iget-object v3, v1, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 339
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 340
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 341
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v6, v1, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 342
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v1, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 343
    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v1, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 344
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->X:Lcom/android/tools/r8/graph/L2;

    .line 345
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/cv;

    iget-object v1, v1, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 346
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-direct {v4, v1, p1, v5}, Lcom/android/tools/r8/internal/cv;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;)V

    .line 347
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/cv;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    .line 348
    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 349
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 279
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    :cond_0
    new-instance p4, Lcom/android/tools/r8/internal/t10;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {p4, v0, p3, p2, p5}, Lcom/android/tools/r8/internal/t10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Ljava/util/List;)V

    .line 281
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/t10;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    .line 282
    invoke-virtual {p0, p6, p1, p2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/G;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 137
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 138
    iget-object v0, p3, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_1

    .line 140
    new-instance v1, Lcom/android/tools/r8/position/MethodPosition;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 141
    :goto_1
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " may not work correctly at runtime (No conversion registered for type "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 142
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    .line 143
    iget-object p1, p1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 144
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    monitor-enter p1

    .line 146
    :try_start_0
    sget-object p2, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 147
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 148
    monitor-exit p1

    throw p2

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 151
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    filled-new-array {p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 94
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 95
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 97
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 98
    new-instance v0, Lcom/android/tools/r8/internal/OB0;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/tools/r8/internal/OB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)V

    .line 99
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Ljava/lang/Iterable;Ljava/util/function/BiFunction;Lcom/android/tools/r8/synthesis/p;)V
    .locals 1

    .line 268
    invoke-interface {p3}, Lcom/android/tools/r8/graph/S;->isInterface()Z

    move-result p3

    .line 269
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/synthesis/m;)Lcom/android/tools/r8/graph/g1;

    move-result-object p3

    .line 270
    new-instance v0, Lcom/android/tools/r8/internal/nC0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/nC0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p6, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    .line 271
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 273
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-interface {p5, p4, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    .line 274
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p6, p1}, Lcom/android/tools/r8/synthesis/m;->b(Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    filled-new-array {p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 277
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    const/4 p2, 0x0

    .line 278
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/G;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 312
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 313
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 314
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v0, 0x1002

    const/4 v1, 0x1

    .line 315
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 316
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 318
    new-instance v0, Lcom/android/tools/r8/internal/WB0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/WB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/M2;)V

    .line 319
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/internal/o9;)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 351
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 353
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->m()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/hC0;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/tools/r8/internal/hC0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/internal/o9;Ljava/util/Map;)V

    .line 354
    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 355
    new-instance v0, Lcom/android/tools/r8/internal/iC0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/iC0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 17

    move-object/from16 v7, p0

    .line 215
    invoke-static/range {p4 .. p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 216
    invoke-static/range {p5 .. p5}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    .line 217
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 219
    iget-object v2, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 220
    sget-boolean v2, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v2, p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :goto_1
    invoke-virtual {v7, v1, v2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Bm;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 224
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 225
    sget-boolean v1, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v8, v7, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    if-ne v1, v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 227
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object/from16 v2, p1

    .line 228
    iget-object v0, v7, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v4, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 229
    iget-object v0, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 230
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 231
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v8

    .line 232
    iget-object v0, v7, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Bm;->a()Lcom/android/tools/r8/synthesis/I;

    move-result-object v11

    .line 234
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v7, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v14, Lcom/android/tools/r8/internal/YB0;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/YB0;-><init>()V

    new-instance v15, Lcom/android/tools/r8/internal/ZB0;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/ZB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V

    .line 235
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v16

    move-object/from16 v12, p2

    .line 237
    invoke-virtual/range {v8 .. v16}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/J5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/W;)V
    .locals 2

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    sget-object v0, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    if-ne p1, v0, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p3

    .line 253
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    .line 254
    invoke-virtual {p0, v1, p2, p1, p5}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;ZLcom/android/tools/r8/synthesis/m;)Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;Ljava/lang/Iterable;)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/o9;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ay0;)V
    .locals 8

    .line 356
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 357
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cm;->d:Lcom/android/tools/r8/internal/mm;

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/o9;)V

    return-void

    .line 360
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 361
    iget-object v1, p4, Lcom/android/tools/r8/internal/ay0;->a:Ljava/util/AbstractCollection;

    .line 362
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ay0;->a()Ljava/util/List;

    move-result-object p2

    .line 364
    sget-boolean p4, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez p4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez p4, :cond_4

    .line 365
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 366
    :cond_4
    :goto_1
    iget-object p4, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 367
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 368
    sget-object v3, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    .line 369
    invoke-virtual {p0, p4, p3, v3, p1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/internal/o9;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 370
    sget-object v1, Lcom/android/tools/r8/internal/Bm;->c:Lcom/android/tools/r8/internal/Bm;

    .line 371
    invoke-virtual {p0, p4, p3, v1, p1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/internal/o9;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, v0

    move-object v7, p1

    .line 372
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    move-object v3, v1

    move-object v6, p1

    move-object v7, v0

    .line 373
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/internal/Bm;Lcom/android/tools/r8/graph/H2;Ljava/util/List;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/N;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/G;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    .line 284
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p1

    .line 285
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p2, 0x1009

    const/4 v0, 0x0

    .line 286
    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 287
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 288
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 289
    new-instance p2, Lcom/android/tools/r8/internal/TB0;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/TB0;-><init>(Lcom/android/tools/r8/graph/G;)V

    .line 290
    iput-object p2, p1, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/Cm;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    return v0

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_4

    return v1

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xU;->h()Ljava/util/Map;

    move-result-object p2

    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xU;->m()Ljava/util/Map;

    move-result-object p2

    .line 24
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)V

    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 4

    const/16 v0, 0x1001

    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 21
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/Cm;->c:Lcom/android/tools/r8/graph/u1;

    .line 23
    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v1

    .line 25
    :goto_0
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 26
    new-instance v2, Lcom/android/tools/r8/graph/j1$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 27
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 28
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 30
    iput-object v1, p2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    if-nez p1, :cond_1

    .line 31
    sget-object v1, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    .line 32
    :cond_1
    iput-object v1, p2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/j1;
    .locals 19

    move-object/from16 v6, p4

    move-object/from16 v7, p0

    .line 55
    iget-object v8, v7, Lcom/android/tools/r8/internal/Cm;->e:Lcom/android/tools/r8/internal/hm;

    new-instance v9, Lcom/android/tools/r8/internal/SB0;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/tools/r8/internal/SB0;-><init>(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;)V

    .line 56
    iget-object v0, v8, Lcom/android/tools/r8/internal/hm;->b:Lcom/android/tools/r8/graph/u1;

    .line 57
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, v6, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v3, v6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 58
    iget-object v0, v8, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 59
    sget-boolean v0, Lcom/android/tools/r8/internal/hm;->d:Z

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 60
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 61
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CU;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v15, v0

    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    goto :goto_1

    .line 66
    :goto_2
    iget-object v0, v8, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 67
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v6, v15}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    const/4 v2, 0x0

    move-object v0, v8

    move-object/from16 v1, p4

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v9

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object v16

    const/4 v2, 0x1

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;

    move-result-object v17

    .line 72
    iget-object v0, v8, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v0

    .line 76
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_3
    move-object v5, v0

    goto :goto_4

    .line 78
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    goto :goto_3

    :goto_4
    const/4 v2, 0x1

    move-object v0, v8

    move-object/from16 v1, p4

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    .line 80
    new-instance v0, Lcom/android/tools/r8/internal/e;

    iget-object v12, v8, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 81
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object v11, v0

    move-object/from16 v18, p5

    invoke-direct/range {v11 .. v18}, Lcom/android/tools/r8/internal/e;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/e;->b()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 83
    iget-object v1, v8, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {v1, v0, v10}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "$wrapper"

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;Ljava/lang/Iterable;)V
    .locals 7

    .line 35
    sget-object v0, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Bm;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/QB0;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/tools/r8/internal/QB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;)V

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v2, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 41
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    .line 44
    sget-object v1, Lcom/android/tools/r8/internal/Bm;->c:Lcom/android/tools/r8/internal/Bm;

    .line 45
    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Bm;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 46
    invoke-static {p3}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/android/tools/r8/internal/RB0;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/tools/r8/internal/RB0;-><init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 50
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v2, p4, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    .line 51
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 54
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/MB0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/MB0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cm;->b:Lcom/android/tools/r8/graph/y;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/XB0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/XB0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
