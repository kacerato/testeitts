.class public Lorg/ITsMagic/Atlas/LightDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/LightDrawer$e;
    }
.end annotation


# static fields
.field public static final a:F = 0.003921569f

.field public static final b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vertex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/LightDrawer;III)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/LightDrawer;->g(III)I

    move-result p0

    return p0
.end method

.method private static native nativeBlurGiTexture(JJJJJJJJII)V
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
            0x0,
            0x0
        }
        names = {
            "sourceRPointer",
            "sourceGPointer",
            "sourceBPointer",
            "sourceAPointer",
            "outRPointer",
            "outGPointer",
            "outBPointer",
            "outAPointer",
            "width",
            "height"
        }
    .end annotation
.end method


# virtual methods
.method public final b(Lub/p;Lub/p;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetTexture",
            "sourceTexture"
        }
    .end annotation

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object p1

    invoke-static {p2, v0}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual {p2}, LBb/b;->p()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, LBb/b;->l()I

    move-result v1

    invoke-virtual {p2}, LBb/b;->l()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_2

    move v11, v9

    :goto_1
    if-ge v11, v0, :cond_1

    invoke-virtual {p2, v11, v10}, LBb/b;->i(II)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v11, v10}, LBb/b;->n(II)F

    move-result v2

    invoke-virtual {p2, v11, v10}, LBb/b;->n(II)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v11, v10}, LBb/b;->k(II)F

    move-result v3

    invoke-virtual {p2, v11, v10}, LBb/b;->k(II)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v11, v10}, LBb/b;->j(II)F

    move-result v4

    invoke-virtual {p2, v11, v10}, LBb/b;->j(II)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v11, v10}, LBb/b;->i(II)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {p0, v2}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v5

    invoke-virtual {p0, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v6

    invoke-virtual {p0, v4}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v12

    move-object v1, p1

    move v2, v11

    move v3, v10

    move v4, v5

    move v5, v6

    move v6, v12

    invoke-virtual/range {v1 .. v7}, LBb/b;->s(IIFFFF)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LBb/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, LBb/b;->e()V

    invoke-virtual {p2}, LBb/b;->e()V

    return-void

    :goto_3
    invoke-virtual {p1}, LBb/b;->e()V

    invoke-virtual {p2}, LBb/b;->e()V

    throw v0
.end method

.method public final c(LBb/b;Lub/p;F)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "aoTexture",
            "intensity"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v3, p2

    invoke-static {v3, v2}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v9

    :try_start_0
    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v11

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v11, :cond_5

    const/4 v15, 0x0

    const/4 v8, 0x1

    if-le v11, v8, :cond_0

    int-to-float v2, v14

    add-int/lit8 v3, v11, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v9}, LBb/b;->l()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move v7, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    move v7, v15

    :goto_1
    move v6, v13

    :goto_2
    if-ge v6, v10, :cond_4

    invoke-virtual {v0, v6, v14}, LBb/b;->i(II)F

    move-result v16

    cmpg-float v2, v16, v15

    if-gtz v2, :cond_1

    :goto_3
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    goto :goto_5

    :cond_1
    if-le v10, v8, :cond_2

    int-to-float v2, v6

    add-int/lit8 v3, v10, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v9}, LBb/b;->p()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    goto :goto_4

    :cond_2
    move v2, v15

    :goto_4
    const/4 v3, 0x3

    invoke-virtual {v1, v9, v2, v7, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->p(LBb/b;FFI)F

    move-result v3

    cmpg-float v3, v3, v15

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v9, v2, v7, v13}, Lorg/ITsMagic/Atlas/LightDrawer;->p(LBb/b;FFI)F

    move-result v2

    mul-float/2addr v2, v12

    invoke-virtual {v1, v2}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-virtual {v0, v6, v14}, LBb/b;->n(II)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v6, v14}, LBb/b;->k(II)F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {v0, v6, v14}, LBb/b;->j(II)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {v1, v2}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v17

    invoke-virtual {v1, v4}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v18

    invoke-virtual {v1, v5}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v19

    move-object/from16 v2, p1

    move v3, v6

    move v4, v14

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, LBb/b;->s(IIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v9}, LBb/b;->e()V

    return-void

    :goto_6
    invoke-virtual {v9}, LBb/b;->e()V

    throw v0
.end method

