.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final E:Z = false

.field public static final F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

.field public final b:Lx9/a;

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:Z

.field public g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public h:LRb/c;

.field public i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:Z

.field public n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public s:Z

.field public t:I

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-chunk-renderable-layer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->F:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureMapStartX",
            "textureMapStartY",
            "layer",
            "data"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->e:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->c:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->d:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->b:Lx9/a;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->l:Z

    return p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->m:Z

    return p1
.end method

.method public static synthetic d()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->F:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Lx9/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->b:Lx9/a;

    return-object p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->c:I

    return p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->d:I

    return p0
.end method

.method public static synthetic i(JIIIIIJ)Z
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->nativePaintLayerR8(JIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k:Z

    return p1
.end method

.method private static native nativePaintLayerR8(JIIIIIJ)Z
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
            "layerBufferPointer",
            "tableResolution",
            "textureMapStartX",
            "textureMapStartY",
            "textureWidth",
            "textureHeight",
            "outByteBufferPointer"
        }
    .end annotation
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;ILjava/util/List;)V
    .locals 9
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
            "terrain",
            "resolutions",
            "chunkSurface",
            "renderMatrix",
            "chunk",
            "layerIndex",
            "layerMapList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            "Lz9/h;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;",
            "[F",
            "Lv9/d;",
            "I",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;ILjava/util/List;Z)V

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;ILjava/util/List;Z)V
    .locals 21
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
            "terrain",
            "resolutions",
            "chunkSurface",
            "renderMatrix",
            "chunk",
            "layerIndex",
            "layerMapList",
            "allowSceneAttach"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            "Lz9/h;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;",
            "[F",
            "Lv9/d;",
            "I",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 v10, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Lu9/d;->h()Lec/e;

    move-result-object v2

    invoke-virtual {v2}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    iput-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-boolean v10, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->s:Z

    :cond_0
    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v2

    iget v3, v1, Lz9/h;->c:I

    if-eq v2, v3, :cond_4

    :cond_1
    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iput-object v3, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :cond_2
    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v2, :cond_3

    iput-object v3, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v10, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v18

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v14, v1, Lz9/h;->c:I

    sget-object v15, Lcom/google/android/filament/Texture$e;->R:Lcom/google/android/filament/Texture$e;

    sget-object v16, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v1, Lcom/google/android/filament/Texture$a;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$a;-><init>()V

    sget-object v3, Lcom/google/android/filament/Texture$f;->R8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v1, v3}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object v12, v2

    move v13, v14

    invoke-direct/range {v12 .. v20}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v2

    iget-object v3, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    iput-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-boolean v11, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->e:Z

    iput-boolean v10, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->l:Z

    iput-boolean v10, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->m:Z

    :cond_4
    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->F:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_5

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v11, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v3, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;

    invoke-direct {v4, v7, v9, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;Lv9/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->u(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V

    :cond_5
    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->e:Z

    if-eqz v2, :cond_6

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v10, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->e:Z

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v3

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getHeight()I

    move-result v4

    monitor-enter v1

    :try_start_1
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;IILv9/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-static {v12}, LO9/b;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    :goto_0
    if-eqz v8, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v8, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[F)V

    :cond_7
    iget-boolean v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->m:Z

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v11

    goto :goto_1

    :cond_8
    move v1, v10

    :goto_1
    iget-boolean v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_c

    :cond_9
    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    invoke-virtual {v7, v9, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o(Lv9/d;F)V

    :cond_a
    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_b

    add-int/lit8 v2, p6, 0x1

    and-int/lit16 v2, v2, 0x7fff

    invoke-virtual {v1, v10, v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    :cond_b
    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v1, :cond_c

    add-int/lit8 v2, p6, 0x1

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(FF)V

    :cond_c
    iget-boolean v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    if-nez v1, :cond_d

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iput-boolean v11, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    :cond_d
    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v1, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->o()Lcom/google/android/filament/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public m(Lv9/e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "batch",
            "lodVisible"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isDestroyied()Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->m:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j:Z

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lv9/e;->a(IZ)V

    return-void
.end method

.method public n([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    if-eqz v0, :cond_0

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_0
    return-void
.end method

.method public o(Lv9/d;F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chunk",
            "maxHeight"
        }
    .end annotation

    invoke-virtual {p1}, Lv9/d;->F()I

    move-result v0

    invoke-virtual {p1}, Lv9/d;->B()F

    move-result p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->p()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->s:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t:I

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    :goto_2
    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v0, v5, v0

    if-nez v3, :cond_3

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->u:F

    invoke-static {v6, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v7, "uvStep"

    invoke-virtual {v6, v7, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->u:F

    :cond_4
    if-nez v3, :cond_5

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->v:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v6, "maxHeight"

    invoke-virtual {v0, v6, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->v:F

    :cond_6
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v0, "layer1Map"

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    const-string v0, "albedo1R"

    const-string v6, "nm1R"

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->e()Lub/g;

    move-result-object p2

    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v7, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const-string v0, "albedo"

    invoke-virtual {p0, p2, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->x(Lub/p;ZLjava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object p2, Lyb/b;->g:Lub/p;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v7, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_3
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->q()Lub/g;

    move-result-object p2

    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result v0

    const-string v7, "metallic1R"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v7}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const-string v0, "metallic"

    invoke-virtual {p0, p2, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->x(Lub/p;ZLjava/lang/String;)V

    goto :goto_4

    :cond_8
    sget-object p2, Lyb/b;->i:Lub/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v7}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->k()Lub/g;

    move-result-object p2

    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result v0

    const-string v7, "enableHeight"

    const-string v8, "heightMap"

    const/4 v9, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->m()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v8}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    if-nez v3, :cond_9

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->w:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v7, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->w:F

    :cond_a
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->m()F

    move-result v0

    const v7, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v7

    if-nez v3, :cond_b

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->x:F

    invoke-static {v7, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v8, "heightIntensity"

    invoke-virtual {v7, v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->x:F

    :cond_c
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->n()F

    move-result v0

    if-nez v3, :cond_d

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->y:F

    invoke-static {v7, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v8, "heightNormalStrength"

    invoke-virtual {v7, v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->y:F

    :cond_e
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->o()F

    move-result v0

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v0, v7

    invoke-static {v0}, LNc/b;->w0(F)F

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8, v0}, LNc/b;->M(FF)F

    move-result v0

    if-nez v3, :cond_f

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->z:F

    invoke-static {v8, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v9, "heightMinLayers"

    invoke-virtual {v8, v9, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->z:F

    :cond_10
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->o()F

    move-result v0

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v0, v8

    invoke-static {v0}, LNc/b;->w0(F)F

    move-result v0

    invoke-static {v7, v0}, LNc/b;->M(FF)F

    move-result v0

    if-nez v3, :cond_11

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->A:F

    invoke-static {v7, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v8, "heightMaxLayers"

    invoke-virtual {v7, v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->A:F

    :cond_12
    const-string v0, "height"

    invoke-virtual {p0, p2, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->x(Lub/p;ZLjava/lang/String;)V

    goto :goto_5

    :cond_13
    sget-object p2, Lyb/b;->i:Lub/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v8}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    if-nez v3, :cond_14

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->w:F

    invoke-static {p2, v9}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_15

    :cond_14
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v7, v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->w:F

    :cond_15
    :goto_5
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->h()Lub/p;

    move-result-object p2

    invoke-static {p2}, Lub/p;->L(Lub/p;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v6}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const-string v0, "normal map"

    invoke-virtual {p0, p2, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->x(Lub/p;ZLjava/lang/String;)V

    goto :goto_6

    :cond_16
    sget-object p2, Lyb/b;->l:Lub/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v6}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    sget-object p2, Lyb/b;->k:Lub/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v2, v0}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    sget-object p2, Lyb/b;->l:Lub/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v6}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_6
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    const-string v0, "layer1Specular"

    const-string v2, "layer1Roughness"

    const-string v6, "layer1Sizes"

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->v()F

    move-result p2

    div-float/2addr p1, p2

    if-nez v3, :cond_18

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_19

    :cond_18
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v6, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B:F

    :cond_19
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->u()F

    move-result p1

    if-nez v3, :cond_1a

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->C:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_1b

    :cond_1a
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->C:F

    :cond_1b
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->w()F

    move-result p1

    if-nez v3, :cond_1c

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->D:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_23

    :cond_1c
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->D:F

    goto :goto_7

    :cond_1d
    div-float/2addr p1, v5

    if-nez v3, :cond_1e

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_1f

    :cond_1e
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v6, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B:F

    :cond_1f
    const p1, 0x3e99999a    # 0.3f

    if-nez v3, :cond_20

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->C:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_21

    :cond_20
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->C:F

    :cond_21
    if-nez v3, :cond_22

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->D:F

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_23

    :cond_22
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p1, v0, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->D:F

    :cond_23
    :goto_7
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t:I

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->s:Z

    return-void
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[F)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "vertex",
            "renderMatrix"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v7, :cond_0

    new-instance v7, LRb/c;

    invoke-direct {v7}, LRb/c;-><init>()V

    iput-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->o()Lcom/google/android/filament/Box;

    new-instance v15, Lcom/google/android/filament/Box;

    move-object/from16 v7, p1

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v7, v8

    new-array v10, v4, [F

    aput v3, v10, v6

    aput v9, v10, v5

    aput v3, v10, v2

    div-float/2addr v7, v8

    new-array v3, v4, [F

    aput v1, v3, v6

    aput v7, v3, v5

    aput v1, v3, v2

    invoke-direct {v15, v10, v3}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v2, v5}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v13

    sget-object v14, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;Z)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {v2}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v2

    move-object/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_0
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->s:Z

    return-void
.end method

.method public final r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j:Z

    :cond_0
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->h:LRb/c;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->f:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->j:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->s:Z

    return-void
.end method

.method public u(Lx9/a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->b:Lx9/a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->k:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->m:Z

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public x(Lub/p;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "wantedGamma",
            "attached"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lub/g;

    if-eqz v0, :cond_2

    check-cast p1, Lub/g;

    invoke-virtual {p1}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eq v0, p2, :cond_2

    invoke-static {}, LJ4/d;->E1()V

    const-string v0, " Tap in file name here to open file in files panel!"

    const-string v1, " needs gamma correction toggle to be "

    const-string v2, " of terrain "

    const-string v3, "open:"

    const-string v4, " texture:"

    const-string v5, "41, 255, 8"

    const-string v6, "LINT: "

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, LJ4/d;->H1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LJ4/d;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, LJ4/d;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->u2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "activated"

    invoke-static {p1}, LJ4/d;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in texture settings, gamma correction needs to be activated on albedo/emissive textures."

    invoke-static {p1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->L1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, LJ4/d;->H1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LJ4/d;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, LJ4/d;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->u2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "deactivated"

    invoke-static {p1}, LJ4/d;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in texture settings, only activate gamma correction to albedo/emissive textures."

    invoke-static {p1}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LJ4/d;->y2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->L1(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->e:Z

    return-void
.end method
