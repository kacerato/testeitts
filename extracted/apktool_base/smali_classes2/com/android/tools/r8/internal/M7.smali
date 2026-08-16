.class public final Lcom/android/tools/r8/internal/M7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/O7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    sput-object v0, Lcom/android/tools/r8/internal/M7;->c:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/O7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/O7;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M7;->b:Lcom/android/tools/r8/internal/O7;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/WS;
    .locals 11

    .line 130
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p0

    .line 131
    new-instance v0, Lcom/android/tools/r8/internal/uM0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/uM0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 132
    iget-object p1, p0, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/internal/YS;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lcom/android/tools/r8/internal/YS;

    .line 133
    iget-object p1, p0, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    if-ne p1, v1, :cond_0

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/WS;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iget v3, p0, Lcom/android/tools/r8/internal/WS;->i:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/WS;->j:[B

    iget v5, p0, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v6, p0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    iget-object v7, p0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v8, p0, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v9, p0, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v10, p0, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/YS;)Lcom/android/tools/r8/internal/YS;
    .locals 1

    .line 135
    instance-of v0, p1, Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_2

    .line 136
    sget-boolean v0, Lcom/android/tools/r8/internal/M7;->d:Z

    if-nez v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/fv;)Ljava/util/List;
    .locals 0

    .line 129
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Ljava/util/ArrayList;)V
    .locals 10

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 31
    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_9

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    .line 37
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_4
    :goto_1
    if-ge v3, v1, :cond_8

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 39
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    if-nez v5, :cond_5

    .line 40
    iget-object v5, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 42
    invoke-virtual {v5, v4, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 44
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_1

    .line 45
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 46
    iget-object v5, v5, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 47
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->k()Lcom/android/tools/r8/internal/S7;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 48
    instance-of v6, v5, Lcom/android/tools/r8/internal/ox0;

    if-nez v6, :cond_6

    goto :goto_1

    .line 49
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/S7;->a()Lcom/android/tools/r8/internal/ox0;

    move-result-object v5

    .line 50
    iget-object v5, v5, Lcom/android/tools/r8/internal/ox0;->a:Lcom/android/tools/r8/graph/A2;

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 52
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 54
    iget-object v6, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v6, p2, v5}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 56
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 57
    :cond_7
    sget-object v6, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    .line 58
    new-instance v7, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v7, v6, v5}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 59
    new-instance v5, Lcom/android/tools/r8/internal/sM0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/sM0;-><init>()V

    .line 60
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 61
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 62
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto/16 :goto_9

    .line 63
    :cond_9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move-object v1, v0

    :cond_a
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_a

    :cond_b
    move-object v1, v3

    goto :goto_2

    .line 66
    :cond_c
    sget-boolean p3, Lcom/android/tools/r8/internal/M7;->d:Z

    if-nez p3, :cond_e

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_e
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/fv;

    .line 68
    iget-object p3, p3, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 69
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 73
    invoke-virtual {v5, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 74
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 75
    :cond_10
    sget-boolean v4, Lcom/android/tools/r8/internal/M7;->d:Z

    if-nez v4, :cond_12

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 76
    :cond_12
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    .line 77
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v5

    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_13
    if-ge v2, v6, :cond_15

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v2, v2, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/H5;

    .line 79
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v8

    if-eq v8, v5, :cond_14

    goto/16 :goto_9

    .line 80
    :cond_14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 81
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 83
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_9

    .line 84
    :cond_15
    iget-object v2, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 85
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v5, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v5, v6, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 86
    iget-object v2, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 87
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, p2, p3}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_9

    .line 89
    :cond_16
    invoke-static {v4, p3}, Lcom/android/tools/r8/internal/M7;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/WS;

    move-result-object v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v2, v5}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 90
    sget-object v2, Lcom/android/tools/r8/internal/M7;->c:Lcom/android/tools/r8/internal/o40;

    new-instance v5, Lcom/android/tools/r8/internal/ox0;

    invoke-direct {v5, p3}, Lcom/android/tools/r8/internal/ox0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p3

    .line 92
    iput-object v5, p3, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    .line 93
    iget-object p3, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 95
    invoke-virtual {p1, v2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 96
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    iget-object v5, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 98
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 99
    invoke-virtual {v2, p3, v5, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    .line 102
    :cond_17
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 103
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 104
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/graph/j1;)V

    .line 105
    iget-object p2, p0, Lcom/android/tools/r8/internal/M7;->b:Lcom/android/tools/r8/internal/O7;

    new-instance v0, Lcom/android/tools/r8/internal/tM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tM0;-><init>()V

    .line 106
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 107
    iget-object v4, p2, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    .line 108
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    move-object v2, v4

    .line 109
    :cond_18
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 110
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 115
    invoke-interface {v0, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 116
    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 117
    iget-object v6, p2, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/n6;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 118
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 119
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 120
    :cond_19
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 121
    :cond_1a
    sget-boolean v0, Lcom/android/tools/r8/internal/O7;->c:Z

    if-nez v0, :cond_1c

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_7

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 122
    :cond_1c
    :goto_7
    iget-object v0, p2, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, v4, p3}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    .line 123
    iget-object p2, p2, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    .line 124
    iget-object p2, p2, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    .line 125
    invoke-virtual {p2, p3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 127
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    .line 128
    sget-boolean v0, Lcom/android/tools/r8/internal/M7;->d:Z

    if-nez v0, :cond_1d

    if-eqz p3, :cond_1e

    goto :goto_8

    :cond_1e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1f
    :goto_9
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/M7;->b(Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 1
    const-string v0, "Bridge hoisting"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/D;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)Lcom/android/tools/r8/graph/D;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Lcom/android/tools/r8/graph/T;->e:Z

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/vM0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/vM0;-><init>(Lcom/android/tools/r8/internal/M7;Lcom/android/tools/r8/graph/c4;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/M7;->b:Lcom/android/tools/r8/internal/O7;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/M7;->b:Lcom/android/tools/r8/internal/O7;

    .line 13
    sget-boolean v1, Lcom/android/tools/r8/internal/O7;->c:Z

    if-nez v1, :cond_1

    .line 14
    iget-object v1, v0, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/N7;

    iget-object v2, v0, Lcom/android/tools/r8/internal/O7;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/O7;->b:Lcom/android/tools/r8/internal/n6;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/N7;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/n6;)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/graph/H2;)V
    .locals 8

    iget-object p1, p1, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/errors/q;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ$p;->s:Ljava/util/function/Predicate;

    invoke-interface {v5, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_2
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object v4

    iget-object v5, v4, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v4, v4, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v4

    :cond_3
    :goto_1
    iget-object v5, v4, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    iget-object v6, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/M7;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/TW;->k()Lcom/android/tools/r8/internal/S7;

    move-result-object v6

    if-eqz v6, :cond_3

    instance-of v6, v6, Lcom/android/tools/r8/internal/ox0;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    new-instance v7, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v7, v0, v6}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/tools/r8/internal/M7;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_6
    return-void
.end method
