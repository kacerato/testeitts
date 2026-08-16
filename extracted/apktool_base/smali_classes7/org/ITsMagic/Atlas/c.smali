.class public Lorg/ITsMagic/Atlas/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lorg/ITsMagic/Atlas/b;->g()V

    return-void
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lorg/ITsMagic/Atlas/b;->i()V

    return-void
.end method

.method public static c(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "iterations",
            "listener"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/ITsMagic/Atlas/b;->p(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, p1, p2}, Lorg/ITsMagic/Atlas/c;->d(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V

    return-void
.end method

.method public static d(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "iterations",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lub/p;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lub/p;->getHeight()I

    move-result v3

    mul-int v4, v2, v3

    mul-int/2addr v4, v1

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v8, 0x0

    aput v2, v6, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v9, v1, :cond_c

    move v12, v8

    :goto_1
    if-ge v12, v3, :cond_9

    move v13, v8

    :goto_2
    if-ge v13, v2, :cond_7

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v13, v12}, Lub/p;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v15

    const v16, 0x3a83126f    # 0.001f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    aget-object v15, v6, v13

    iget v14, v14, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v14, v15, v12

    goto/16 :goto_8

    :cond_0
    const/16 v17, 0x0

    const/4 v8, -0x1

    :goto_3
    if-gt v8, v7, :cond_5

    const/4 v15, -0x1

    :goto_4
    if-gt v15, v7, :cond_3

    if-nez v15, :cond_1

    if-nez v8, :cond_1

    goto :goto_5

    :cond_1
    add-int v7, v13, v15

    add-int v1, v12, v8

    if-ltz v7, :cond_2

    if-ge v7, v2, :cond_2

    if-ltz v1, :cond_2

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v7, v1}, Lub/p;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    cmpl-float v7, v7, v16

    if-lez v7, :cond_2

    move-object/from16 v17, v1

    goto :goto_6

    :cond_2
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    :goto_6
    if-eqz v17, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    :goto_7
    if-eqz v17, :cond_6

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Q(F)V

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->P(F)V

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->O(F)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    aget-object v7, v6, v13

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v1, v7, v12

    goto :goto_8

    :cond_6
    aget-object v1, v6, v13

    iget v7, v14, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v7, v1, v12

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_7
    int-to-float v1, v10

    int-to-float v7, v4

    div-float/2addr v1, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v1

    float-to-int v7, v7

    if-eq v7, v11, :cond_8

    const-string v8, ""

    move-object/from16 v13, p2

    invoke-interface {v13, v10, v4, v1, v8}, Lorg/ITsMagic/Atlas/c$b;->a(IIFLjava/lang/String;)V

    move v11, v7

    goto :goto_9

    :cond_8
    move-object/from16 v13, p2

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v13, p2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_b

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v2, :cond_a

    aget-object v8, v6, v7

    aget v8, v8, v1

    iput v8, v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v7, v1, v5}, Lub/p;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method public e(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/ITsMagic/Atlas/c$b;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "outputTexture",
            "bakeVertex",
            "bakeDataList",
            "dilatationPadding",
            "albedoTextureParam",
            "tillingParam",
            "offsetParam",
            "allowDiffuseColor",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/p;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/ITsMagic/Atlas/c$b;",
            ")V"
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v9, p9

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v10

    const-string v0, "Preparing atlas texture"

    invoke-interface {v9, v0}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    invoke-virtual {v10}, LBb/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0, v0, v0}, LBb/b;->f(FFFF)V

    :cond_0
    const-string v0, "Drawing atlas"

    invoke-interface {v9, v0}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    new-instance v4, LUg/n;

    move-object/from16 v0, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v5, p8

    invoke-direct {v4, v0, v2, v3, v5}, LUg/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v11, Lorg/ITsMagic/Atlas/c$a;

    move-object v2, v11

    move-object v3, p0

    move-object v5, v10

    move-object v6, p3

    move-object/from16 v7, p9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lorg/ITsMagic/Atlas/c$a;-><init>(Lorg/ITsMagic/Atlas/c;LUg/n;LBb/b;Ljava/util/List;Lorg/ITsMagic/Atlas/c$b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v11}, LK8/a;->I(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v10}, LBb/b;->c()V

    const-string v0, "Dilate atlas"

    invoke-interface {v9, v0}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    move/from16 v2, p4

    invoke-static {p1, v2, v9}, Lorg/ITsMagic/Atlas/c;->c(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V

    invoke-virtual {v10}, LBb/b;->e()V

    const-string v0, "Drawing atlas finished"

    invoke-interface {v9, v0}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    return-void
.end method
