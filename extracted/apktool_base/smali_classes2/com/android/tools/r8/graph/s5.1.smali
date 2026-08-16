.class public final Lcom/android/tools/r8/graph/s5;
.super Lcom/android/tools/r8/graph/t5;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public h:Lcom/android/tools/r8/graph/r5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/shaking/S0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/t5;-><init>()V

    new-instance v0, Lcom/android/tools/r8/graph/r5;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/r5;-><init>(ZLcom/android/tools/r8/shaking/S0;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Z)V
    .locals 2

    .line 78
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 79
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-boolean v0, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 82
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 83
    sget-boolean v1, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 84
    :cond_4
    :goto_1
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 85
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/t5;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/s5;
    .locals 7

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    .line 46
    iget-object v1, p1, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/graph/s5;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Z)V

    .line 47
    iget-object v1, p1, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/graph/Kf;

    invoke-direct {v2, p0, p3, p4, p2}, Lcom/android/tools/r8/graph/Kf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 48
    iget-object v1, p1, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/graph/s5;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Z)V

    .line 49
    iget-object v1, p1, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/graph/t5;->c:Ljava/util/Set;

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/graph/s5;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;Z)V

    .line 50
    new-instance v1, Lcom/android/tools/r8/internal/RR;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 51
    iget-object v0, p1, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/graph/Lf;

    invoke-direct {v2, p0, p3, p4, v1}, Lcom/android/tools/r8/graph/Lf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;)V

    invoke-virtual {v0, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/h;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Gf;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Gf;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 2

    .line 94
    sget-boolean v0, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 95
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 96
    sget-boolean v1, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v1, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    .line 23
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Mf;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Mf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    .line 24
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/Nf;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Nf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/Of;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Of;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    .line 28
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Pf;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Pf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    .line 29
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V
    .locals 4

    .line 33
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    .line 35
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 36
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 1

    .line 86
    sget-boolean p3, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/s5;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 31
    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 41
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p3, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 89
    sget-boolean v0, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_4

    if-nez v0, :cond_3

    .line 91
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p2

    .line 93
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/s5;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 4

    .line 52
    iget-object p4, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-interface {p3, p2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 55
    sget-boolean p4, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez p4, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    :goto_1
    return-void

    .line 57
    :cond_3
    iget-object p4, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/graph/Jf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Jf;-><init>()V

    .line 58
    invoke-interface {p4, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 59
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    .line 60
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 61
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    sget-boolean v2, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v2, :cond_5

    sget-object v3, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    if-eq v1, v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 64
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p4, v1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_4

    .line 66
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_7
    :goto_4
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    if-nez v2, :cond_9

    if-eqz v3, :cond_8

    goto :goto_5

    .line 68
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 69
    :cond_9
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_a
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 2

    .line 71
    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 72
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-boolean p1, Lcom/android/tools/r8/graph/s5;->i:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    .line 75
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 76
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/kR;

    .line 77
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;)Lcom/android/tools/r8/internal/kR;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 100
    sget-boolean v1, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v1, :cond_0

    .line 101
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type not found in hierarchy: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/h;)Z
    .locals 2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    iget-object v1, v1, Lcom/android/tools/r8/graph/r5;->b:Lcom/android/tools/r8/shaking/S0;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p1, p4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    .line 6
    :cond_2
    invoke-virtual {p0, p5, p1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    .line 7
    iget-object p4, p0, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    iget-boolean p4, p4, Lcom/android/tools/r8/graph/r5;->a:Z

    const/4 p5, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p4, 0x3

    if-eq p3, p4, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    .line 11
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_5

    return v1

    :cond_5
    return p5

    :cond_6
    if-nez v0, :cond_8

    if-eqz p2, :cond_7

    goto :goto_2

    .line 12
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_8
    :goto_2
    iget-object p3, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    new-instance p4, Lcom/android/tools/r8/graph/Qf;

    invoke-direct {p4}, Lcom/android/tools/r8/graph/Qf;-><init>()V

    .line 14
    invoke-interface {p3, p1, p4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    return p5
.end method

.method public final b(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Rf;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Rf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/Sf;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Sf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Hf;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Hf;-><init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/graph/d1;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/s5;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/graph/If;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/If;-><init>(Lcom/android/tools/r8/graph/s5;)V

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/graph/s5;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V

    :cond_4
    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/graph/t5;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    return-void
.end method
