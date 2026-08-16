.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-chunk-collision-surface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->c:Z

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->a:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/2addr p1, p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "resolution can\'t be < 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeBuildFromTables(JJIIIIZIJ)Z
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
            "tablePointer",
            "levelTablePointer",
            "tableResolution",
            "startX",
            "startY",
            "sourceResolution",
            "levelingEnabled",
            "resolution",
            "heightfieldDataPointer"
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->a:I

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->a:I

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public declared-synchronized e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIZ)Z
    .locals 14
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
            "tableBuffer",
            "levelTableBuffer",
            "tableResolution",
            "startX",
            "startY",
            "sourceResolution",
            "levelingEnabled"
        }
    .end annotation

    move-object v1, p0

    monitor-enter p0

    if-eqz p1, :cond_4

    if-lez p3, :cond_3

    if-lez p6, :cond_2

    :try_start_0
    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v2

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->a:I

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v12

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->nativeBuildFromTables(JJIIIIZIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "sourceResolution can\'t be <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "tableResolution can\'t be <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "tableBuffer can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
