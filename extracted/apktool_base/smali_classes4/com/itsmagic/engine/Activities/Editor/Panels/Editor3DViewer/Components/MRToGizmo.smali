.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# instance fields
.field public E:Ljava/lang/String;

.field public final F:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final G:Z

.field public final H:Ljava/lang/String;

.field public I:LJAVARuntime/GizmoObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Ljava/lang/String;)V
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
            "meshFile",
            "meshFileFromAssets",
            "drawInFront",
            "colorINT",
            "texture"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->E:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->F:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-boolean p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->G:Z

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->H:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p2, "@@ASSET@@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->E:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 3
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

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    if-nez p2, :cond_1

    new-instance p2, LJAVARuntime/GizmoObject;

    invoke-direct {p2}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->G:Z

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoElement;->setDrawInFront(Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->F:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->E:Ljava/lang/String;

    const-string v0, ".obj"

    invoke-static {p2, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->E:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->A1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->H:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    invoke-static {p2}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object p2

    invoke-virtual {p2}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p2

    invoke-virtual {v0, p2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    :cond_1
    const-class p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v1, p1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;->I:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
