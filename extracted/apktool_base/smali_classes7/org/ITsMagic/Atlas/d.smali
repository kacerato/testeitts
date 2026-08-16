.class public final Lorg/ITsMagic/Atlas/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/d$b;,
        Lorg/ITsMagic/Atlas/d$a;,
        Lorg/ITsMagic/Atlas/d$c;,
        Lorg/ITsMagic/Atlas/d$d;,
        Lorg/ITsMagic/Atlas/d$e;,
        Lorg/ITsMagic/Atlas/d$f;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/ITsMagic/Atlas/d;->h(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;LBb/b;Lorg/ITsMagic/Atlas/d$f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p10}, Lorg/ITsMagic/Atlas/d;->i(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;LBb/b;Lorg/ITsMagic/Atlas/d$f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(LBb/b;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outputPixels"
        }
    .end annotation

    invoke-virtual {p0}, LBb/b;->p()I

    move-result v0

    invoke-virtual {p0}, LBb/b;->l()I

    move-result v1

    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [F

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I[FII)V

    move p1, v4

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_2

    move v12, v4

    :goto_1
    if-ge v12, v0, :cond_1

    add-int/lit8 v5, v2, 0x3

    aget v5, v3, v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v12, p1}, LBb/b;->n(II)F

    move-result v6

    aget v7, v3, v2

    add-float/2addr v6, v7

    invoke-static {v6}, Lorg/ITsMagic/Atlas/d;->f(F)F

    move-result v8

    invoke-virtual {p0, v12, p1}, LBb/b;->k(II)F

    move-result v6

    add-int/lit8 v7, v2, 0x1

    aget v7, v3, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Lorg/ITsMagic/Atlas/d;->f(F)F

    move-result v9

    invoke-virtual {p0, v12, p1}, LBb/b;->j(II)F

    move-result v6

    add-int/lit8 v7, v2, 0x2

    aget v7, v3, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Lorg/ITsMagic/Atlas/d;->f(F)F

    move-result v10

    invoke-virtual {p0, v12, p1}, LBb/b;->i(II)F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move-object v5, p0

    move v6, v12

    move v7, p1

    invoke-virtual/range {v5 .. v11}, LBb/b;->s(IIFFFF)V

    :cond_0
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totalItems",
            "preferredWorkers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/ITsMagic/Atlas/d$f;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v1, p0

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    new-instance v2, Lorg/ITsMagic/Atlas/d$f;

    add-int v3, p1, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v2, p1, v4}, Lorg/ITsMagic/Atlas/d$f;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static e(LBb/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/d$b;Lorg/ITsMagic/Atlas/d$c;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "raycastVertices",
            "surfelBuilder",
            "bridge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;",
            "Lorg/ITsMagic/Atlas/d$b;",
            "Lorg/ITsMagic/Atlas/d$c<",
            "TT;>;)I"
        }
    .end annotation

    invoke-interface {p4, p0, p1}, Lorg/ITsMagic/Atlas/d$b;->a(LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/d$a;

    move-result-object p0

    :try_start_0
    iget p1, p0, Lorg/ITsMagic/Atlas/d$a;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x0

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/d$a;->a()V

    return p4

    :cond_0
    :try_start_1
    invoke-interface {p5, p2}, Lorg/ITsMagic/Atlas/d$c;->b(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lorg/ITsMagic/Atlas/d$d;->a()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lorg/ITsMagic/Atlas/d$e;->a(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$e;

    move-result-object p2

    invoke-static {p0, p1, p2, p5}, Lorg/ITsMagic/Atlas/d;->g(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$c;)I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p1}, Lorg/ITsMagic/Atlas/d$d;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/d$a;->a()V

    return p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-interface {p1}, Lorg/ITsMagic/Atlas/d$d;->destroy()V

    throw p2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/ITsMagic/Atlas/d$d;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/d$a;->a()V

    return p4

    :goto_1
    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/d$a;->a()V

    throw p1
.end method

.method public static f(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static g(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$c;)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfels",
            "lightData",
            "meshData",
            "bridge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ITsMagic/Atlas/d$a;",
            "Lorg/ITsMagic/Atlas/d$d;",
            "Lorg/ITsMagic/Atlas/d$e;",
            "Lorg/ITsMagic/Atlas/d$c<",
            "TT;>;)I"
        }
    .end annotation

    iget v0, p0, Lorg/ITsMagic/Atlas/d$a;->l:I

    invoke-static {}, LO9/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/d;->d(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    const/4 v7, 0x0

    iget v8, p0, Lorg/ITsMagic/Atlas/d$a;->l:I

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lorg/ITsMagic/Atlas/d$c;->a(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;II)I

    move-result p0

    return p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lorg/ITsMagic/Atlas/d$f;

    new-instance v4, LUg/m;

    move-object v5, v4

    move-object v6, p3

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, LUg/m;-><init>(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$f;)V

    invoke-static {v4}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to count native light raycasts"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return p0
.end method

.method public static synthetic h(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v4, p4, Lorg/ITsMagic/Atlas/d$f;->a:I

    iget v5, p4, Lorg/ITsMagic/Atlas/d$f;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/ITsMagic/Atlas/d$c;->a(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;LBb/b;Lorg/ITsMagic/Atlas/d$f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {p4}, LBb/b;->p()I

    move-result v7

    iget v8, v0, Lorg/ITsMagic/Atlas/d$f;->a:I

    iget v9, v0, Lorg/ITsMagic/Atlas/d$f;->b:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lorg/ITsMagic/Atlas/d$c;->c(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;IIILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    invoke-virtual/range {p9 .. p10}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    monitor-enter p7

    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    :try_start_0
    const-string v4, ""

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    monitor-exit p7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static j(LBb/b;Ljava/util/List;Ljava/util/List;ILjava/util/List;Lorg/ITsMagic/Atlas/d$b;Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "plannedRaycasts",
            "raycastVertices",
            "surfelBuilder",
            "bridge",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;",
            "Lorg/ITsMagic/Atlas/d$b;",
            "Lorg/ITsMagic/Atlas/d$c<",
            "TT;>;",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    invoke-interface {p5, p0, p1}, Lorg/ITsMagic/Atlas/d$b;->a(LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/d$a;

    move-result-object p1

    :try_start_0
    iget p5, p1, Lorg/ITsMagic/Atlas/d$a;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-gtz p5, :cond_1

    if-eqz p7, :cond_0

    :try_start_1
    invoke-interface {p7, v2, v2, v1, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/ITsMagic/Atlas/d$a;->a()V

    return-void

    :cond_1
    :try_start_2
    invoke-interface {p6, p2}, Lorg/ITsMagic/Atlas/d$c;->b(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$d;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    :try_start_3
    invoke-interface {p2}, Lorg/ITsMagic/Atlas/d$d;->a()I

    move-result p5

    if-gtz p5, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p4}, Lorg/ITsMagic/Atlas/d$e;->a(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$e;

    move-result-object v3

    if-ltz p3, :cond_3

    :goto_1
    move v4, p3

    goto :goto_2

    :cond_3
    invoke-static {p1, p2, v3, p6}, Lorg/ITsMagic/Atlas/d;->g(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;Lorg/ITsMagic/Atlas/d$c;)I

    move-result p3

    goto :goto_1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lorg/ITsMagic/Atlas/d;->k(LBb/b;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;ILorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/a$c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p2}, Lorg/ITsMagic/Atlas/d$d;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Lorg/ITsMagic/Atlas/d$a;->a()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p7, :cond_6

    :try_start_5
    invoke-interface {p7, v2, v2, v1, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :goto_4
    if-eqz p2, :cond_5

    :try_start_6
    invoke-interface {p2}, Lorg/ITsMagic/Atlas/d$d;->destroy()V

    :cond_5
    throw p0

    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/ITsMagic/Atlas/d$d;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    invoke-virtual {p1}, Lorg/ITsMagic/Atlas/d$a;->a()V

    return-void

    :goto_6
    invoke-virtual {p1}, Lorg/ITsMagic/Atlas/d$a;->a()V

    throw p0
.end method

.method public static k(LBb/b;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;ILorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "surfels",
            "lightData",
            "meshData",
            "totalPlanned",
            "bridge",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBb/b;",
            "Lorg/ITsMagic/Atlas/d$a;",
            "Lorg/ITsMagic/Atlas/d$d;",
            "Lorg/ITsMagic/Atlas/d$e;",
            "I",
            "Lorg/ITsMagic/Atlas/d$c<",
            "TT;>;",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    move/from16 v0, p4

    move-object/from16 v13, p6

    new-instance v14, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p0 .. p0}, LBb/b;->p()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, LBb/b;->l()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v14, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v14, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(F)V

    move-object/from16 v15, p1

    iget v3, v15, Lorg/ITsMagic/Atlas/d$a;->l:I

    invoke-static {}, LO9/b;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Lorg/ITsMagic/Atlas/d;->d(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-array v11, v2, [I

    const/4 v10, 0x0

    move v2, v10

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ITsMagic/Atlas/d$f;

    iget v7, v3, Lorg/ITsMagic/Atlas/d$f;->a:I

    iget v8, v3, Lorg/ITsMagic/Atlas/d$f;->b:I

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v3 .. v8}, Lorg/ITsMagic/Atlas/d$c;->a(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;II)I

    move-result v3

    aput v3, v11, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    const-string v9, ""

    if-eqz v13, :cond_2

    if-gtz v0, :cond_1

    :try_start_1
    invoke-interface {v13, v10, v10, v1, v9}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v13, v10, v0, v1, v9}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v10

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/ITsMagic/Atlas/d$f;

    aget v18, v11, v7

    new-instance v19, LUg/l;

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move/from16 v20, v7

    move-object/from16 v7, v17

    move-object v15, v8

    move-object v8, v14

    move-object/from16 v21, v9

    move-object/from16 v9, p6

    move/from16 v10, p4

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object/from16 v22, v12

    move/from16 v12, v18

    invoke-direct/range {v1 .. v12}, LUg/l;-><init>(Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;LBb/b;Lorg/ITsMagic/Atlas/d$f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static/range {v19 .. v19}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v20, 0x1

    move-object v8, v15

    move-object/from16 v11, v17

    move-object/from16 v9, v21

    move-object/from16 v12, v22

    const/4 v10, 0x0

    move-object/from16 v15, p1

    goto :goto_2

    :cond_3
    move-object v15, v8

    move-object/from16 v21, v9

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v10, v1, :cond_4

    :try_start_2
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to rasterize native direct light"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object/from16 v1, p0

    invoke-static {v1, v14}, Lorg/ITsMagic/Atlas/d;->c(LBb/b;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    if-eqz v13, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_5

    move-object/from16 v3, v21

    const/4 v2, 0x0

    invoke-interface {v13, v2, v2, v1, v3}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object/from16 v3, v21

    invoke-interface {v13, v0, v0, v1, v3}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_4
    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    return-void

    :goto_5
    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    throw v0
.end method
