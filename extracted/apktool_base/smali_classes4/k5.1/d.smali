.class public Lk5/d;
.super Lf5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/d$D;,
        Lk5/d$E;
    }
.end annotation


# static fields
.field public static final A:LAc/b;

.field public static final B:LAc/b;

.field public static final C:LAc/b;

.field public static final D:LAc/b;

.field public static final E:F = 50.0f

.field public static final F:F = 8.0f

.field public static final G:I = 0x8

.field public static final H:I = 0x8

.field public static final I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final x:F = 5000.0f

.field public static final y:LAc/b;

.field public static final z:LAc/b;


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/d$D;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lk5/d$D;

.field public m:LM7/e;

.field public n:Z

.field public o:Z

.field public p:Lub/p;

.field public q:Lub/p;

.field public r:Lub/p;

.field public s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public v:Lk5/c;

.field public w:Lk5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_COLOR:LAc/b;

    sput-object v0, Lk5/d;->y:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_COLOR:LAc/b;

    sput-object v0, Lk5/d;->z:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_TEXT_COLOR:LAc/b;

    sput-object v0, Lk5/d;->A:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_OUTLINE_COLOR:LAc/b;

    sput-object v0, Lk5/d;->B:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LAc/b;

    sput-object v0, Lk5/d;->C:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BACKGROUND_COLOR:LAc/b;

    sput-object v0, Lk5/d;->D:LAc/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v1, Lk5/d;->I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sput-object v1, Lk5/d;->J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v1, Lk5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf5/d;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lk5/d;->g:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lk5/d;->h:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lk5/d;->i:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lk5/d;->j:Ljava/util/List;

    new-instance v0, Lk5/d$k;

    invoke-direct {v0, p0}, Lk5/d$k;-><init>(Lk5/d;)V

    iput-object v0, p0, Lk5/d;->k:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5/d$D;

    iput-object v0, p0, Lk5/d;->l:Lk5/d$D;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk5/d;->n:Z

    iput-boolean v0, p0, Lk5/d;->o:Z

    sget-object v0, Lk5/c;->Rect:Lk5/c;

    iput-object v0, p0, Lk5/d;->v:Lk5/c;

    invoke-virtual {p0}, Lk5/d;->c0()V

    return-void
.end method

.method public static synthetic H(Lk5/d;Lk5/c;)Lk5/c;
    .locals 0

    iput-object p1, p0, Lk5/d;->v:Lk5/c;

    return-object p1
.end method

.method public static synthetic I(Lk5/d;)Lk5/a;
    .locals 0

    iget-object p0, p0, Lk5/d;->w:Lk5/a;

    return-object p0
.end method

.method public static synthetic J(Lk5/d;Lk5/a;)Lk5/a;
    .locals 0

    iput-object p1, p0, Lk5/d;->w:Lk5/a;

    return-object p1
.end method

.method public static synthetic K(Lk5/d;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .locals 0

    invoke-virtual {p0}, Lk5/d;->U()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p0

    return-object p0
.end method

.method private d0()V
    .locals 1

    iget-boolean v0, p0, Lk5/d;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk5/d;->o:Z

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public G()V
    .locals 1

    invoke-super {p0}, Lf5/d;->G()V

    iget-boolean v0, p0, Lk5/d;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk5/d;->m:LM7/e;

    invoke-virtual {v0}, LM7/g;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk5/d;->m:LM7/e;

    invoke-virtual {v0}, LM7/g;->p()V

    :goto_0
    return-void
.end method

.method public final L(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;ZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panel3DView",
            "touchCaptured",
            "controller"
        }
    .end annotation

    if-eqz p3, :cond_0

    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Ltc/h;->e:Z

    if-nez v1, :cond_0

    sget-object v1, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v1}, Lrc/a$g;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p1, p1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    neg-float p2, p2

    float-to-int p2, p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p3, p2, p1}, Lk5/d;->b0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lk5/d$a;

    invoke-direct {p2, p0, p1}, Lk5/d$a;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p2}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final M(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedGameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->c()I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v7, LJAVARuntime/Vector3;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v7, v3}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setY(F)V

    iget-object v9, p0, Lk5/d;->j:Ljava/util/List;

    sget-object v10, Lk5/d$E;->TopRight:Lk5/d$E;

    const/4 v11, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, v11

    invoke-virtual/range {v3 .. v10}, Lk5/d;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;Lk5/d$E;)Z

    move-result v8

    move-object v5, v1

    move v6, v0

    move v7, v11

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lk5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z

    move-result p1

    return p1
