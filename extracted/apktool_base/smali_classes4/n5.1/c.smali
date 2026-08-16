.class public Ln5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/content/Context;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "oglContext",
            "sceneHierarchy",
            "editor3DViewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Landroid/content/Context;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ln5/c;->b(Ljava/util/List;Landroid/content/Context;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ln5/a;)V

    return-void
.end method

.method public static b(Ljava/util/List;Landroid/content/Context;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ln5/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "oglContext",
            "sceneHierarchy",
            "editor3DViewer",
            "constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Landroid/content/Context;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Ln5/a;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Ln5/c;->c(Ljava/util/List;Landroid/content/Context;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;ZLn5/a;)V

    return-void
.end method

.method public static c(Ljava/util/List;Landroid/content/Context;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;ZLn5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "oglContext",
            "sceneHierarchy",
            "editor3DViewer",
            "createDefaultAxis",
            "constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Landroid/content/Context;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Z",
            "Ln5/a;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    invoke-static {p0, p2, p3}, Ln5/c;->g(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    goto :goto_0

    :cond_0
    invoke-interface {p5, p0, p1, p2, p3}, Ln5/a;->a(Ljava/util/List;Landroid/content/Context;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-static {p0, p2, p3, p1}, Ln5/c;->j(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    invoke-static {p0, p2, p3, p1}, Ln5/c;->k(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    invoke-static {p0, p2, p3, p1}, Ln5/c;->d(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    invoke-static {p0, p2, p3, p1}, Ln5/c;->l(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    invoke-static {p0, p2, p3, p1}, Ln5/c;->n(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    invoke-static {p0, p2, p3, p1}, Ln5/c;->m(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    :cond_1
    invoke-static {p0, p2, p3}, Ln5/c;->f(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-static {p0, p2, p3, p1}, Ln5/c;->h(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V

    invoke-static {p0, p2, p3}, Ln5/c;->i(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->A1(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static d(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance p3, LR4/a;

    invoke-direct {p3}, LR4/a;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0x41

    const/16 v1, 0x18

    const/16 v2, 0xe8

    invoke-direct {v5, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LV4/a;

    invoke-direct {v8}, LV4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_rot_toucharea_x.obj"

    const-string v4, "Engine/Interface/Models/axis_rot_x.obj"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object v0

    iput-object v0, p1, Ln5/d;->o:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0xbd

    const/16 v1, 0x32

    const/16 v2, 0x44

    invoke-direct {v5, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LV4/b;

    invoke-direct {v8}, LV4/b;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_rot_toucharea_y.obj"

    const-string v4, "Engine/Interface/Models/axis_rot_y.obj"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object v0

    iput-object v0, p1, Ln5/d;->p:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v0, 0x97

    const/16 v1, 0xe6

    const/4 v2, 0x0

    invoke-direct {v5, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LV4/c;

    invoke-direct {v8}, LV4/c;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_rot_toucharea_z.obj"

    const-string v4, "Engine/Interface/Models/axis_rot_z.obj"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p0

    iput-object p0, p1, Ln5/d;->q:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    return-void
.end method

.method public static e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "touchArea",
            "model",
            "color",
            "drawInFront",
            "texture",
            "axisHandler",
            "enableFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;",
            "Z",
            "Ljava/lang/String;",
            "LU4/a;",
            "LR4/b;",
            ")",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;"
        }
    .end annotation

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZZ)V

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-object/from16 v0, p1

    iget-object v1, v0, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    move-object v0, v7

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;LU4/a;LR4/b;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v3, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFF)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    sget-object v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-direct {v1, v2, v3, v5, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v5, 0x1

    aput-object v7, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v9, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v4, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-direct {v2, v6, v9, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;

    const/4 v13, 0x1

    move-object v11, v4

    move-object/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    invoke-direct/range {v11 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/MRToGizmo;-><init>(Ljava/lang/String;ZZLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Ljava/lang/String;)V

    new-array v5, v5, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    aput-object v4, v5, v3

    invoke-direct {v1, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public static f(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, -0x3f800000    # -4.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const-string v2, "EditorAxisCube"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;-><init>()V

    iput-object v1, p1, Ln5/d;->M:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-direct {v2, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const-string v4, "AxisCubeCameraAngler"

    invoke-direct {v1, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, -0x39e3c800    # -9998.0f

    const v6, -0x39e3c000    # -10000.0f

    invoke-direct {v4, v6, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const-string v3, "AxisCubeCameraParent"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;

    iget-object v3, p1, Ln5/d;->M:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-direct {v2, v3, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iput-object v2, p1, Ln5/d;->N:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static g(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;

    invoke-direct {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;

    invoke-direct {v5, v4, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DPinch;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iput-object v5, v0, Ln5/d;->O:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v9, -0x3f200000    # -7.0f

    const/4 v10, 0x0

    invoke-direct {v8, v10, v10, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-direct {v7, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const-string v8, "Main Camera"

    invoke-direct {v6, v8, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v12, 0x44fa0000    # 2000.0f

    const/high16 v13, 0x428c0000    # 70.0f

    const v14, 0x3e99999a    # 0.3f

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;-><init>(FFFZI)V

    iput-object v7, v0, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iput-object v6, v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v9, v10, v10, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v9, "cameraAngler"

    invoke-direct {v7, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;

    invoke-direct {v8, v2, v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v9, v10, v11, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v9, "cameraParent"

    invoke-direct {v6, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DHorizontalSlide;

    invoke-direct {v8, v2, v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DHorizontalSlide;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v6, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;

    invoke-direct {v3, v2, v1, v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;)V

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v6, v0, Ln5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance p3, Ld5/a;

    invoke-direct {p3}, Ld5/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;

    iget-object v1, p1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-direct {v0, v1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LR4/b;)V

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v2, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-direct {p3, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p1, Ln5/d;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;

    return-void
.end method

.method public static i(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    const-string v2, "PivotGizmoObject"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/PivotGizmo;

    invoke-direct {v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/PivotGizmo;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iput-object v1, p1, Ln5/d;->d:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/PivotGizmo;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static j(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x41

    const/16 v0, 0x18

    const/16 v1, 0xe8

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LW4/a;

    invoke-direct {v8}, LW4/a;-><init>()V

    new-instance v9, Ln5/c$b;

    invoke-direct {v9}, Ln5/c$b;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_pos.obj"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->e:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0xbd

    const/16 v0, 0x32

    const/16 v1, 0x44

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LW4/b;

    invoke-direct {v8}, LW4/b;-><init>()V

    new-instance v9, Ln5/c$c;

    invoke-direct {v9}, Ln5/c$c;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_pos.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->f:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x97

    const/16 v0, 0xe6

    const/4 v1, 0x0

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LW4/c;

    invoke-direct {v8}, LW4/c;-><init>()V

    new-instance v9, Ln5/c$d;

    invoke-direct {v9}, Ln5/c$d;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_pos.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p0

    iput-object p0, p1, Ln5/d;->g:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    return-void
.end method

.method public static k(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x41

    const/16 v0, 0x18

    const/16 v1, 0xe8

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LX4/c;

    invoke-direct {v8}, LX4/c;-><init>()V

    new-instance v9, Ln5/c$e;

    invoke-direct {v9}, Ln5/c$e;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_rot_toucharea_x.obj"

    const-string v4, "Engine/Interface/Models/axis_rot_x.obj"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->l:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0xbd

    const/16 v0, 0x32

    const/16 v1, 0x44

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LX4/d;

    invoke-direct {v8}, LX4/d;-><init>()V

    new-instance v9, Ln5/c$f;

    invoke-direct {v9}, Ln5/c$f;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_rot_toucharea_y.obj"

    const-string v4, "Engine/Interface/Models/axis_rot_y.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->m:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x97

    const/16 v0, 0xe6

    const/4 v1, 0x0

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LX4/e;

    invoke-direct {v8}, LX4/e;-><init>()V

    new-instance v9, Ln5/c$g;

    invoke-direct {v9}, Ln5/c$g;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_rot_toucharea_z.obj"

    const-string v4, "Engine/Interface/Models/axis_rot_z.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p0

    iput-object p0, p1, Ln5/d;->n:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    return-void
.end method

.method public static l(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0xdc

    invoke-direct {v5, p3, p3, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LY4/a;

    invoke-direct {v8}, LY4/a;-><init>()V

    new-instance v9, Ln5/c$h;

    invoke-direct {v9}, Ln5/c$h;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_scale.obj"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x41

    const/16 v0, 0x18

    const/16 v1, 0xe8

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LY4/b;

    invoke-direct {v8}, LY4/b;-><init>()V

    new-instance v9, Ln5/c$i;

    invoke-direct {v9}, Ln5/c$i;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_scale.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->i:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0xbd

    const/16 v0, 0x32

    const/16 v1, 0x44

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LY4/c;

    invoke-direct {v8}, LY4/c;-><init>()V

    new-instance v9, Ln5/c$j;

    invoke-direct {v9}, Ln5/c$j;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_scale.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->j:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x97

    const/16 v0, 0xe6

    const/4 v1, 0x0

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, LY4/d;

    invoke-direct {v8}, LY4/d;-><init>()V

    new-instance v9, Ln5/c$a;

    invoke-direct {v9}, Ln5/c$a;-><init>()V

    const-string v3, "Engine/Interface/Models/axis_pos_toucharea.obj"

    const-string v4, "Engine/Interface/Models/axis_scale.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p0

    iput-object p0, p1, Ln5/d;->k:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    return-void
.end method

.method public static m(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    new-instance v8, LZ4/a;

    invoke-direct {v8}, LZ4/a;-><init>()V

    new-instance v9, LS4/b;

    invoke-direct {v9}, LS4/b;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_toucharea.obj"

    const-string v4, "Engine/Primitives/Models/square90.obj"

    const/4 v6, 0x1

    const-string v7, "@@ASSET@@/Engine/Interface/Textures/snap_to_surface_v5.png"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->v:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x41

    const/16 v0, 0x18

    const/16 v1, 0xe8

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, La5/a;

    invoke-direct {v8}, La5/a;-><init>()V

    new-instance v9, LS4/a;

    invoke-direct {v9}, LS4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_move_x_p.obj"

    const-string v4, "Engine/Interface/Models/sts_move_x_p.obj"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->w:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0xbd

    const/16 v0, 0x32

    const/16 v1, 0x44

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, La5/b;

    invoke-direct {v8}, La5/b;-><init>()V

    new-instance v9, LS4/a;

    invoke-direct {v9}, LS4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_move_y_p.obj"

    const-string v4, "Engine/Interface/Models/sts_move_y_p.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->x:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x97

    const/16 v0, 0xe6

    const/4 v1, 0x0

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, La5/c;

    invoke-direct {v8}, La5/c;-><init>()V

    new-instance v9, LS4/a;

    invoke-direct {v9}, LS4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_move_z_p.obj"

    const-string v4, "Engine/Interface/Models/sts_move_z_p.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p0

    iput-object p0, p1, Ln5/d;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    return-void
.end method

.method public static n(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "sceneHierarchy",
            "editor3DViewer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ln5/d;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    new-instance v8, Lb5/a;

    invoke-direct {v8}, Lb5/a;-><init>()V

    new-instance v9, LT4/b;

    invoke-direct {v9}, LT4/b;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_toucharea.obj"

    const-string v4, "Engine/Primitives/Models/square90.obj"

    const/4 v6, 0x1

    const-string v7, "@@ASSET@@/Engine/Interface/Textures/snap_to_surface_v6.png"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->r:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x41

    const/16 v0, 0x18

    const/16 v1, 0xe8

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, Lc5/a;

    invoke-direct {v8}, Lc5/a;-><init>()V

    new-instance v9, LT4/a;

    invoke-direct {v9}, LT4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_move_x_p.obj"

    const-string v4, "Engine/Interface/Models/sts_move_x_p.obj"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->s:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0xbd

    const/16 v0, 0x32

    const/16 v1, 0x44

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, Lc5/b;

    invoke-direct {v8}, Lc5/b;-><init>()V

    new-instance v9, LT4/a;

    invoke-direct {v9}, LT4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_move_y_p.obj"

    const-string v4, "Engine/Interface/Models/sts_move_y_p.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p3

    iput-object p3, p1, Ln5/d;->t:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 p3, 0x97

    const/16 v0, 0xe6

    const/4 v1, 0x0

    invoke-direct {v5, v1, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v8, Lc5/c;

    invoke-direct {v8}, Lc5/c;-><init>()V

    new-instance v9, LT4/a;

    invoke-direct {v9}, LT4/a;-><init>()V

    const-string v3, "Engine/Interface/Models/sts_move_z_p.obj"

    const-string v4, "Engine/Interface/Models/sts_move_z_p.obj"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Ln5/c;->e(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZLjava/lang/String;LU4/a;LR4/b;)Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    move-result-object p0

    iput-object p0, p1, Ln5/d;->u:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/EditorAxis;

    return-void
.end method
