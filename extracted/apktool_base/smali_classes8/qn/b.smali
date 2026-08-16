.class public abstract Lqn/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lqn/b;[[Ljava/util/List;IILjava/nio/ByteOrder;Z)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lqn/b;->f([[Ljava/util/List;IILjava/nio/ByteOrder;Z)V

    return-void
.end method


# virtual methods
.method public abstract b(IILjava/nio/ByteOrder;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tx",
            "ty",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/nio/ByteOrder;",
            "Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public c(Ljava/nio/ByteOrder;ZIII)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "order",
            "cCompatibility",
            "threads",
            "tw",
            "th"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "ZIII)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, p4, p5}, Lqn/b;->e(Ljava/nio/ByteOrder;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lqn/b;->d(Ljava/nio/ByteOrder;ZIII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/nio/ByteOrder;ZIII)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "order",
            "cCompatibility",
            "tw",
            "th",
            "threads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "ZIII)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static/range {p5 .. p5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    const-class v5, Ljava/util/List;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/util/List;

    move v12, v4

    :goto_0
    if-ge v12, v1, :cond_1

    move v13, v4

    :goto_1
    if-ge v13, v0, :cond_0

    new-instance v14, Lqn/a;

    move-object v5, v14

    move-object v6, p0

    move-object v7, v3

    move v8, v12

    move v9, v13

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lqn/a;-><init>(Lqn/b;[[Ljava/util/List;IILjava/nio/ByteOrder;Z)V

    invoke-interface {v2, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3e8

    invoke-interface {v2, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_3

    move v6, v4

    :goto_3
    if-ge v6, v0, :cond_2

    aget-object v7, v3, v5

    aget-object v7, v7, v6

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public final e(Ljava/nio/ByteOrder;ZII)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "order",
            "cCompatibility",
            "tw",
            "th"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "ZII)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_0

    invoke-virtual {p0, v3, v2, p1, p2}, Lqn/b;->b(IILjava/nio/ByteOrder;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final synthetic f([[Ljava/util/List;IILjava/nio/ByteOrder;Z)V
    .locals 0

    aget-object p1, p1, p2

    invoke-virtual {p0, p3, p2, p4, p5}, Lqn/b;->b(IILjava/nio/ByteOrder;Z)Ljava/util/List;

    move-result-object p2

    aput-object p2, p1, p3

    return-void
.end method
