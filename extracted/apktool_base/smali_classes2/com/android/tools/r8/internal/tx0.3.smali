.class public final Lcom/android/tools/r8/internal/tx0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/AA;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/android/tools/r8/internal/sx0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/sx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tx0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/tools/r8/internal/tx0;->e:Lcom/android/tools/r8/internal/sx0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 89
    iget-object p0, p0, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L4;)Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/L4;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/L4;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/L4;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/L4;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static f(Lcom/android/tools/r8/graph/L4;)Z
    .locals 1

    const/16 v0, 0x80

    iget p0, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/Vd1;

    invoke-direct {v6, p1}, Lcom/android/tools/r8/internal/Vd1;-><init>(Lcom/android/tools/r8/internal/td;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/graph/u1;->K6:Z

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->B()V

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->C()V

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->u()V

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/graph/L4;
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/mu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/mu1;-><init>()V

    .line 21
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    .line 22
    iget-object v1, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 23
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/tools/r8/graph/L4;

    .line 25
    new-instance v2, Lcom/android/tools/r8/graph/L4;

    .line 26
    iget v3, v1, Lcom/android/tools/r8/graph/g;->b:I

    .line 27
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 28
    sget-boolean v1, Lcom/android/tools/r8/internal/tx0;->f:Z

    if-nez v1, :cond_1

    new-instance v3, Lcom/android/tools/r8/internal/nu1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/nu1;-><init>()V

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->K()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/tools/r8/internal/ou1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ou1;-><init>()V

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/tools/r8/internal/pu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pu1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/tools/r8/internal/cu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cu1;-><init>()V

    .line 32
    iget-object v4, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v4

    .line 33
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v1

    if-eq v1, v3, :cond_6

    const/16 v1, 0x400

    .line 34
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 35
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/tools/r8/internal/du1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/du1;-><init>()V

    .line 36
    iget-object v4, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v4

    .line 37
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v1

    if-eq v1, v3, :cond_7

    const/16 v1, 0x40

    .line 38
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 39
    :cond_7
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v4, p0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    .line 41
    iget-object v4, v4, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/eu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eu1;-><init>()V

    .line 44
    iget-object v4, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v4

    .line 45
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v1

    if-eq v1, v3, :cond_9

    :cond_8
    const/16 v1, 0x10

    .line 46
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 47
    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/tools/r8/internal/fu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fu1;-><init>()V

    .line 48
    iget-object v4, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v4

    .line 49
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v1

    if-eq v1, v3, :cond_a

    const/16 v1, 0x1000

    .line 50
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 51
    :cond_a
    iget v1, v2, Lcom/android/tools/r8/graph/g;->c:I

    const/16 v4, 0x80

    invoke-static {v1, v4}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 52
    new-instance v1, Lcom/android/tools/r8/internal/gu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gu1;-><init>()V

    .line 53
    iget-object v5, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v0, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v5, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    .line 54
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v0

    if-eq v0, v3, :cond_b

    .line 55
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/g;->b(I)V

    :cond_b
    const/high16 v0, 0x20000

    .line 56
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/qd0;Ljava/util/function/Consumer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 94
    sget-boolean v4, Lcom/android/tools/r8/internal/tx0;->f:Z

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 95
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/tx0;->b()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/tx0;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    .line 96
    :cond_2
    new-instance v4, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 97
    iget-object v5, v0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v7

    move v10, v8

    :cond_3
    :goto_1
    if-ge v10, v6, :cond_6

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/graph/H5;

    .line 98
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 100
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v12

    .line 101
    invoke-static {v9, v12}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Ib;

    .line 102
    :cond_5
    invoke-virtual {v0, v2, v11}, Lcom/android/tools/r8/internal/tx0;->a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 103
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/A2;

    .line 104
    invoke-virtual {v3, v13, v12, v8}, Lcom/android/tools/r8/internal/wA;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    .line 105
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/A2;

    .line 106
    invoke-virtual {v4, v12, v14}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_3

    move-object v7, v11

    goto :goto_1

    .line 107
    :cond_6
    sget-boolean v5, Lcom/android/tools/r8/internal/tx0;->f:Z

    if-nez v5, :cond_8

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 108
    :cond_8
    :goto_2
    iget-object v5, v0, Lcom/android/tools/r8/internal/tx0;->a:Lcom/android/tools/r8/graph/y;

    .line 109
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v10

    .line 111
    invoke-virtual {v5, v10, v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 112
    iget-object v10, v0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    .line 113
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$bridge"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v5, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 114
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 115
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/tools/r8/internal/Vd1;

    invoke-direct {v15, v2}, Lcom/android/tools/r8/internal/Vd1;-><init>(Lcom/android/tools/r8/internal/td;)V

    const/16 v16, 0x0

    const/4 v12, 0x0

    .line 116
    invoke-virtual/range {v10 .. v16}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 117
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 118
    iget-object v10, v0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/A2;

    iget-object v11, v0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    .line 119
    iget-object v11, v11, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 120
    iget-object v12, v0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 122
    invoke-virtual {v10, v11, v12}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 123
    new-instance v11, Lcom/android/tools/r8/internal/kD;

    iget-object v12, v0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    .line 124
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/AA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/internal/tx0;->e:Lcom/android/tools/r8/internal/sx0;

    invoke-direct {v11, v12, v4, v13}, Lcom/android/tools/r8/internal/kD;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/DG;Lcom/android/tools/r8/internal/sx0;)V

    .line 125
    sget-object v4, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    const/4 v4, 0x1

    .line 126
    invoke-static {v10, v4}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/tx0;->a()Lcom/android/tools/r8/graph/L4;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v11}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 129
    iput-object v9, v4, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 130
    iget-object v9, v6, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 131
    iput-object v9, v4, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 132
    iget-object v9, v6, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 133
    iput-object v9, v4, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 134
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    .line 135
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v9

    if-nez v9, :cond_9

    .line 136
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 137
    :cond_9
    new-instance v9, Lcom/android/tools/r8/internal/xx0;

    .line 138
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v9, v7}, Lcom/android/tools/r8/internal/xx0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 139
    iget-object v7, v0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v8

    :goto_3
    if-ge v12, v11, :cond_a

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/tools/r8/graph/H5;

    .line 140
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/A2;

    .line 141
    iget-object v15, v3, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    .line 142
    invoke-virtual {v15, v14, v10}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v14, v0, Lcom/android/tools/r8/internal/tx0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v13

    .line 144
    iget-object v14, v9, Lcom/android/tools/r8/internal/xx0;->b:Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {v13}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    goto :goto_3

    .line 145
    :cond_a
    iget-object v7, v0, Lcom/android/tools/r8/internal/tx0;->e:Lcom/android/tools/r8/internal/sx0;

    if-eqz v7, :cond_b

    .line 146
    iget-object v7, v9, Lcom/android/tools/r8/internal/xx0;->b:Lcom/android/tools/r8/shaking/H1;

    .line 147
    invoke-virtual {v7}, Lcom/android/tools/r8/shaking/H1;->y()Lcom/android/tools/r8/shaking/H1;

    .line 148
    :cond_b
    invoke-virtual {v3, v5, v10, v8}, Lcom/android/tools/r8/internal/wA;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    instance-of v3, v1, Lcom/android/tools/r8/internal/b10;

    if-nez v3, :cond_c

    .line 151
    iget-object v3, v0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-ge v8, v5, :cond_c

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/H5;

    .line 152
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    new-instance v10, Lcom/android/tools/r8/internal/bu1;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/internal/bu1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 153
    invoke-virtual {v1, v7, v10}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    goto :goto_4

    .line 154
    :cond_c
    iget-object v1, v2, Lcom/android/tools/r8/internal/td;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, v2, Lcom/android/tools/r8/internal/td;->a:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 156
    sget-boolean v2, Lcom/android/tools/r8/internal/td;->d:Z

    if-nez v2, :cond_e

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 157
    :cond_e
    :goto_5
    iget-object v1, v9, Lcom/android/tools/r8/internal/xx0;->b:Lcom/android/tools/r8/shaking/H1;

    .line 158
    iget-object v1, v1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 159
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/r1;->c()Lcom/android/tools/r8/shaking/t1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/r1;->b(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object/from16 v1, p5

    .line 160
    invoke-interface {v1, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    return-void

    .line 161
    :cond_10
    :goto_6
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/tx0;->a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/internal/wA;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/internal/wA;)V
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    .line 59
    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 60
    iget-object v2, p0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/ju1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ju1;-><init>()V

    const/4 v3, 0x0

    .line 64
    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/tx0;->e:Lcom/android/tools/r8/internal/sx0;

    if-eqz v2, :cond_1

    .line 67
    iget-object p1, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/ku1;

    invoke-direct {v1, p2, v0}, Lcom/android/tools/r8/internal/ku1;-><init>(Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    .line 69
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 70
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 71
    invoke-virtual {p2, v6, v0, v4}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 73
    iget-object v7, p2, Lcom/android/tools/r8/internal/wA;->b:Lcom/android/tools/r8/internal/l6;

    .line 74
    invoke-virtual {v7, v6, v0}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    iget-object v2, p0, Lcom/android/tools/r8/internal/tx0;->c:Lcom/android/tools/r8/internal/AA;

    .line 76
    iget-object v2, v2, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    if-ne p2, v2, :cond_4

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 79
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tx0;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v3, Lcom/android/tools/r8/internal/lu1;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/internal/lu1;-><init>(Lcom/android/tools/r8/internal/t40;)V

    .line 80
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 81
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    const/16 v1, 0x10

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 83
    iget-object v0, p1, Lcom/android/tools/r8/internal/td;->b:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p1, Lcom/android/tools/r8/internal/td;->a:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 86
    sget-boolean p2, Lcom/android/tools/r8/internal/td;->d:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->e:Lcom/android/tools/r8/internal/sx0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/hu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hu1;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->e:Lcom/android/tools/r8/internal/sx0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tx0;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/iu1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/iu1;-><init>()V

    .line 5
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    .line 6
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 7
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 9
    :goto_0
    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/HJ;->a(J)I

    move-result v0

    :goto_1
    if-gt v0, v2, :cond_4

    return v2

    :cond_4
    return v1
.end method
