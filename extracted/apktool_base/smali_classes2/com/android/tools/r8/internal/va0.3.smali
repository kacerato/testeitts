.class public final Lcom/android/tools/r8/internal/va0;
.super Lcom/android/tools/r8/internal/Tj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/wa0;

.field public final synthetic g:Lcom/android/tools/r8/internal/za0;

.field public final synthetic h:Lcom/android/tools/r8/internal/ya0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ya0;Lcom/android/tools/r8/internal/wa0;Lcom/android/tools/r8/internal/za0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/va0;->f:Lcom/android/tools/r8/internal/wa0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/va0;->g:Lcom/android/tools/r8/internal/za0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Tj;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/j1;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 101
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/xa0;Ljava/util/Map;Lcom/android/tools/r8/internal/wa0;Lcom/android/tools/r8/internal/za0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 6

    .line 39
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    check-cast v0, Lcom/android/tools/r8/graph/D2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget-object p3, v0, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 44
    iget-object p1, p2, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 46
    invoke-virtual {p1, v0, v0, v2}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-object p6

    .line 47
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/va0;->i:Z

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/F2;

    goto :goto_1

    .line 50
    :cond_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/D2;

    invoke-virtual {p2, v1, p3, p4, v2}, Lcom/android/tools/r8/internal/xa0;->a(Lcom/android/tools/r8/graph/D2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/wa0;Z)Lcom/android/tools/r8/graph/F2;

    move-result-object p3

    .line 52
    :goto_1
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 53
    iget-object p1, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    check-cast v0, Lcom/android/tools/r8/graph/D2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    iget-object p3, v0, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 55
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 56
    iget-object p1, p2, Lcom/android/tools/r8/internal/xa0;->b:Lcom/android/tools/r8/internal/r6;

    .line 57
    iget-object p1, p1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 58
    invoke-virtual {p1, v0, v0, v2}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    :cond_4
    return-object p6

    .line 59
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p4

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {p2, p1, p4, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 62
    sget-boolean p2, Lcom/android/tools/r8/internal/za0;->d:Z

    if-nez p2, :cond_7

    .line 63
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    if-eq p2, p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_7
    :goto_2
    iget-object p2, p5, Lcom/android/tools/r8/internal/za0;->b:Lcom/android/tools/r8/internal/r6;

    .line 66
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 67
    iget-object p2, p2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 68
    invoke-virtual {p2, p3, p1, v2}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 69
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/O2;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 70
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    xor-int/2addr p2, v2

    .line 71
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result p3

    const/16 p4, 0x1e

    if-gt p3, p4, :cond_8

    .line 72
    new-instance p4, Lcom/android/tools/r8/internal/ME;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/ME;-><init>()V

    goto :goto_3

    :cond_8
    new-instance p4, Lcom/android/tools/r8/internal/hF;

    const/16 v0, 0x10

    .line 73
    invoke-direct {p4, v0}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    :goto_3
    const/4 v0, -0x1

    .line 74
    iput v0, p4, Lcom/android/tools/r8/internal/K;->b:I

    .line 75
    new-array v0, p3, [Z

    move v1, p2

    :goto_4
    if-ge v1, p3, :cond_c

    .line 76
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    move v4, p2

    :goto_5
    if-ge v4, p3, :cond_b

    .line 77
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v5

    .line 78
    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-ne v3, v5, :cond_a

    .line 79
    aget-boolean v5, v0, v4

    if-nez v5, :cond_a

    if-eq v1, v4, :cond_9

    .line 80
    invoke-interface {p4, v1, v4}, Lcom/android/tools/r8/internal/NE;->b(II)I

    goto :goto_6

    .line 81
    :cond_9
    invoke-interface {p4, v1}, Lcom/android/tools/r8/internal/NE;->remove(I)I

    .line 82
    :goto_6
    aput-boolean v2, v0, v4

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 83
    :cond_c
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 84
    sget-object p2, Lcom/android/tools/r8/graph/proto/f;->a:Lcom/android/tools/r8/graph/proto/f;

    goto :goto_8

    .line 85
    :cond_d
    new-instance p2, Lcom/android/tools/r8/graph/proto/e;

    invoke-direct {p2, p4}, Lcom/android/tools/r8/graph/proto/e;-><init>(Lcom/android/tools/r8/internal/K;)V

    .line 86
    :goto_8
    sget-boolean p4, Lcom/android/tools/r8/internal/za0;->d:Z

    if-nez p4, :cond_f

    .line 87
    instance-of p4, p2, Lcom/android/tools/r8/graph/proto/f;

    if-nez p4, :cond_e

    goto :goto_9

    .line 88
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 89
    :cond_f
    :goto_9
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p4

    .line 90
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p3

    .line 91
    iput-object p2, p3, Lcom/android/tools/r8/graph/proto/c$a;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 92
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p2

    .line 93
    sget p3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 94
    sget-object p3, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 p4, 0x0

    .line 95
    invoke-static {p3, p4, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p2

    .line 96
    iget-object p3, p5, Lcom/android/tools/r8/internal/za0;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 97
    :cond_10
    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 98
    :goto_a
    iget-object p3, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    new-instance p4, Lcom/android/tools/r8/internal/mw1;

    invoke-direct {p4, p2, p6}, Lcom/android/tools/r8/internal/mw1;-><init>(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p6, p1, p3, p4}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Rj;Ljava/util/List;)Lcom/android/tools/r8/internal/Ys0;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 2
    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/E0;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/va0;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object v6, v5, Lcom/android/tools/r8/internal/ya0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v4, v6, :cond_3

    iget-object v4, v5, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    .line 6
    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v6, v5

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 8
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ya0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->T0:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 12
    check-cast p1, Lcom/android/tools/r8/internal/xa0;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Rj;

    .line 15
    iget-object p2, p2, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 16
    check-cast p2, Lcom/android/tools/r8/internal/xa0;

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/xa0;->a:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/va0;->f:Lcom/android/tools/r8/internal/wa0;

    .line 22
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/ya0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/xa0;Lcom/android/tools/r8/internal/wa0;)Ljava/util/Map;

    move-result-object p2

    :goto_3
    move-object v5, p2

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    goto :goto_3

    .line 23
    :goto_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p2

    iget-object v6, p0, Lcom/android/tools/r8/internal/va0;->f:Lcom/android/tools/r8/internal/wa0;

    iget-object v7, p0, Lcom/android/tools/r8/internal/va0;->g:Lcom/android/tools/r8/internal/za0;

    new-instance v0, Lcom/android/tools/r8/internal/lw1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/lw1;-><init>(Lcom/android/tools/r8/internal/va0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/xa0;Ljava/util/Map;Lcom/android/tools/r8/internal/wa0;Lcom/android/tools/r8/internal/za0;)V

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, p2, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 26
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Function;)V

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 28
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 29
    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 30
    new-instance v1, Lcom/android/tools/r8/internal/xa0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/xa0;-><init>()V

    .line 31
    iput-object v1, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/internal/va0;->h:Lcom/android/tools/r8/internal/ya0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ya0;->a:Lcom/android/tools/r8/graph/y;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    .line 37
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/nw1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/nw1;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    .line 38
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method
