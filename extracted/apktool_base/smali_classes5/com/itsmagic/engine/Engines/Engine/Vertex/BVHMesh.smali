.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;
.super LK8/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:I = 0x6

.field public static final r:I = 0x4

.field public static final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public transient i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public transient j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public transient k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public transient l:I

.field public transient m:I

.field public transient n:Z

.field public transient o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

.field public final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vertex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->s:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    return-void
.end method

.method public static native nativeBuildBVH(JJJJJJJ)V
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
            "verticesPointer",
            "indicesPointer",
            "outNodeBoundsPointer",
            "outNodeMetaPointer",
            "outTriangleOrderPointer",
            "outAabbPointer",
            "outInfoPointer"
        }
    .end annotation
.end method

.method public static native nativeTraceRayBVH(JJJJJJIJFFFFFFFZIJJJ)V
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
            "verticesPointer",
            "indicesPointer",
            "uvsPointer",
            "nodeBoundsPointer",
            "nodeMetaPointer",
            "triangleOrderPointer",
            "nodeCount",
            "matrixPointer",
            "rayOriginX",
            "rayOriginY",
            "rayOriginZ",
            "rayDirX",
            "rayDirY",
            "rayDirZ",
            "maxDistance",
            "backfaceCulling",
            "rayMode",
            "aabbMinPointer",
            "aabbMaxPointer",
            "outBufferPointer"
        }
    .end annotation
.end method


# virtual methods
.method public A()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public C()Lvc/q;
    .locals 2

    new-instance v0, Lvc/q;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, v1}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object v0
.end method

