.class public final Lcom/android/tools/r8/internal/H5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/z5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/H5;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/z5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/z5;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H5;->c:Lcom/android/tools/r8/internal/z5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->D:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/x0;",
            "Lcom/android/tools/r8/internal/nJ;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/A2;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/l1;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/x0;)V

    .line 82
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object p0

    .line 83
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object p0

    .line 84
    new-instance v0, Lcom/android/tools/r8/internal/z5;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/z5;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 85
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/z5;->a(Ljava/util/function/Consumer;)V

    .line 86
    new-instance v1, Lcom/android/tools/r8/internal/om;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/om;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/om;->a(Ljava/util/function/Consumer;)V

    .line 87
    new-instance p0, Lcom/android/tools/r8/internal/m5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/tools/r8/internal/m5;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/function/Consumer;)V

    .line 89
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/z5;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)V
    .locals 4

    .line 90
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 91
    const-string v0, "Landroid/os/Build$VERSION;"

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const-string v0, "Landroid/os/Build;"

    const-string v1, "Ljava/lang/ArithmeticException;"

    const-string v2, "Ljava/lang/AssertionError;"

    const-string v3, "Ljava/lang/Double;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "Ljava/lang/Exception;"

    const-string v1, "Ljava/lang/ExceptionInInitializerError;"

    const-string v2, "Ljava/lang/Float;"

    const-string v3, "Ljava/lang/IllegalAccessException;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "Ljava/lang/IllegalArgumentException;"

    const-string v1, "Ljava/lang/IndexOutOfBoundsException;"

    const-string v2, "Ljava/lang/Integer;"

    const-string v3, "Ljava/lang/InterruptedException;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "Ljava/lang/Iterable;"

    const-string v1, "Ljava/lang/Long;"

    const-string v2, "Ljava/lang/Math;"

    const-string v3, "Ljava/lang/NoSuchMethodException;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "Ljava/lang/NullPointerException;"

    const-string v1, "Ljava/lang/NumberFormatException;"

    const-string v2, "Ljava/lang/OutOfMemoryError;"

    const-string v3, "Ljava/lang/Runnable;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "Ljava/lang/RuntimeException;"

    const-string v1, "Ljava/lang/SecurityException;"

    const-string v2, "Ljava/lang/Thread;"

    const-string v3, "Ljava/lang/reflect/Constructor;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "Ljava/lang/reflect/InvocationTargetException;"

    const-string v1, "Ljava/lang/reflect/Method;"

    const-string v2, "Ljava/math/BigDecimal;"

    const-string v3, "Ljava/math/BigInteger;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "Ljava/util/AbstractMap$SimpleImmutableEntry;"

    const-string v1, "Ljava/util/ArrayList;"

    const-string v2, "Ljava/util/Arrays;"

    const-string v3, "Ljava/util/Collection;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "Ljava/util/Collections;"

    const-string v1, "Ljava/util/Comparator;"

    const-string v2, "Ljava/util/Enumeration;"

    const-string v3, "Ljava/util/HashMap;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "Ljava/util/HashSet;"

    const-string v1, "Ljava/util/Iterator;"

    const-string v2, "Ljava/util/List;"

    const-string v3, "Ljava/util/ListIterator;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "Ljava/util/Map$Entry;"

    const-string v1, "Ljava/util/Map;"

    const-string v2, "Ljava/util/Objects;"

    const-string v3, "Ljava/util/Optional;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "Ljava/util/OptionalDouble;"

    const-string v1, "Ljava/util/OptionalInt;"

    const-string v2, "Ljava/util/OptionalLong;"

    const-string v3, "Ljava/util/Set;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "Ljava/util/concurrent/ExecutorService;"

    const-string v1, "Ljava/util/concurrent/ForkJoinPool;"

    const-string v2, "Ljava/util/concurrent/TimeUnit;"

    const-string v3, "Ljava/util/concurrent/atomic/AtomicReference;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "Ljava/util/concurrent/atomic/AtomicReferenceArray;"

    const-string v1, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;"

    const-string v2, "Ljava/util/function/Consumer;"

    const-string v3, "Ljava/util/function/DoubleConsumer;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "Ljava/util/function/IntConsumer;"

    const-string v1, "Ljava/util/function/LongConsumer;"

    const-string v2, "Ljava/util/function/Predicate;"

    const-string v3, "Ljava/util/function/Supplier;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "Ljava/util/stream/DoubleStream;"

    const-string v1, "Ljava/util/stream/IntStream;"

    const-string v2, "Ljava/util/stream/LongStream;"

    const-string v3, "Ljava/util/stream/Stream;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "Lsun/misc/Unsafe;"

    const-string v1, "[Ljava/lang/CharSequence;"

    const-string v2, "[Ljava/lang/Class;"

    const-string v3, "[Ljava/lang/Object;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "[Ljava/lang/Throwable;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    .line 113
    const-string v0, "[Ljava/util/Map$Entry;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 114
    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/utils/i;",
            "Lcom/android/tools/r8/internal/nJ;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/A2;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/l1;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 78
    new-instance v0, Lcom/android/tools/r8/dex/c;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 79
    :goto_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/x5;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 70
    new-instance v0, Lcom/android/tools/r8/internal/tG0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/tG0;-><init>(Lcom/android/tools/r8/internal/H5;Lcom/android/tools/r8/internal/x5;Lcom/android/tools/r8/internal/ga;)V

    .line 71
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/vb;Lcom/android/tools/r8/internal/x5;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 74
    new-instance v0, Lcom/android/tools/r8/internal/qG0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/qG0;-><init>(Lcom/android/tools/r8/internal/H5;Lcom/android/tools/r8/internal/x5;Lcom/android/tools/r8/internal/vb;)V

    .line 75
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 6

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->T()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 12
    sget-boolean v2, Lcom/android/tools/r8/internal/H5;->d:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/H5;->c:Lcom/android/tools/r8/internal/z5;

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/internal/z5;->c:Ljava/util/IdentityHashMap;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/x5;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-static {v2}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CU;->j()Ljava/util/Map;

    move-result-object v2

    if-nez v1, :cond_3

    .line 20
    iget-object v3, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 22
    iget-object v3, v3, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 23
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v3, :cond_3

    .line 24
    iget-object v3, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/H5;->c:Lcom/android/tools/r8/internal/z5;

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/internal/z5;->c:Ljava/util/IdentityHashMap;

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/x5;

    :cond_3
    if-eqz v1, :cond_6

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->O0:Z

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, v1, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 38
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 42
    new-instance v2, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;

    iget-object v1, v1, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    .line 43
    iget-object v3, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 44
    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 45
    invoke-static {p1}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 46
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;-><init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;I)V

    .line 47
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_5
    const/4 v1, 0x0

    :cond_6
    if-eqz v1, :cond_8

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 49
    :cond_7
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/x5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 50
    :cond_8
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 51
    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/H5;->d:Z

    if-nez v0, :cond_b

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->T()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_b
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->u()Lcom/android/tools/r8/internal/vb;

    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/H5;->c:Lcom/android/tools/r8/internal/z5;

    .line 55
    iget-object v1, v1, Lcom/android/tools/r8/internal/z5;->d:Ljava/util/IdentityHashMap;

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/x5;

    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 58
    :cond_c
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/internal/vb;Lcom/android/tools/r8/internal/x5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 59
    :cond_d
    :goto_3
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/x5;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 8

    move-object v0, p0

    .line 73
    iget-object v4, v0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p7

    move-object/from16 v6, p9

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/x5;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/x5;Lcom/android/tools/r8/internal/vb;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 8

    move-object v0, p0

    .line 77
    iget-object v4, v0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p7

    move-object/from16 v6, p9

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/x5;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    const/16 v0, 0xb2

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 61
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/android/tools/r8/internal/rG0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/rG0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/H5;->b:Lcom/android/tools/r8/graph/y;

    .line 65
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 66
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 68
    new-instance v1, Lcom/android/tools/r8/internal/sG0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sG0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