.method public final d(LBb/b;Lub/p;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "giTexture"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v3, p2

    invoke-static {v3, v2}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v9

    :try_start_0
    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_5

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-le v11, v15, :cond_0

    int-to-float v2, v13

    add-int/lit8 v3, v11, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v9}, LBb/b;->l()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move v8, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    move v8, v14

    :goto_1
    move v7, v12

    :goto_2
    if-ge v7, v10, :cond_4

    invoke-virtual {v0, v7, v13}, LBb/b;->i(II)F

    move-result v2

    cmpg-float v2, v2, v14

    if-gtz v2, :cond_1

    :goto_3
    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_5

    :cond_1
    if-le v10, v15, :cond_2

    int-to-float v2, v7

    add-int/lit8 v3, v10, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v9}, LBb/b;->p()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    goto :goto_4

    :cond_2
    move v2, v14

    :goto_4
    const/4 v3, 0x3

    invoke-virtual {v1, v9, v2, v8, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->p(LBb/b;FFI)F

    move-result v3

    cmpg-float v3, v3, v14

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v7, v13}, LBb/b;->n(II)F

    move-result v3

    invoke-virtual {v1, v9, v2, v8, v12}, Lorg/ITsMagic/Atlas/LightDrawer;->p(LBb/b;FFI)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v7, v13}, LBb/b;->k(II)F

    move-result v4

    invoke-virtual {v1, v9, v2, v8, v15}, Lorg/ITsMagic/Atlas/LightDrawer;->p(LBb/b;FFI)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v7, v13}, LBb/b;->j(II)F

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v9, v2, v8, v6}, Lorg/ITsMagic/Atlas/LightDrawer;->p(LBb/b;FFI)F

    move-result v2

    add-float/2addr v5, v2

    invoke-virtual {v1, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v6

    invoke-virtual {v1, v4}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v16

    invoke-virtual {v1, v5}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v17

    invoke-virtual {v0, v7, v13}, LBb/b;->i(II)F

    move-result v18

    move-object/from16 v2, p1

    move v3, v7

    move v4, v13

    move v5, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, LBb/b;->s(IIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    add-int/lit8 v7, v16, 0x1

    move/from16 v8, v17

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v9}, LBb/b;->e()V

    return-void

    :goto_6
    invoke-virtual {v9}, LBb/b;->e()V

    throw v0
.end method

.method public final e(Lub/p;)V
    .locals 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "giTexture"
        }
    .end annotation

    move-object/from16 v1, p0

    const/high16 v0, 0x42480000    # 50.0f

    move-object/from16 v2, p1

    invoke-static {v2, v0}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v9

    :try_start_0
    invoke-virtual {v9}, LBb/b;->p()I

    move-result v0

    invoke-virtual {v9}, LBb/b;->l()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    if-gt v8, v2, :cond_0

    invoke-virtual {v9}, LBb/b;->e()V

    return-void

    :cond_0
    mul-int v2, v0, v8

    :try_start_1
    new-instance v7, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v7, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v6, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v14, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v14, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v15, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v15, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v12, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v28, 0x0

    move/from16 v2, v28

    :goto_0
    if-ge v2, v8, :cond_2

    move/from16 v10, v28

    :goto_1
    if-ge v10, v0, :cond_1

    mul-int v11, v2, v0

    add-int/2addr v11, v10

    :try_start_2
    invoke-virtual {v9, v10, v2}, LBb/b;->n(II)F

    move-result v13

    invoke-virtual {v7, v11, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    invoke-virtual {v9, v10, v2}, LBb/b;->k(II)F

    move-result v13

    invoke-virtual {v6, v11, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    invoke-virtual {v9, v10, v2}, LBb/b;->j(II)F

    move-result v13

    invoke-virtual {v5, v11, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    invoke-virtual {v9, v10, v2}, LBb/b;->i(II)F

    move-result v13

    invoke-virtual {v4, v11, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v13, v6

    move-object/from16 v16, v12

    move-object/from16 v21, v14

    move-object/from16 v20, v15

    move-object v14, v7

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0x0

    invoke-static {v7, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v16

    invoke-static {v6, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v18

    invoke-static {v5, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v20

    invoke-static {v4, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v22

    invoke-static {v3, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v24

    invoke-static {v14, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v26

    invoke-static {v15, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    invoke-static {v12, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v10, v16

    move-object v2, v12

    move-wide/from16 v12, v18

    move-object/from16 v33, v6

    move-object/from16 p1, v7

    move-object v7, v14

    move-object v6, v15

    move-wide/from16 v14, v20

    move-wide/from16 v16, v22

    move-wide/from16 v18, v24

    move-wide/from16 v20, v26

    move-wide/from16 v22, v29

    move-wide/from16 v24, v31

    move/from16 v26, v0

    move/from16 v27, v8

    :try_start_3
    invoke-static/range {v10 .. v27}, Lorg/ITsMagic/Atlas/LightDrawer;->nativeBlurGiTexture(JJJJJJJJII)V

    move/from16 v10, v28

    :goto_2
    if-ge v10, v8, :cond_4

    move/from16 v11, v28

    :goto_3
    if-ge v11, v0, :cond_3

    mul-int v12, v10, v0

    add-int/2addr v12, v11

    invoke-virtual {v3, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    invoke-virtual {v1, v13}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v13

    invoke-virtual {v7, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v14

    invoke-virtual {v1, v14}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v14

    invoke-virtual {v6, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    invoke-virtual {v1, v15}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v15

    invoke-virtual {v2, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    invoke-virtual {v1, v12}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v2

    move-object v2, v9

    move-object/from16 v17, v3

    move v3, v11

    move-object/from16 v18, v4

    move v4, v10

    move-object/from16 v19, v5

    move v5, v13

    move-object/from16 v20, v6

    move-object/from16 v13, v33

    move v6, v14

    move-object/from16 v14, p1

    move-object/from16 v21, v7

    move v7, v15

    move v15, v8

    move v8, v12

    :try_start_4
    invoke-virtual/range {v2 .. v8}, LBb/b;->s(IIFFFF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v33, v13

    move-object/from16 p1, v14

    move v8, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v13, v33

    goto :goto_4

    :cond_3
    move-object/from16 v14, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move v15, v8

    move-object/from16 v13, v33

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v14, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v13, v33

    :try_start_5
    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v19 .. v19}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v18 .. v18}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v21 .. v21}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v20 .. v20}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual {v9}, LBb/b;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v9}, LBb/b;->e()V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_5

    :goto_4
    :try_start_6
    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v19 .. v19}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v18 .. v18}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v21 .. v21}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v20 .. v20}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_5
    invoke-virtual {v9}, LBb/b;->e()V

    throw v0
.end method

.method public final f(Ljava/util/List;Lorg/ITsMagic/Atlas/LightDrawer$e;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allBuildedAtlases",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LUg/k;",
            ">;",
            "Lorg/ITsMagic/Atlas/LightDrawer$e;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const-string v3, "Creating BVH Mesh"

    invoke-interface {p2, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUg/k;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, LUg/k;->c()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3}, LUg/k;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3}, LUg/k;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LUg/h;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, LUg/h;->a()LUg/g;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, LUg/h;->a()LUg/g;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/ITsMagic/Atlas/LightDrawer;->k(LUg/g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final g(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "min",
            "max"
        }
    .end annotation

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final h(F)F
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

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final i(Lorg/ITsMagic/Atlas/LightDrawer$e;)Lorg/ITsMagic/Atlas/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/LightDrawer$b;

    invoke-direct {v0, p0, p1}, Lorg/ITsMagic/Atlas/LightDrawer$b;-><init>(Lorg/ITsMagic/Atlas/LightDrawer;Lorg/ITsMagic/Atlas/LightDrawer$e;)V

    return-object v0
.end method

.method public final j(Lorg/ITsMagic/Atlas/LightDrawer$e;III)Lorg/ITsMagic/Atlas/a$c;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "passOffset",
            "passTotal",
            "globalTotal"
        }
    .end annotation

    new-instance v6, Lorg/ITsMagic/Atlas/LightDrawer$c;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ITsMagic/Atlas/LightDrawer$c;-><init>(Lorg/ITsMagic/Atlas/LightDrawer;ILorg/ITsMagic/Atlas/LightDrawer$e;II)V

    return-object v6
.end method

.method public final k(LUg/g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlasVertex"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LUg/g;->i()Lvc/q;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LUg/g;->g()Lvc/n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;-><init>()V

    invoke-virtual {p1}, LUg/g;->i()Lvc/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->S(Lvc/q;)V

    invoke-virtual {p1}, LUg/g;->g()Lvc/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->N(Lvc/n;)V

    invoke-virtual {p1}, LUg/g;->c()Lvc/q;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LUg/g;->c()Lvc/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->J(Lvc/q;)V

    :cond_1
    invoke-virtual {p1}, LUg/g;->a()Lvc/p;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LUg/g;->a()Lvc/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->P(Lvc/p;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LUg/g;->e()Lvc/p;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, LUg/g;->e()Lvc/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->P(Lvc/p;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->apply()V

    return-object v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Lub/p;Lub/p;Lub/p;Lub/p;FILcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;FZZFFFLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/io/File;Lorg/ITsMagic/Atlas/LightDrawer$e;)V
    .locals 30
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "albedoAtlasTexture",
            "normalAtlasTexture",
            "emissiveAtlasTexture",
            "giQuality",
            "giIterations",
            "bounceGIMode",
            "bounceGIIntensity",
            "bounceGIVisibility",
            "bakeAmbientOcclusion",
            "ambientOcclusionRadius",
            "ambientOcclusionIntensity",
            "ambientOcclusionPower",
            "ambientOcclusionQuality",
            "bakeDataList",
            "allBuildedAtlases",
            "sunLights",
            "spotLights",
            "pointLights",
            "dilatationPadding",
            "debugGiFile",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/p;",
            "Lub/p;",
            "Lub/p;",
            "Lub/p;",
            "FI",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;",
            "FZZFFF",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "LUg/k;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;",
            ">;I",
            "Ljava/io/File;",
            "Lorg/ITsMagic/Atlas/LightDrawer$e;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move-object/from16 v2, p3

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v12, p12

    move-object/from16 v11, p14

    move-object/from16 v10, p15

    move-object/from16 v5, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object/from16 v7, p21

    move-object/from16 v6, p22

    const-string v4, "/"

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v0, v3}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v12

    const/16 v16, 0x0

    if-eqz v13, :cond_0

    invoke-static {v13, v3}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v17

    goto :goto_0

    :cond_0
    move-object/from16 v17, v16

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2, v3}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, v16

    :goto_1
    :try_start_0
    const-string v3, "Preparing light atlas texture"

    invoke-interface {v6, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v3, v3, v3}, LBb/b;->f(FFFF)V

    const-string v3, "Preparing raycast meshes"

    invoke-interface {v6, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    move-object/from16 v3, p16

    invoke-virtual {v1, v3, v6}, Lorg/ITsMagic/Atlas/LightDrawer;->f(Ljava/util/List;Lorg/ITsMagic/Atlas/LightDrawer$e;)Ljava/util/List;

    move-result-object v3

    if-eqz v5, :cond_2

    invoke-interface/range {p17 .. p17}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v23, v2

    move-object v2, v12

    :goto_2
    move-object/from16 v3, v16

    move-object v7, v3

    move-object/from16 v18, v7

    goto/16 :goto_1f

    :cond_2
    const/16 v19, 0x0

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface/range {p18 .. p18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x1

    goto :goto_4

    :cond_3
    const/16 v20, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v21, :cond_4

    const/16 v21, 0x1

    goto :goto_5

    :cond_4
    const/16 v21, 0x0

    :goto_5
    const-string v11, ""

    if-nez v19, :cond_5

    if-nez v20, :cond_5

    if-nez v21, :cond_5

    :try_start_1
    const-string v5, "Rasterizing mesh coverage"

    invoke-interface {v6, v5}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    new-instance v5, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;

    invoke-direct {v5, v3, v2}, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v12, v10, v8}, Lorg/ITsMagic/Atlas/a;->l(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 p3, v2

    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v6, v2, v8, v9, v11}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1, v6, v2, v8, v8}, Lorg/ITsMagic/Atlas/LightDrawer;->j(Lorg/ITsMagic/Atlas/LightDrawer$e;III)Lorg/ITsMagic/Atlas/a$c;

    move-result-object v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v13, p3

    move-object v2, v5

    move-object v0, v3

    move v5, v9

    const/high16 v9, 0x42480000    # 50.0f

    move-object v3, v12

    move-object/from16 v23, v4

    move-object/from16 v4, p15

    move v15, v5

    move-object v5, v11

    move-object v11, v6

    move v6, v8

    move-object/from16 v7, v19

    :try_start_3
    invoke-virtual/range {v2 .. v7}, Lorg/ITsMagic/Atlas/a;->C(LBb/b;Ljava/util/List;Ljava/util/List;ILorg/ITsMagic/Atlas/a$c;)V

    move-object/from16 v18, v0

    move-object v0, v11

    move v2, v15

    move v15, v8

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    :goto_6
    move-object v2, v12

    move-object/from16 v23, v13

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v13, p3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v13, v2

    goto :goto_6

    :cond_5
    move-object v13, v2

    move-object v0, v3

    move-object/from16 v23, v4

    move-object v7, v6

    const/high16 v6, 0x42480000    # 50.0f

    const/4 v15, 0x0

    if-eqz v19, :cond_6

    new-instance v2, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;

    invoke-direct {v2, v0, v13}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    goto :goto_7

    :cond_6
    move-object/from16 v2, v16

    :goto_7
    if-eqz v20, :cond_7

    new-instance v3, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;

    invoke-direct {v3, v0, v13}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    move-object v4, v3

    goto :goto_8

    :cond_7
    move-object/from16 v4, v16

    :goto_8
    if-eqz v21, :cond_8

    new-instance v3, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;

    invoke-direct {v3, v0, v13}, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    goto :goto_9

    :cond_8
    move-object/from16 v3, v16

    :goto_9
    if-eqz v19, :cond_9

    invoke-virtual {v2, v12, v10, v5}, Lorg/ITsMagic/Atlas/a;->l(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result v18

    move/from16 v15, v18

    goto :goto_a

    :cond_9
    const/4 v15, 0x0

    :goto_a
    if-eqz v20, :cond_a

    invoke-virtual {v4, v12, v10, v8}, Lorg/ITsMagic/Atlas/a;->l(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result v18

    move/from16 v8, v18

    goto :goto_b

    :cond_a
    const/4 v8, 0x0

    :goto_b
    if-eqz v21, :cond_b

    invoke-virtual {v3, v12, v10, v9}, Lorg/ITsMagic/Atlas/a;->l(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result v18

    move/from16 v9, v18

    goto :goto_c

    :cond_b
    const/4 v9, 0x0

    :goto_c
    add-int v18, v15, v8

    add-int v10, v18, v9

    move-object/from16 v18, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-interface {v7, v0, v10, v6, v11}, Lorg/ITsMagic/Atlas/LightDrawer$e;->a(IIFLjava/lang/String;)V

    if-eqz v19, :cond_c

    const-string v6, "Rasterizing sun lights"

    invoke-interface {v7, v6}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v0, v15, v10}, Lorg/ITsMagic/Atlas/LightDrawer;->j(Lorg/ITsMagic/Atlas/LightDrawer$e;III)Lorg/ITsMagic/Atlas/a$c;

    move-result-object v11

    move-object/from16 v19, v3

    move-object v3, v12

    move-object/from16 v24, v4

    move-object/from16 v4, p15

    move-object/from16 v5, p17

    const/high16 v0, 0x42480000    # 50.0f

    move v6, v15

    move-object v0, v7

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lorg/ITsMagic/Atlas/a;->C(LBb/b;Ljava/util/List;Ljava/util/List;ILorg/ITsMagic/Atlas/a$c;)V

    goto :goto_d

    :cond_c
    move-object/from16 v19, v3

    move-object/from16 v24, v4

    move-object v0, v7

    const/4 v15, 0x0

    :goto_d
    if-eqz v20, :cond_d

    const-string v2, "Rasterizing spot lights"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v15, v8, v10}, Lorg/ITsMagic/Atlas/LightDrawer;->j(Lorg/ITsMagic/Atlas/LightDrawer$e;III)Lorg/ITsMagic/Atlas/a$c;

    move-result-object v7

    move-object/from16 v2, v24

    move-object v3, v12

    move-object/from16 v4, p15

    move-object/from16 v5, p18

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lorg/ITsMagic/Atlas/a;->C(LBb/b;Ljava/util/List;Ljava/util/List;ILorg/ITsMagic/Atlas/a$c;)V

    add-int/2addr v15, v8

    :cond_d
    if-eqz v21, :cond_e

    const-string v2, "Rasterizing point lights"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v15, v9, v10}, Lorg/ITsMagic/Atlas/LightDrawer;->j(Lorg/ITsMagic/Atlas/LightDrawer$e;III)Lorg/ITsMagic/Atlas/a$c;

    move-result-object v7

    move-object/from16 v2, v19

    move-object v3, v12

    move-object/from16 v4, p15

    move-object/from16 v5, p19

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lorg/ITsMagic/Atlas/a;->C(LBb/b;Ljava/util/List;Ljava/util/List;ILorg/ITsMagic/Atlas/a$c;)V

    :cond_e
    move v15, v10

    const/4 v2, 0x0

    :goto_e
    cmpl-float v3, v14, v2

    if-lez v3, :cond_16

    move/from16 v11, p6

    move v10, v2

    if-lez v11, :cond_15

    if-eqz v17, :cond_15

    if-lez v15, :cond_15

    const-string v2, "Syncing direct light atlas"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v12}, LBb/b;->c()V

    invoke-virtual {v12}, LBb/b;->p()I

    move-result v2

    invoke-virtual {v1, v2, v14}, Lorg/ITsMagic/Atlas/LightDrawer;->o(IF)I

    move-result v2

    invoke-virtual {v12}, LBb/b;->l()I

    move-result v3

    invoke-virtual {v1, v3, v14}, Lorg/ITsMagic/Atlas/LightDrawer;->o(IF)I

    move-result v3

    new-instance v9, Lub/n;

    invoke-direct {v9, v2, v3}, Lub/n;-><init>(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v9}, Lub/n;->apply()V

    new-instance v8, Lub/n;

    invoke-direct {v8, v2, v3}, Lub/n;-><init>(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    const/high16 v4, 0x42480000    # 50.0f

    :try_start_5
    invoke-static {v8, v4}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    :try_start_6
    invoke-virtual {v4, v10, v10, v10, v10}, LBb/b;->f(FFFF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    :try_start_7
    invoke-virtual {v4}, LBb/b;->e()V

    new-instance v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer;

    move-object/from16 v6, v18

    invoke-direct {v7, v6, v13}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;-><init>(Ljava/util/List;LBb/b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    const/4 v4, 0x1

    if-le v11, v4, :cond_f

    :try_start_8
    new-instance v4, Lub/n;

    invoke-direct {v4, v2, v3}, Lub/n;-><init>(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-virtual {v4}, Lub/n;->apply()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v18, v4

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    move-object v3, v8

    move-object v2, v12

    move-object/from16 v23, v13

    :goto_f
    move-object/from16 v7, v16

    :goto_10
    move-object/from16 v16, v9

    goto/16 :goto_1f

    :catchall_5
    move-exception v0

    move-object v3, v8

    move-object v2, v12

    move-object/from16 v23, v13

    move-object/from16 v7, v16

    move-object/from16 v18, v7

    goto :goto_10

    :cond_f
    move-object/from16 v18, v16

    :goto_11
    move-object/from16 v19, p1

    move-object v5, v9

    move-object/from16 v20, v18

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v11, :cond_13

    if-nez v2, :cond_10

    move/from16 v21, p8

    goto :goto_13

    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v21, v3

    :goto_13
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bounce GI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/ITsMagic/Atlas/LightDrawer;->i(Lorg/ITsMagic/Atlas/LightDrawer$e;)Lorg/ITsMagic/Atlas/a$c;

    move-result-object v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object v3, v2

    move-object v2, v7

    move-object v14, v3

    move-object v3, v5

    move-object/from16 v23, v13

    move v13, v4

    move-object/from16 v4, v19

    move/from16 p16, v15

    move-object v15, v5

    move-object/from16 v5, p2

    move-object/from16 v26, v6

    move-object/from16 v6, p4

    move-object/from16 v24, v7

    move-object/from16 v7, p15

    move-object/from16 v27, v8

    move/from16 v8, p5

    move-object/from16 v25, v9

    move-object/from16 v9, p7

    move/from16 v28, v10

    move/from16 v10, v21

    move v1, v11

    move/from16 v11, p9

    move-object/from16 v29, v12

    move-object/from16 v12, v22

    :try_start_b
    invoke-virtual/range {v2 .. v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->u(Lub/p;Lub/p;Lub/p;Lub/p;Ljava/util/List;FLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;FZLorg/ITsMagic/Atlas/a$c;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accumulating Bounce GI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move v2, v1

    move-object/from16 v3, v27

    move-object/from16 v1, p0

    :try_start_c
    invoke-virtual {v1, v3, v15}, Lorg/ITsMagic/Atlas/LightDrawer;->b(Lub/p;Lub/p;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-ge v13, v2, :cond_12

    if-eqz v20, :cond_11

    move-object/from16 v5, v20

    goto :goto_14

    :cond_11
    move-object v5, v15

    :goto_14
    move-object/from16 v19, v15

    move-object/from16 v20, v19

    goto :goto_15

    :cond_12
    move-object v5, v15

    :goto_15
    move/from16 v15, p16

    move v11, v2

    move-object v8, v3

    move v2, v13

    move-object/from16 v13, v23

    move-object/from16 v7, v24

    move-object/from16 v9, v25

    move-object/from16 v6, v26

    move/from16 v10, v28

    move-object/from16 v12, v29

    move-object/from16 v23, v14

    move/from16 v14, p5

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    :goto_16
    move-object/from16 v7, v16

    move-object/from16 v16, v25

    move-object/from16 v2, v29

    goto/16 :goto_1f

    :catchall_7
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, v27

    goto :goto_16

    :catchall_8
    move-exception v0

    move-object v3, v8

    move-object/from16 v25, v9

    move-object/from16 v29, v12

    move-object/from16 v23, v13

    goto :goto_16

    :cond_13
    move-object/from16 v26, v6

    move-object v3, v8

    move-object/from16 v25, v9

    move/from16 v28, v10

    move-object/from16 v29, v12

    move-object/from16 v23, v13

    move/from16 p16, v15

    :try_start_d
    const-string v2, "Blurring Bounce GI"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->e(Lub/p;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-object/from16 v2, p21

    if-eqz v2, :cond_14

    :try_start_e
    sget-object v4, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "Exporting Bounce GI debug"

    invoke-interface {v0, v4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lorg/ITsMagic/Atlas/LightDrawer;->q(Lub/p;Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_14
    :try_start_f
    const-string v2, "Int. Bounce GI"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-object/from16 v2, v29

    :try_start_10
    invoke-virtual {v1, v2, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->d(LBb/b;Lub/p;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object v8, v3

    move-object/from16 v9, v25

    goto :goto_1d

    :catchall_9
    move-exception v0

    :goto_17
    move-object/from16 v7, v16

    :goto_18
    move-object/from16 v16, v25

    goto/16 :goto_1f

    :catchall_a
    move-exception v0

    move-object/from16 v2, v29

    goto :goto_17

    :catchall_b
    move-exception v0

    move-object v3, v8

    move-object/from16 v25, v9

    move-object v2, v12

    move-object/from16 v23, v13

    :goto_19
    move-object/from16 v7, v16

    :goto_1a
    move-object/from16 v18, v7

    goto :goto_18

    :catchall_c
    move-exception v0

    move-object v3, v8

    move-object/from16 v25, v9

    move-object v2, v12

    move-object/from16 v23, v13

    move-object v5, v0

    :try_start_11
    invoke-virtual {v4}, LBb/b;->e()V

    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_19

    :catchall_e
    move-exception v0

    move-object/from16 v25, v9

    move-object v2, v12

    move-object/from16 v23, v13

    move-object/from16 v3, v16

    move-object v7, v3

    goto :goto_1a

    :cond_15
    move/from16 v28, v10

    :goto_1b
    move-object v2, v12

    move-object/from16 v23, v13

    move/from16 p16, v15

    move-object/from16 v26, v18

    goto :goto_1c

    :cond_16
    move/from16 v28, v2

    goto :goto_1b

    :goto_1c
    move-object/from16 v8, v16

    move-object v9, v8

    move-object/from16 v18, v9

    :goto_1d
    if-eqz p10, :cond_17

    move/from16 v3, p12

    cmpl-float v4, v3, v28

    if-lez v4, :cond_17

    cmpl-float v4, p11, v28

    if-lez v4, :cond_17

    :try_start_12
    const-string v4, "Ambient occlusion"

    invoke-interface {v0, v4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, LBb/b;->p()I

    move-result v4

    move-object/from16 v5, p14

    invoke-virtual {v1, v4, v5}, Lorg/ITsMagic/Atlas/LightDrawer;->n(ILcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)I

    move-result v4

    invoke-virtual {v2}, LBb/b;->l()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Lorg/ITsMagic/Atlas/LightDrawer;->n(ILcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)I

    move-result v6

    new-instance v7, Lub/n;

    invoke-direct {v7, v4, v6}, Lub/n;-><init>(II)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    :try_start_13
    invoke-virtual {v7}, Lub/n;->apply()V

    new-instance v4, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

    move-object/from16 v6, v26

    invoke-direct {v4, v6}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lorg/ITsMagic/Atlas/LightDrawer;->i(Lorg/ITsMagic/Atlas/LightDrawer$e;)Lorg/ITsMagic/Atlas/a$c;

    move-result-object v6

    move-object/from16 p2, v4

    move-object/from16 p3, v7

    move-object/from16 p4, p15

    move/from16 p5, p11

    move/from16 p6, p13

    move-object/from16 p7, p14

    move-object/from16 p8, v6

    invoke-virtual/range {p2 .. p8}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->k(Lub/p;Ljava/util/List;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;Lorg/ITsMagic/Atlas/a$c;)V

    const-string v4, "Blurring ambient occlusion"

    invoke-interface {v0, v4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/ITsMagic/Atlas/LightDrawer;->e(Lub/p;)V

    const-string v4, "Applying ambient occlusion"

    invoke-interface {v0, v4}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v7, v3}, Lorg/ITsMagic/Atlas/LightDrawer;->c(LBb/b;Lub/p;F)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    move-object/from16 v16, v7

    goto :goto_1e

    :catchall_f
    move-exception v0

    move-object v3, v8

    goto/16 :goto_10

    :catchall_10
    move-exception v0

    move-object v3, v8

    goto/16 :goto_f

    :cond_17
    :goto_1e
    :try_start_14
    const-string v3, "Applying light atlas texture"

    invoke-interface {v0, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, LBb/b;->c()V

    const-string v3, "Dilating light atlas"

    invoke-interface {v0, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V

    new-instance v3, Lorg/ITsMagic/Atlas/LightDrawer$a;

    move/from16 v10, p16

    invoke-direct {v3, v1, v0, v10}, Lorg/ITsMagic/Atlas/LightDrawer$a;-><init>(Lorg/ITsMagic/Atlas/LightDrawer;Lorg/ITsMagic/Atlas/LightDrawer$e;I)V

    move-object/from16 v4, p1

    move/from16 v5, p20

    invoke-static {v4, v5, v3}, Lorg/ITsMagic/Atlas/c;->c(Lub/p;ILorg/ITsMagic/Atlas/c$b;)V

    const-string v3, "Drawing light atlas finished"

    invoke-interface {v0, v3}, Lorg/ITsMagic/Atlas/LightDrawer$e;->b(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    invoke-virtual {v2}, LBb/b;->e()V

    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, LBb/b;->e()V

    :cond_18
    if-eqz v23, :cond_19

    invoke-virtual/range {v23 .. v23}, LBb/b;->e()V

    :cond_19
    if-eqz v9, :cond_1a

    :try_start_15
    invoke-virtual {v9}, Lub/n;->destroyImmediate()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :catch_0
    :cond_1a
    if-eqz v18, :cond_1b

    :try_start_16
    invoke-virtual/range {v18 .. v18}, Lub/n;->destroyImmediate()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    :catch_1
    :cond_1b
    if-eqz v8, :cond_1c

    :try_start_17
    invoke-virtual {v8}, Lub/n;->destroyImmediate()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    :catch_2
    :cond_1c
    if-eqz v16, :cond_1d

    :try_start_18
    invoke-virtual/range {v16 .. v16}, Lub/n;->destroyImmediate()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    :catch_3
    :cond_1d
    return-void

    :goto_1f
    invoke-virtual {v2}, LBb/b;->e()V

    if-eqz v17, :cond_1e

    invoke-virtual/range {v17 .. v17}, LBb/b;->e()V

    :cond_1e
    if-eqz v23, :cond_1f

    invoke-virtual/range {v23 .. v23}, LBb/b;->e()V

    :cond_1f
    if-eqz v16, :cond_20

    :try_start_19
    invoke-virtual/range {v16 .. v16}, Lub/n;->destroyImmediate()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    :catch_4
    :cond_20
    if-eqz v18, :cond_21

    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Lub/n;->destroyImmediate()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    :catch_5
    :cond_21
    if-eqz v3, :cond_22

    :try_start_1b
    invoke-virtual {v3}, Lub/n;->destroyImmediate()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    :catch_6
    :cond_22
    if-eqz v7, :cond_23

    :try_start_1c
    invoke-virtual {v7}, Lub/n;->destroyImmediate()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7

    :catch_7
    :cond_23
    throw v0
.end method

.method public final m(LBb/b;III)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "x",
            "y",
            "channel"
        }
    .end annotation

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2, p3}, LBb/b;->i(II)F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, p2, p3}, LBb/b;->j(II)F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1, p2, p3}, LBb/b;->k(II)F

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1, p2, p3}, LBb/b;->n(II)F

    move-result p1

    return p1
.end method

.method public final n(ILcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseResolution",
            "quality"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    sget-object v2, Lorg/ITsMagic/Atlas/LightDrawer$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v0, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    const p2, 0x3ee66666    # 0.45f

    goto :goto_1

    :cond_3
    const p2, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_1
    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p2, v1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final o(IF)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseResolution",
            "giQuality"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_2

    :cond_1
    const/high16 p2, 0x3e800000    # 0.25f

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p2, v1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final p(LBb/b;FFI)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "x",
            "y",
            "channel"
        }
    .end annotation

    invoke-virtual {p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual {p1}, LBb/b;->l()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/ITsMagic/Atlas/LightDrawer;->g(III)I

    move-result v2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v4, v3, v1}, Lorg/ITsMagic/Atlas/LightDrawer;->g(III)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v3, v0}, Lorg/ITsMagic/Atlas/LightDrawer;->g(III)I

    move-result v0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5, v3, v1}, Lorg/ITsMagic/Atlas/LightDrawer;->g(III)I

    move-result v1

    int-to-float v3, v2

    sub-float/2addr p2, v3

    invoke-virtual {p0, p2}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result p2

    int-to-float v3, v4

    sub-float/2addr p3, v3

    invoke-virtual {p0, p3}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result p3

    invoke-virtual {p0, p1, v2, v4, p4}, Lorg/ITsMagic/Atlas/LightDrawer;->m(LBb/b;III)F

    move-result v3

    invoke-virtual {p0, p1, v0, v4, p4}, Lorg/ITsMagic/Atlas/LightDrawer;->m(LBb/b;III)F

    move-result v4

    invoke-virtual {p0, p1, v2, v1, p4}, Lorg/ITsMagic/Atlas/LightDrawer;->m(LBb/b;III)F

    move-result v2

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/ITsMagic/Atlas/LightDrawer;->m(LBb/b;III)F

    move-result p1

    sub-float/2addr v4, v3

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    sub-float/2addr p1, v2

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v3, v2

    return v3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final q(Lub/p;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "texture",
            "outputFile"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, LBb/b;->p()I

    move-result v1

    invoke-virtual {p1}, LBb/b;->l()I

    move-result v2

    if-lez v1, :cond_4

    if-gtz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_2

    invoke-virtual {p1, v5, v4}, LBb/b;->i(II)F

    move-result v6

    invoke-virtual {p0, v6}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p1, v5, v4}, LBb/b;->n(II)F

    move-result v8

    invoke-virtual {p0, v8}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v8

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p1, v5, v4}, LBb/b;->k(II)F

    move-result v9

    invoke-virtual {p0, v9}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {p1, v5, v4}, LBb/b;->j(II)F

    move-result v10

    invoke-virtual {p0, v10}, Lorg/ITsMagic/Atlas/LightDrawer;->h(F)F

    move-result v10

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, LBb/b;->e()V

    return-void

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_3
    invoke-virtual {p1}, LBb/b;->e()V

    return-void

    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to export GI debug texture to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    invoke-virtual {p1}, LBb/b;->e()V

    throw p2

    :cond_6
    :goto_6
    return-void
.end method