.method public D()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public E()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v2, 0x0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final F()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public H(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "trianglesBuffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->F()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->F()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J(Lvc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->I(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-void
.end method

.method public K(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->F()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(Lvc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->K(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-void
.end method

.method public M(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->F()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public N(Lvc/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, Lvc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->M(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-void
.end method

.method public O(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->F()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P(Lvc/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->O(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-void
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->F()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S(Lvc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->Q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-void
.end method

.method public T(Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "rayMode"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->U(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public U(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->V(Laa/c;LJAVARuntime/Vertex$RayMode;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public V(Laa/c;LJAVARuntime/Vertex$RayMode;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Laa/a;
    .locals 0
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
            0x0
        }
        names = {
            "ray",
            "rayMode",
            "backfaceCulling",
            "vertice1",
            "vertice2",
            "vertice3",
            "normal",
            "tmp1",
            "tmp2",
            "tmp3",
            "tmp4"
        }
    .end annotation

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget p8, p1, Laa/c;->c:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p11

    const/4 p6, 0x0

    move-object p5, p0

    move-object p7, p1

    move p9, p3

    move-object p10, p2

    invoke-virtual/range {p5 .. p11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->f([FLaa/c;FZLJAVARuntime/Vertex$RayMode;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Laa/a;

    move-result-object p1

    monitor-exit p4

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "rayMode"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->a0([FLaa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public X(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b0([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "ray",
            "rayMode"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b0([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public Z(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b0([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public a0([FLaa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "ray",
            "rayMode"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b0([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public apply()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b0([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c0([FLaa/c;LJAVARuntime/Vertex$RayMode;ZZ)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public c0([FLaa/c;LJAVARuntime/Vertex$RayMode;ZZ)Laa/a;
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
            "matrix",
            "ray",
            "rayMode",
            "backfaceCulling",
            "noAABB"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    if-nez p5, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p5

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p5

    :cond_0
    :goto_0
    move-object v7, p5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    iget v4, p2, Laa/c;->c:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->f([FLaa/c;FZLJAVARuntime/Vertex$RayMode;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Laa/a;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 26

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->B()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->w()I

    move-result v4

    if-lez v2, :cond_10

    if-gtz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    mul-int/lit8 v2, v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v6, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v7, v2, 0x6

    invoke-direct {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v7, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v2, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v8, 0xa

    invoke-direct {v4, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    :try_start_0
    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v12

    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v9, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v14

    invoke-static {v6, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v16

    invoke-static {v7, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v18

    invoke-static {v2, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v20

    invoke-static {v4, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v22

    invoke-static {v8, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v24

    invoke-static/range {v12 .. v25}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->nativeBuildBVH(JJJJJJJ)V

    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v8, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v5

    if-lez v0, :cond_5

    if-gtz v5, :cond_2

    goto :goto_0

    :cond_2
    iput-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    iput v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_3
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_5
    :goto_0
    :try_start_1
    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_6
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_7
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_8
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_9
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_a
    return-void

    :goto_1
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_b
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_c
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_d
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_e
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_f
    throw v0

    :cond_10
    :goto_2
    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-void

    :cond_11
    :goto_3
    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-void
.end method

.method public final f([FLaa/c;FZLJAVARuntime/Vertex$RayMode;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Laa/a;
    .locals 41
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
            "matrix",
            "ray",
            "maxDistance",
            "backfaceCulling",
            "rayMode",
            "aabb"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v5, 0x10

    invoke-direct {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v8, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set([F)V

    invoke-static {v8, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v9

    move-wide/from16 v22, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v39, v4

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v4

    :goto_0
    move-object/from16 v39, v8

    goto/16 :goto_3

    :cond_1
    move-object v8, v4

    move-wide/from16 v22, v6

    :goto_1
    const/4 v0, 0x0

    const/4 v5, 0x3

    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    new-instance v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v11, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v12, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v14

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-virtual {v11, v0, v13, v14, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFF)V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v13

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    invoke-virtual {v12, v0, v9, v13, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFF)V

    invoke-static {v11, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v9

    invoke-static {v12, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v33, v9

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move-wide/from16 v35, v13

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v39, v11

    move-object v4, v12

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v39, v11

    goto/16 :goto_3

    :cond_2
    move-object/from16 v39, v4

    move-object/from16 v40, v39

    move-wide/from16 v33, v6

    move-wide/from16 v35, v33

    :goto_2
    :try_start_5
    iget-object v9, v2, Laa/c;->b:Laa/d;

    iget-object v10, v9, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v9, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v11, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v11

    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v13, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v13

    iget-object v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v15, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v15

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v17

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v19

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v24

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v26

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v27

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v28

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v29

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v30

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v31

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v32

    invoke-static {v3, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v37

    move-wide v9, v11

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v24

    move/from16 v21, v5

    move/from16 v24, v26

    move/from16 v25, v27

    move/from16 v26, v28

    move/from16 v27, v29

    move/from16 v28, v30

    move/from16 v29, v31

    move/from16 v30, p3

    move/from16 v31, p4

    invoke-static/range {v9 .. v38}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->nativeTraceRayBVH(JJJJJJIJFFFFFFFZIJJJ)V

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v5, 0x0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_7

    if-eqz v40, :cond_3

    invoke-virtual/range {v40 .. v40}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {v40 .. v40}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_3
    if-eqz v39, :cond_4

    invoke-virtual/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_5
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_6
    return-object v4

    :cond_7
    :try_start_6
    new-instance v0, Laa/a;

    invoke-direct {v0}, Laa/a;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v4}, Laa/a;->v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v4}, Laa/a;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v0, v4}, Laa/a;->setDistance(F)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v0, v4}, Laa/a;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v0, v4}, Laa/a;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v0, v4}, Laa/a;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v0, v4}, Laa/a;->C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object v2, v2, Laa/c;->b:Laa/d;

    iget-object v2, v2, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Laa/a;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v40, :cond_8

    invoke-virtual/range {v40 .. v40}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v40 .. v40}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_8
    if-eqz v39, :cond_9

    invoke-virtual/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_a
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_b
    return-object v0

    :catchall_4
    move-exception v0

    move-object/from16 v4, v40

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v3, v4

    move-object v8, v3

    goto/16 :goto_0

    :goto_3
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_c
    if-eqz v39, :cond_d

    invoke-virtual/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_f
    throw v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d()V

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->U(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_0
    throw v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public q()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public r()Lvc/q;
    .locals 2

    new-instance v0, Lvc/q;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, v1}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object v0
.end method

.method public s()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public u()Lvc/q;
    .locals 2

    new-instance v0, Lvc/q;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, v1}, Lvc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object v0
.end method

.method public v()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public x()Lvc/n;
    .locals 2

    new-instance v0, Lvc/n;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v0, v1}, Lvc/n;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object v0
.end method

.method public y()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public z()Lvc/p;
    .locals 2

    new-instance v0, Lvc/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, v1}, Lvc/p;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object v0
.end method
