.class public final Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/DataSystem/NativeVoxelChunkBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-voxel-chunk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LE9/e;I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faceBuffer",
            "atlasSideCount"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, LE9/e;->e()I

    move-result v9

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-gtz v9, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v0, v13, v15}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-object v0

    :cond_1
    new-instance v14, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v9, 0xc

    invoke-direct {v14, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v9, 0x8

    invoke-direct {v11, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v1, v9, 0x6

    invoke-direct {v12, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, LE9/e;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, LE9/e;->d()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, LE9/e;->f()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, LE9/e;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v18

    invoke-static {v14, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v20

    invoke-static {v11, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v22

    invoke-static {v12, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-wide v1, v4

    move-wide v3, v6

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move/from16 v10, p1

    move-object/from16 p0, v11

    move-object/from16 p1, v12

    move-wide/from16 v11, v20

    move/from16 v17, v13

    move-object/from16 v18, v14

    move-wide/from16 v13, v22

    move-wide/from16 v15, v24

    :try_start_1
    invoke-static/range {v1 .. v16}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/DataSystem/NativeVoxelChunkBuilder;->nativeBuildChunk(JJJJIIJJJ)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v13, :cond_3

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    invoke-virtual/range {v18 .. v18}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_2
    return-object v0

    :cond_3
    :try_start_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v1, v18

    :try_start_3
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v2, p0

    :try_start_4
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v3, p1

    :try_start_5
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object/from16 v3, p1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v1, v18

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v1, v18

    move/from16 v13, v17

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object v2, v11

    move-object v3, v12

    move/from16 v17, v13

    move-object v1, v14

    :goto_1
    if-nez v13, :cond_4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_4
    throw v0
.end method

.method private static native nativeBuildChunk(JJJJIIJJJ)Z
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
            "positionsXYZPointer",
            "blockTypesPointer",
            "facesPointer",
            "textureIndicesPointer",
            "faceCount",
            "atlasSideCount",
            "outVerticesPointer",
            "outUVsPointer",
            "outTrianglesPointer"
        }
    .end annotation
.end method
