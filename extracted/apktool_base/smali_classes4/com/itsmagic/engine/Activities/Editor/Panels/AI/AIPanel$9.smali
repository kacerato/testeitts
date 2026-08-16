.class Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->G1(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public E:F

.field public F:F

.field public G:F

.field public final synthetic H:LJAVARuntime/GizmoObject;

.field public final synthetic I:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;

.field public final synthetic J:Ljava/lang/String;

.field public final synthetic K:Ljava/lang/String;

.field public final synthetic L:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Ljava/lang/String;LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "serializedComponentType",
            "val$gizmoObject",
            "val$progress3DDrawer",
            "val$taskTag",
            "val$prompt"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->L:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->H:LJAVARuntime/GizmoObject;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->J:Ljava/lang/String;

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->K:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->E:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->F:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->G:F

    return-void
.end method


# virtual methods
.method public parallelUpdate()V
    .locals 6

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->H:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->H:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->G:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->F:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, LK8/d;->d()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {v0, v1, v3}, LNc/b;->z(FFF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->G:F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3f600000    # 0.875f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;->b(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->E:F

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_0

    invoke-static {}, LK8/d;->d()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->E:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iput v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->E:F

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;->J:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->f(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$n;)V

    :cond_0
    return-void
.end method