.end method

.method public final N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z
    .locals 5
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
            "point",
            "screenH",
            "layer",
            "touchCaptured",
            "buttonSize",
            "onTouch"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const p1, 0x459c4000    # 5000.0f

    int-to-float p3, p3

    sub-float/2addr p1, p3

    invoke-direct {v0, v1, p2, p1}, LJAVARuntime/Vector3;-><init>(IFF)V

    int-to-float p1, p5

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p1, p2

    neg-float p3, p2

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, LJAVARuntime/Vector3;->subLocal(FFF)V

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v2

    sget-object v3, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v2

    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p5}, Lk5/d;->e0(Ltc/h;LJAVARuntime/Vector3;I)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {p6}, LN7/c;->j0(Ljava/lang/Runnable;)V

    move p4, v4

    :cond_0
    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object p5

    invoke-virtual {p5, p3, p2, v1}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    new-instance p2, LJAVARuntime/GizmoObject;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p3

    invoke-direct {p2, p3}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    invoke-virtual {p2, p5}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {p2, p1, p1, p1}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, p1, v1, v1}, LJAVARuntime/GizmoTransform;->setRotation(FFF)V

    new-instance p1, LJAVARuntime/Color;

    const/16 p3, 0xfc

    const/16 p5, 0xff

    const/16 p6, 0xde

    invoke-direct {p1, p6, p3, p5}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, Lk5/d;->r:Lub/p;

    invoke-virtual {p1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    invoke-static {p2}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    return p4
.end method

.method public final O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "screenW",
            "screenH",
            "touchCaptured",
            "anchorOutputObject"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p5

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    const/4 v0, 0x0

    if-nez v10, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {p0}, Lk5/d;->X()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v11, v1

    new-instance v1, LJAVARuntime/Vector3;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->setY(F)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAnchor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-eq v3, v9, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-ne v3, v9, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-eq v4, v9, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-ne v1, v9, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    move v12, v3

    goto :goto_3

    :cond_5
    move v0, v2

    move v12, v0

    :goto_3
    iget-object v1, v7, Lk5/d;->w:Lk5/a;

    sget-object v2, Lk5/a;->Top:Lk5/a;

    const/4 v13, 0x2

    if-eq v1, v2, :cond_6

    sget-object v2, Lk5/a;->Bottom:Lk5/a;

    if-ne v1, v2, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v10}, Lk5/d;->a0(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$b;

    invoke-direct {v6, p0, v9, p1}, Lk5/d$b;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    move-object v0, p0

    move/from16 v2, p3

    move v3, v13

    move/from16 v4, p4

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    invoke-virtual {p0, v10}, Lk5/d;->V(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$c;

    invoke-direct {v6, p0, v9, p1}, Lk5/d$c;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_7
    iget-object v0, v7, Lk5/d;->w:Lk5/a;

    sget-object v1, Lk5/a;->Left:Lk5/a;

    if-eq v0, v1, :cond_8

    sget-object v1, Lk5/a;->Right:Lk5/a;

    if-ne v0, v1, :cond_9

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {p0, v10}, Lk5/d;->Y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$d;

    invoke-direct {v6, p0, v9, p1}, Lk5/d$d;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    move-object v0, p0

    move/from16 v2, p3

    move v3, v13

    move/from16 v4, p4

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    invoke-virtual {p0, v10}, Lk5/d;->Z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$e;

    invoke-direct {v6, p0, v9, p1}, Lk5/d$e;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_9
    return p4
.end method

.method public final P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedGameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v7, LJAVARuntime/Vector3;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v7, v3}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setY(F)V

    iget-object v9, p0, Lk5/d;->i:Ljava/util/List;

    sget-object v10, Lk5/d$E;->TopRight:Lk5/d$E;

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lk5/d;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;Lk5/d$E;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    move v10, v3

    :goto_0
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v7

    if-eq v7, p1, :cond_2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v6, p0

    move v8, v2

    move v9, v0

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lk5/d;->O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v10

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v10

    :cond_4
    return v3
.end method

.method public final Q(LV9/j;FIZILjava/lang/Runnable;)Z
    .locals 5
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
            "ap",
            "screenH",
            "layer",
            "touchCaptured",
            "buttonSize",
            "onTouch"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, LJAVARuntime/Vector3;

    invoke-virtual {p1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, LV9/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const p1, 0x459c4000    # 5000.0f

    int-to-float p3, p3

    sub-float/2addr p1, p3

    invoke-direct {v0, v1, p2, p1}, LJAVARuntime/Vector3;-><init>(IFF)V

    int-to-float p1, p5

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p1, p2

    neg-float p3, p2

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, LJAVARuntime/Vector3;->subLocal(FFF)V

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v2

    sget-object v3, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v2

    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p5}, Lk5/d;->e0(Ltc/h;LJAVARuntime/Vector3;I)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {p6}, LN7/c;->j0(Ljava/lang/Runnable;)V

    move p4, v4

    :cond_0
    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object p5

    invoke-virtual {p5, p3, p2, v1}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    new-instance p2, LJAVARuntime/GizmoObject;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p3

    invoke-direct {p2, p3}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    invoke-virtual {p2, p5}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {p2, p1, p1, p1}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, p1, v1, v1}, LJAVARuntime/GizmoTransform;->setRotation(FFF)V

    new-instance p1, LJAVARuntime/Color;

    const/16 p3, 0xe5

    const/16 p5, 0xde

    const/16 p6, 0xff

    invoke-direct {p1, p6, p3, p5}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, Lk5/d;->q:Lub/p;

    invoke-virtual {p1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    invoke-static {p2}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_1
    return p4
.end method

.method public final R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z
    .locals 15
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
            "selectedGameObject",
            "panel3DView",
            "screenH",
            "layer",
            "touchCaptured",
            "rect"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p6

    invoke-virtual {p0}, Lk5/d;->X()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAnchor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    move-object/from16 v1, p2

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v2

    iget-object v2, v7, Lk5/d;->v:Lk5/c;

    sget-object v3, Lk5/c;->ManageAnchors:Lk5/c;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v10, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->drawGizmos(FZ)V

    iget-object v1, v7, Lk5/d;->v:Lk5/c;

    if-ne v1, v3, :cond_5

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    move v11, v0

    :goto_1
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_2

    move v12, v4

    goto :goto_2

    :cond_2
    move v12, v0

    :goto_2
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_3

    move v13, v4

    goto :goto_3

    :cond_3
    move v13, v0

    :goto_3
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomAnchorPoints()LV9/j;

    move-result-object v1

    if-eqz v1, :cond_4

    move v14, v4

    goto :goto_4

    :cond_4
    move v14, v0

    :goto_4
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopAnchorPoints()LV9/j;

    move-result-object v1

    new-instance v6, Lk5/d$f;

    invoke-direct {v6, p0, v10}, Lk5/d$f;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lk5/d;->Q(LV9/j;FIZILjava/lang/Runnable;)Z

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomAnchorPoints()LV9/j;

    move-result-object v1

    new-instance v6, Lk5/d$g;

    invoke-direct {v6, p0, v10}, Lk5/d$g;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    invoke-virtual/range {v0 .. v6}, Lk5/d;->Q(LV9/j;FIZILjava/lang/Runnable;)Z

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightAnchorPoints()LV9/j;

    move-result-object v1

    new-instance v6, Lk5/d$h;

    invoke-direct {v6, p0, v10}, Lk5/d$h;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    invoke-virtual/range {v0 .. v6}, Lk5/d;->Q(LV9/j;FIZILjava/lang/Runnable;)Z

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftAnchorPoints()LV9/j;

    move-result-object v1

    new-instance v6, Lk5/d$i;

    invoke-direct {v6, p0, v10}, Lk5/d$i;-><init>(Lk5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    invoke-virtual/range {v0 .. v6}, Lk5/d;->Q(LV9/j;FIZILjava/lang/Runnable;)Z

    move-result v0

    move v10, v0

    move v0, v11

    goto :goto_5

    :cond_5
    move/from16 v10, p5

    move v12, v0

    move v13, v12

    move v14, v13

    :goto_5
    iget-object v1, v7, Lk5/d;->v:Lk5/c;

    sget-object v2, Lk5/c;->ManageAnchors:Lk5/c;

    if-ne v1, v2, :cond_9

    if-nez v0, :cond_6

    invoke-virtual {p0, v8}, Lk5/d;->a0(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$j;

    invoke-direct {v6, p0}, Lk5/d$j;-><init>(Lk5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_6
    if-nez v12, :cond_7

    invoke-virtual {p0, v8}, Lk5/d;->Y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$l;

    invoke-direct {v6, p0}, Lk5/d$l;-><init>(Lk5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_7
    if-nez v13, :cond_8

    invoke-virtual {p0, v8}, Lk5/d;->Z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$m;

    invoke-direct {v6, p0}, Lk5/d$m;-><init>(Lk5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_8
    if-nez v14, :cond_9

    invoke-virtual {p0, v8}, Lk5/d;->V(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, Lk5/d$n;

    invoke-direct {v6, p0}, Lk5/d$n;-><init>(Lk5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lk5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_9
    return v10
.end method

.method public final S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;Lk5/d$E;)Z
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedGameObject",
            "rect",
            "layer",
            "scale",
            "touchCaptured",
            "inSceneOptions",
            "location"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;",
            "I",
            "LJAVARuntime/Vector3;",
            "Z",
            "Ljava/util/List<",
            "Lk5/b;",
            ">;",
            "Lk5/d$E;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v5

    invoke-virtual {v5}, LW9/c;->c()I

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lk5/d;->X()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lk5/d;->X()F

    move-result v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual/range {p0 .. p0}, Lk5/d;->X()F

    move-result v8

    const/high16 v9, 0x42480000    # 50.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    new-instance v9, LJAVARuntime/Vector3;

    invoke-direct {v9}, LJAVARuntime/Vector3;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v10

    invoke-virtual {v10}, LW9/c;->d()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v10

    invoke-virtual {v10}, LW9/c;->e()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v3, v10

    int-to-float v11, v7

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, LJAVARuntime/Vector3;->setY(F)V

    const v10, 0x459c4000    # 5000.0f

    move/from16 v11, p3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, LJAVARuntime/Vector3;->setZ(F)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v10, v12, :cond_1

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v10

    invoke-virtual {v10}, LW9/c;->e()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v7

    invoke-virtual {v7}, LW9/c;->b()I

    move-result v7

    add-int/2addr v10, v7

    add-int/2addr v10, v8

    int-to-float v7, v10

    sub-float/2addr v3, v7

    invoke-virtual {v9, v3}, LJAVARuntime/Vector3;->setY(F)V

    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_2

    move v3, v4

    move v11, v3

    goto :goto_1

    :cond_2
    invoke-virtual/range {p4 .. p4}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    float-to-int v3, v3

    move v11, v3

    move v3, v4

    goto :goto_1

    :cond_3
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v8

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    mul-int/2addr v11, v6

    add-int/2addr v3, v11

    int-to-float v3, v3

    div-float/2addr v3, v7

    int-to-float v11, v6

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v11, v12

    sub-float/2addr v3, v11

    float-to-int v3, v3

    invoke-virtual/range {p4 .. p4}, LJAVARuntime/Vector3;->getX()F

    move-result v11

    div-float/2addr v11, v7

    float-to-int v11, v11

    :goto_1
    sget-object v12, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v5, v12, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v12

    sget-object v13, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v5, v13, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object v5

    move/from16 v13, p5

    move v14, v4

    :goto_2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    move-object/from16 v15, p6

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lk5/b;

    invoke-virtual/range {p0 .. p0}, Lk5/d;->X()F

    move-result v16

    iget v10, v4, Lk5/b;->a:I

    int-to-float v10, v10

    mul-float v10, v10, v16

    float-to-int v10, v10

    mul-int v16, v14, v8

    mul-int v17, v14, v6

    add-int v16, v16, v17

    sub-int v16, v11, v16

    sub-int v16, v16, v8

    add-int v7, v16, v3

    move/from16 p4, v3

    iget-object v3, v4, Lk5/b;->c:Ltc/h;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ltc/h;->q()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v4, Lk5/b;->c:Ltc/h;

    invoke-virtual {v4, v1, v2, v3}, Lk5/b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Ltc/h;)V

    const/4 v3, 0x0

    iput-object v3, v4, Lk5/b;->c:Ltc/h;

    :cond_4
    iget-object v3, v4, Lk5/b;->c:Ltc/h;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ltc/h;->s()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v4, Lk5/b;->c:Ltc/h;

    invoke-virtual {v3}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    move/from16 v16, v6

    iget-object v6, v4, Lk5/b;->c:Ltc/h;

    invoke-virtual {v4, v1, v2, v3, v6}, Lk5/b;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;)V

    goto :goto_3

    :cond_5
    move/from16 v16, v6

    :goto_3
    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    neg-int v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v7}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v0, v12, v3, v8}, Lk5/d;->e0(Ltc/h;LJAVARuntime/Vector3;I)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v12, v4, Lk5/b;->c:Ltc/h;

    invoke-virtual {v4, v1, v2, v12}, Lk5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Ltc/h;)V

    :cond_6
    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {v3, v6, v7, v7}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v0, v5, v3, v8}, Lk5/d;->e0(Ltc/h;LJAVARuntime/Vector3;I)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lk5/d$o;

    invoke-direct {v3, v0, v4, v1, v2}, Lk5/d$o;-><init>(Lk5/d;Lk5/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    invoke-static {v3}, LN7/c;->j0(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v7

    neg-int v1, v8

    int-to-float v1, v1

    const/high16 v17, 0x40000000    # 2.0f

    div-float v1, v1, v17

    int-to-float v2, v8

    div-float v2, v2, v17

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v2, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v7, v6, v5, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    if-eqz v3, :cond_8

    new-instance v1, LJAVARuntime/Vector3;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v8, v2}, LJAVARuntime/Vector3;-><init>(III)V

    iget-object v3, v0, Lk5/d;->p:Lub/p;

    invoke-virtual {v3}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v3

    iget-object v5, v0, Lk5/d;->t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v5

    invoke-static {v7, v1, v3, v5, v2}, LJAVARuntime/Gizmo;->drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    new-instance v1, LJAVARuntime/Vector3;

    invoke-direct {v1, v8, v8, v2}, LJAVARuntime/Vector3;-><init>(III)V

    iget-object v3, v0, Lk5/d;->p:Lub/p;

    invoke-virtual {v3}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v3

    iget-object v5, v0, Lk5/d;->s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v5

    invoke-static {v7, v1, v3, v5, v2}, LJAVARuntime/Gizmo;->drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V

    :goto_5
    sub-int v1, v8, v10

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v2

    neg-float v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    div-float v7, v1, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v7, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v2, v6, v5, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    neg-int v3, v10

    int-to-float v3, v3

    int-to-float v5, v10

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v5, v6}, LJAVARuntime/Vector3;->sum(FFF)LJAVARuntime/Vector3;

    move-result-object v2

    new-instance v3, LJAVARuntime/Vector3;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v1, v5}, LJAVARuntime/Vector3;-><init>(FFI)V

    iget-object v1, v4, Lk5/b;->b:Lub/p;

    invoke-virtual {v1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v1

    iget-object v4, v0, Lk5/d;->u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v5}, LJAVARuntime/Gizmo;->drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move v10, v5

    move/from16 v6, v16

    move-object/from16 v5, v18

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_9
    return v13
