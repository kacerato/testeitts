.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b:J

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-vertex-deduplicator"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v5

    const p1, 0x358637bd    # 1.0E-6f

    invoke-static {v3, v4, v5, v6, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeCreate(JJF)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create native VertexDeduplicator"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Vertex must have vertices and triangles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "originalVertex can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCreate(JJF)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesPointer",
            "trianglesPointer",
            "epsilon"
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeFillOriginalIndexes(JI[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "newIndex",
            "outOriginalIndexes"
        }
    .end annotation
.end method

.method private static native nativeFillTriangles(J[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "outTriangles"
        }
    .end annotation
.end method

.method private static native nativeFillVertices(J[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "outVertices"
        }
    .end annotation
.end method

.method private static native nativeGetOriginalIndexesCount(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "newIndex"
        }
    .end annotation
.end method

.method private static native nativeGetTrianglesCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetVerticesCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method


# virtual methods
.method public a()V
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    throw v2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    goto :goto_1

    :catchall_2
    move-exception v2

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeDestroy(J)V

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    :cond_2
    return-void

    :goto_2
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_3

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeDestroy(J)V

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    :cond_3
    throw v2
.end method

.method public b(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeGetOriginalIndexesCount(JI)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-array v1, v0, [I

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeFillOriginalIndexes(JI[I)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeGetTrianglesCount(J)I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [I

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeFillTriangles(J[I)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>([I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native deduplicator returned no triangles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeGetVerticesCount(J)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeFillVertices(J[F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([F)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native deduplicator returned no vertices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public f()I
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->b:J

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/VertexDeduplicator;->nativeGetVerticesCount(J)I

    move-result v0

    return v0
.end method
