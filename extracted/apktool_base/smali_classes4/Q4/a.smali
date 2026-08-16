.class public abstract LQ4/a;
.super LP4/b;
.source "SourceFile"


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Ltc/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public e:LJAVARuntime/GizmoObject;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;LP4/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectPool",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p2}, LP4/b;-><init>(LP4/a;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, LQ4/a;->c:Ljava/util/HashMap;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p2, p0, LQ4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 p2, 0x0

    iput-object p2, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0x3b

    const/16 v1, 0xc7

    const/16 v2, 0xff

    invoke-direct {p2, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object p2, p0, LQ4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x48

    invoke-direct {p2, v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object p2, p0, LQ4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object p1, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-void
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lo4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editor3DViewer",
            "engineUpdateData"
        }
    .end annotation

    iget-object p2, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->renderBrushes()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    if-eq p2, v0, :cond_5

    iget-object p2, p0, LQ4/a;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltc/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(Ltc/h;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    sget-object p2, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    sget-object v2, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p1, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w(LJAVARuntime/GUIUtils$TouchFilter;I)Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p2, v0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, LQ4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, LQ4/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v1, p1}, LQ4/a;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {p2}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p2

    :cond_4
    :goto_0
    iget-object p2, p0, LQ4/a;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LQ4/a;->i()V

    :cond_5
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "editor3DViewer"
        }
    .end annotation
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-direct {v0}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    const/4 v1, 0x6

    invoke-static {v1}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    iget-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoElement;->setDrawInFront(Z)V

    :cond_0
    iget-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    iget-object v1, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    iget-object v1, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object v0, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->F3:LO8/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, LO8/a;->a:Lub/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    :cond_1
    iget-object v0, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->Add:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LQ4/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v4, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    mul-float/2addr v4, v2

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->H(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->Remove:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, LQ4/a;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v4, p0, LQ4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    mul-float/2addr v4, v2

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->H(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    :cond_3
    :goto_0
    iget-object v0, p0, LQ4/a;->e:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    return-void
.end method
