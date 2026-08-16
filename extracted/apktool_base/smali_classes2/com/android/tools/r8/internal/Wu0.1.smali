.class public final Lcom/android/tools/r8/internal/Wu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/Map;

.field public final c:Lcom/android/tools/r8/internal/M70;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wu0;->c:Lcom/android/tools/r8/internal/M70;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Wu0;->d:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/A2;)Ljava/lang/Integer;
    .locals 0

    .line 22
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 24
    array-length p1, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WS;Ljava/util/Map;)Z
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 18
    :cond_0
    iget-object p0, p2, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/z11;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/z11;-><init>(Ljava/util/Map;)V

    .line 20
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/YS;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/wT;Lcom/android/tools/r8/internal/dT;Lcom/android/tools/r8/internal/dH;)Lcom/android/tools/r8/internal/Vu0;
    .locals 10

    .line 86
    invoke-interface {p4}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v0

    .line 87
    invoke-static {v0}, Lcom/android/tools/r8/internal/kT;->e(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/wT;->a(I)V

    return-object v2

    .line 89
    :cond_0
    invoke-interface {p4}, Lcom/android/tools/r8/internal/dT;->m()I

    move-result v1

    const/16 v3, 0xcd

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-ne v0, v3, :cond_9

    .line 90
    invoke-interface {p4}, Lcom/android/tools/r8/internal/dT;->o()I

    move-result v3

    .line 91
    iget-object v7, p2, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 92
    aget-object v7, v7, v3

    .line 93
    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 94
    iget-object v8, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    .line 95
    invoke-interface {p4}, Lcom/android/tools/r8/internal/dT;->k()I

    move-result v6

    .line 96
    invoke-interface {p4, p2}, Lcom/android/tools/r8/internal/dT;->a(Lcom/android/tools/r8/internal/WS;)I

    move-result v8

    .line 97
    iget-object p2, p2, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/uT;->a()Lcom/android/tools/r8/internal/mT;

    move-result-object p2

    .line 99
    invoke-virtual {p2, v6, v8}, Lcom/android/tools/r8/internal/mT;->a(II)Ljava/lang/Object;

    move-result-object p2

    .line 100
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 101
    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/M2;

    if-eqz p5, :cond_7

    .line 102
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 103
    invoke-virtual {p5, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-nez v8, :cond_7

    if-nez p2, :cond_1

    move v4, v9

    .line 104
    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/internal/Wu0;->e:Z

    if-nez p2, :cond_3

    iget-object v8, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    .line 108
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 109
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    .line 110
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    .line 111
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 112
    new-instance p1, Lcom/android/tools/r8/internal/Vu0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    .line 113
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    invoke-direct {p1, v7, v6, p2}, Lcom/android/tools/r8/internal/Vu0;-><init>(Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/graph/H2;)V

    return-object p1

    :cond_7
    :goto_2
    move v4, v5

    move p1, v6

    :goto_3
    move v6, v3

    goto :goto_4

    :cond_8
    move p1, v6

    move v4, v9

    goto :goto_3

    :cond_9
    move p1, v6

    .line 114
    :goto_4
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 115
    sget-boolean p2, Lcom/android/tools/r8/internal/Wu0;->e:Z

    if-nez p2, :cond_b

    if-gt v4, v5, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    if-lez v4, :cond_c

    .line 116
    new-instance p2, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {v6, p2}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    if-ne v4, v5, :cond_c

    .line 117
    new-instance p2, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    .line 118
    :cond_c
    invoke-interface {p4}, Lcom/android/tools/r8/internal/dT;->m()I

    move-result p1

    :goto_6
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_d

    .line 119
    invoke-interface {p4}, Lcom/android/tools/r8/internal/dT;->j()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/wT;->b(I)V

    move p1, p2

    goto :goto_6

    :cond_d
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;
    .locals 10

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/A11;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/A11;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/QJ;

    if-eqz v1, :cond_b

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 35
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 38
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 43
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/xw0;->j:Z

    .line 44
    sget-boolean v5, Lcom/android/tools/r8/internal/Wu0;->e:Z

    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 47
    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    if-nez v5, :cond_6

    if-eqz v4, :cond_5

    goto :goto_3

    .line 48
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    .line 51
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 53
    iget-object v4, p0, Lcom/android/tools/r8/internal/Wu0;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Xu0;

    .line 54
    iget-object v5, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    new-instance v6, Lcom/android/tools/r8/internal/B11;

    invoke-direct {v6, p0, p1}, Lcom/android/tools/r8/internal/B11;-><init>(Lcom/android/tools/r8/internal/Wu0;Lcom/android/tools/r8/graph/H5;)V

    .line 55
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/tools/r8/internal/Xu0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    .line 56
    sget-boolean v2, Lcom/android/tools/r8/internal/QJ;->p:Z

    .line 57
    new-instance v2, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 58
    iget-object v4, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/tools/r8/internal/PJ;

    .line 60
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 61
    iput-object v2, v9, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 62
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H0;->v()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    if-le v2, v3, :cond_a

    .line 63
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 64
    iget-object v2, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    const/4 v2, 0x0

    int-to-long v5, v2

    .line 66
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v7

    move-object v2, v0

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    .line 70
    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v4

    .line 71
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    iget-object v4, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 75
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    .line 76
    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 77
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 78
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 79
    sget-boolean v4, Lcom/android/tools/r8/internal/Wu0;->e:Z

    if-nez v4, :cond_9

    if-ne v2, v1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_9
    :goto_5
    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    .line 81
    :cond_a
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object v1

    const/4 v2, 0x0

    .line 82
    invoke-interface {v0, v1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_0

    .line 83
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/uB;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/uB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 84
    invoke-static {}, Lcom/android/tools/r8/internal/v8;->b()Lcom/android/tools/r8/internal/v8;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/lB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/WS;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->d:Ljava/util/IdentityHashMap;

    .line 121
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/android/tools/r8/internal/E11;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/E11;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/C11;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/C11;-><init>(Lcom/android/tools/r8/internal/Wu0;Lcom/android/tools/r8/graph/H2;)V

    new-instance v1, Lcom/android/tools/r8/internal/D11;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/D11;-><init>(Lcom/android/tools/r8/internal/Wu0;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Wu0;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->c:Lcom/android/tools/r8/internal/M70;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/y11;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/y11;-><init>(Lcom/android/tools/r8/internal/Wu0;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Wu0;->a()V

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/Wu0;->c:Lcom/android/tools/r8/internal/M70;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Z
    .locals 2

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    .line 11
    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/Wu0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WS;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 2
    new-instance v8, Lcom/android/tools/r8/internal/dH;

    const/16 v0, 0x10

    .line 3
    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v6, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dT;

    .line 8
    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v2

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_1

    .line 9
    invoke-interface {v1}, Lcom/android/tools/r8/internal/dT;->o()I

    move-result v2

    .line 10
    iget-object v3, v7, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    aget-object v2, v3, v2

    .line 11
    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 12
    iget-object v3, v6, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v1, v7}, Lcom/android/tools/r8/internal/dT;->a(Lcom/android/tools/r8/internal/WS;)I

    move-result v1

    invoke-virtual {v8, v1, v2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 15
    :cond_3
    new-instance v10, Lcom/android/tools/r8/internal/X7;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/X7;-><init>()V

    .line 16
    new-instance v11, Lcom/android/tools/r8/internal/wT;

    invoke-direct {v11, v10}, Lcom/android/tools/r8/internal/wT;-><init>(Lcom/android/tools/r8/internal/X7;)V

    .line 17
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v13, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/tools/r8/internal/dT;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v4, v15

    move-object v5, v8

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Wu0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/wT;Lcom/android/tools/r8/internal/dT;Lcom/android/tools/r8/internal/dH;)Lcom/android/tools/r8/internal/Vu0;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vu0;->c:Lcom/android/tools/r8/graph/H2;

    .line 22
    iget-object v2, v6, Lcom/android/tools/r8/internal/Wu0;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Xu0;

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/Vu0;->c:Lcom/android/tools/r8/graph/H2;

    .line 24
    iget-object v3, v0, Lcom/android/tools/r8/internal/Vu0;->a:Lcom/android/tools/r8/graph/A2;

    .line 25
    iget-object v4, v6, Lcom/android/tools/r8/internal/Wu0;->b:Ljava/util/Map;

    new-instance v5, Lcom/android/tools/r8/internal/w11;

    move-object/from16 v9, p1

    invoke-direct {v5, v6, v9}, Lcom/android/tools/r8/internal/w11;-><init>(Lcom/android/tools/r8/internal/Wu0;Lcom/android/tools/r8/graph/H5;)V

    .line 26
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/internal/Xu0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->v()I

    move-result v2

    .line 28
    iget-object v3, v0, Lcom/android/tools/r8/internal/Vu0;->a:Lcom/android/tools/r8/graph/A2;

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 30
    sget-boolean v2, Lcom/android/tools/r8/internal/Wu0;->e:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->v()I

    move-result v1

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vu0;->a:Lcom/android/tools/r8/graph/A2;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-le v1, v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p2}, Lcom/android/tools/r8/internal/Wu0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    return-object v0

    .line 34
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/x11;

    invoke-direct {v2, v12, v7}, Lcom/android/tools/r8/internal/x11;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/WS;)V

    .line 35
    invoke-interface {v13, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    sget-boolean v2, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 37
    invoke-interface {v15}, Lcom/android/tools/r8/internal/dT;->m()I

    move-result v2

    add-int/lit8 v3, v2, 0x8

    const/16 v4, 0xcd

    .line 38
    invoke-virtual {v11, v4, v3}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 39
    new-instance v3, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v3, v11}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    .line 40
    iget v0, v0, Lcom/android/tools/r8/internal/Vu0;->b:I

    .line 41
    new-instance v1, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v1, v11}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    :goto_3
    add-int/lit8 v0, v2, -0x1

    if-lez v2, :cond_8

    .line 42
    invoke-interface {v15}, Lcom/android/tools/r8/internal/dT;->j()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/wT;->b(I)V

    move v2, v0

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 43
    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_4
    return-object v7

    .line 44
    :cond_a
    iget-object v0, v7, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 45
    sget-boolean v1, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 46
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 47
    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    .line 49
    array-length v2, v0

    .line 50
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move v9, v1

    .line 51
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_d

    add-int v1, v2, v9

    .line 52
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 53
    :cond_d
    :goto_6
    move-object v12, v0

    check-cast v12, [Lcom/android/tools/r8/internal/YS;

    .line 54
    iget-object v0, v10, Lcom/android/tools/r8/internal/X7;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 55
    new-instance v0, Lcom/android/tools/r8/internal/WS;

    iget-object v13, v7, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iget v14, v7, Lcom/android/tools/r8/internal/WS;->i:I

    iget v1, v7, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v2, v7, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    iget-object v3, v7, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v4, v7, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v5, v7, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v7, v7, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object v11, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v7

    invoke-direct/range {v11 .. v21}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wu0;->c:Lcom/android/tools/r8/internal/M70;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
