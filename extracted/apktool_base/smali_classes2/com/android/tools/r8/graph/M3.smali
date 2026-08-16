.class public Lcom/android/tools/r8/graph/M3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/M3$a;
    }
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/M3;->a:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/graph/M3;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 3
    new-instance p0, Lcom/android/tools/r8/graph/p9;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/p9;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/Yx0;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object p0

    .line 6
    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/graph/M3;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 11
    new-instance v1, Lcom/android/tools/r8/graph/q9;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/graph/q9;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    new-instance p1, Lcom/android/tools/r8/graph/M3;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/graph/M3;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p1

    .line 35
    iget-object v0, p1, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    .line 37
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 30
    iget-object v0, v0, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    .line 31
    invoke-static {v0}, Lcom/android/tools/r8/graph/N3;->a(Ljava/util/List;)Lcom/android/tools/r8/graph/N3;

    move-result-object v0

    .line 32
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/N3;->a(Ljava/util/List;)Lcom/android/tools/r8/graph/N3;

    move-result-object v1

    .line 17
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/android/tools/r8/graph/r9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/r9;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    .line 26
    :goto_0
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;)Z
    .locals 2

    .line 84
    sget-boolean v0, Lcom/android/tools/r8/graph/M3;->c:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p3, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p3, :cond_a

    if-nez p0, :cond_4

    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_8

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    if-eq p0, p1, :cond_5

    return v0

    :cond_5
    return p3

    .line 91
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p0

    .line 92
    iget-object p0, p0, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eq p0, p1, :cond_7

    return v0

    :cond_7
    return p3

    .line 93
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    if-eq p0, p1, :cond_9

    goto :goto_1

    :cond_9
    return p3

    :cond_a
    :goto_1
    return v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;)Z
    .locals 0

    .line 95
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/M3$a;
    .locals 6

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/graph/M3;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Building context for pruned type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;ZLjava/lang/Object;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;ZLjava/lang/Object;)Lcom/android/tools/r8/graph/M3$a;
    .locals 10

    if-nez p2, :cond_0

    .line 45
    invoke-static {}, Lcom/android/tools/r8/graph/M3$a;->a()Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p5, :cond_1

    move-object v6, p2

    goto :goto_0

    .line 46
    :cond_1
    instance-of v0, p5, Lcom/android/tools/r8/graph/J2;

    if-eqz v0, :cond_3

    if-ne p5, p2, :cond_2

    .line 47
    invoke-static {}, Lcom/android/tools/r8/graph/M3$a;->a()Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    return-object p1

    .line 48
    :cond_2
    check-cast p5, Lcom/android/tools/r8/graph/J2;

    .line 49
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 50
    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    goto :goto_0

    :cond_3
    move-object v6, p5

    .line 51
    :goto_0
    sget-boolean p5, Lcom/android/tools/r8/graph/M3;->c:Z

    if-nez p5, :cond_5

    .line 52
    instance-of p5, v6, Lcom/android/tools/r8/graph/J2;

    if-nez p5, :cond_5

    instance-of p5, v6, Ljava/util/Set;

    if-eqz p5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_5
    :goto_1
    instance-of p5, v6, Ljava/util/Set;

    if-eqz p5, :cond_6

    .line 54
    move-object p5, v6

    check-cast p5, Ljava/util/Set;

    invoke-interface {p5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    .line 55
    invoke-static {}, Lcom/android/tools/r8/graph/M3$a;->a()Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    return-object p1

    .line 56
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_7

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 60
    iget-object v1, v1, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 61
    iget-object v1, v1, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    .line 62
    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v8

    goto :goto_2

    :cond_7
    move v1, v7

    :goto_2
    or-int/2addr p4, v1

    .line 63
    iget-object v1, p0, Lcom/android/tools/r8/graph/M3;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/tools/r8/graph/N3;

    if-eqz v0, :cond_8

    if-eqz v9, :cond_8

    .line 64
    iget-object v1, v9, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    .line 65
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v8

    goto :goto_3

    :cond_8
    move v1, v7

    :goto_3
    or-int/2addr p4, v1

    .line 67
    iget-object v1, p0, Lcom/android/tools/r8/graph/M3;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/graph/J2;

    if-nez p4, :cond_a

    .line 68
    invoke-static {p1, v3, p5, p3}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;)Z

    move-result p5

    if-eqz p5, :cond_9

    goto :goto_4

    :cond_9
    move v5, v7

    goto :goto_5

    :cond_a
    :goto_4
    move v5, v8

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 69
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;ZLjava/lang/Object;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_b

    goto :goto_6

    :cond_b
    if-eqz p4, :cond_c

    .line 71
    iget-object p3, v9, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Map;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    goto :goto_6

    .line 72
    :cond_c
    iget-object p3, v9, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    .line 73
    :goto_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_7

    .line 74
    :cond_d
    iget-object p3, p0, Lcom/android/tools/r8/graph/M3;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/N3;

    if-nez p3, :cond_e

    :goto_7
    return-object p1

    :cond_e
    if-eqz v0, :cond_10

    if-nez p4, :cond_10

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 76
    iget-object p4, p3, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_11

    .line 78
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p2

    .line 79
    iget-object p2, p2, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    .line 80
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11

    :cond_f
    move v7, v8

    goto :goto_8

    :cond_10
    move v7, p4

    .line 81
    :cond_11
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_12

    .line 82
    iget-object p2, p3, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Map;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    return-object p1

    .line 83
    :cond_12
    iget-object p2, p3, Lcom/android/tools/r8/graph/N3;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p1

    return-object p1
.end method
