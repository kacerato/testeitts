.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final H:Ljava/lang/String; = "CubeGizmoRenderer"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public final E:[F

.field public transient F:LJAVARuntime/GizmoObject;

.field public final G:Lib/h;

.field public color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public wireframe:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "CubeGizmoRenderer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->E:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->G:Lib/h;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)[F
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->E:[F

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->syncCubeGizmoStyle()V

    return-void
.end method

.method private bindTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->G:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->G:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_0
    return-void
.end method

.method private ensureCubeGizmo()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LJAVARuntime/GizmoObject;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    if-eqz v1, :cond_3

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    goto :goto_3

    :cond_3
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    :goto_3
    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setWireFrameWidth(I)V

    return-void
.end method

.method private syncCubeGizmoStyle()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    if-eqz v1, :cond_1

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    goto :goto_0

    :cond_1
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    :goto_0
    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    return-void
.end method

.method private syncRenderMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->E:[F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    return-void
.end method

.method private unbindTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->G:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->wireframe:Z

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "CubeGizmoRenderer"

    return-object v0
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

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)V

    const-string v3, "Wireframe"

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;)V

    const-string v3, "Color"

    sget-object v4, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "CubeGizmoRenderer"

    return-object v0
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->bindTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->syncRenderMatrix()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->unbindTransformListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->syncRenderMatrix()V

    :cond_0
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->ensureCubeGizmo()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->syncCubeGizmoStyle()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->E:[F

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoTransform;->setMatrix([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/GizmoRenderers/CubeGizmoRenderer;->F:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
