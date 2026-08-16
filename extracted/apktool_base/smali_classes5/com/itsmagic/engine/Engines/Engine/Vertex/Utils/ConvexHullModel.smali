.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-convex-hull"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->b:Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public static b(Lvhacd4/Vhacd4Hull;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hull"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lvhacd4/Vhacd4Hull;->clonePositions()[F

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    array-length v0, p0

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([F)V

    :try_start_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    div-int/lit8 v4, p0, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->nativeCountHull(JI)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->f(J)I

    move-result p0

    invoke-static {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->g(J)I

    move-result v5

    if-lez p0, :cond_3

    if-gtz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/2addr p0, v1

    invoke-direct {v9, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-static {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v5

    invoke-static {v9, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v7

    invoke-static {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v10

    move-wide v2, v5

    move-wide v5, v7

    move-wide v7, v10

    invoke-static/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->nativeBuildHull(JIJJ)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-object p0

    :goto_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    throw p0

    :cond_4
    :goto_2
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    return-object p0
.end method

.method public static f(J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packed"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static g(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packed"
        }
    .end annotation

    long-to-int p0, p0

    return p0
.end method

.method private static native nativeBuildHull(JIJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "allocationPointer",
            "numVertices",
            "outVerticesPointer",
            "outIndicesPointer"
        }
    .end annotation
.end method

.method private static native nativeCountHull(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allocationPointer",
            "numVertices"
        }
    .end annotation
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    div-int/lit8 v6, v2, 0x3

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v7

    invoke-static {v7, v8, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->nativeCountHull(JI)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->f(J)I

    move-result v2

    invoke-static {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->g(J)I

    move-result v7

    if-lez v2, :cond_2

    if-gtz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/2addr v2, v3

    invoke-direct {p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v1, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-static {v0, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v2

    invoke-static {p1, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v7

    invoke-static {v1, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v9

    move-wide v4, v2

    invoke-static/range {v4 .. v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->nativeBuildHull(JIJJ)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->X(Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->X(Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "originalVertex.getVertices() == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->b:Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Utils/ConvexHullModel;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method