.end method

.method public final T(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedGameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->c()I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v11, LJAVARuntime/Vector3;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v11, v3}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, LJAVARuntime/Vector3;->setY(F)V

    iget-object v9, p0, Lk5/d;->g:Ljava/util/List;

    sget-object v10, Lk5/d$E;->TopCenter:Lk5/d$E;

    const/4 v12, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, v12

    move-object v7, v11

    invoke-virtual/range {v3 .. v10}, Lk5/d;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;Lk5/d$E;)Z

    move-result v8

    iget-object v9, p0, Lk5/d;->h:Ljava/util/List;

    sget-object v10, Lk5/d$E;->BottomCenter:Lk5/d$E;

    invoke-virtual/range {v3 .. v10}, Lk5/d;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;Lk5/d$E;)Z

    move-result v8

    move-object v5, v1

    move v6, v0

    move v7, v12

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lk5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z

    move-result p1

    return p1
.end method

.method public final U()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .locals 4

    :try_start_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final V(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object p1

    invoke-virtual {p1}, LW9/c;->b()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public W()Lk5/d$D;
    .locals 1

    iget-object v0, p0, Lk5/d;->l:Lk5/d$D;

    return-object v0
.end method

.method public final X()F
    .locals 3

    const/16 v0, 0x32

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v0

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object v1, v1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final Y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object p1

    invoke-virtual {p1}, LW9/c;->b()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public final Z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object p1

    invoke-virtual {p1}, LW9/c;->b()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIController:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Object needs to be a UI object."

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a0(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object p1

    invoke-virtual {p1}, LW9/c;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lk5/d;->b0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i1()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v1

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v2

    invoke-virtual {v0}, LW9/c;->f()I

    move-result v3

    invoke-virtual {v0}, LW9/c;->g()I

    move-result v0

    if-lt p2, v1, :cond_2

    if-gt p2, v3, :cond_2

    if-lt p3, v2, :cond_2

    if-gt p3, v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lk5/d;->w:Lk5/a;

    sget-object v0, Lk5/c;->Rect:Lk5/c;

    iput-object v0, p0, Lk5/d;->v:Lk5/c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lk5/d;->y:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lk5/d;->s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lk5/d;->z:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lk5/d;->t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lk5/d;->u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lk5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lk5/d;->D:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk5/d;->o:Z

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 7

    invoke-direct {p0}, Lk5/d;->d0()V

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v2, 0x459c1800    # 4995.0f

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    iget-boolean v1, p0, Lk5/d;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk5/d;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/d$D;

    iput-object v1, p0, Lk5/d;->l:Lk5/d$D;

    :cond_0
    sget-object v1, LW7/b;->i:La8/a;

    iget-object v3, v1, La8/a;->a:La8/b;

    iget-object v3, v3, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lk5/d;->n:Z

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getResolutionMode()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    move-result-object v3

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;->FixedResolution:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    if-ne v3, v6, :cond_1

    iput-boolean v5, p0, Lk5/d;->n:Z

    :cond_1
    sget-object v3, Lk5/d$u;->a:[I

    iget-object v6, p0, Lk5/d;->v:Lk5/c;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v5, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, Lk5/d;->P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, Lk5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, Lk5/d;->T(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_8

    :try_start_0
    invoke-static {v4}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lk5/d;->l:Lk5/d$D;

    iget v6, v5, Lk5/d$D;->b:I

    iput v6, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    iget v5, v5, Lk5/d$D;->c:I

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    const/4 v5, -0x1

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    :goto_3
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->updateOnEditor()V

    invoke-virtual {p0, v0, v1, v4}, Lk5/d;->L(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;ZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-void
.end method

.method public final e0(Ltc/h;LJAVARuntime/Vector3;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "quadPos",
            "buttonSize"
        }
    .end annotation

    invoke-virtual {p0}, Lf5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Ltc/h;->e:Z

    if-nez v1, :cond_0

    sget-object v1, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v1}, Lrc/a$g;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p1, p1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int v2, v1, p3

    add-int/2addr p3, p2

    if-lt v0, v1, :cond_0

    if-gt v0, v2, :cond_0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->T:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "UI Editor"

    return-object v0
.end method

.method public j()I
    .locals 1

    sget-object v0, Lk5/d;->B:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    sget-object v0, Lk5/d;->C:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    sget-object v0, Lk5/d;->A:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget-object v0, Lk5/d;->y:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lf5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, LM7/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {p3, v0}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LM7/o;

    new-instance p3, Lk5/d$t;

    invoke-direct {p3, p0}, Lk5/d$t;-><init>(Lk5/d;)V

    sget-object v0, LM7/c$b;->Top:LM7/c$b;

    const v1, 0x7f070247

    invoke-direct {p1, v1, p3, v0, p2}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object p3, Lk5/d;->y:LAc/b;

    invoke-virtual {p1, p3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object p1

    sget-object p3, Lk5/d;->z:LAc/b;

    invoke-virtual {p1, p3}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object p1

    sget-object p3, Lk5/d;->B:LAc/b;

    invoke-virtual {p1, p3}, LM7/o;->H0(LAc/b;)LM7/o;

    move-result-object p1

    sget-object p3, Lk5/d;->C:LAc/b;

    invoke-virtual {p1, p3}, LM7/o;->E0(LAc/b;)LM7/o;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060232

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, LM7/c;->m0(I)LM7/c;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060231

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, LM7/c;->Y(I)LM7/c;

    return-void
.end method

.method public r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lf5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, LM7/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {p3, v1}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v1, Lk5/d$p;

    invoke-direct {v1, p0}, Lk5/d$p;-><init>(Lk5/d;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v3, 0x7f0701d3

    invoke-direct {p3, v3, v1, v2, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lk5/d;->y:LAc/b;

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    sget-object v3, Lk5/d;->z:LAc/b;

    invoke-virtual {p3, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    sget-object v4, Lk5/d;->B:LAc/b;

    invoke-virtual {p3, v4}, LM7/c;->k0(LAc/b;)LM7/c;

    move-result-object p3

    sget-object v5, Lk5/d;->C:LAc/b;

    invoke-virtual {p3, v5}, LM7/c;->P(LAc/b;)LM7/c;

    move-result-object p3

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v8

    invoke-direct {v6, v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v6}, LM7/c;->e0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060232

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060231

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v6, Lk5/d$q;

    invoke-direct {v6, p0}, Lk5/d$q;-><init>(Lk5/d;)V

    const v10, 0x7f070251

    invoke-direct {p3, v10, v6, v2, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v4}, LM7/c;->k0(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v5}, LM7/c;->P(LAc/b;)LM7/c;

    move-result-object p3

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v10

    invoke-direct {v6, v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v6}, LM7/c;->e0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/c;

    new-instance v6, Lk5/d$r;

    invoke-direct {v6, p0}, Lk5/d$r;-><init>(Lk5/d;)V

    const v10, 0x7f0701b5

    invoke-direct {p3, v10, v6, v2, p2}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v4}, LM7/c;->k0(LAc/b;)LM7/c;

    move-result-object p3

    invoke-virtual {p3, v5}, LM7/c;->P(LAc/b;)LM7/c;

    move-result-object p3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v6

    invoke-direct {v2, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v2}, LM7/c;->e0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v2}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v2}, LM7/c;->Y(I)LM7/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/e;

    iget-object v2, p0, Lk5/d;->l:Lk5/d$D;

    iget-object v2, v2, Lk5/d$D;->a:Ljava/lang/String;

    new-instance v6, Lk5/d$s;

    invoke-direct {v6, p0}, Lk5/d$s;-><init>(Lk5/d;)V

    const v8, 0x7f070232

    invoke-direct {p3, v8, v2, v6, p2}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, LM7/e;->T(LAc/b;)LM7/e;

    move-result-object p3

    invoke-virtual {p3, v3}, LM7/e;->M(LAc/b;)LM7/e;

    move-result-object p3

    invoke-virtual {p3, v4}, LM7/e;->f0(LAc/b;)LM7/e;

    move-result-object p3

    invoke-virtual {p3, v5}, LM7/e;->P(LAc/b;)LM7/e;

    move-result-object p3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v1}, LM7/e;->b0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, LM7/e;->X(I)LM7/e;

    move-result-object p3

    iput-object p3, p0, Lk5/d;->m:LM7/e;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, LM7/k;

    invoke-static {v0, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {p3, p2}, LM7/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    :try_start_0
    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {p1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p1, p1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    invoke-virtual {p0}, Lk5/d;->c0()V

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->Disable:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->S1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    iget-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p1, p1, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    const/4 p1, 0x0

    iput p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iput p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    invoke-virtual {p0}, Lk5/d;->U()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    const v3, 0x459c1800    # 4995.0f

    invoke-virtual {v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-eqz p1, :cond_1

    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    new-instance v4, Lk5/d$v;

    const v5, 0x7f070221

    invoke-static {v5, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v5

    invoke-direct {v4, p0, v1, v5, p2}, Lk5/d$v;-><init>(Lk5/d;ILub/p;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    new-instance p2, Lk5/d$w;

    const v4, 0x7f070096

    invoke-static {v4, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lk5/d$w;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    new-instance p2, Lk5/d$x;

    const v4, 0x7f070079

    invoke-static {v4, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lk5/d$x;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    new-instance p2, Lk5/d$y;

    const v4, 0x7f0700a0

    invoke-static {v4, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lk5/d$y;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    new-instance p2, Lk5/d$z;

    const v4, 0x7f070266

    invoke-static {v4, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lk5/d$z;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk5/d;->g:Ljava/util/List;

    new-instance p2, Lk5/d$A;

    const v4, 0x7f07022e

    invoke-static {v4, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, Lk5/d$A;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lk5/d;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const p2, 0x7f0700b8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lk5/d;->i:Ljava/util/List;

    new-instance v4, Lk5/d$B;

    invoke-static {p2, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object v5

    invoke-direct {v4, p0, v1, v5}, Lk5/d$B;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lk5/d;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lk5/d;->j:Ljava/util/List;

    new-instance v4, Lk5/d$C;

    invoke-static {p2, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object p2

    invoke-direct {v4, p0, v1, p2}, Lk5/d$C;-><init>(Lk5/d;ILub/p;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lk5/d;->p:Lub/p;

    if-nez p1, :cond_4

    const p1, 0x7f07024d

    invoke-static {p1, v3}, Lw3/n;->c(II)Lub/n;

    move-result-object p1

    iput-object p1, p0, Lk5/d;->p:Lub/p;

    :cond_4
    iget-object p1, p0, Lk5/d;->q:Lub/p;

    if-nez p1, :cond_5

    const p1, 0x7f07019a

    invoke-static {p1, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object p1

    iput-object p1, p0, Lk5/d;->q:Lub/p;

    :cond_5
    iget-object p1, p0, Lk5/d;->r:Lub/p;

    if-nez p1, :cond_6

    const p1, 0x7f070067

    invoke-static {p1, v3, v0, v2, v0}, Lw3/n;->h(IIZZZ)Lub/n;

    move-result-object p1

    iput-object p1, p0, Lk5/d;->r:Lub/p;

    :cond_6
    invoke-virtual {p0}, Lk5/d;->c0()V

    return-void
.end method

.method public v()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lk5/d;->y:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lk5/d;->s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lk5/d;->z:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lk5/d;->t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lk5/d;->u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lk5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lk5/d;->D:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public w()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    sget-object v0, Lk5/d;->I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    sget-object v0, Lk5/d;->J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public y()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    sget-object v0, Lk5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method
