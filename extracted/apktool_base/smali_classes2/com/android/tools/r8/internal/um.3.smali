.class public final Lcom/android/tools/r8/internal/um;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->l:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 64
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->m:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->Q:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->l:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->m:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->f:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/pv1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pv1;-><init>()V

    .line 6
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/qv1;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/tools/r8/internal/qv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 8
    iget-object p2, p4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/rm;->v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/A2;
    .locals 13

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    instance-of v1, v0, Lcom/android/tools/r8/graph/I0;

    if-nez v1, :cond_1

    .line 20
    sget-boolean p2, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez p2, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/kv1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/kv1;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v11, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/lv1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/lv1;-><init>()V

    .line 28
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/uv1;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/internal/uv1;-><init>(Lcom/android/tools/r8/internal/rm;)V

    new-instance p2, Lcom/android/tools/r8/internal/mv1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/mv1;-><init>()V

    .line 29
    iget-object v3, v1, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {v10, v3}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v3

    .line 30
    new-instance v6, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v7

    sget-object v12, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v6, v2, v2, v7, v12}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    move-object v2, v1

    move-object v7, v11

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object v7

    .line 32
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 33
    invoke-interface {v10, v1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v4

    move-object v2, v8

    move-object v3, v9

    move-object v5, v11

    move-object v6, p2

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/I0;)Lcom/android/tools/r8/graph/e0;

    move-result-object p2

    if-nez v0, :cond_5

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 78
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/fv1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fv1;-><init>()V

    .line 79
    iget-object v2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 80
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 81
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 82
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 83
    invoke-interface {v1, v2}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 88
    iget-object v1, p2, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 92
    iget-object p2, p2, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 93
    invoke-virtual {v1, p1, v0, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/cu;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 67
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    .line 69
    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 70
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    .line 71
    iget-object p1, p1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/graph/A2;
    .locals 11

    .line 95
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 96
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    .line 97
    iget-object v2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 98
    iget-object v3, v1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 99
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 100
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 102
    iget-object v3, v3, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 103
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v3, :cond_4

    .line 104
    iget-object p1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 105
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 107
    new-instance p2, Lcom/android/tools/r8/internal/av1;

    invoke-direct {p2, p0, v1}, Lcom/android/tools/r8/internal/av1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/Yj;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 108
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 109
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 110
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    if-nez v0, :cond_3

    .line 111
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object p2

    .line 112
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 113
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v2

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    .line 114
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 115
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 116
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 117
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v5

    .line 118
    new-instance v4, Lcom/android/tools/r8/internal/bv1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/bv1;-><init>()V

    iget-object v10, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    new-instance v7, Lcom/android/tools/r8/internal/cv1;

    invoke-direct {v7, p0, v3, p1, p2}, Lcom/android/tools/r8/internal/cv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)V

    .line 119
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/uv1;

    invoke-direct {v8, p2}, Lcom/android/tools/r8/internal/uv1;-><init>(Lcom/android/tools/r8/internal/rm;)V

    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {v2}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v9

    .line 122
    iget-object p1, v5, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 123
    invoke-interface {v4, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v6

    .line 124
    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    .line 125
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 126
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    if-nez v0, :cond_8

    .line 127
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/E0;
    .locals 8

    .line 131
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 132
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 133
    iget-object v2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 134
    iget-object v3, v1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 135
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 136
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 138
    iget-object v3, v3, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 139
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v3, :cond_2

    .line 140
    iget-object p1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 141
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 142
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 143
    new-instance p2, Lcom/android/tools/r8/internal/rv1;

    invoke-direct {p2, p0, v1}, Lcom/android/tools/r8/internal/rv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/Yj;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 144
    invoke-virtual {p1, p2, v2, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    .line 146
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 147
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 148
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 149
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 150
    new-instance v0, Lcom/android/tools/r8/internal/sv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sv1;-><init>()V

    iget-object v7, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/tv1;

    invoke-direct {v4, p0, p1}, Lcom/android/tools/r8/internal/tv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/cu;)V

    .line 151
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/uv1;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/internal/uv1;-><init>(Lcom/android/tools/r8/internal/rm;)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    invoke-static {v1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v6

    .line 154
    iget-object p1, v2, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 155
    invoke-interface {v0, p1}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v3

    .line 156
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/o9;)Lcom/android/tools/r8/graph/H2;
    .locals 9

    .line 158
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 159
    iget-object v1, v1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 160
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 163
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 164
    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 165
    iget-object v2, v0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 166
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 167
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 168
    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 169
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 170
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    .line 171
    new-instance v4, Lcom/android/tools/r8/internal/hv1;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/hv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/Yj;)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    new-instance v7, Lcom/android/tools/r8/internal/iv1;

    invoke-direct {v7, p0, p1}, Lcom/android/tools/r8/internal/iv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/cu;)V

    .line 172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/nv1;

    invoke-direct {v8, p2}, Lcom/android/tools/r8/internal/nv1;-><init>(Lcom/android/tools/r8/internal/sm;)V

    .line 173
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 11
    iget-object p3, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    const/4 p3, 0x0

    .line 13
    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/internal/cy;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object p1

    .line 14
    iput-object p2, p1, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 15
    iput-boolean p3, p1, Lcom/android/tools/r8/internal/cy;->e:Z

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p1, Lcom/android/tools/r8/internal/cy;->h:Z

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 177
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 179
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 180
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/rm;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 182
    iget-object p3, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 183
    iget-object v0, p1, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 184
    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/um;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 185
    sget-boolean p3, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez p3, :cond_1

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 186
    iget-object p1, p1, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    .line 187
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 188
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/bu;

    .line 189
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v7, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/bu;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Ljava/util/LinkedHashMap;ILcom/android/tools/r8/graph/y;)V

    .line 190
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/bu;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 128
    iget-object p2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 3

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 57
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 61
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 62
    new-instance v0, Lcom/android/tools/r8/internal/ov1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/ov1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 63
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/synthesis/W;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    .line 174
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/synthesis/p;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/rm;)V
    .locals 7

    .line 175
    new-instance v6, Lcom/android/tools/r8/internal/gv1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/gv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;)V
    .locals 2

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/m;->e:Z

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p1, Lcom/android/tools/r8/synthesis/m;->f:Z

    .line 74
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/m;->g:Z

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/m;->c()Lcom/android/tools/r8/synthesis/m;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/tools/r8/internal/dv1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/dv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 37
    iget-object v0, p2, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p5

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 41
    iput-object p1, p5, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 43
    iput-object p1, p5, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 44
    iput-boolean v0, p5, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 45
    new-instance p1, Lcom/android/tools/r8/internal/Zu1;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/tools/r8/internal/Zu1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;)V

    .line 46
    iput-object p1, p5, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 48
    iget-object p2, p2, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/um;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/16 p2, 0x1401

    const/4 v0, 0x0

    .line 50
    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p3

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    .line 53
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 54
    iput-boolean v0, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 55
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yj;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/ev1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ev1;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 6
    invoke-interface {v1, v2}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 11
    iget-object v1, p2, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 14
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/o9;)V
    .locals 9

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/um;->b:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 19
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/o9;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v3

    .line 30
    new-instance v4, Lcom/android/tools/r8/internal/Yu1;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/Yu1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/internal/Yj;)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    new-instance v7, Lcom/android/tools/r8/internal/jv1;

    invoke-direct {v7, p0, v1, p1}, Lcom/android/tools/r8/internal/jv1;-><init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/cu;)V

    .line 31
    new-instance v8, Lcom/android/tools/r8/internal/nv1;

    invoke-direct {v8, p2}, Lcom/android/tools/r8/internal/nv1;-><init>(Lcom/android/tools/r8/internal/sm;)V

    .line 32
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/um;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Yj;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method
