.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;
.source "SourceFile"


# static fields
.field public static final J:Ljava/lang/String; = "UI3DCameraAimInputSystem"

.field public static final K:Ljava/lang/Class;


# instance fields
.field public final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            "LV9/r;",
            ">;"
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

.field public final G:LMc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/a<",
            "LV9/r;",
            ">;"
        }
    .end annotation
.end field

.field public H:Z

.field public I:LJAVARuntime/Component;

.field private maxHitDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->K:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UI3DCameraAimInputSystem"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->E:Ljava/util/Map;

    new-instance v0, LMc/a;

    invoke-direct {v0}, LMc/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    new-instance v0, LMc/a;

    invoke-direct {v0}, LMc/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->G:LMc/a;

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->maxHitDistance:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->H:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->maxHitDistance:F

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->maxHitDistance:F

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


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->maxHitDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->maxHitDistance:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;)V

    const-string v2, "Max hit distance"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "maxHitDistance"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;)V

    const-string v2, "Perform click"

    sget-object v3, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UI3DCameraAimInputSystem"

    return-object v0
.end method

.method public isPerformClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->H:Z

    return v0
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

    if-eqz p2, :cond_c

    const-class p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {p2}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    invoke-virtual {v4}, LMc/a;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    invoke-virtual {v4, v3}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LV9/r;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->releaseTouch(Ltc/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    invoke-virtual {v2}, LMc/a;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    invoke-virtual {v2, v1}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV9/r;

    invoke-virtual {v2, v0}, Ltc/h;->J(Z)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->G:LMc/a;

    invoke-virtual {v3, v2}, LMc/a;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    invoke-virtual {v1}, LMc/a;->clear()V

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Laa/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance p1, Laa/c;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->maxHitDistance:F

    invoke-direct {p1, v1, v2}, Laa/c;-><init>(Laa/d;F)V

    move v1, v0

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->E:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV9/r;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v3

    sget-object v6, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {v4, v3, p1, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H2([FLaa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->emitTouch()LV9/r;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->E:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->emitTouch(LV9/r;)V

    :goto_5
    invoke-virtual {v3}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v3}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v2

    invoke-virtual {v5, v6, v3}, Ltc/h;->D(FF)V

    invoke-virtual {v5, v0}, Ltc/h;->K(Z)V

    invoke-virtual {v5, v0}, Ltc/h;->v(Z)V

    invoke-virtual {v5, v4}, Ltc/h;->F(Z)V

    invoke-virtual {v5, v0}, Ltc/h;->J(Z)V

    move v2, v4

    goto :goto_6

    :cond_5
    move v2, v0

    :goto_6
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5, v0}, Ltc/h;->v(Z)V

    invoke-virtual {v5, v0}, Ltc/h;->F(Z)V

    invoke-virtual {v5}, Ltc/h;->u()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v5, v4}, Ltc/h;->J(Z)V

    invoke-virtual {v5, v4}, Ltc/h;->K(Z)V

    :cond_6
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->F:LMc/a;

    invoke-virtual {v2, v5}, LMc/a;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v5, :cond_8

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->G:LMc/a;

    invoke-virtual {v2, v5}, LMc/a;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    invoke-static {}, LJ4/d;->E1()V

    const-string p1, "UI3DCameraAimInputSystem needs to be attached to a camera object."

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    :cond_a
    move p1, v0

    :goto_8
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->G:LMc/a;

    invoke-virtual {p2}, LMc/a;->size()I

    move-result p2

    if-ge p1, p2, :cond_b

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->G:LMc/a;

    invoke-virtual {p2, p1}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LV9/r;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->H:Z

    invoke-virtual {p2, v1}, LV9/r;->N(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_b
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->H:Z

    if-eqz p1, :cond_c

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->H:Z

    :cond_c
    return-void
.end method

.method public setPerformClick(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "performClick"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->H:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->I:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->I:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UI3DCameraAimInputSystem;

    invoke-direct {v0, p0}, LJAVARuntime/UI3DCameraAimInputSystem;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UI3DCameraAimInputSystem;->I:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
