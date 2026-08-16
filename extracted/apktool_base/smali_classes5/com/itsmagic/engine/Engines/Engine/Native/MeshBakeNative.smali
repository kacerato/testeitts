.class public final Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;
    }
.end annotation


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

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 68
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
            "baseVertex",
            "pathData",
            "pathCount",
            "spacing",
            "startOffset",
            "instanceCount",
            "forwardAxis",
            "scale",
            "offset"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    move/from16 v14, p2

    if-lt v14, v2, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v4

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_3
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    mul-int v5, v5, p5

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v6

    mul-int v6, v6, p5

    new-instance v15, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v12, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    if-eqz v5, :cond_4

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v13

    mul-int v13, v13, p5

    invoke-direct {v11, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v13, v11

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    :goto_0
    if-eqz v6, :cond_5

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    mul-int v2, v16, p5

    invoke-direct {v11, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v7, :cond_6

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    mul-int v1, v16, p5

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v8, :cond_7

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    mul-int v14, v16, p5

    invoke-direct {v1, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v14, v1

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    if-eqz v9, :cond_8

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    move-object/from16 v19, v12

    mul-int v12, v16, p5

    invoke-direct {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v12, v1

    goto :goto_4

    :cond_8
    move-object/from16 v19, v12

    const/4 v12, 0x0

    :goto_4
    if-eqz v10, :cond_9

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    move-object/from16 v20, v12

    mul-int v12, v16, p5

    invoke-direct {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v12, v1

    move-object/from16 v16, v2

    goto :goto_5

    :cond_9
    move-object/from16 v20, v12

    move-object/from16 v16, v2

    const/4 v12, 0x0

    :goto_5
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v3, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v21

    invoke-static {v5, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v23

    invoke-static {v6, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v5

    invoke-static {v7, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v25

    invoke-static {v8, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v27

    invoke-static {v9, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    invoke-static {v10, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v31

    invoke-static {v4, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v33

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v35

    if-eqz p6, :cond_a

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    move/from16 v37, v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v11

    move-object v7, v12

    move-object v11, v13

    move-object v5, v14

    move-object v1, v15

    move-object/from16 v4, v16

    :goto_6
    move-object/from16 v2, v19

    move-object/from16 v6, v20

    goto/16 :goto_16

    :cond_a
    const/16 v37, 0x2

    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p7, :cond_b

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    move/from16 v38, v3

    goto :goto_8

    :cond_b
    move/from16 v38, v0

    :goto_8
    if-eqz p7, :cond_c

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    move/from16 v39, v3

    goto :goto_9

    :cond_c
    move/from16 v39, v0

    :goto_9
    if-eqz p7, :cond_d

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    :cond_d
    move/from16 v40, v0

    const/4 v0, 0x0

    if-eqz p8, :cond_e

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    move/from16 v41, v3

    goto :goto_a

    :cond_e
    move/from16 v41, v0

    :goto_a
    if-eqz p8, :cond_f

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    move/from16 v42, v3

    goto :goto_b

    :cond_f
    move/from16 v42, v0

    :goto_b
    if-eqz p8, :cond_10

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    :cond_10
    move/from16 v43, v0

    invoke-static {v15, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v44

    invoke-static {v13, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v46

    invoke-static {v11, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v48
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, v16

    :try_start_1
    invoke-static {v3, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v50

    invoke-static {v14, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v52
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-object/from16 v10, v20

    :try_start_2
    invoke-static {v10, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v54

    invoke-static {v12, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v56
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v8, v19

    :try_start_3
    invoke-static {v8, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v58
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move-wide/from16 v0, v21

    move-object v9, v3

    move-wide/from16 v2, v23

    move-wide v4, v5

    move-wide/from16 v6, v25

    move-object/from16 v16, v8

    move-object/from16 v60, v9

    move-wide/from16 v8, v27

    move-object/from16 v18, v10

    move-object/from16 v61, v11

    move-wide/from16 v10, v29

    move-object/from16 v65, v12

    move-object/from16 v63, v13

    move-object/from16 v62, v16

    move-object/from16 v64, v18

    move-wide/from16 v12, v31

    move-object/from16 v67, v14

    move-object/from16 v66, v15

    move-wide/from16 v14, v33

    move-wide/from16 v16, v35

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, v37

    move/from16 v23, v38

    move/from16 v24, v39

    move/from16 v25, v40

    move/from16 v26, v41

    move/from16 v27, v42

    move/from16 v28, v43

    move-wide/from16 v29, v44

    move-wide/from16 v31, v46

    move-wide/from16 v33, v48

    move-wide/from16 v35, v50

    move-wide/from16 v37, v52

    move-wide/from16 v39, v54

    move-wide/from16 v41, v56

    move-wide/from16 v43, v58

    :try_start_4
    invoke-static/range {v0 .. v44}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->nativeBakeMeshCurveDeform(JJJJJJJJJIFFIIFFFFFFJJJJJJJJ)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v1, v66

    :try_start_5
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object/from16 v2, v62

    :try_start_6
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v11, v63

    if-eqz v11, :cond_11

    :try_start_7
    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_11
    move-object/from16 v3, v61

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v4, v60

    move-object/from16 v3, v61

    :goto_c
    move-object/from16 v6, v64

    move-object/from16 v7, v65

    :goto_d
    move-object/from16 v5, v67

    goto/16 :goto_16

    :goto_e
    if-eqz v3, :cond_12

    :try_start_8
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_12
    move-object/from16 v4, v60

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v4, v60

    goto :goto_c

    :goto_f
    if-eqz v4, :cond_13

    :try_start_9
    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_13
    move-object/from16 v5, v67

    goto :goto_10

    :catchall_3
    move-exception v0

    goto :goto_c

    :goto_10
    if-eqz v5, :cond_14

    :try_start_a
    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_14
    move-object/from16 v6, v64

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v6, v64

    :goto_11
    move-object/from16 v7, v65

    goto/16 :goto_16

    :goto_12
    if-eqz v6, :cond_15

    :try_start_b
    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_15
    move-object/from16 v7, v65

    goto :goto_13

    :catchall_5
    move-exception v0

    goto :goto_11

    :goto_13
    if-eqz v7, :cond_16

    :try_start_c
    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_14

    :catchall_6
    move-exception v0

    goto/16 :goto_16

    :cond_16
    :goto_14
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    return-object v0

    :catchall_7
    move-exception v0

    move-object/from16 v4, v60

    move-object/from16 v3, v61

    :goto_15
    move-object/from16 v11, v63

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v4, v60

    move-object/from16 v3, v61

    move-object/from16 v2, v62

    goto :goto_15

    :catchall_9
    move-exception v0

    move-object/from16 v4, v60

    move-object/from16 v3, v61

    move-object/from16 v2, v62

    move-object/from16 v11, v63

    move-object/from16 v6, v64

    move-object/from16 v7, v65

    move-object/from16 v1, v66

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object v4, v3

    move-object v2, v8

    move-object v6, v10

    move-object v3, v11

    move-object v7, v12

    move-object v11, v13

    move-object v5, v14

    move-object v1, v15

    goto :goto_16

    :catchall_b
    move-exception v0

    move-object v4, v3

    move-object v6, v10

    move-object v3, v11

    move-object v7, v12

    move-object v11, v13

    move-object v5, v14

    move-object v1, v15

    move-object/from16 v2, v19

    goto :goto_16

    :catchall_c
    move-exception v0

    move-object v4, v3

    move-object v3, v11

    move-object v7, v12

    move-object v11, v13

    move-object v5, v14

    move-object v1, v15

    goto/16 :goto_6

    :goto_16
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_18
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_1a
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_1b
    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_1c
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw v0

    :goto_17
    return-object v0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 59
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseVertex",
            "matrices",
            "instanceCount"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int v4, v4, p2

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v5

    mul-int v5, v5, p2

    new-instance v14, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v14, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v15, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    if-eqz v4, :cond_4

    new-instance v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    mul-int v11, v11, p2

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v12, v10

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    :goto_0
    if-eqz v5, :cond_5

    new-instance v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    mul-int v11, v11, p2

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v13, v10

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    :goto_1
    if-eqz v6, :cond_6

    new-instance v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    mul-int v11, v11, p2

    invoke-direct {v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    if-eqz v7, :cond_7

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    mul-int v1, v16, p2

    invoke-direct {v11, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-eqz v8, :cond_8

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    move-object/from16 v18, v15

    mul-int v15, v16, p2

    invoke-direct {v1, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v15, v1

    goto :goto_4

    :cond_8
    move-object/from16 v18, v15

    const/4 v15, 0x0

    :goto_4
    if-eqz v9, :cond_9

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v16

    move-object/from16 v19, v15

    mul-int v15, v16, p2

    invoke-direct {v1, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    move-object v15, v1

    move-object/from16 v16, v10

    move-object/from16 v20, v11

    goto :goto_5

    :cond_9
    move-object/from16 v19, v15

    move-object/from16 v16, v10

    move-object/from16 v20, v11

    const/4 v15, 0x0

    :goto_5
    const-wide/16 v10, 0x0

    :try_start_0
    invoke-static {v2, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v1

    invoke-static {v4, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v21

    invoke-static {v5, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v4

    invoke-static {v6, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v23

    invoke-static {v7, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v25

    invoke-static {v8, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v27

    invoke-static {v9, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    invoke-static {v3, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v31

    invoke-static {v0, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v33

    invoke-static {v14, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v35

    invoke-static {v12, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v37

    invoke-static {v13, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v39
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-object/from16 v8, v16

    :try_start_1
    invoke-static {v8, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-object/from16 v9, v20

    :try_start_2
    invoke-static {v9, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v43
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v6, v19

    :try_start_3
    invoke-static {v6, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v45

    invoke-static {v15, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v47
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move-object/from16 v7, v18

    :try_start_4
    invoke-static {v7, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v49
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-wide v0, v1

    move-wide/from16 v2, v21

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, v23

    move-object v10, v8

    move-object v11, v9

    move-wide/from16 v8, v25

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-wide/from16 v10, v27

    move-object/from16 v53, v12

    move-object/from16 v54, v13

    move-wide/from16 v12, v29

    move-object/from16 v55, v14

    move-object/from16 v58, v15

    move-object/from16 v56, v16

    move-object/from16 v57, v17

    move-wide/from16 v14, v31

    move-wide/from16 v16, v33

    move/from16 v18, p2

    move-wide/from16 v19, v35

    move-wide/from16 v21, v37

    move-wide/from16 v23, v39

    move-wide/from16 v25, v41

    move-wide/from16 v27, v43

    move-wide/from16 v29, v45

    move-wide/from16 v31, v47

    move-wide/from16 v33, v49

    :try_start_5
    invoke-static/range {v0 .. v34}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->nativeBakeMeshInstances(JJJJJJJJJIJJJJJJJJ)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object/from16 v1, v55

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v2, v56

    :try_start_7
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v10, v53

    if-eqz v10, :cond_a

    :try_start_8
    invoke-virtual {v0, v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    move-object/from16 v3, v54

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v4, v51

    move-object/from16 v11, v52

    :goto_6
    move-object/from16 v3, v54

    :goto_7
    move-object/from16 v5, v57

    :goto_8
    move-object/from16 v6, v58

    goto/16 :goto_12

    :goto_9
    if-eqz v3, :cond_b

    :try_start_9
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_b
    move-object/from16 v4, v51

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v4, v51

    :goto_a
    move-object/from16 v11, v52

    goto :goto_7

    :goto_b
    if-eqz v4, :cond_c

    :try_start_a
    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_c
    move-object/from16 v11, v52

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_a

    :goto_c
    if-eqz v11, :cond_d

    :try_start_b
    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_d
    move-object/from16 v5, v57

    goto :goto_d

    :catchall_3
    move-exception v0

    goto :goto_7

    :goto_d
    if-eqz v5, :cond_e

    :try_start_c
    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_e
    move-object/from16 v6, v58

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_8

    :goto_e
    if-eqz v6, :cond_f

    :try_start_d
    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    goto :goto_f

    :catchall_5
    move-exception v0

    goto/16 :goto_12

    :cond_f
    :goto_f
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    return-object v0

    :catchall_6
    move-exception v0

    move-object/from16 v4, v51

    move-object/from16 v11, v52

    move-object/from16 v10, v53

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v4, v51

    move-object/from16 v11, v52

    move-object/from16 v10, v53

    move-object/from16 v3, v54

    :goto_10
    move-object/from16 v2, v56

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v4, v51

    move-object/from16 v11, v52

    move-object/from16 v10, v53

    move-object/from16 v3, v54

    move-object/from16 v1, v55

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object v5, v6

    move-object v2, v7

    move-object v4, v8

    move-object v11, v9

    move-object v10, v12

    move-object v3, v13

    move-object v1, v14

    move-object v6, v15

    goto :goto_12

    :catchall_a
    move-exception v0

    move-object v5, v6

    move-object v4, v8

    move-object v11, v9

    move-object v10, v12

    move-object v3, v13

    move-object v1, v14

    move-object v6, v15

    move-object/from16 v2, v18

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object v4, v8

    move-object v11, v9

    move-object v10, v12

    move-object v3, v13

    move-object v1, v14

    move-object v6, v15

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    goto :goto_12

    :catchall_c
    move-exception v0

    move-object v4, v8

    move-object v10, v12

    move-object v3, v13

    move-object v1, v14

    move-object v6, v15

    :goto_11
    move-object/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v11, v20

    goto :goto_12

    :catchall_d
    move-exception v0

    move-object v10, v12

    move-object v3, v13

    move-object v1, v14

    move-object v6, v15

    move-object/from16 v4, v16

    goto :goto_11

    :goto_12
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_15
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw v0

    :goto_13
    return-object v0
.end method

.method public static c(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 44
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;",
            ">;)",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;

    if-eqz v14, :cond_9

    iget-object v15, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v15, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v15

    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    if-eqz v15, :cond_9

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v15

    add-int/2addr v6, v15

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    add-int/2addr v7, v2

    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v8, 0x0

    :cond_4
    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v9, 0x0

    :cond_5
    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v10, 0x0

    :cond_6
    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v11, 0x0

    :cond_7
    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v12, 0x0

    :cond_8
    iget-object v2, v14, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v13, 0x0

    :cond_9
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    if-nez v7, :cond_c

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_c
    new-array v2, v5, [J

    if-eqz v8, :cond_d

    new-array v4, v5, [J

    move-object/from16 v17, v4

    goto :goto_2

    :cond_d
    const/16 v17, 0x0

    :goto_2
    if-eqz v9, :cond_e

    new-array v4, v5, [J

    move-object/from16 v18, v4

    goto :goto_3

    :cond_e
    const/16 v18, 0x0

    :goto_3
    if-eqz v10, :cond_f

    new-array v4, v5, [J

    move-object/from16 v19, v4

    goto :goto_4

    :cond_f
    const/16 v19, 0x0

    :goto_4
    if-eqz v11, :cond_10

    new-array v4, v5, [J

    move-object/from16 v20, v4

    goto :goto_5

    :cond_10
    const/16 v20, 0x0

    :goto_5
    if-eqz v12, :cond_11

    new-array v4, v5, [J

    move-object/from16 v21, v4

    goto :goto_6

    :cond_11
    const/16 v21, 0x0

    :goto_6
    if-eqz v13, :cond_12

    new-array v4, v5, [J

    move-object/from16 v22, v4

    goto :goto_7

    :cond_12
    const/16 v22, 0x0

    :goto_7
    new-array v4, v5, [J

    new-instance v14, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v15, 0x10

    mul-int/2addr v5, v15

    invoke-direct {v14, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    :try_start_0
    new-array v5, v15, [F

    const/4 v3, 0x0

    const/16 v26, 0x0

    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v23, v6

    move/from16 v24, v7

    if-ge v3, v1, :cond_1d

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;

    if-eqz v1, :cond_13

    iget-object v15, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v15, :cond_14

    :cond_13
    :goto_9
    move v7, v13

    move-object v6, v14

    goto/16 :goto_c

    :cond_14
    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v15

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v15, :cond_13

    if-nez v6, :cond_15

    goto :goto_9

    :cond_15
    move v7, v13

    move-object/from16 v43, v14

    const-wide/16 v13, 0x0

    :try_start_1
    invoke-static {v15, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v27

    aput-wide v27, v2, v26

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v27

    aput-wide v27, v4, v26

    if-eqz v8, :cond_16

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    aput-wide v29, v17, v26

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 v6, v43

    goto/16 :goto_14

    :cond_16
    :goto_a
    if-eqz v9, :cond_17

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    const-wide/16 v13, 0x0

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    aput-wide v29, v18, v26

    :cond_17
    if-eqz v10, :cond_18

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    const-wide/16 v13, 0x0

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    aput-wide v29, v19, v26

    :cond_18
    if-eqz v11, :cond_19

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    const-wide/16 v13, 0x0

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    aput-wide v29, v20, v26

    :cond_19
    if-eqz v12, :cond_1a

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    const-wide/16 v13, 0x0

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    aput-wide v29, v21, v26

    :cond_1a
    if-eqz v7, :cond_1b

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    const-wide/16 v13, 0x0

    invoke-static {v6, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v13

    aput-wide v13, v22, v26

    :cond_1b
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    mul-int/lit8 v1, v26, 0x10

    const/16 v6, 0x10

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v6, :cond_1c

    add-int v14, v1, v13

    aget v15, v5, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, v43

    :try_start_2
    invoke-virtual {v6, v14, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v43, v6

    const/16 v6, 0x10

    goto :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    :cond_1c
    move-object/from16 v6, v43

    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v6, v14

    goto/16 :goto_14

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move-object v14, v6

    move v13, v7

    move/from16 v6, v23

    move/from16 v7, v24

    const/16 v15, 0x10

    goto/16 :goto_8

    :cond_1d
    move v7, v13

    move-object v6, v14

    if-nez v26, :cond_1e

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    const/4 v0, 0x0

    return-object v0

    :cond_1e
    :try_start_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move/from16 v3, v23

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move/from16 v5, v24

    invoke-direct {v1, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    if-eqz v8, :cond_1f

    new-instance v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v5, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_d

    :cond_1f
    const/4 v5, 0x0

    :goto_d
    if-eqz v9, :cond_20

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v8, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_e

    :cond_20
    const/4 v8, 0x0

    :goto_e
    if-eqz v10, :cond_21

    new-instance v9, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    div-int/lit8 v10, v3, 0x3

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_f

    :cond_21
    const/4 v9, 0x0

    :goto_f
    if-eqz v11, :cond_22

    new-instance v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v10, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_10

    :cond_22
    const/4 v10, 0x0

    :goto_10
    if-eqz v12, :cond_23

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v11, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    :goto_11
    if-eqz v7, :cond_24

    new-instance v7, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v7, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    :goto_12
    const-wide/16 v12, 0x0

    goto :goto_13

    :cond_24
    const/4 v7, 0x0

    goto :goto_12

    :goto_13
    invoke-static {v6, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v24

    invoke-static {v0, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v27

    invoke-static {v5, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v29

    invoke-static {v8, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v31

    invoke-static {v9, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v33

    invoke-static {v10, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v35

    invoke-static {v11, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v37

    invoke-static {v7, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v39

    invoke-static {v1, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v41

    move-object/from16 v16, v2

    move-object/from16 v23, v4

    invoke-static/range {v16 .. v42}, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;->nativeBakeMeshes([J[J[J[J[J[J[J[JJIJJJJJJJJ)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    if-eqz v5, :cond_25

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_25
    if-eqz v8, :cond_26

    invoke-virtual {v2, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_26
    if-eqz v9, :cond_27

    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_27
    if-eqz v10, :cond_28

    invoke-virtual {v2, v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_28
    if-eqz v11, :cond_29

    invoke-virtual {v2, v11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_29
    if-eqz v7, :cond_2a

    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_2a
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-object v2

    :goto_14
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw v0

    :goto_15
    return-object v0
.end method

.method private static native nativeBakeMeshCurveDeform(JJJJJJJJJIFFIIFFFFFFJJJJJJJJ)V
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseVerticesPointer",
            "baseNormalsPointer",
            "baseTangentsPointer",
            "baseUvsPointer",
            "baseColorsPointer",
            "baseWeightsPointer",
            "baseJointsPointer",
            "baseTrianglesPointer",
            "pathDataPointer",
            "pathCount",
            "spacing",
            "startOffset",
            "instanceCount",
            "forwardAxis",
            "scaleX",
            "scaleY",
            "scaleZ",
            "offsetX",
            "offsetY",
            "offsetZ",
            "outVerticesPointer",
            "outNormalsPointer",
            "outTangentsPointer",
            "outUvsPointer",
            "outColorsPointer",
            "outWeightsPointer",
            "outJointsPointer",
            "outTrianglesPointer"
        }
    .end annotation
.end method

.method private static native nativeBakeMeshInstances(JJJJJJJJJIJJJJJJJJ)V
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
            0x0
        }
        names = {
            "baseVerticesPointer",
            "baseNormalsPointer",
            "baseTangentsPointer",
            "baseUvsPointer",
            "baseColorsPointer",
            "baseWeightsPointer",
            "baseJointsPointer",
            "baseTrianglesPointer",
            "matricesPointer",
            "instanceCount",
            "outVerticesPointer",
            "outNormalsPointer",
            "outTangentsPointer",
            "outUvsPointer",
            "outColorsPointer",
            "outWeightsPointer",
            "outJointsPointer",
            "outTrianglesPointer"
        }
    .end annotation
.end method

.method private static native nativeBakeMeshes([J[J[J[J[J[J[J[JJIJJJJJJJJ)V
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
            0x0
        }
        names = {
            "verticesPointers",
            "normalsPointers",
            "tangentsPointers",
            "uvsPointers",
            "colorsPointers",
            "weightsPointers",
            "jointsPointers",
            "trianglesPointers",
            "matricesPointer",
            "meshCount",
            "outVerticesPointer",
            "outNormalsPointer",
            "outTangentsPointer",
            "outUvsPointer",
            "outColorsPointer",
            "outWeightsPointer",
            "outJointsPointer",
            "outTrianglesPointer"
        }
    .end annotation
.end method
