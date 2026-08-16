.class public Lv9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final W:F = 2.0f

.field public static final X:F = 0.9f

.field public static final Y:F = 1.1f

.field public static final Z:F = 1.5f

.field public static final a0:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public final H:[F

.field public final I:Lcom/jme3/math/Transform;

.field public J:Z

.field public K:Z

.field public volatile L:I

.field public volatile M:I

.field public volatile N:I

.field public volatile O:I

.field public final P:[I

.field public volatile Q:Z

.field public R:Z

.field public final S:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile T:Lv9/d;

.field public U:Lz9/e;

.field public V:Lz9/e;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv9/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LRb/d;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Object;

.field public p:I

.field public q:Z

.field public volatile r:Z

.field public volatile s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public t:Lv9/a;

.field public u:Lv9/a;

.field public v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

.field public w:I

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/d$a;

    invoke-direct {v0}, Lv9/d$a;-><init>()V

    sput-object v0, Lv9/d;->a0:Ljava/lang/ThreadLocal;

    new-instance v0, Lv9/d$b;

    invoke-direct {v0}, Lv9/d$b;-><init>()V

    sput-object v0, Lv9/d;->b0:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightMapStartX",
            "heightMapStartY",
            "heightMapResolution",
            "textureMapStartX",
            "textureMapStartY"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->f:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->g:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->h:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->i:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->j:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->k:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->l:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->m:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lv9/d;->n:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, -0x383cb080    # -99999.0f

    iput v0, p0, Lv9/d;->y:F

    const v0, 0x497423f0    # 999999.0f

    iput v0, p0, Lv9/d;->z:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv9/d;->A:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lv9/d;->C:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lv9/d;->F:F

    iput v1, p0, Lv9/d;->G:F

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lv9/d;->H:[F

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v2, p0, Lv9/d;->I:Lcom/jme3/math/Transform;

    const/4 v2, -0x1

    iput v2, p0, Lv9/d;->L:I

    iput v2, p0, Lv9/d;->M:I

    iput v2, p0, Lv9/d;->N:I

    iput v0, p0, Lv9/d;->O:I

    new-array v0, v1, [I

    iput-object v0, p0, Lv9/d;->P:[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lv9/d;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lv9/d;->a:I

    iput p2, p0, Lv9/d;->b:I

    iput p3, p0, Lv9/d;->c:I

    iput p4, p0, Lv9/d;->d:I

    iput p5, p0, Lv9/d;->e:I

    return-void
.end method

.method public static synthetic a(Lv9/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lv9/d;->J:Z

    return p1
.end method


# virtual methods
.method public A()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;
    .locals 3

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv9/d;->r:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lv9/d;->q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lv9/d;->F:F

    return v0
.end method

.method public final C()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;
    .locals 2

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lv9/d;->D()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final D()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;
    .locals 1

    iget-boolean v0, p0, Lv9/d;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lv9/d;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lv9/d;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final E(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodLevels()I

    move-result p1

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    return p1
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lv9/d;->c:I

    return v0
.end method

.method public G(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasLodReferencePosition()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v0

    iget v1, p0, Lv9/d;->D:F

    add-float/2addr v0, v1

    iget v1, p0, Lv9/d;->F:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v3

    iget v4, p0, Lv9/d;->E:F

    add-float/2addr v3, v4

    iget v4, p0, Lv9/d;->F:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferenceX()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferenceY()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferenceZ()F

    move-result p1

    sub-float/2addr p1, v3

    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    return v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public H()Lv9/d;
    .locals 1

    iget-object v0, p0, Lv9/d;->T:Lv9/d;

    return-object v0
.end method

.method public I()F
    .locals 1

    iget v0, p0, Lv9/d;->D:F

    return v0
.end method

.method public J()F
    .locals 1

    iget v0, p0, Lv9/d;->E:F

    return v0
.end method

.method public K()[F
    .locals 1

    iget-object v0, p0, Lv9/d;->H:[F

    return-object v0
.end method

.method public L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/d;->E(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lv9/d;->q(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int v3, v2, v2

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public M(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/d;->E(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lv9/d;->q(I)I

    move-result v2

    mul-int v3, v2, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Lv9/d;->t:Lv9/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final O(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "lodLevel"
        }
    .end annotation

    if-ltz p2, :cond_2

    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lv9/c;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1
    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final P()Z
    .locals 1

    iget-boolean v0, p0, Lv9/d;->C:Z

    return v0
.end method

.method public Q(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    iget v0, p0, Lv9/d;->a:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Lv9/d;->c:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lv9/d;->b:I

    if-lt p2, p1, :cond_0

    add-int/2addr p1, v1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public R(IILz9/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "resolutions"
        }
    .end annotation

    iget p3, p3, Lz9/h;->c:I

    iget v0, p0, Lv9/d;->d:I

    if-lt p1, v0, :cond_0

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    iget p1, p0, Lv9/d;->e:I

    if-lt p2, p1, :cond_0

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final S(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lodLevel"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/d;->T(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lv9/d;->V(I)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lv9/c;->n()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->w()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_1
    return v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final T(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lodLevel"
        }
    .end annotation

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :cond_2
    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasLodReferencePosition()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasLodRenderDistance()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodRenderDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lv9/d;->F:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, p1}, Lv9/d;->G(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)F

    move-result p1

    mul-float/2addr v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final V(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lod"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public W(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth"
        }
    .end annotation

    iput-object p1, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v0

    iput-object v0, p0, Lv9/d;->U:Lz9/e;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()Lz9/e;

    move-result-object v0

    iput-object v0, p0, Lv9/d;->V:Lz9/e;

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv9/d;->n0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FFF)V

    invoke-virtual {p0, p1}, Lv9/d;->Y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public X(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth"
        }
    .end annotation

    iput-object p1, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v0

    iput-object v0, p0, Lv9/d;->U:Lz9/e;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()Lz9/e;

    move-result-object v0

    iput-object v0, p0, Lv9/d;->V:Lz9/e;

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv9/d;->n0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FFF)V

    invoke-virtual {p0, p1}, Lv9/d;->m0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-boolean p2, p0, Lv9/d;->Q:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lv9/d;->k0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lv9/d;->Y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public final Y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, Lv9/d;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv9/d;->t()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lv9/d;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lv9/d;->N:I

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    iget v2, p0, Lv9/d;->N:I

    if-ge v2, v1, :cond_1

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    iget v4, p0, Lv9/d;->N:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1b

    :cond_1
    move-object v2, v3

    :goto_0
    iget v4, p0, Lv9/d;->N:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    iget v4, p0, Lv9/d;->N:I

    if-ge v4, v1, :cond_2

    iget v4, p0, Lv9/d;->N:I

    invoke-virtual {p0, v4}, Lv9/d;->V(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lv9/d;->O:I

    iget-boolean v7, p0, Lv9/d;->A:Z

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->z()Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v2, v6

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v5

    :goto_4
    iget-boolean v4, p0, Lv9/d;->r:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lv9/d;->t()V

    return-void

    :cond_6
    if-eqz v7, :cond_13

    iget v2, p0, Lv9/d;->L:I

    if-ltz v2, :cond_7

    if-lt v2, v1, :cond_8

    :cond_7
    iget v2, p0, Lv9/d;->M:I

    :cond_8
    if-ltz v2, :cond_9

    if-lt v2, v1, :cond_a

    :cond_9
    iget v2, p0, Lv9/d;->N:I

    :cond_a
    if-ltz v2, :cond_b

    if-lt v2, v1, :cond_c

    :cond_b
    move v2, v6

    :cond_c
    if-ltz v2, :cond_d

    if-ge v2, v1, :cond_d

    invoke-virtual {p0, p1, v2}, Lv9/d;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)Z

    move-result v1

    goto :goto_5

    :cond_d
    move v1, v5

    :goto_5
    xor-int/2addr v1, v5

    iput-boolean v1, p0, Lv9/d;->A:Z

    iget-object v4, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lv9/d;->N:I

    if-ltz v2, :cond_e

    iget v2, p0, Lv9/d;->N:I

    if-ge v2, v1, :cond_e

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    iget v7, p0, Lv9/d;->N:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_a

    :cond_e
    move-object v2, v3

    :goto_6
    iget v7, p0, Lv9/d;->N:I

    if-ltz v7, :cond_f

    iget v7, p0, Lv9/d;->N:I

    if-ge v7, v1, :cond_f

    iget v7, p0, Lv9/d;->N:I

    invoke-virtual {p0, v7}, Lv9/d;->V(I)Z

    move-result v7

    if-eqz v7, :cond_f

    move v7, v5

    goto :goto_7

    :cond_f
    move v7, v6

    :goto_7
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->z()Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v5

    goto :goto_8

    :cond_10
    move v8, v6

    :goto_8
    monitor-exit v4

    if-eqz v2, :cond_12

    if-nez v7, :cond_12

    if-eqz v8, :cond_11

    goto :goto_9

    :cond_11
    move v2, v6

    goto :goto_b

    :cond_12
    :goto_9
    move v2, v5

    goto :goto_b

    :goto_a
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_13
    :goto_b
    if-eqz v2, :cond_1e

    iget v2, p0, Lv9/d;->N:I

    if-ltz v2, :cond_14

    if-lt v2, v1, :cond_15

    :cond_14
    iget v2, p0, Lv9/d;->M:I

    :cond_15
    if-ltz v2, :cond_16

    if-lt v2, v1, :cond_17

    :cond_16
    iget v2, p0, Lv9/d;->L:I

    :cond_17
    if-ltz v2, :cond_18

    if-lt v2, v1, :cond_19

    :cond_18
    move v2, v6

    :cond_19
    if-ltz v2, :cond_1a

    if-ge v2, v1, :cond_1a

    invoke-virtual {p0, p1, v2}, Lv9/d;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)Z

    move-result v1

    goto :goto_c

    :cond_1a
    move v1, v6

    :goto_c
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->shouldBuildCollision()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v4, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lv9/d;->P()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_d

    :cond_1b
    move v4, v6

    goto :goto_e

    :catchall_2
    move-exception p1

    goto :goto_f

    :cond_1c
    :goto_d
    move v4, v5

    :goto_e
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_1d

    invoke-virtual {p0, p1}, Lv9/d;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z

    goto :goto_10

    :goto_f
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_1d
    :goto_10
    if-eqz v1, :cond_1e

    iget v1, p0, Lv9/d;->O:I

    if-ne v0, v1, :cond_1e

    iput-boolean v5, p0, Lv9/d;->B:Z

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1e
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->shouldBuildCollision()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lv9/d;->P()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_11

    :cond_1f
    move v1, v6

    goto :goto_12

    :catchall_3
    move-exception p1

    goto :goto_13

    :cond_20
    :goto_11
    move v1, v5

    :goto_12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_21

    invoke-virtual {p0, p1}, Lv9/d;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z

    goto :goto_14

    :goto_13
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :cond_21
    :goto_14
    iget-object v0, p0, Lv9/d;->t:Lv9/a;

    if-nez v0, :cond_22

    iput-boolean v5, p0, Lv9/d;->J:Z

    :cond_22
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->shouldBuildCollision()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lv9/d;->J:Z

    if-eqz v0, :cond_23

    :try_start_6
    invoke-virtual {p0}, Lv9/d;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v0, :cond_23

    :try_start_7
    invoke-virtual {p0, p1, v0}, Lv9/d;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;)V

    iput-boolean v6, p0, Lv9/d;->J:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {p0}, Lv9/d;->e0()V

    goto :goto_17

    :catch_0
    move-exception v0

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_16

    :catchall_4
    move-exception v0

    invoke-virtual {p0}, Lv9/d;->e0()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lv9/d$c;

    invoke-direct {v0, p0}, Lv9/d$c;-><init>(Lv9/d;)V

    const/16 v1, 0xf

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    goto :goto_17

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_17
    iget-boolean v0, p0, Lv9/d;->r:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lv9/d;->t()V

    return-void

    :cond_24
    iget-object v0, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lv9/d;->t:Lv9/a;

    if-eqz v1, :cond_25

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->removeCollider(Lv9/a;)V

    iput-object v3, p0, Lv9/d;->t:Lv9/a;

    goto :goto_18

    :catchall_5
    move-exception p1

    goto :goto_19

    :cond_25
    :goto_18
    iget-object v1, p0, Lv9/d;->u:Lv9/a;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->addCollider(Lv9/a;)V

    iget-object p1, p0, Lv9/d;->u:Lv9/a;

    iput-object p1, p0, Lv9/d;->t:Lv9/a;

    iput-object v3, p0, Lv9/d;->u:Lv9/a;

    iget-object p1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_26
    monitor-exit v0

    goto :goto_1a

    :goto_19
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1

    :cond_27
    :goto_1a
    return-void

    :goto_1b
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method public Z(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    return-object p1
.end method

.method public a0()I
    .locals 2

    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;
    .locals 3

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv9/d;->r:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lv9/d;->q:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lv9/d;->D()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lv9/d;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lv9/d;->p:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :cond_2
    :goto_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b0()V
    .locals 2

    iget-object v0, p0, Lv9/d;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv9/d;->r:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lv9/d;->q:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lv9/d;->p:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lv9/d;->p:I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv9/d;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, p0, Lv9/d;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v0, p0, Lv9/d;->T:Lv9/d;

    iget-object v1, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v1

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv9/c;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lv9/c;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    iget-object v4, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v6, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lv9/d;->t()V

    iget-object p1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    :try_start_1
    iput-object v0, p0, Lv9/d;->u:Lv9/a;

    iget-object v0, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;Lx9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layerMapList",
            "layer",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;",
            "Lx9/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    iget v1, p0, Lv9/d;->d:I

    iget v2, p0, Lv9/d;->e:I

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;-><init>(IILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;Lx9/a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d0()Z
    .locals 13

    invoke-virtual {p0}, Lv9/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget v0, p0, Lv9/d;->L:I

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_f

    if-nez v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    iget v4, p0, Lv9/d;->N:I

    :goto_1
    if-ltz v4, :cond_e

    if-lez v3, :cond_2

    if-ne v4, v0, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v5, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    monitor-exit v5

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    iget-object v6, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    iget-object v7, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v4, v7, :cond_4

    iget-object v7, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv9/c;

    goto :goto_2

    :cond_4
    move-object v7, v8

    :goto_2
    iget-object v9, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    iget-object v8, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_6

    goto/16 :goto_9

    :cond_6
    :try_start_2
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->B()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    :goto_3
    move v2, v1

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->w()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->r()LRb/d;

    move-result-object v9

    if-eqz v5, :cond_7

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    iget-object v10, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v11, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_d

    iget-object v11, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v4, v11, :cond_a

    goto :goto_6

    :cond_a
    iget-object v11, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v12, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LRb/d;

    if-ne v5, v11, :cond_b

    if-ne v9, v12, :cond_b

    monitor-exit v10

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_b
    iget-object v11, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v11, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v5, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_c

    :try_start_4
    invoke-virtual {v7, v6}, Lv9/c;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_c
    :goto_4
    if-eqz v8, :cond_e

    move v4, v1

    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->C(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    :try_start_5
    monitor-exit v10

    goto :goto_3

    :goto_7
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_8
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lv9/d;->e0()V

    return v2

    :goto_a
    invoke-virtual {p0}, Lv9/d;->e0()V

    throw v0
.end method

.method public final e(Lv9/e;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "batch",
            "visible"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lv9/d;->f(Lv9/e;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e0()V
    .locals 2

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lv9/d;->p:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lv9/d;->p:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, Lv9/d;->p:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lv9/d;->q:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lv9/d;->u()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Lv9/e;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "batch",
            "lodLevel",
            "visible"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p3}, Lv9/c;->g(Lv9/e;Z)V

    :cond_1
    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v1, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->m(Lv9/e;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lv9/d;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv9/d;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->enqueueRenderState(Lv9/d;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->z()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p0, v0}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public final g0(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lodLevel",
            "force"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p2, :cond_1

    iget p2, p0, Lv9/d;->N:I

    if-eq p2, p1, :cond_2

    :cond_1
    iput p1, p0, Lv9/d;->N:I

    iget p1, p0, Lv9/d;->O:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv9/d;->O:I

    :cond_2
    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lv9/d;->C:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lv9/d;->J:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "lodCount"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodLevels()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    if-le p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasLodReferencePosition()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v2

    iget v3, p0, Lv9/d;->D:F

    add-float/2addr v2, v3

    iget v3, p0, Lv9/d;->F:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v5

    iget v6, p0, Lv9/d;->E:F

    add-float/2addr v5, v6

    iget v6, p0, Lv9/d;->F:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferenceX()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferenceY()F

    move-result v2

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferenceZ()F

    move-result v3

    sub-float/2addr v3, v5

    mul-float/2addr v4, v4

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    mul-float/2addr v3, v3

    add-float/2addr v4, v3

    iget v2, p0, Lv9/d;->F:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getWidth()F

    move-result v3

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasLodRenderDistance()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodRenderDistance()F

    move-result p1

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr p1, v5

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_1
    cmpg-float p1, v3, v2

    if-gtz p1, :cond_2

    const p1, 0x3a83126f    # 0.001f

    add-float v3, v2, p1

    :cond_2
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    cmpg-float p1, v3, v2

    if-gtz p1, :cond_3

    return v1

    :cond_3
    cmpg-float p1, v4, v2

    if-gtz p1, :cond_4

    return v1

    :cond_4
    cmpl-float p1, v4, v3

    if-ltz p1, :cond_5

    sub-int/2addr p2, v0

    return p2

    :cond_5
    sub-float/2addr v4, v2

    sub-float/2addr v3, v2

    div-float/2addr v4, v3

    sub-int/2addr p2, v0

    int-to-float p1, p2

    mul-float/2addr v4, p1

    invoke-static {v4}, LNc/b;->w0(F)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v0

    invoke-static {v0, p1, p2}, LNc/b;->F(III)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv9/d;->h:Ljava/util/List;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv9/d;->A:Z

    invoke-virtual {p0, p1}, Lv9/d;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i0(Lv9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    iput-object p1, p0, Lv9/d;->T:Lv9/d;

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lv9/d;->y(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->z()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public final j0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lv9/d;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv9/d;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v1, p0, Lv9/d;->p:I

    if-lez v1, :cond_1

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lv9/d;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lv9/d;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lv9/d;->h:Ljava/util/List;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object p1, p0, Lv9/d;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    iget-object p1, p0, Lv9/d;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lv9/d;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    return p1

    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lv9/d;->g()V

    return-void
.end method

.method public final k0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->shouldBuildCollision()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lv9/d;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lv9/d;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z

    :cond_3
    iget-object v0, p0, Lv9/d;->t:Lv9/a;

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lv9/d;->J:Z

    :cond_4
    iget-boolean v0, p0, Lv9/d;->J:Z

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lv9/d;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lv9/d;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;)V

    iput-boolean v3, p0, Lv9/d;->J:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lv9/d;->e0()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lv9/d;->e0()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lv9/d$d;

    invoke-direct {v0, p0}, Lv9/d$d;-><init>(Lv9/d;)V

    const/16 v1, 0xf

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    iget-boolean v0, p0, Lv9/d;->r:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lv9/d;->t()V

    return-void

    :cond_6
    iget-object v1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lv9/d;->t:Lv9/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->removeCollider(Lv9/a;)V

    iput-object v2, p0, Lv9/d;->t:Lv9/a;

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v0, p0, Lv9/d;->u:Lv9/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->addCollider(Lv9/a;)V

    iget-object p1, p0, Lv9/d;->u:Lv9/a;

    iput-object p1, p0, Lv9/d;->t:Lv9/a;

    iput-object v2, p0, Lv9/d;->u:Lv9/a;

    iget-object p1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v4, 0x0

    iput v4, p0, Lv9/d;->F:F

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->L8:Lz9/h;

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lv9/d;->n0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FFF)V

    return-void
.end method

.method public final l0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;Ljava/util/List;IZ)V
    .locals 13
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
            "terrain",
            "resolutions",
            "chunkSurface",
            "layerMapList",
            "lodLevel",
            "allowSceneAttach"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            "Lz9/h;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;IZ)V"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p4

    move/from16 v0, p5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLayerStructureRevision()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_8

    iget-object v3, v9, Lv9/d;->P:[I

    array-length v4, v3

    if-ge v0, v4, :cond_8

    aget v3, v3, v0

    if-eq v3, v1, :cond_8

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerDataFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;

    move-result-object v5

    invoke-virtual {p0, v11, v4}, Lv9/d;->y(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->u(Lx9/a;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v11, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    const/4 v6, 0x0

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0, v11, v4, v5}, Lv9/d;->d(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;Lx9/a;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    move v5, v2

    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, v9, Lv9/d;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, v9, Lv9/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v2

    :goto_4
    iget-object v4, v9, Lv9/d;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, v9, Lv9/d;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-interface {v11, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-object v3, v9, Lv9/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_7
    iget-object v3, v9, Lv9/d;->P:[I

    aput v1, v3, v0

    :cond_8
    if-eqz p3, :cond_9

    move v12, v2

    :goto_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_9

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    iget-object v4, v9, Lv9/d;->H:[F

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v5, p0

    move v6, v12

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->B(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;ILjava/util/List;Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FFLv9/e;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth",
            "visibilityBatch"
        }
    .end annotation

    iget-boolean v0, p0, Lv9/d;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v0

    iput-object v0, p0, Lv9/d;->U:Lz9/e;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()Lz9/e;

    move-result-object v0

    iput-object v0, p0, Lv9/d;->V:Lz9/e;

    iget v7, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lv9/d;->n0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FFF)V

    invoke-virtual {p0, p1}, Lv9/d;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-boolean p3, p0, Lv9/d;->R:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lv9/d;->Q:Z

    if-nez p3, :cond_1

    iput-boolean v1, p0, Lv9/d;->R:Z

    :cond_1
    iget-boolean p3, p0, Lv9/d;->K:Z

    if-eqz p3, :cond_4

    iput-boolean v1, p0, Lv9/d;->K:Z

    move p3, v1

    :goto_0
    iget-object p4, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_4

    iget-object p4, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lv9/c;

    if-eqz p4, :cond_2

    iget-object v0, p0, Lv9/d;->H:[F

    invoke-virtual {p4, v0}, Lv9/c;->h([F)V

    :cond_2
    iget-object p4, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    move v0, v1

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    iget-object v3, p0, Lv9/d;->H:[F

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->n([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    if-nez p4, :cond_5

    iget-boolean p1, p0, Lv9/d;->Q:Z

    xor-int/2addr p1, p3

    return p1

    :cond_5
    iget-boolean v0, p0, Lv9/d;->Q:Z

    if-eqz v0, :cond_8

    iget-boolean p2, p0, Lv9/d;->R:Z

    if-nez p2, :cond_6

    invoke-virtual {p0, p5, v1}, Lv9/d;->e(Lv9/e;Z)V

    iput-boolean p3, p0, Lv9/d;->R:Z

    return p3

    :cond_6
    iput-boolean v1, p0, Lv9/d;->R:Z

    invoke-virtual {p0, p1}, Lv9/d;->j0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z

    move-result p1

    if-nez p1, :cond_7

    iput-boolean p3, p0, Lv9/d;->R:Z

    return p3

    :cond_7
    const/4 p1, -0x1

    iput p1, p0, Lv9/d;->L:I

    iput p1, p0, Lv9/d;->M:I

    iput p1, p0, Lv9/d;->N:I

    return v1

    :cond_8
    iget v0, p0, Lv9/d;->M:I

    if-ltz v0, :cond_14

    if-lt v0, p4, :cond_9

    goto/16 :goto_4

    :cond_9
    iget v2, p0, Lv9/d;->L:I

    if-ltz v2, :cond_a

    iget v2, p0, Lv9/d;->L:I

    if-lt v2, p4, :cond_b

    :cond_a
    invoke-virtual {p0}, Lv9/d;->x()I

    move-result v2

    iput v2, p0, Lv9/d;->L:I

    :cond_b
    iget v2, p0, Lv9/d;->L:I

    if-eq v2, v0, :cond_d

    invoke-virtual {p0, v0}, Lv9/d;->T(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, p1, p2, v0, v1}, Lv9/d;->o0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;IZ)V

    invoke-virtual {p0, v0}, Lv9/d;->S(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lv9/d;->L:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lv9/d;->o0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;IZ)V

    iput v0, p0, Lv9/d;->L:I

    if-ltz v2, :cond_c

    if-ge v2, p4, :cond_c

    invoke-virtual {p0, p5, v2, v1}, Lv9/d;->f(Lv9/e;IZ)V

    :cond_c
    iget v0, p0, Lv9/d;->L:I

    invoke-virtual {p0, p5, v0, p3}, Lv9/d;->f(Lv9/e;IZ)V

    move v0, p3

    goto :goto_2

    :cond_d
    move v0, v1

    :goto_2
    iget v2, p0, Lv9/d;->L:I

    if-ltz v2, :cond_13

    iget v2, p0, Lv9/d;->L:I

    if-lt v2, p4, :cond_e

    goto :goto_3

    :cond_e
    if-nez v0, :cond_f

    iget p4, p0, Lv9/d;->L:I

    invoke-virtual {p0, p1, p2, p4, v1}, Lv9/d;->o0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;IZ)V

    iget p4, p0, Lv9/d;->L:I

    invoke-virtual {p0, p4}, Lv9/d;->S(I)Z

    move-result p4

    if-eqz p4, :cond_f

    iget p4, p0, Lv9/d;->L:I

    invoke-virtual {p0, p1, p2, p4, p3}, Lv9/d;->o0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;IZ)V

    iget p1, p0, Lv9/d;->L:I

    invoke-virtual {p0, p5, p1, p3}, Lv9/d;->f(Lv9/e;IZ)V

    :cond_f
    iget-boolean p1, p0, Lv9/d;->B:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lv9/d;->d0()Z

    move-result p1

    if-eqz p1, :cond_10

    iput-boolean v1, p0, Lv9/d;->B:Z

    :cond_10
    iget p1, p0, Lv9/d;->L:I

    invoke-virtual {p0, p1}, Lv9/d;->S(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lv9/d;->B:Z

    if-eqz p1, :cond_12

    :cond_11
    move v1, p3

    :cond_12
    return v1

    :cond_13
    :goto_3
    return p3

    :cond_14
    :goto_4
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv9/d;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    iget v0, p0, Lv9/d;->M:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lv9/d;->N:I

    if-eq v0, v1, :cond_1

    :cond_0
    iput v1, p0, Lv9/d;->M:I

    iput v1, p0, Lv9/d;->N:I

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lv9/d;->U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z

    move-result v0

    iget-boolean v2, p0, Lv9/d;->Q:Z

    if-eq v2, v0, :cond_3

    iput-boolean v0, p0, Lv9/d;->Q:Z

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_3
    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, v1}, Lv9/d;->h0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)I

    move-result v0

    iget v1, p0, Lv9/d;->M:I

    if-eq v1, v0, :cond_5

    iput v0, p0, Lv9/d;->M:I

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lv9/d;->g0(IZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "colliderSurface"
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->d()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1ffffe

    if-le v0, v1, :cond_1

    invoke-static {}, LJ4/d;->E1()V

    const-string p1, "Terrain collider have more than 2097150 triangles which is not supported"

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lv9/d;->r:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->c()I

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget p2, p0, Lv9/d;->F:F

    add-int/lit8 v0, v3, -0x1

    int-to-float v0, v0

    div-float/2addr p2, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;

    new-instance v5, Lcom/jme3/math/Vector3f;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    invoke-direct {v5, p2, p1, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 v6, 0x1

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;-><init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;Z)V

    iget-object p1, p0, Lv9/d;->I:Lcom/jme3/math/Transform;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object p1

    new-instance p2, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lv9/d;->D:F

    iget v2, p0, Lv9/d;->F:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    add-float/2addr v1, v4

    iget v4, p0, Lv9/d;->E:F

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object p2, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p2

    :try_start_0
    iget-boolean v1, p0, Lv9/d;->r:Z

    if-eqz v1, :cond_4

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lv9/a;

    invoke-direct {v1, v0, p1}, Lv9/a;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V

    iput-object v1, p0, Lv9/d;->u:Lv9/a;

    monitor-exit p2

    goto :goto_1

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public final n0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;FFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth",
            "terrainMaxHeight"
        }
    .end annotation

    iget v0, p0, Lv9/d;->F:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lv9/d;->G:F

    cmpl-float v0, v0, p5

    if-eqz v0, :cond_1

    :cond_0
    iput p4, p0, Lv9/d;->F:F

    iput p5, p0, Lv9/d;->G:F

    iget v0, p0, Lv9/d;->a:I

    int-to-float v0, v0

    iget p2, p2, Lz9/h;->a:I

    int-to-float v1, p2

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    iget v1, p0, Lv9/d;->b:I

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    mul-float/2addr v1, p3

    iput v0, p0, Lv9/d;->D:F

    iput v1, p0, Lv9/d;->E:F

    iget-object p2, p0, Lv9/d;->H:[F

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lv9/d;->H:[F

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p3, p0, Lv9/d;->H:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v1

    iget v2, p0, Lv9/d;->D:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v2

    iget v3, p0, Lv9/d;->E:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p3, v0, v1, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p3, p0, Lv9/d;->H:[F

    invoke-static {p3, p4, p5, p4}, LNc/c;->p([FFFF)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lv9/d;->I:Lcom/jme3/math/Transform;

    new-instance p3, Lcom/jme3/math/Vector3f;

    iget p4, p0, Lv9/d;->D:F

    iget p5, p0, Lv9/d;->E:F

    invoke-direct {p3, p4, v3, p5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p2, p3}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    iget-object p2, p0, Lv9/d;->I:Lcom/jme3/math/Transform;

    new-instance p3, Lcom/jme3/math/Vector3f;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p4, p4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p2, p3}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lv9/d;->K:Z

    iput-boolean p2, p0, Lv9/d;->J:Z

    invoke-virtual {p0, p1}, Lv9/d;->f0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object p1, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lv9/d;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lv9/d;->q:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0, v1}, Lv9/d;->q(I)I

    move-result v0

    iget-object v2, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    if-eqz v2, :cond_2

    iget v3, p0, Lv9/d;->w:I

    if-eq v3, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->a()V

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;-><init>(I)V

    iput-object v2, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    iput v0, p0, Lv9/d;->w:I

    goto :goto_0

    :goto_2
    iget v0, p0, Lv9/d;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv9/d;->p:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean p1, p0, Lv9/d;->r:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lv9/d;->U:Lz9/e;

    if-nez p1, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {p1}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget-object p1, p0, Lv9/d;->V:Lz9/e;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    :goto_3
    move-object v5, p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lv9/d;->U:Lz9/e;

    invoke-virtual {p1}, Lz9/e;->g()I

    move-result v6

    iget v7, p0, Lv9/d;->a:I

    iget v8, p0, Lv9/d;->b:I

    iget p1, p0, Lv9/d;->c:I

    add-int/lit8 v9, p1, 0x1

    invoke-static {}, Lm/a;->a()Z

    move-result v10

    invoke-virtual/range {v3 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIZ)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v1, p0, Lv9/d;->C:Z

    monitor-exit v0

    goto :goto_5

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :goto_5
    invoke-virtual {p0}, Lv9/d;->e0()V

    return p1

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lv9/d;->e0()V

    return v1

    :goto_7
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0}, Lv9/d;->e0()V

    return v1

    :goto_8
    invoke-virtual {p0}, Lv9/d;->e0()V

    throw p1

    :cond_8
    :goto_9
    :try_start_5
    monitor-exit p1

    return v1

    :goto_a
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final o0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "lodLevel",
            "allowSceneAttach"
        }
    .end annotation

    invoke-virtual {p0}, Lv9/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p3, :cond_3

    :try_start_1
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    iget-object v2, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/c;

    iget-object v3, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/util/List;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v6, p0, Lv9/d;->H:[F

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v7, p0

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lv9/c;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;[FLv9/d;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v9

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lv9/d;->l0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/h;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;Ljava/util/List;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lv9/d;->e0()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Lv9/d;->e0()V

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lv9/d;->e0()V

    throw p1
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "lod"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    iget-object v2, v1, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Lv9/d;->r:Z

    const/4 v4, 0x0

    if-nez v3, :cond_a

    iget-boolean v3, v1, Lv9/d;->q:Z

    if-nez v3, :cond_a

    if-ltz v0, :cond_a

    iget-object v3, v1, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v1, v0}, Lv9/d;->q(I)I

    move-result v3

    iget-object v5, v1, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    iget-object v6, v1, Lv9/d;->g:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    if-eq v6, v3, :cond_3

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getSurfaceTopologyCache()Lz9/i;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lz9/i;->d(IZ)Lz9/i$b;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    invoke-direct {v6, v3, v8, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;-><init>(IZLz9/i$b;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v1, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v5, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lv9/d;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v3, v0, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v3, v0, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    :cond_3
    iget v3, v1, Lv9/d;->p:I

    add-int/2addr v3, v8

    iput v3, v1, Lv9/d;->p:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v2, v1, Lv9/d;->r:Z

    if-nez v2, :cond_9

    iget-object v2, v1, Lv9/d;->U:Lz9/e;

    if-nez v2, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v2}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    iget-object v2, v1, Lv9/d;->V:Lz9/e;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    :cond_5
    move-object v11, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :goto_1
    iget-object v2, v1, Lv9/d;->U:Lz9/e;

    invoke-virtual {v2}, Lz9/e;->g()I

    move-result v12

    iget v13, v1, Lv9/d;->a:I

    iget v14, v1, Lv9/d;->b:I

    iget v2, v1, Lv9/d;->c:I

    add-int/lit8 v15, v2, 0x1

    invoke-static {}, Lm/a;->a()Z

    move-result v16

    move-object v9, v5

    invoke-virtual/range {v9 .. v16}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->J(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIZ)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ltz v0, :cond_6

    :try_start_4
    iget-object v3, v1, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, v1, Lv9/d;->h:Ljava/util/List;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual/range {p0 .. p0}, Lv9/d;->e0()V

    return v4

    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_7
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->E()V

    iget-object v2, v1, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v3, v1, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, v1, Lv9/d;->h:Ljava/util/List;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_4
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual/range {p0 .. p0}, Lv9/d;->e0()V

    return v8

    :goto_5
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_9
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lv9/d;->e0()V

    return v4

    :goto_7
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lv9/d;->e0()V

    return v4

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lv9/d;->e0()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_b
    invoke-virtual {v5}, Lz9/i$b;->x()V

    throw v0

    :cond_a
    :goto_9
    monitor-exit v2

    return v4

    :goto_a
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public final q(I)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lodLevel"
        }
    .end annotation

    iget v0, p0, Lv9/d;->c:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-gt v3, p1, :cond_1

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v1, v4

    invoke-static {v1}, LNc/b;->w0(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x2

    invoke-static {v4, v1}, LNc/b;->N(II)I

    move-result v1

    if-lez v2, :cond_0

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, LNc/b;->N(II)I

    move-result v1

    :cond_0
    move v2, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv9/d;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv9/d;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v5, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    iget-object v3, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv9/c;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lv9/c;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lv9/d;->t:Lv9/a;

    if-eqz v2, :cond_4

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->removeCollider(Lv9/a;)V

    iput-object v0, p0, Lv9/d;->t:Lv9/a;

    :cond_4
    invoke-virtual {p0}, Lv9/d;->t()V

    iget-object p1, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    :try_start_0
    iput-object v0, p0, Lv9/d;->u:Lv9/a;

    iget-object v0, p0, Lv9/d;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "lodLevel"
        }
    .end annotation

    if-ltz p2, :cond_2

    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lv9/c;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1
    iget-object v0, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lv9/d;->q:Z

    iget v1, p0, Lv9/d;->p:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv9/d;->u()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lv9/d;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkCollisionSurface;

    iput v0, p0, Lv9/d;->w:I

    :cond_2
    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lv9/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lv9/d;->C:Z

    iget-object v1, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Lv9/d;->L:I

    iput-boolean v0, p0, Lv9/d;->q:Z

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lv9/c;->l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_0
    iget-object v2, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv9/d;->r:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lv9/d;->q:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lv9/d;->E(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->h:Ljava/util/List;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->i:Ljava/util/List;

    new-instance v5, Lv9/c;

    invoke-direct {v5}, Lv9/c;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->j:Ljava/util/List;

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->P:[I

    iget-object v5, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput v3, v2, v5

    iget-object v2, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lv9/d;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv9/c;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lv9/c;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_2
    iget-object v4, p0, Lv9/d;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v6, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lv9/d;->P:[I

    aput v3, v4, v2

    iget-object v4, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;->j()V

    :cond_4
    iget-object v4, p0, Lv9/d;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lv9/d;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lv9/d;->m:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lv9/d;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final x()I
    .locals 4

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lv9/d;->T(I)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final y(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layerMapList",
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;",
            ")",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Chunk/ChunkRenderableLayer;->v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;
    .locals 4

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lv9/d;->r:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lv9/d;->q:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lv9/d;->L:I

    if-ltz v1, :cond_2

    iget-object v3, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lv9/d;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/ChunkSurface;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
