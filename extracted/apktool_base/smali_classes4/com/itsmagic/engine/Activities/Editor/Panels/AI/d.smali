.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lub/n;

.field public b:LJAVARuntime/GizmoObject;

.field public c:F

.field public d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public e:F

.field public f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paintColor",
            "textColor",
            "scale",
            "textScale"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, -0x34e76981    # -9999999.0f

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->c:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->e:F

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    new-instance v1, Lub/n;

    const/16 v2, 0x100

    invoke-direct {v1, v2, v2, p1}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    new-instance p1, LJAVARuntime/GizmoObject;

    invoke-direct {p1}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v0

    invoke-virtual {p1, v0}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p3, p3, p2}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p4}, LJAVARuntime/GizmoElement;->setDrawInFront(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p4}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

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
.method public b(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dislayAngle",
            "position"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->c:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->c:F

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-virtual {v5}, Lub/p;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_8

    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-virtual {v6}, Lub/p;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_7

    int-to-float v6, v4

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-virtual {v7}, Lub/p;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v5

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-virtual {v8}, Lub/p;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result v6

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const v7, 0x3ea3d70a    # 0.32f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_6

    const v7, 0x3ee66666    # 0.45f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->c:F

    const/high16 v7, 0x43b40000    # 360.0f

    cmpl-float v8, v6, v7

    if-gez v8, :cond_5

    const/high16 v8, -0x3c4c0000    # -360.0f

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_0

    goto :goto_2

    :cond_0
    cmpl-float v6, v6, v1

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v8

    invoke-static {v6, v8}, LNc/b;->t(FF)F

    move-result v6

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v8, v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a(FF)F

    move-result v6

    const/high16 v8, 0x43340000    # 180.0f

    add-float/2addr v6, v8

    iget v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->c:F

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_3

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_3
    add-float/2addr v8, v7

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->g0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-virtual {p1}, Lub/n;->apply()V

    :cond_9
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->a:Lub/n;

    invoke-virtual {p2}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p2

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, LJAVARuntime/GizmoTransform;->getRotation()LJAVARuntime/Quaternion;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z()V

    return-void
.end method
