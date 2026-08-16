.class public LX4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:F = 3.0f

.field public static final g:F = 4.0E-4f

.field public static final h:F = 0.001f

.field public static final i:F = 0.006f


# instance fields
.field public a:Lub/n;

.field public b:LX4/a;

.field public c:LJAVARuntime/GizmoObject;

.field public d:F

.field public e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;LX4/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paintColor",
            "accumulator",
            "editorCamera",
            "gameObject",
            "editor3DViewer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p3, -0x34e76981    # -9999999.0f

    iput p3, p0, LX4/b;->d:F

    iput-object p1, p0, LX4/b;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 p4, 0x0

    iput-boolean p4, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    new-instance p5, Lub/n;

    const/16 v0, 0x80

    invoke-direct {p5, v0, v0, p1}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p5, p0, LX4/b;->a:Lub/n;

    iput-object p2, p0, LX4/b;->b:LX4/a;

    new-instance p1, LJAVARuntime/GizmoObject;

    invoke-direct {p1}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-static {p4}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object p2

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    iget-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    const p2, 0x3a83126f    # 0.001f

    invoke-virtual {p1, p2, p2, p2}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p3}, LJAVARuntime/GizmoElement;->setDrawInFront(Z)V

    iget-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p4}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    iget-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p3}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    return-void
.end method

.method public static a(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angle1",
            "angle2"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->K1(F)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p1}, LNc/b;->K1(F)D

    move-result-wide v0

    double-to-float p1, v0

    sub-float/2addr p1, p0

    :goto_0
    const p0, 0x40490fdb    # (float)Math.PI

    cmpl-float p0, p1, p0

    const v0, 0x40c90fdb

    if-lez p0, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    const p0, -0x3fb6f025

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    add-float/2addr p1, v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, LNc/b;->J1(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisTransform"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M0()F

    move-result v0

    invoke-static {v0}, LIc/A;->b(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M0()F

    move-result p1

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    move v0, p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_1

    cmpg-float p1, v0, v1

    if-gtz p1, :cond_2

    :cond_1
    const v0, 0x38d1b717    # 1.0E-4f

    :cond_2
    return v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "quaternion",
            "lookDirection"
        }
    .end annotation

    iget-object p2, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorCamera",
            "axisTransform",
            "editor3DViewer"
        }
    .end annotation

    iget-object p1, p0, LX4/b;->b:LX4/a;

    invoke-virtual {p1}, LX4/a;->d()F

    move-result p1

    iget p3, p0, LX4/b;->d:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_7

    iget-object p1, p0, LX4/b;->b:LX4/a;

    invoke-virtual {p1}, LX4/a;->d()F

    move-result p1

    iput p1, p0, LX4/b;->d:F

    iget-object p1, p0, LX4/b;->b:LX4/a;

    invoke-virtual {p1}, LX4/a;->c()F

    move-result p1

    const/high16 p3, 0x43340000    # 180.0f

    add-float/2addr p1, p3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, LX4/b;->a:Lub/n;

    invoke-virtual {v6}, Lub/p;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_6

    move v6, v4

    :goto_1
    iget-object v7, p0, LX4/b;->a:Lub/n;

    invoke-virtual {v7}, Lub/p;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_5

    int-to-float v7, v5

    iget-object v8, p0, LX4/b;->a:Lub/n;

    invoke-virtual {v8}, Lub/p;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    iget-object v9, p0, LX4/b;->a:Lub/n;

    invoke-virtual {v9}, Lub/p;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result v7

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_4

    iget v7, p0, LX4/b;->d:F

    const/high16 v8, 0x43b40000    # 360.0f

    cmpl-float v9, v7, v8

    if-gez v9, :cond_3

    const/high16 v9, -0x3c4c0000    # -360.0f

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_0

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v10

    invoke-static {v7, v10}, LNc/b;->t(FF)F

    move-result v7

    invoke-static {p1, v7}, LX4/b;->a(FF)F

    move-result v7

    add-float/2addr v7, p3

    iget v10, p0, LX4/b;->d:F

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_2

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_4

    goto :goto_2

    :cond_2
    add-float/2addr v10, v8

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_4

    :cond_3
    :goto_2
    iget-object v7, p0, LX4/b;->a:Lub/n;

    iget-object v8, p0, LX4/b;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v7, v5, v6, v8}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v7, p0, LX4/b;->a:Lub/n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->g0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v8}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, LX4/b;->a:Lub/n;

    invoke-virtual {p1}, Lub/n;->apply()V

    :cond_7
    invoke-virtual {p0, p2}, LX4/b;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    const/high16 p3, 0x40400000    # 3.0f

    mul-float/2addr p1, p3

    iget-object p3, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p2

    invoke-virtual {p3, p2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    const p2, 0x39d1b717    # 4.0E-4f

    mul-float/2addr p2, p1

    const p3, 0x3bc49ba6    # 0.006f

    const v0, 0x3a83126f    # 0.001f

    invoke-static {v0, p2, p3}, LNc/b;->E(FFF)F

    move-result p2

    iget-object p3, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-virtual {p3, p1, p1, p2}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    iget-object p2, p0, LX4/b;->a:Lub/n;

    invoke-virtual {p2}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p2

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    iget-object p1, p0, LX4/b;->c:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
