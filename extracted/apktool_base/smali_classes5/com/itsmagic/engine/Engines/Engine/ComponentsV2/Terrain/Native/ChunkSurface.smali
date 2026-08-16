.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final n:I = 0x0

.field public static final o:I = 0x2


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:J

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final g:Lz9/i$b;

.field public volatile h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public volatile i:Lcom/google/android/filament/Box;

.field public volatile j:I

.field public volatile k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-chunk-surface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "native-brush-surface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(IZLz9/i$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "bordersEnabled",
            "topologyEntry"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    const/4 v1, 0x2

    if-lt p1, v1, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lz9/i$b;->q()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p3}, Lz9/i$b;->w()Z

    move-result v1

    if-ne v1, p2, :cond_2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->a:I

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->b:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeTryCreate(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->c:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_1

    mul-int p3, p1, p1

    if-eqz p2, :cond_0

    mul-int/lit8 v0, p1, 0x8

    :cond_0
    add-int/2addr p3, v0

    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p2, p3, 0x3

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/2addr p3, p2

    invoke-direct {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to create native terrain chunk surface"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "topologyEntry mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "topologyEntry can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resolution can\'t be < 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    return p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->D()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->n()V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object p1
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object p0
.end method

.method private static native nativeBuild(JJIJJJJ)V
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
            "pointer",
            "heightBufferPointer",
            "sourceResolution",
            "verticesPointer",
            "uvsPointer",
            "trianglesPointer",
            "boundsPointer"
        }
    .end annotation
.end method

.method private static native nativeBuildBrush(JJIIIIIFFFFFIIFFIIJJ)V
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
            0x0
        }
        names = {
            "tablePointer",
            "brushPointer",
            "terrainResolution",
            "startX",
            "startY",
            "endX",
            "endY",
            "terrainWidth",
            "terrainMaxHeight",
            "brushStartX",
            "brushStartY",
            "brushSize",
            "brushWidth",
            "brushHeight",
            "brushIntensity",
            "levelHeight",
            "viewMode",
            "resolution",
            "verticesPointer",
            "uvsPointer"
        }
    .end annotation
.end method

.method private static native nativeBuildFromTables(JJJIIIIZJJJJ)V
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
            0x0
        }
        names = {
            "pointer",
            "tablePointer",
            "levelTablePointer",
            "tableResolution",
            "startX",
            "startY",
            "sourceResolution",
            "levelingEnabled",
            "verticesPointer",
            "uvsPointer",
            "trianglesPointer",
            "boundsPointer"
        }
    .end annotation
.end method

.method private static native nativeCalculateBounds(JIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesPointer",
            "vertexCount",
            "boundsPointer"
        }
    .end annotation
.end method

.method private static native nativeDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeFixSkirtTangents(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "tangentBufferPointer"
        }
    .end annotation
.end method

.method private static native nativeTryCreate(IZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "bordersEnabled"
        }
    .end annotation
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->b:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->o()Lcom/google/android/filament/Box;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadSlot"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->D()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l:Z

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public E()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->y()V

    return-void
.end method

