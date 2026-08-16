.class public final Lcom/android/tools/r8/internal/OV;
.super Lcom/android/tools/r8/internal/RV;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/QV;

.field public final f:Lcom/android/tools/r8/internal/WV;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/RV;-><init>(Lcom/android/tools/r8/graph/y;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/OV;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/PV;->a:Lcom/android/tools/r8/internal/PV;

    invoke-static {p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/T70;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/T70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/OV;->e:Lcom/android/tools/r8/internal/QV;

    sget v0, Lcom/android/tools/r8/internal/XV;->g:I

    new-instance v0, Lcom/android/tools/r8/internal/WV;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/WV;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/OV;->f:Lcom/android/tools/r8/internal/WV;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/QP0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QP0;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/MV;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/NP0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/NP0;-><init>()V

    .line 9
    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    .line 10
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/MV;

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/MV;->a(Lcom/android/tools/r8/internal/MV;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Ljava/lang/String;)Lcom/android/tools/r8/graph/H2;
    .locals 8

    const/4 v0, 0x0

    if-eq p1, p2, :cond_7

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 78
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Ljava/lang/String;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 80
    iget-object v6, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    iget-object v7, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v5, v7}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    iget-object v3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Ljava/lang/String;)Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_4

    return-object p2

    .line 83
    :cond_4
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 84
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    return-object v0

    .line 85
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 3

    .line 70
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 12
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 13
    new-instance v1, Lu/P0;

    invoke-direct {v1}, Lu/P0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/XP0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/XP0;-><init>(Lcom/android/tools/r8/internal/OV;Ljava/util/Map;)V

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/VP0;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/VP0;-><init>(Lcom/android/tools/r8/internal/OV;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V
    .locals 6

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/RP0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RP0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H0;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v3

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    if-nez v3, :cond_3

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 31
    iget-object v4, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/SP0;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/tools/r8/internal/SP0;-><init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H0;)V

    .line 32
    invoke-virtual {v3, v4, p1, v5}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    .line 33
    sget-boolean v4, Lcom/android/tools/r8/internal/OV;->g:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_2
    :goto_1
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v5, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v5, v4, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 38
    iget-object v4, v4, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/O4;->b(Lcom/android/tools/r8/graph/j1;)V

    .line 39
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 41
    iget-object v4, p0, Lcom/android/tools/r8/internal/OV;->e:Lcom/android/tools/r8/internal/QV;

    invoke-interface {v4, v3, v0}, Lcom/android/tools/r8/internal/QV;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 42
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/OV;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 47
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 48
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 51
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-boolean v0, Lcom/android/tools/r8/internal/OV;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    instance-of v0, p2, Lcom/android/tools/r8/graph/A4;

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    .line 56
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 59
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 61
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 62
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 63
    iput-object p1, p3, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 64
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    instance-of p1, p2, Lcom/android/tools/r8/graph/A4;

    if-nez p1, :cond_4

    .line 66
    instance-of p1, p2, Lcom/android/tools/r8/graph/e0;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 67
    :goto_2
    sget-object p2, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    return-void

    .line 69
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/MV;)V
    .locals 3

    .line 16
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/YP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/YP0;-><init>(Ljava/util/Map;)V

    .line 18
    new-instance v2, Lcom/android/tools/r8/internal/OP0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/tools/r8/internal/OP0;-><init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/ft0;)V

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/MV;->a(Lcom/android/tools/r8/internal/ft0;)V

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/PP0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/PP0;-><init>(Lcom/android/tools/r8/internal/OV;)V

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)V
    .locals 8

    .line 86
    iget-object v0, p4, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 87
    iget-object v1, p4, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    .line 88
    iget-object v0, p4, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 90
    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->c:Lcom/android/tools/r8/internal/nJ;

    .line 91
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 92
    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_4

    .line 93
    sget-object v1, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    if-ne p1, v1, :cond_4

    .line 94
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 95
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 97
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 98
    sget-boolean v1, Lcom/android/tools/r8/internal/OV;->g:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 99
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 100
    :cond_3
    :goto_1
    invoke-interface {p2, v0, p3, v3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    goto :goto_5

    .line 102
    :cond_4
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Vn;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/tools/r8/internal/TP0;

    invoke-direct {v4, p0, p4}, Lcom/android/tools/r8/internal/TP0;-><init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/graph/Z4$c;)V

    .line 103
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 104
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    .line 105
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 106
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    goto :goto_5

    .line 107
    :cond_7
    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Ljava/lang/String;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 108
    sget-boolean v1, Lcom/android/tools/r8/internal/OV;->g:Z

    if-nez v1, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 109
    :cond_9
    :goto_4
    invoke-interface {p2, v0, p3, v3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    .line 111
    iget-object p2, p0, Lcom/android/tools/r8/internal/OV;->f:Lcom/android/tools/r8/internal/WV;

    invoke-virtual {p2, p3, v2, p1}, Lcom/android/tools/r8/internal/WV;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void

    .line 112
    :cond_b
    instance-of p2, v3, Lcom/android/tools/r8/graph/H5;

    if-eqz p2, :cond_c

    .line 113
    iget-object p2, p0, Lcom/android/tools/r8/internal/OV;->f:Lcom/android/tools/r8/internal/WV;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/tools/r8/internal/WV;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void

    .line 114
    :cond_c
    iget-object p2, p0, Lcom/android/tools/r8/internal/OV;->f:Lcom/android/tools/r8/internal/WV;

    move-object v2, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p3

    .line 115
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    .line 116
    invoke-virtual {p2, p3, p4, p1}, Lcom/android/tools/r8/internal/WV;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/IdentityHashMap;

    move-result-object p2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/WP0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/WP0;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/LV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/tools/r8/internal/LV;-><init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/UP0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/UP0;-><init>(Lcom/android/tools/r8/internal/OV;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OV;->a(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OV;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 9
    iget-object p1, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n3;->b()V

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/OV;->f:Lcom/android/tools/r8/internal/WV;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/XV;

    iget-object v1, p1, Lcom/android/tools/r8/internal/WV;->a:Lcom/android/tools/r8/graph/y;

    iget-object p1, p1, Lcom/android/tools/r8/internal/WV;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/XV;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/OV;->e:Lcom/android/tools/r8/internal/QV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-interface {p1, v1, v0}, Lcom/android/tools/r8/internal/QV;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/XV;)V

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
