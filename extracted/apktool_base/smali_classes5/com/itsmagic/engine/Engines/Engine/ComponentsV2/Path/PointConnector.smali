.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final K:Ljava/lang/String; = "PointConnector"

.field public static final L:Ljava/lang/Class;


# instance fields
.field public E:F

.field public F:F

.field public G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public H:LJAVARuntime/GizmoObject;

.field public I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

.field public J:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->L:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "PointConnector"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->E:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->F:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xf2

    const/16 v2, 0x5c

    const/16 v3, 0xbb

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;-><init>()V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PointConnector"

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

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PointConnector"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
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

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-static {}, LR8/f;->A()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    :try_start_0
    invoke-static {v1}, LR8/f;->z(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->isConnectedTo(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->a1()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    sget-object p2, LW7/b;->i:La8/a;

    iget-object v1, p2, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_3

    const-class v2, Lf9/a;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    iget-object p2, p2, La8/a;->a:La8/b;

    iget-object p2, p2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_7

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->MeshCurve:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    if-eqz p2, :cond_7

    :cond_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    if-nez p2, :cond_5

    new-instance p2, LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-static {v1}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v2

    invoke-direct {p2, v2}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->E:F

    invoke-virtual {p2, v2}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoElement;->setDrawInFront(Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v2

    invoke-virtual {p2, v2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    const/high16 v2, 0x42960000    # 75.0f

    invoke-virtual {p2, v2}, LJAVARuntime/GizmoElement;->setVisibleDistance(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p2, v2}, LJAVARuntime/GizmoElement;->setFadeOutRange(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoElement;->setAdditiveMode(Z)V

    :cond_5
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    invoke-virtual {p2, v1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->X(III)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0xf2

    const/16 v1, 0x5c

    const/16 v2, 0xbb

    invoke-virtual {p2, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->X(III)V

    :goto_2
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p2}, LJAVARuntime/GizmoTransform;->getPosition()LJAVARuntime/Vector3;

    move-result-object p2

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->H:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_7
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->J:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->J:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PointConnector;

    invoke-direct {v0, p0}, LJAVARuntime/PointConnector;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PointConnector;->J:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
