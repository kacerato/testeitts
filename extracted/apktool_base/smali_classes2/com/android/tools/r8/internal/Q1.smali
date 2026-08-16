.class public final Lcom/android/tools/r8/internal/Q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/c4;

.field public final c:Lcom/android/tools/r8/internal/R1;

.field public final d:Lcom/android/tools/r8/internal/Gg;

.field public final e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/S1;->i:Z

    new-instance v0, Lcom/android/tools/r8/internal/R1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/R1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q1;->c:Lcom/android/tools/r8/internal/R1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q1;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v0, Lcom/android/tools/r8/internal/Gg;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gg;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Q1;->d:Lcom/android/tools/r8/internal/Gg;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 1
    const-string v0, "Access modification"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->p()Lcom/android/tools/r8/internal/U1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U1;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Q1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Q1;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Q1;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/Q1;

    move-result-object p0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->c:Lcom/android/tools/r8/internal/R1;

    .line 7
    iget-object v1, v0, Lcom/android/tools/r8/internal/R1;->a:Lcom/android/tools/r8/internal/r6;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/internal/R1;->b:Ljava/util/Set;

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/R1;->c:Ljava/util/Set;

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    iget-object p0, p0, Lcom/android/tools/r8/internal/Q1;->c:Lcom/android/tools/r8/internal/R1;

    .line 14
    sget-boolean v1, Lcom/android/tools/r8/internal/R1;->d:Z

    if-nez v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/R1;->a:Lcom/android/tools/r8/internal/r6;

    .line 16
    iget-object v1, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 17
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/R1;->b:Ljava/util/Set;

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/R1;->c:Ljava/util/Set;

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/S1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/R1;->a:Lcom/android/tools/r8/internal/r6;

    iget-object v3, p0, Lcom/android/tools/r8/internal/R1;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/tools/r8/internal/R1;->c:Ljava/util/Set;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/android/tools/r8/internal/S1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Ljava/util/Set;Ljava/util/Set;)V

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 26
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 101
    invoke-interface {p0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    new-instance p0, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 104
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/T1;->a(Lcom/android/tools/r8/graph/D2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 42
    invoke-interface {p0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p0, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/T1;->a(Lcom/android/tools/r8/graph/D2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)Lcom/android/tools/r8/graph/A2;
    .locals 8

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/kS0;

    invoke-direct {v6, p2, p3}, Lcom/android/tools/r8/internal/kS0;-><init>(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)V

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 65
    iget-object v2, p3, Lcom/android/tools/r8/internal/T1;->b:Lcom/android/tools/r8/internal/Bq;

    .line 66
    iget-object v2, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 67
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/tools/r8/graph/F2;

    if-eqz v0, :cond_2

    .line 69
    iget-object p2, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/lS0;

    invoke-direct {v6, p2, p3}, Lcom/android/tools/r8/internal/lS0;-><init>(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)V

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-static {p2, p2}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 81
    iget-object p3, p3, Lcom/android/tools/r8/internal/T1;->a:Lcom/android/tools/r8/internal/Dq;

    .line 82
    iget-object p3, p3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 83
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 85
    invoke-static {p2, p2}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 86
    iget-object p3, p3, Lcom/android/tools/r8/internal/T1;->b:Lcom/android/tools/r8/internal/Bq;

    .line 87
    iget-object p3, p3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 88
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p2

    .line 89
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/Q1;->f:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    if-ne p2, v1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_1
    if-nez v0, :cond_b

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p2

    if-nez p2, :cond_b

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 93
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    .line 94
    iget-object p3, p3, Lcom/android/tools/r8/internal/T1;->b:Lcom/android/tools/r8/internal/Bq;

    .line 95
    iget-object p3, p3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 96
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 97
    check-cast p3, Lcom/android/tools/r8/graph/F2;

    .line 98
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/F2;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_2

    .line 99
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 100
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 5

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    if-eq p2, v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->c:Lcom/android/tools/r8/internal/R1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    sget-boolean v3, Lcom/android/tools/r8/internal/R1;->d:Z

    if-nez v3, :cond_1

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/android/tools/r8/internal/R1;->a:Lcom/android/tools/r8/internal/r6;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/R1;->a:Lcom/android/tools/r8/internal/r6;

    .line 143
    iget-object v1, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v4, 0x1

    .line 144
    invoke-virtual {v1, v2, p2, v4}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 145
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    new-instance v1, Lcom/android/tools/r8/graph/H5;

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    .line 148
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 151
    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    move-object p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 152
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 153
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->c:Lcom/android/tools/r8/internal/R1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v0, v0, Lcom/android/tools/r8/internal/R1;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    :cond_3
    iget-object v0, v0, Lcom/android/tools/r8/internal/R1;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 161
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Q1;->b(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/Q1;
    .locals 3

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/b80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q1;->b:Lcom/android/tools/r8/graph/c4;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/android/tools/r8/internal/mS0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/mS0;-><init>(Lcom/android/tools/r8/internal/Q1;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/oS0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/oS0;-><init>(Lcom/android/tools/r8/internal/Q1;Lcom/android/tools/r8/internal/f6;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/pS0;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/tools/r8/internal/pS0;-><init>(Lcom/android/tools/r8/internal/Q1;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;)V

    .line 35
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/N4;->a(Lcom/android/tools/r8/internal/Jy;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/V1;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/tools/r8/internal/nS0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/nS0;-><init>(Lcom/android/tools/r8/internal/Q1;Lcom/android/tools/r8/internal/V1;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    sget-object p1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/Y1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Q1;->b:Lcom/android/tools/r8/graph/c4;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Q1;->d:Lcom/android/tools/r8/internal/Gg;

    .line 37
    invoke-static {v1, p1, v3}, Lcom/android/tools/r8/internal/T1;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/internal/Gg;)Lcom/android/tools/r8/internal/T1;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/tools/r8/internal/Y1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/Q1;Lcom/android/tools/r8/internal/T1;)V

    new-instance v1, Lcom/android/tools/r8/errors/q;

    invoke-direct {v1}, Lcom/android/tools/r8/errors/q;-><init>()V

    .line 38
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/V1;)Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j1:Lcom/android/tools/r8/internal/U1;

    .line 107
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/U1;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 108
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/t1;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->p()Lcom/android/tools/r8/internal/U1;

    move-result-object v0

    .line 110
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/U1;->a:Z

    if-eqz v0, :cond_d

    .line 111
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 112
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    .line 114
    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/t1;->b:Z

    if-nez v0, :cond_2

    return v2

    .line 115
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->asClass()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 117
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->m:Ljava/util/Set;

    .line 118
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 119
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->c()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 121
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->o:Ljava/util/Set;

    .line 122
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 123
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/Q1;->f:Z

    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 125
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 126
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_7

    return v2

    .line 127
    :cond_7
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    .line 128
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->p()Lcom/android/tools/r8/internal/U1;

    move-result-object p1

    .line 129
    iget-object v1, p1, Lcom/android/tools/r8/internal/U1;->b:Lcom/android/tools/r8/internal/nJ;

    .line 130
    iget-object v3, v1, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz v3, :cond_8

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    .line 132
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/o3;->f:Z

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    if-nez v1, :cond_a

    .line 133
    iget-object p1, p1, Lcom/android/tools/r8/internal/U1;->b:Lcom/android/tools/r8/internal/nJ;

    .line 134
    iget-boolean v1, p1, Lcom/android/tools/r8/internal/nJ;->e1:Z

    if-nez v1, :cond_9

    .line 135
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of p1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_a

    :cond_9
    move p1, v2

    goto :goto_4

    :cond_a
    move p1, v0

    :goto_4
    if-nez p1, :cond_c

    .line 136
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/V1;->a:Z

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    return v2

    :cond_c
    :goto_5
    return v0

    :cond_d
    :goto_6
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0, p4, p3}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/V1;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-nez v1, :cond_11

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/V1;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 11
    iget-object p3, p0, Lcom/android/tools/r8/internal/Q1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p3

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q1;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/L4;

    .line 14
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v3

    .line 16
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/qS0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qS0;-><init>()V

    .line 17
    invoke-virtual {p3, v2, v0}, Lcom/android/tools/r8/graph/g;->a(ZLjava/util/function/Consumer;)V

    .line 18
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    sget-boolean p3, Lcom/android/tools/r8/internal/Q1;->f:Z

    if-nez p3, :cond_7

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_0
    if-nez p3, :cond_9

    .line 21
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    if-ne p1, p3, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_9
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/T1;->a(Lcom/android/tools/r8/graph/D2;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L4;

    .line 24
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-nez p3, :cond_a

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p3

    if-nez p3, :cond_a

    move v2, v3

    .line 26
    :cond_a
    new-instance p3, Lcom/android/tools/r8/internal/qS0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/qS0;-><init>()V

    .line 27
    invoke-virtual {p1, v2, p3}, Lcom/android/tools/r8/graph/g;->a(ZLjava/util/function/Consumer;)V

    .line 28
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 29
    iget-object p2, p2, Lcom/android/tools/r8/internal/T1;->a:Lcom/android/tools/r8/internal/Dq;

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 31
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_b
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    .line 33
    :cond_c
    sget-boolean v1, Lcom/android/tools/r8/internal/Q1;->f:Z

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_2
    if-nez v1, :cond_10

    .line 34
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/V1;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result p3

    if-eqz p3, :cond_f

    goto :goto_3

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_10
    :goto_3
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    .line 37
    :cond_11
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    .line 38
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    .line 40
    :cond_12
    :goto_5
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
