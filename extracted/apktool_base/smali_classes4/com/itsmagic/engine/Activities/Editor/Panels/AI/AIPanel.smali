.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$m;
    }
.end annotation


# static fields
.field public static final h0:Ljava/lang/String; = "AIPanel"


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Landroidx/recyclerview/widget/RecyclerView;

.field public Z:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public b0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;",
            ">;"
        }
    .end annotation
.end field

.field public e0:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public f0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AI 3D Models"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->b0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic A1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static D1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "gameObject"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$d;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static E1(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/16 v0, 0x208

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x168

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;-><init>()V

    invoke-static {p0, v2, p1, v0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private F1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "prompt",
            "taskTag",
            "gameObject",
            "objFile",
            "textureFile",
            "normalTexture",
            "metallicTexture",
            "roughnessTexture"
        }
    .end annotation

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Ljava/io/File;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    invoke-static {v9}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private G1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prompt",
            "taskTag"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v4, LJAVARuntime/GizmoObject;

    invoke-direct {v4}, LJAVARuntime/GizmoObject;-><init>()V

    const-string v1, "Editor/AI/Models/Gift/gift.obj"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    new-instance v1, LJAVARuntime/Color;

    invoke-direct {v1}, LJAVARuntime/Color;-><init>()V

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoTransform;->setScale(F)V

    const-string v1, "@@ASSET@@/Editor/AI/Models/Gift/gift_texture.jpg"

    invoke-static {v1}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v1

    invoke-virtual {v1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v1

    invoke-virtual {v4, v1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xbc

    const/16 v3, 0xf9

    const/16 v6, 0xf

    invoke-direct {v1, v6, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/high16 v3, 0x3f400000    # 0.75f

    const v6, 0x3cf5c28f    # 0.03f

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FF)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;

    const-string v3, ""

    move-object v1, v9

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$9;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Ljava/lang/String;LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$a;

    invoke-direct {p1, p0, v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 p2, 0x5

    invoke-static {p2, p1}, LK8/a;->h(ILjava/lang/Runnable;)V

    invoke-static {v8}, LK8/a;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->G1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Z:Le7/a;

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->F1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic s1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->D1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->a0:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->B1()V

    return-void
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->d0:Le7/a;

    return-object p0
.end method

.method public static synthetic w1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static synthetic x1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->C1()V

    return-void
.end method

.method public static synthetic y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->b0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic z1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;I)I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->g0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->g0:I

    return v0
.end method


# virtual methods
.method public final B1()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->b0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Z:Le7/a;

    invoke-virtual {v0}, Le7/a;->getItemCount()I

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->e(ILcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;)V

    :cond_0
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f09023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$f;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->a0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-direct {v1, v3, v4}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Z:Le7/a;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->B1()V

    const v1, 0x7f0903e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->e0:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-direct {v1, v2, v3}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->d0:Le7/a;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$j;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->C1()V

    return-object v0
.end method

.method public final C1()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->g0:I

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->d(ILcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;)V

    :cond_0
    return-void
.end method
