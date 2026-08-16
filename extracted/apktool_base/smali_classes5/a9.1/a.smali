.class public La9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->getFalloffRadius()F

    move-result p1

    iput p1, p0, La9/a;->b:F

    new-instance v0, LGb/g;

    const/16 v1, 0x20

    const v2, 0x3c23d70a    # 0.01f

    invoke-direct {v0, p1, v1, v2}, LGb/g;-><init>(FIF)V

    invoke-virtual {v0}, LGb/g;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, La9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, La9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    invoke-virtual {p0, p1}, La9/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;)V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;LJAVARuntime/GizmoObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "emitter",
            "gizmoObject"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoTransform;->setScale(F)V

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v1

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget p2, p0, La9/a;->b:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->getFalloffRadius()F

    move-result v0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, La9/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;)V

    :cond_0
    return-void
.end method
