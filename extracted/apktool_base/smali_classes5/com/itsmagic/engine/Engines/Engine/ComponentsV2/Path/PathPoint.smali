.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Lf9/a;


# static fields
.field public static final U:Ljava/lang/String; = "PathPoint"

.field public static final V:Ljava/lang/Class;

.field public static final W:F = 2.5f

.field public static final X:F = 3.0f


# instance fields
.field public E:F

.field public F:F

.field public G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public H:LJAVARuntime/GizmoObject;

.field public I:Lf9/c;

.field public J:Z

.field public K:Z

.field public L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

.field public M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

.field public N:F

.field public O:I

.field public final P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public R:Z

.field public final S:Lib/a;

.field public T:LJAVARuntime/Component;

.field private connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->V:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "PathPoint"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->E:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->F:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x5b

    const/16 v2, 0x34

    const/16 v3, 0xeb

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->N:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->O:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->S:Lib/a;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->updatePathSnapshot(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method

.method private attachToParentCurve()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v1, v2, p0}, Lf9/c;->unregisterPathPoint(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->registerPathPoint(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->detachFromCurve()V

    :goto_0
    return-void
.end method

.method private detachFromCurve()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->unregisterPathTransformListener()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v1, p0}, Lf9/c;->unregisterPathPoint(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lf9/a;)V

    :cond_0
    return-void
.end method

.method private isMasterOfConnection(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V()I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private registerPathTransformListener()V
    .locals 11

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf9/c;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-interface {v0}, Lf9/c;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-interface {v0}, Lf9/c;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->S:Lib/a;

    const v9, 0x3c23d70a    # 0.01f

    const v10, 0x38d1b717    # 1.0E-4f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x38d1b717    # 1.0E-4f

    invoke-virtual/range {v2 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lib/a;ZZZFFF)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->R:Z

    return-void
.end method

.method private unregisterPathTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->S:Lib/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M2(Lib/a;)V

    :cond_0
    return-void
.end method

.method private updatePathSnapshot(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchyMatrix"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->R:Z

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {v3, v4, v5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, 0x38d1b717    # 1.0E-4f

    invoke-virtual {v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equalsApprox(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equalsApprox(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, p1

    :goto_2
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->R:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lf9/c;->scheduleReloadPoints()V

    :cond_4
    return-void

    :goto_3
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public calculateRoadPointForward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public calculateRoadPointPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PathPoint"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701f7

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a2

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1
.end method

.method public getNext()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    return-object v0
.end method

.method public getPrevious()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PathPoint"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PathPoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    return v0
.end method

.method public isConnectedTo(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isConnectedTo(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->K:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->J:Z

    return v0
.end method

.method public mousePick(Laa/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;

    move-result-object v2

    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->getConfig()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$h;

    move-result-object v3

    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->getCamera()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    move-result-object v4

    iget-object v5, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->c:[F

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$h;->a:Z

    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->getCamera()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    move-result-object v8

    const-class v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v9}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isPointVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->F:F

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-static {v7, v1, v4, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {v7, v6}, LNc/c;->q([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    if-eqz v3, :cond_0

    new-instance v1, LJAVARuntime/GizmoObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v4

    invoke-direct {v1, v4}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v4}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v1, v4}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v4}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v1, v4}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    new-instance v4, LJAVARuntime/Color;

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x0

    invoke-static {v6, v5}, LJAVARuntime/Random;->range(FF)F

    move-result v5

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v6, v8}, LJAVARuntime/Random;->range(FF)F

    move-result v8

    invoke-direct {v4, v5, v6, v8}, LJAVARuntime/Color;-><init>(FFF)V

    invoke-virtual {v1, v4}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v4, LJAVARuntime/Vertex$RayMode;->FirstHit:LJAVARuntime/Vertex$RayMode;

    const/4 v5, 0x1

    invoke-virtual {v2, v7, p1, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I2([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Laa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;

    invoke-direct {v0, p1, v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;-><init>(Laa/a;LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;)V

    :cond_1
    if-eqz v3, :cond_2

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;)V

    invoke-direct {p1, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;-><init>(LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;)V

    invoke-interface {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;)V

    invoke-static {p1}, LK8/a;->J(Lob/b;)V

    :cond_2
    return-void
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->attachToParentCurve()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->detachFromCurve()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onParentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->attachToParentCurve()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isGarbage()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->K:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->J:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto/16 :goto_6

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-interface {p1}, Lf9/c;->scheduleReloadPoints()V

    goto/16 :goto_6

    :cond_4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->O:I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->O:I

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-interface {v0}, Lf9/c;->scheduleReloadPoints()V

    :cond_5
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->isConnectedTo(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->isMasterOfConnection(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->J:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz p2, :cond_6

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->negateLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_1
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->K:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz p2, :cond_f

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_1
    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->negateLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_7
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_8
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catchall_3
    move-exception p1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_9
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->N:F

    invoke-static {}, LK8/d;->d()F

    move-result v1

    add-float/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->N:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_f

    sub-float/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->N:F

    invoke-static {}, LR8/f;->A()I

    move-result p2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_e

    :try_start_4
    invoke-static {v2}, LR8/f;->z(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;

    const/high16 v5, 0x40c80000    # 6.25f

    if-eqz v4, :cond_b

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_d

    if-eq v4, p1, :cond_d

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v4

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_d

    if-eqz v0, :cond_a

    cmpl-float v5, v1, v4

    if-lez v5, :cond_d

    :cond_a
    :goto_3
    move-object v0, v3

    move v1, v4

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_b
    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz v4, :cond_d

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->isFirst()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->isLast()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_d

    if-eq v4, p1, :cond_d

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_d

    if-eqz v0, :cond_a

    cmpl-float v5, v1, v4

    if-lez v5, :cond_d

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->connectorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-interface {p1}, Lf9/c;->scheduleReloadPoints()V

    :cond_f
    :goto_6
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->K:Z

    return-void
.end method

.method public setLast(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->J:Z

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->T:LJAVARuntime/Component;

    return-void
.end method

.method public setSequencials(Lf9/a;Lf9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previous",
            "next"
        }
    .end annotation

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    :goto_0
    instance-of p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    :goto_1
    return-void
.end method

.method public setUsageComponent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->unregisterPathTransformListener()V

    instance-of v0, p1, Lf9/c;

    if-eqz v0, :cond_0

    check-cast p1, Lf9/c;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->registerPathTransformListener()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->I:Lf9/c;

    :goto_0
    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->T:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PathPoint;

    invoke-direct {v0, p0}, LJAVARuntime/PathPoint;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->T:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
