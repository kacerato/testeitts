.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ly9/a;


# static fields
.field public static final L:Ljava/lang/String; = "RoadPoint"

.field public static final M:Ljava/lang/Class;


# instance fields
.field public E:F

.field public F:F

.field public G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public H:LJAVARuntime/GizmoObject;

.field public I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;

.field public J:F

.field public K:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->M:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "RoadPoint"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->E:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->F:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x5b

    const/16 v2, 0x34

    const/16 v3, 0xeb

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->G:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->J:F

    return-void
.end method


# virtual methods
.method public calculateRoadPointPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Road:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->T1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    return-object v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;-><init>()V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROAD_POINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

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

    const-string v0, "RoadPoint"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->RoadPoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x0

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

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->F:F

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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;)V

    invoke-direct {p1, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;-><init>(LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;)V

    invoke-interface {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;)V

    invoke-static {p1}, LK8/a;->J(Lob/b;)V

    :cond_2
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

    return-void
.end method

.method public setRoad(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "road"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->I:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->K:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->K:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/RoadPoint;

    invoke-direct {v0, p0}, LJAVARuntime/RoadPoint;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/RoadPoint;->K:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
