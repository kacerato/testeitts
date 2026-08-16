.class public LJAVARuntime/GizmoPath;
.super LJAVARuntime/GizmoElement;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/GizmoPath$Line;,
        LJAVARuntime/GizmoPath$Entry;
    }
.end annotation


# instance fields
.field private final block:Ljava/lang/Object;

.field private transient color:LJAVARuntime/Color;

.field public transient createdEntries:I

.field private transient lastCalculatedPos:LJAVARuntime/Vector3;

.field private transient lastCalculatedRot:LJAVARuntime/Quaternion;

.field private transient lastCalculatedSca:LJAVARuntime/Vector3;

.field private transient matrix:[F

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJAVARuntime/GizmoPath$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private transient position:LJAVARuntime/Vector3;

.field public transient rotMatrix:[F

.field private transient rotation:LJAVARuntime/Quaternion;

.field private transient scale:LJAVARuntime/Vector3;

.field private volatile thickness:F

.field private transient userPointer:Ljava/lang/Object;

.field private transient vertex:LJAVARuntime/Vertex;

.field private transient wireFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LJAVARuntime/GizmoElement;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJAVARuntime/Vector3;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    const/4 v0, 0x0

    iput-object v0, p0, LJAVARuntime/GizmoPath;->userPointer:Ljava/lang/Object;

    sget v0, LOb/a$b;->c:I

    iput v0, p0, LJAVARuntime/GizmoPath;->wireFrameWidth:I

    const/4 v0, 0x0

    iput v0, p0, LJAVARuntime/GizmoPath;->thickness:F

    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->lastCalculatedPos:LJAVARuntime/Vector3;

    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->lastCalculatedRot:LJAVARuntime/Quaternion;

    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->lastCalculatedSca:LJAVARuntime/Vector3;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/GizmoPath;)LJAVARuntime/Vector3;
    .locals 0

    iget-object p0, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    return-object p0
.end method


# virtual methods
.method public addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    new-instance v2, LJAVARuntime/GizmoPath$Line;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p2}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object p2

    invoke-direct {v2, p0, p1, p2}, LJAVARuntime/GizmoPath$Line;-><init>(LJAVARuntime/GizmoPath;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addLineUnsafe(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    new-instance v1, LJAVARuntime/GizmoPath$Line;

    invoke-direct {v1, p0, p1, p2}, LJAVARuntime/GizmoPath$Line;-><init>(LJAVARuntime/GizmoPath;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPath(Ljava/util/List;)LJAVARuntime/GizmoPath;
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;)",
            "LJAVARuntime/GizmoPath;"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v4, LJAVARuntime/Vector3;

    iget v5, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, LJAVARuntime/Vector3;-><init>(FFF)V

    new-instance v2, LJAVARuntime/Vector3;

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v2, v5, v6, v3}, LJAVARuntime/Vector3;-><init>(FFF)V

    invoke-virtual {p0, v4, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public apply()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, LJAVARuntime/GizmoPath;->createdEntries:I

    invoke-virtual {p0}, LJAVARuntime/GizmoPath;->getVertex()LJAVARuntime/Vertex;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, LJAVARuntime/GizmoPath;->createdEntries:I

    iget-object v1, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    iget-object v0, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getColor()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->color:LJAVARuntime/Color;

    return-object v0
.end method

.method public getMatrix()[F
    .locals 6
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/GizmoPath;->lastCalculatedPos:LJAVARuntime/Vector3;

    iget-object v2, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->equals(LJAVARuntime/Vector3;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LJAVARuntime/GizmoPath;->lastCalculatedSca:LJAVARuntime/Vector3;

    iget-object v4, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v1, v4}, LJAVARuntime/Vector3;->equals(LJAVARuntime/Vector3;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LJAVARuntime/GizmoPath;->lastCalculatedRot:LJAVARuntime/Quaternion;

    iget-object v4, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    invoke-virtual {v1, v4}, LJAVARuntime/Quaternion;->equals(LJAVARuntime/Quaternion;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, LJAVARuntime/GizmoPath;->lastCalculatedPos:LJAVARuntime/Vector3;

    iget-object v5, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    invoke-virtual {v4, v5}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    iget-object v4, p0, LJAVARuntime/GizmoPath;->lastCalculatedRot:LJAVARuntime/Quaternion;

    iget-object v5, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    invoke-virtual {v4, v5}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    iget-object v4, p0, LJAVARuntime/GizmoPath;->lastCalculatedSca:LJAVARuntime/Vector3;

    iget-object v5, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v4, v5}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    iget-object v4, p0, LJAVARuntime/GizmoPath;->matrix:[F

    const/16 v5, 0x10

    if-nez v4, :cond_1

    new-array v1, v5, [F

    iput-object v1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    new-array v1, v5, [F

    iput-object v1, p0, LJAVARuntime/GizmoPath;->rotMatrix:[F

    iget-object v1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    iget-object v2, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getX()F

    move-result v2

    iget-object v4, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    invoke-virtual {v4}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    iget-object v5, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    invoke-virtual {v5}, LJAVARuntime/Vector3;->getZ()F

    move-result v5

    invoke-static {v1, v3, v2, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    iget-object v2, p0, LJAVARuntime/GizmoPath;->rotMatrix:[F

    iget-object v3, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    iget-object v3, v3, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v1, v2, v3}, LNc/c;->k([F[FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    iget-object v2, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    iget-object v2, v2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1, v2}, LNc/c;->q([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, LJAVARuntime/GizmoPath;->rotMatrix:[F

    :goto_2
    iget-object v1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPosition()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    return-object v0
.end method

.method public getRenderMode()LJAVARuntime/GizmoElement$RenderMode;
    .locals 2

    iget v0, p0, LJAVARuntime/GizmoPath;->thickness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    goto :goto_0

    :cond_0
    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    :goto_0
    return-object v0
.end method

.method public getRotation()LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    return-object v0
.end method

.method public getScale()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    return-object v0
.end method

.method public getThickness()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget v0, p0, LJAVARuntime/GizmoPath;->thickness:F

    return v0
.end method

.method public getUserPointer()Ljava/lang/Object;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoPath;->userPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 9

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LJAVARuntime/GizmoPath;->thickness:F

    iget-object v2, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    if-eqz v2, :cond_0

    iget v2, p0, LJAVARuntime/GizmoPath;->createdEntries:I

    iget-object v3, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v2, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    if-eqz v2, :cond_1

    iget-object v2, v2, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z()V

    :cond_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v3

    iput-object v3, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    iget-object v6, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJAVARuntime/GizmoPath$Entry;

    invoke-virtual {v6, v1}, LJAVARuntime/GizmoPath$Entry;->verticesCount(F)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    move v6, v4

    :goto_2
    iget-object v7, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    iget-object v7, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJAVARuntime/GizmoPath$Entry;

    invoke-virtual {v7, v1}, LJAVARuntime/GizmoPath$Entry;->indicesCount(F)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-lez v5, :cond_8

    if-gtz v6, :cond_4

    goto :goto_5

    :cond_4
    new-instance v4, LJAVARuntime/NativeFloatBuffer;

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, LJAVARuntime/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v4, v3}, LJAVARuntime/NativeFloatBuffer;->setPosition(I)V

    move v5, v3

    move v7, v5

    :goto_3
    iget-object v8, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    iget-object v8, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJAVARuntime/GizmoPath$Entry;

    invoke-virtual {v8, v4, v7, v1}, LJAVARuntime/GizmoPath$Entry;->insertVertices(LJAVARuntime/NativeFloatBuffer;IF)V

    invoke-virtual {v8, v1}, LJAVARuntime/GizmoPath$Entry;->verticesCount(F)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-instance v5, LJAVARuntime/NativeIntBuffer;

    invoke-direct {v5, v6}, LJAVARuntime/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v5, v3}, LJAVARuntime/NativeIntBuffer;->setPosition(I)V

    move v6, v3

    :goto_4
    iget-object v7, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    iget-object v7, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJAVARuntime/GizmoPath$Entry;

    invoke-virtual {v7, v5, v6, v1}, LJAVARuntime/GizmoPath$Entry;->insertIndices(LJAVARuntime/NativeIntBuffer;IF)V

    invoke-virtual {v7, v1}, LJAVARuntime/GizmoPath$Entry;->indicesCount(F)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-object v1, v4, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v1, v5, LJAVARuntime/NativeIntBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget-object v1, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, LJAVARuntime/GizmoPath;->createdEntries:I

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_7
    iget-object v1, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    monitor-exit v0

    return-object v1

    :cond_8
    :goto_5
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    iput-object v1, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    iget-object v1, p0, LJAVARuntime/GizmoPath;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, LJAVARuntime/GizmoPath;->createdEntries:I

    iget-object v1, p0, LJAVARuntime/GizmoPath;->vertex:LJAVARuntime/Vertex;

    monitor-exit v0

    return-object v1

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWireFrameWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget v0, p0, LJAVARuntime/GizmoPath;->wireFrameWidth:I

    return v0
.end method

.method public isDeepDestroyVertexAfterCacheInvalidation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDualFaceRender()Z
    .locals 2

    iget v0, p0, LJAVARuntime/GizmoPath;->thickness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColor(LJAVARuntime/Color;)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoPath;->color:LJAVARuntime/Color;

    return-void
.end method

.method public setMatrix([F)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "matrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoPath;->matrix:[F

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1, p2, p3}, LJAVARuntime/Vector3;->set(FFF)V

    return-void
.end method

.method public setPosition(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, LJAVARuntime/GizmoPath;->position:LJAVARuntime/Vector3;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "position can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    iget-object v0, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public setRotation(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    iget-object v0, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->t0(FFFF)V

    return-void
.end method

.method public setRotation(LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, LJAVARuntime/GizmoPath;->rotation:LJAVARuntime/Quaternion;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1, p2, p3}, LJAVARuntime/Vector3;->set(FFF)V

    return-void
.end method

.method public setScale(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, LJAVARuntime/GizmoPath;->scale:LJAVARuntime/Vector3;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scale can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThickness(F)V
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "thickness"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    iget-object v0, p0, LJAVARuntime/GizmoPath;->block:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LJAVARuntime/GizmoPath;->thickness:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, LJAVARuntime/GizmoPath;->createdEntries:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iput p1, p0, LJAVARuntime/GizmoPath;->thickness:F

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserPointer(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "userPointer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoPath;->userPointer:Ljava/lang/Object;

    return-void
.end method

.method public setWireFrameWidth(I)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "wireFrameWidth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wireFrameWidth"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/GizmoPath;->wireFrameWidth:I

    return-void
.end method
