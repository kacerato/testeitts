.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements LO4/a;


# static fields
.field public static L:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# instance fields
.field public E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

.field public F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public H:Ltc/h;

.field public final I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public J:LU4/a;

.field public K:LR4/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;LU4/a;LR4/b;)V
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
            "editorCamera",
            "editor3DViewer",
            "modelRenderer",
            "axisHandler",
            "enableFilter"
        }
    .end annotation

    const-string v0, "PositionAxis"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->K:LR4/b;

    return-void
.end method

.method private calculateDotPass(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v2, v3, p1}, LU4/a;->v(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LU4/a$a;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    invoke-virtual {v6, p1}, LU4/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v5, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    invoke-static {p1}, LNc/b;->k(F)F

    move-result p1

    const v5, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v5

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v3

    :cond_3
    return v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private doRaycast(Ltc/h;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object v3

    new-instance v4, Laa/c;

    invoke-direct {v4, p1}, Laa/c;-><init>(Laa/d;)V

    sget-object v5, LJAVARuntime/Vertex$RayMode;->FirstHit:LJAVARuntime/Vertex$RayMode;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->J2([FLaa/c;LJAVARuntime/Vertex$RayMode;ZZ)Laa/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private updateActiveState()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->disableAxis()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->enableAxis()V

    :goto_0
    return-void
.end method


# virtual methods
.method public disableAxis()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C1(Z)V

    return-void
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 6
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    sget-object p2, LW7/b;->i:La8/a;

    iget-object p2, p2, La8/a;->a:La8/b;

    iget-object p2, p2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->L:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->L:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
    move-object v4, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->K:LR4/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {p2, v4, v0}, LR4/b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v2, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LU4/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->calculateDotPass(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->updateActiveState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->disableAxis()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->disableAxis()V

    :goto_0
    return-void
.end method

.method public enableAxis()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C1(Z)V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 11
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

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object v0, p2, LU4/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ltc/h;->t()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-ne v1, p0, :cond_0

    iput-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    :cond_0
    sget-object p2, LW7/b;->i:La8/a;

    iget-object p2, p2, La8/a;->a:La8/b;

    iget-object p2, p2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->L:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->L:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->K:LR4/b;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v1, p2, v2}, LR4/b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v3, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, LU4/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->calculateDotPass(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->disableAxis()V

    goto/16 :goto_6

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-eqz v1, :cond_4

    if-ne v1, p0, :cond_5

    :cond_4
    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object v1

    invoke-virtual {v1}, LP4/b;->d()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-ne v1, p0, :cond_c

    iput-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    goto/16 :goto_3

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    const/4 v10, 0x1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    sget-object v2, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v1, v2, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->doRaycast(Ltc/h;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    invoke-virtual {v3}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, LU4/a;->u(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    goto :goto_2

    :cond_7
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-ne v2, p0, :cond_9

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-ne v2, p0, :cond_9

    iput-object v0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p0, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-boolean v3, v2, Ltc/h;->e:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-object v2, v3

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, LU4/a;->t(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    move v9, v10

    :cond_a
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    invoke-virtual {p2}, Ltc/h;->t()Z

    move-result p2

    if-eqz p2, :cond_b

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    :cond_b
    move p2, v9

    move v9, v10

    goto :goto_4

    :cond_c
    :goto_3
    move p2, v9

    :goto_4
    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->enableAxis()V

    goto :goto_5

    :cond_d
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->updateActiveState()V

    :goto_5
    move v9, p2

    goto :goto_6

    :cond_e
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->H:Ltc/h;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-ne v1, p0, :cond_f

    iput-object v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    :cond_f
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->disableAxis()V

    :goto_6
    if-nez v9, :cond_10

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->J:LU4/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2, p1, v0, v1}, LU4/a;->K(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    :cond_10
    return-void
.end method
