.class public Lcom/android/tools/r8/graph/Y5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/ef0;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/android/tools/r8/graph/d1;

.field public final d:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    sput-object v0, Lcom/android/tools/r8/graph/Y5;->e:Lcom/android/tools/r8/internal/ef0;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Y5;->a:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Y5;->c:Lcom/android/tools/r8/graph/d1;

    invoke-interface {p3}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/Y5;->d:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;
    .locals 1

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/graph/Y5;->f:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/Zb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Zb;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/X5;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/graph/Y5;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/graph/g3;->k:Lcom/android/tools/r8/internal/hC;

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/graph/g3;->l:Lcom/android/tools/r8/internal/XB;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->k()Ljava/util/Collection;

    move-result-object v0

    const/4 v3, 0x3

    .line 6
    new-array v3, v3, [Ljava/lang/Iterable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    invoke-static {v0, v2, v1, p0}, Lcom/android/tools/r8/graph/Y5;->a(Ljava/lang/Iterable;Ljava/util/IdentityHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/d1;)V

    .line 10
    new-instance v0, Lcom/android/tools/r8/graph/Y5;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/r8/graph/Y5;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/graph/d1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/IdentityHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/d1;)V
    .locals 11

    .line 44
    invoke-interface {p3}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p2}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/X5;->a(I)V

    .line 46
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 47
    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p2, v2, v0, p3}, Lcom/android/tools/r8/graph/Y5;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lcom/android/tools/r8/graph/gc;

    invoke-direct {p0}, Lcom/android/tools/r8/graph/gc;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/IdentityHashMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 49
    sget-boolean p0, Lcom/android/tools/r8/graph/Y5;->f:Z

    if-nez p0, :cond_11

    .line 50
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    .line 51
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 52
    invoke-interface {p3}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 56
    invoke-interface {p3, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-nez v3, :cond_3

    if-ne v2, v0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object v4, v0

    goto :goto_2

    .line 57
    :cond_3
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 58
    :goto_2
    sget-boolean v5, Lcom/android/tools/r8/graph/Y5;->f:Z

    if-nez v5, :cond_5

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 59
    :cond_5
    :goto_3
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v2, p2}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object v6

    const/4 v7, -0x2

    if-nez v4, :cond_7

    if-nez v5, :cond_b

    .line 61
    iget v4, v6, Lcom/android/tools/r8/graph/X5;->b:I

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 62
    :cond_7
    invoke-static {v4, p2}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object v4

    if-nez v5, :cond_9

    .line 63
    iget v8, v4, Lcom/android/tools/r8/graph/X5;->b:I

    iget v9, v6, Lcom/android/tools/r8/graph/X5;->b:I

    add-int/lit8 v10, v9, -0x1

    if-eq v8, v10, :cond_9

    if-nez v8, :cond_8

    if-ne v9, v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_4
    if-nez v5, :cond_b

    .line 64
    iget-object v4, v4, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 65
    :cond_b
    :goto_5
    iget v4, v6, Lcom/android/tools/r8/graph/X5;->b:I

    if-eq v4, v7, :cond_c

    .line 66
    iget-object v2, v6, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_c
    if-eqz v3, :cond_1

    .line 67
    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v4, v3

    move v5, v1

    :goto_6
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 68
    invoke-static {v6, p2}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object v6

    .line 69
    sget-boolean v8, Lcom/android/tools/r8/graph/Y5;->f:Z

    if-nez v8, :cond_e

    iget-object v9, v6, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_e
    :goto_7
    if-nez v8, :cond_10

    .line 70
    iget v6, v6, Lcom/android/tools/r8/graph/X5;->b:I

    if-ne v6, v7, :cond_f

    goto :goto_8

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_10
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_11
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/X5;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p6, p2, p3}, Lcom/android/tools/r8/graph/Y5;->b(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;)V

    .line 33
    invoke-static {p6, p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p0

    .line 34
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/X5;->a(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/X5;->a()V

    .line 37
    iget-object p0, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 38
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/graph/X5;->d:Z

    if-nez p1, :cond_2

    .line 39
    iget p1, p0, Lcom/android/tools/r8/graph/X5;->b:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/X5;->a()V

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    iget-object p2, p5, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget p0, p0, Lcom/android/tools/r8/graph/X5;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p5, p0}, Lcom/android/tools/r8/graph/X5;->a(I)V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;)V
    .locals 10

    .line 19
    invoke-interface {p4, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 20
    invoke-static {p2, p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object v8

    if-eqz v0, :cond_0

    .line 21
    new-instance v9, Lcom/android/tools/r8/graph/ac;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/ac;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/X5;)V

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/BiConsumer;)V

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    .line 23
    invoke-virtual {v8, p0}, Lcom/android/tools/r8/graph/X5;->a(I)V

    return-void

    .line 24
    :cond_0
    invoke-interface {p4}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq p2, p0, :cond_3

    .line 25
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p0

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/graph/X5;->d:Z

    if-nez p1, :cond_2

    .line 27
    iget p1, p0, Lcom/android/tools/r8/graph/X5;->b:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/X5;->a()V

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    iget-object p2, v8, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    iget p0, p0, Lcom/android/tools/r8/graph/X5;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v8, p0}, Lcom/android/tools/r8/graph/X5;->a(I)V

    :cond_3
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/ec;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ec;-><init>()V

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 2
    iget-object v1, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/graph/Y5;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/d1;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p1

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/graph/Y5;->f:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/tools/r8/graph/X5;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/tools/r8/graph/X5;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    new-instance v0, Lcom/android/tools/r8/graph/bc;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/bc;-><init>(Lcom/android/tools/r8/graph/Y5;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    new-instance v0, Lcom/android/tools/r8/graph/cc;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/cc;-><init>(Lcom/android/tools/r8/graph/Y5;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Lcom/android/tools/r8/graph/fc;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/graph/fc;-><init>(Lcom/android/tools/r8/graph/Y5;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/Y5;->a(Ljava/util/function/Consumer;)V

    .line 80
    invoke-static {v0}, Lcom/android/tools/r8/graph/x0;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->c:Lcom/android/tools/r8/graph/d1;

    .line 82
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p2

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/graph/hc;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/hc;-><init>(Ljava/util/List;)V

    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 74
    iget-object v1, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object v0

    .line 75
    iget-object v0, v0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    new-instance v1, Lcom/android/tools/r8/graph/dc;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/dc;-><init>(Lcom/android/tools/r8/graph/Y5;)V

    .line 76
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/rK;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/X5;->b()Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/X5;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)Lcom/android/tools/r8/graph/X5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/X5;->b()Z

    move-result p1

    return p1
.end method

.method public g(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/M2;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/graph/Y5;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/Y5;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    :cond_2
    return-object p1
.end method
