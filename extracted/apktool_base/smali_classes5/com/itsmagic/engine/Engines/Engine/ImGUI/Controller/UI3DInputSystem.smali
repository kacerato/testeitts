.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;
.source "SourceFile"


# static fields
.field public static final H:Ljava/lang/String; = "UI3DInputSystem"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;",
            "Ljava/util/Map<",
            "Ltc/h;",
            "LV9/r;",
            ">;>;"
        }
    .end annotation
.end field

.field public final F:LMc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/a<",
            "LV9/r;",
            ">;"
        }
    .end annotation
.end field

.field public G:LJAVARuntime/Component;

.field private maxHitDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UI3DInputSystem"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->E:Ljava/util/Map;

    new-instance v0, LMc/a;

    invoke-direct {v0}, LMc/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->F:LMc/a;

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

    return p1
.end method

.method private filterEditor(Ltc/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltc/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltc/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->W(Ltc/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private touchForVertex(Ljava/util/Map;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[FLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchesInCamera",
            "camera",
            "vertex",
            "renderMatrix",
            "controller"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ltc/h;",
            "LV9/r;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            "[F",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lrc/a;->L()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV9/r;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->filterEditor(Ltc/h;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ltc/h;->k()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ltc/h;->q()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ltc/h;->t()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v2}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object v4

    new-instance v6, Laa/c;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

    invoke-direct {v6, v4, v7}, Laa/c;-><init>(Laa/d;F)V

    sget-object v4, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p3, p4, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H2([FLaa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->emitTouch()LV9/r;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p5, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->emitTouch(LV9/r;)V

    :goto_1
    invoke-virtual {v4}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v6

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v4

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    invoke-virtual {v3, v6, v4}, Ltc/h;->D(FF)V

    invoke-virtual {v3, v0}, Ltc/h;->K(Z)V

    invoke-virtual {v2}, Ltc/h;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Ltc/h;->v(Z)V

    invoke-virtual {v2}, Ltc/h;->q()Z

    move-result v4

    invoke-virtual {v3, v4}, Ltc/h;->F(Z)V

    invoke-virtual {v2}, Ltc/h;->t()Z

    move-result v2

    invoke-virtual {v3, v2}, Ltc/h;->J(Z)V

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Ltc/h;->v(Z)V

    invoke-virtual {v3, v0}, Ltc/h;->F(Z)V

    invoke-virtual {v3}, Ltc/h;->u()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v5}, Ltc/h;->J(Z)V

    invoke-virtual {v3, v5}, Ltc/h;->K(Z)V

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->F:LMc/a;

    invoke-virtual {v2, v3}, LMc/a;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;)V

    const-string v2, "Max hit distance"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "maxHitDistance"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxHitDistance()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UI3DInputSystem"

    return-object v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 8
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

    invoke-static {}, Lc8/b;->k()Z

    move-result p2

    if-eqz p2, :cond_5

    const-class p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->F:LMc/a;

    invoke-virtual {v2}, LMc/a;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->F:LMc/a;

    invoke-virtual {v2, v1}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV9/r;

    invoke-virtual {v2, v0}, Ltc/h;->J(Z)V

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->releaseTouch(Ltc/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->F:LMc/a;

    invoke-virtual {v1}, LMc/a;->clear()V

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    move v7, v0

    :goto_1
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    instance-of v0, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->E:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->E:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_2
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getRenderMatrix()[F

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->touchForVertex(Ljava/util/Map;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[FLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    goto :goto_3

    :cond_3
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->touchForVertex(Ljava/util/Map;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[FLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public setMaxHitDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxHitDistance"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->maxHitDistance:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->G:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->G:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UI3DInputSystem;

    invoke-direct {v0, p0}, LJAVARuntime/UI3DInputSystem;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DInputSystem;->G:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