.method public final F()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    monitor-exit p0

    return v1

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l:Z

    monitor-exit p0

    const/4 v0, 0x2

    return v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized G(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "heightBuffer",
            "sourceResolution"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    :try_start_0
    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->F()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-wide v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->c:J

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v4

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v7

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->u()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v9

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->s()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getPointerCritical()J

    move-result-wide v11

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v13

    move/from16 v6, p2

    invoke-static/range {v2 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeBuild(JJIJJJJ)V

    invoke-virtual {v1, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->K(I)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->C(I)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "sourceResolution can\'t be <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "heightBuffer can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final H(Lcom/google/android/filament/Box;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "box",
            "vertexCount"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v4, v0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v5, 0x2

    aget v6, v0, v5

    aget v7, p1, v5

    sub-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v6, v0, v2

    aget v7, p1, v2

    add-float/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v6, v0, v4

    aget v4, p1, v4

    add-float/2addr v6, v4

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v4, v0, v5

    aget v5, p1, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-void
.end method

.method public declared-synchronized I(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIIFFFFFIIFFI)Z
    .locals 27
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
            0x0
        }
        names = {
            "tableBuffer",
            "brushBuffer",
            "terrainResolution",
            "startX",
            "startY",
            "endX",
            "endY",
            "terrainWidth",
            "terrainMaxHeight",
            "brushStartX",
            "brushStartY",
            "brushSize",
            "brushWidth",
            "brushHeight",
            "brushIntensity",
            "levelHeight",
            "viewMode"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-lez p3, :cond_2

    :try_start_0
    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->F()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v4

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->a:I

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v22

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v6}, Lz9/i$b;->u()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v24
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v26, v15

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, v0

    :try_start_3
    invoke-static/range {v2 .. v25}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeBuildBrush(JJIIIIIFFFFFIIFFIIJJ)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->y()I

    move-result v0

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v4

    invoke-static {v2, v3, v0, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeCalculateBounds(JIJ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v2, v26

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->K(I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v2, v26

    goto :goto_0

    :catch_2
    move-exception v0

    move v2, v15

    :goto_0
    :try_start_5
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->C(I)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "terrainResolution can\'t be <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "brushBuffer can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "tableBuffer can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public declared-synchronized J(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIZ)Z
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
            "tableBuffer",
            "levelTableBuffer",
            "tableResolution",
            "startX",
            "startY",
            "sourceResolution",
            "levelingEnabled"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    if-eqz p1, :cond_5

    if-lez p3, :cond_4

    if-lez p6, :cond_3

    :try_start_0
    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->F()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-wide v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->c:J

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v4

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move v2, v15

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    :goto_0
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v13

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->u()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v16

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->s()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getPointerCritical()J

    move-result-wide v18

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v20
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v22, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    :try_start_3
    invoke-static/range {v2 .. v20}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeBuildFromTables(JJJIIIIZJJJJ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v2, v22

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->K(I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v2, v22

    :goto_1
    :try_start_5
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->C(I)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "sourceResolution can\'t be <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "tableResolution can\'t be <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "tableBuffer can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final K(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadSlot"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->y()I

    move-result v2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->u()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->i(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h()Lcom/google/android/filament/Box;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->H(Lcom/google/android/filament/Box;I)V

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->D()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->i:Lcom/google/android/filament/Box;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    const/4 v6, 0x1

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->m(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return v6

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()Lcom/google/android/filament/Box;
    .locals 14

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    add-float v10, v0, v6

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float v12, v2, v8

    mul-float/2addr v12, v11

    add-float v13, v4, v9

    mul-float/2addr v13, v11

    sub-float/2addr v6, v0

    mul-float/2addr v6, v11

    sub-float/2addr v8, v2

    mul-float/2addr v8, v11

    sub-float/2addr v9, v4

    mul-float/2addr v9, v11

    new-instance v0, Lcom/google/android/filament/Box;

    new-array v2, v7, [F

    aput v10, v2, v1

    aput v12, v2, v3

    aput v13, v2, v5

    new-array v4, v7, [F

    aput v6, v4, v1

    aput v8, v4, v3

    aput v9, v4, v5

    invoke-direct {v0, v2, v4}, Lcom/google/android/filament/Box;-><init>([F[F)V

    return-object v0
.end method

.method public final i(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCount"
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LJb/g;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v2}, Lz9/i$b;->u()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v3}, Lz9/i$b;->s()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    invoke-direct {p1, v1, v2, v0, v3}, LJb/g;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p1}, LJb/g;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->b:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->c:J

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getPointerCritical()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeFixSkirtTangents(JJ)V

    :cond_1
    return-object p1
.end method

.method public declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->D()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->i:Lcom/google/android/filament/Box;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->x()V

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->c:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->nativeDeleteBuffer(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->D()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->i:Lcom/google/android/filament/Box;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-void
.end method

.method public final m(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "requestId",
            "vertexCount",
            "uvBuffer",
            "tangentBuffer",
            "boundsBuffer"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface$a;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-static {v7}, Lz9/f;->d(Lz9/f$b;)V

    return-void
.end method

.method public final n()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->D()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()Lcom/google/android/filament/Box;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->i:Lcom/google/android/filament/Box;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h()Lcom/google/android/filament/Box;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->i:Lcom/google/android/filament/Box;

    :cond_0
    return-object v0
.end method

.method public p()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public q()LRb/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->o()LRb/d;

    move-result-object v0

    return-object v0
.end method

.method public r()LRb/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->p()LRb/d;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->a:I

    return v0
.end method

.method public t(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0, p1}, Lz9/i$b;->r(I)I

    move-result p1

    return p1
.end method

.method public u()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->s()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->g:Lz9/i$b;

    invoke-virtual {v0}, Lz9/i$b;->t()I

    move-result v0

    return v0
.end method

.method public w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object v0
.end method

.method public x()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method public declared-synchronized z()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
