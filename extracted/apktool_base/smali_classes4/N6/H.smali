.class public LN6/H;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN6/H$g;
    }
.end annotation


# static fields
.field public static final F:J = 0x12cL

.field public static final G:F = 48.0f


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Z

.field public C:Z

.field public final D:Ljava/lang/Runnable;

.field public final E:Ljava/lang/Runnable;

.field public final b:Landroid/graphics/Paint;

.field public c:F

.field public d:F

.field public e:F

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LN6/p;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LN6/p;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LN6/w;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LN6/w;",
            ">;"
        }
    .end annotation
.end field

.field public j:LN6/g;

.field public k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field public l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:LN6/p;

.field public p:Z

.field public q:F

.field public r:F

.field public s:J

.field public t:J

.field public u:Landroid/view/ScaleGestureDetector;

.field public v:LN6/w;

.field public w:LN6/w;

.field public x:Z

.field public y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

.field public z:LN6/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LN6/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, LN6/H;->b:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, LN6/H;->e:F

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LN6/H;->f:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LN6/H;->g:Ljava/util/Map;

    .line 7
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LN6/H;->h:Ljava/util/List;

    .line 8
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, LN6/H;->i:Ljava/util/List;

    .line 9
    new-instance v1, LN6/H$a;

    invoke-direct {v1, p0}, LN6/H$a;-><init>(LN6/H;)V

    iput-object v1, p0, LN6/H;->D:Ljava/lang/Runnable;

    .line 10
    new-instance v1, LN6/H$b;

    invoke-direct {v1, p0}, LN6/H$b;-><init>(LN6/H;)V

    iput-object v1, p0, LN6/H;->E:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 15
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_GRID:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    .line 16
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    new-instance p2, LN6/g;

    invoke-direct {p2, p1}, LN6/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LN6/H;->j:LN6/g;

    .line 19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p2, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 21
    iget-object p2, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    iget-object p2, p0, LN6/H;->j:LN6/g;

    iget v0, p0, LN6/H;->e:F

    invoke-virtual {p2, v0}, LN6/g;->setGraphScale(F)V

    .line 23
    new-instance p2, LN6/v;

    invoke-direct {p2, p0}, LN6/v;-><init>(LN6/H;)V

    iput-object p2, p0, LN6/H;->z:LN6/v;

    .line 24
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, LN6/H$c;

    invoke-direct {v0, p0}, LN6/H$c;-><init>(LN6/H;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, LN6/H;->u:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static B(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "nodeId",
            "inputIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic Q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic R(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic S(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic T(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic U(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic a(LN6/H;)V
    .locals 0

    invoke-virtual {p0}, LN6/H;->V()V

    return-void
.end method

.method public static synthetic b(LN6/H;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/H;->P(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LN6/H;->T(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(LN6/H;)V
    .locals 0

    invoke-virtual {p0}, LN6/H;->Y()V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LN6/H;->S(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(LN6/H;)V
    .locals 0

    invoke-virtual {p0}, LN6/H;->W()V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LN6/H;->R(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LN6/H;->U(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1}, LN6/H;->Q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(LN6/H;)V
    .locals 0

    invoke-virtual {p0}, LN6/H;->X()V

    return-void
.end method

.method public static synthetic k(LN6/H;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 0

    iget-object p0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object p0
.end method

.method public static synthetic l(LN6/H;)V
    .locals 0

    invoke-virtual {p0}, LN6/H;->s0()V

    return-void
.end method

.method public static synthetic m(LN6/H;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LN6/H;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic n(LN6/H;)F
    .locals 0

    iget p0, p0, LN6/H;->e:F

    return p0
.end method

.method public static synthetic o(LN6/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V
    .locals 0

    invoke-virtual {p0, p1}, LN6/H;->q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/H;->o:LN6/p;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->g()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    iget v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    invoke-virtual {p0}, LN6/H;->f0()V

    invoke-virtual {p0}, LN6/H;->b0()V

    return-void
.end method

.method public final C(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "requiredStage"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p2, v5, :cond_4

    sget-object v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne v4, v6, :cond_4

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p2, v6, :cond_5

    if-ne v4, v5, :cond_5

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    iget-object v5, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v5, p1, v4}, LN6/H;->B(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-object v1
.end method

.method public final D([Ljava/lang/String;Ljava/util/List;)Ldd/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "folders",
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)",
            "Ldd/b;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_7

    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x1

    if-eqz v0, :cond_3

    move v5, v1

    :goto_1
    iget-object v6, v0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldd/b;

    iget-object v7, v6, Ldd/b;->b:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_6

    new-instance v4, Ldd/b;

    sget-object v5, Ldd/b$b;->Folder:Ldd/b$b;

    invoke-direct {v4, v5, v3}, Ldd/b;-><init>(Ldd/b$b;Ljava/lang/String;)V

    iget-object v0, v0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_5

    :cond_3
    move v5, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldd/b;

    iget-object v7, v6, Ldd/b;->b:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v0, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_4
    if-nez v4, :cond_6

    new-instance v0, Ldd/b;

    sget-object v4, Ldd/b$b;->Folder:Ldd/b$b;

    invoke-direct {v0, v4, v3}, Ldd/b;-><init>(Ldd/b$b;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public final E(FF)LN6/w;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawX",
            "rawY"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move-object v4, v0

    move v7, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LN6/p;

    invoke-virtual {v8}, LN6/p;->getInputSockets()[LN6/w;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, LN6/H;->r0([LN6/w;FFLN6/w;F)LN6/w;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4, p1, p2}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v7

    :cond_0
    invoke-virtual {v8}, LN6/p;->getOutputSockets()[LN6/w;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, LN6/H;->r0([LN6/w;FFLN6/w;F)LN6/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1, p2}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v7

    :cond_1
    invoke-virtual {v8}, LN6/p;->getBranchSocket()LN6/w;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, p1, p2}, LN6/H;->M(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p1, p2}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v2

    cmpg-float v3, v2, v7

    if-gez v3, :cond_2

    move-object v4, v1

    move v7, v2

    goto :goto_0

    :cond_2
    move-object v4, v0

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public final F(FFZ)LN6/w;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawX",
            "rawY",
            "expectedInput"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    move-object v7, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    invoke-virtual {v1}, LN6/p;->getInputSockets()[LN6/w;

    move-result-object v4

    if-eqz p3, :cond_3

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, LN6/H;->r0([LN6/w;FFLN6/w;F)LN6/w;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3, p1, p2}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v2

    :cond_1
    invoke-virtual {v1}, LN6/p;->getBranchSocket()LN6/w;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LN6/w;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, p1, p2}, LN6/H;->M(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, p1, p2}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_2

    move-object v3, v1

    move v2, v4

    :cond_2
    move-object v7, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, LN6/p;->getOutputSockets()[LN6/w;

    move-result-object v4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, LN6/H;->r0([LN6/w;FFLN6/w;F)LN6/w;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p1, p2}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v2

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method public G(FF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawX",
            "rawY"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LN6/H;->a0()V

    iget-object v0, p0, LN6/H;->v:LN6/w;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p1}, LN6/g;->a()V

    iput-object v1, p0, LN6/H;->w:LN6/w;

    return-void

    :cond_1
    invoke-virtual {v0}, LN6/w;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v3}, LN6/H;->F(FFZ)LN6/w;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2}, LN6/H;->E(FF)LN6/w;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, LN6/H;->F(FFZ)LN6/w;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2}, LN6/H;->E(FF)LN6/w;

    move-result-object v2

    :cond_3
    :goto_0
    iget-object p1, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p1}, LN6/g;->a()V

    iput-object v1, p0, LN6/H;->v:LN6/w;

    iput-object v1, p0, LN6/H;->w:LN6/w;

    if-eqz v2, :cond_2d

    if-ne v2, v0, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v0}, LN6/w;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v2

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    invoke-virtual {v0}, LN6/w;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    invoke-virtual {p1}, LN6/w;->e()Z

    move-result p2

    if-nez p2, :cond_28

    invoke-virtual {v0}, LN6/w;->e()Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p1}, LN6/w;->getNodeView()LN6/p;

    move-result-object p2

    invoke-virtual {p2}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object p2

    invoke-virtual {v0}, LN6/w;->getNodeView()LN6/p;

    move-result-object v2

    invoke-virtual {v2}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v2

    if-eqz p2, :cond_25

    if-nez v2, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v0}, LN6/w;->d()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p1}, LN6/w;->getType()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v4, v5, :cond_9

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result v4

    invoke-virtual {v0}, LN6/w;->getSlotIndex()I

    move-result v5

    invoke-virtual {p0, p2, v4, v2, v5}, LN6/H;->I(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v4}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_a
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_b
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_c
    iget-object v4, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_e

    iget-object v4, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    invoke-virtual {v0}, LN6/w;->getSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_e

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_d
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_e
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, LN6/w;->getSlotIndex()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, LN6/H;->K(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_f
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_10
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_11
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LN6/w;->getSlotIndex()I

    move-result v5

    invoke-virtual {p0, v4, v5}, LN6/H;->h0(Ljava/lang/String;I)V

    iget-object v4, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, LN6/w;->getSlotIndex()I

    move-result v0

    invoke-direct {v5, p2, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LN6/H;->b0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_12
    :goto_3
    invoke-virtual {v0}, LN6/w;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, LN6/w;->getType()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v0

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq v0, v4, :cond_13

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_OUTPUT_DOES_NOT_ACCEPT_BRANCH:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_14
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_15
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_16
    instance-of v0, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/e;

    if-nez v0, :cond_19

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_ONLY_COMPARISON_BRANCH:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_17
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_18

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_18
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_19
    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    if-nez v4, :cond_1a

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    :cond_1a
    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    if-eqz v4, :cond_1b

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_4

    :cond_1c
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_1d

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, LN6/H;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v4, :cond_1e

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1f
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_20

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_20
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_21
    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, p1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LN6/H;->b0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_22
    :goto_5
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_BRANCH_NEEDS_BRANCH_INPUT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_23
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_24

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_24
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_25
    :goto_6
    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_26
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_27

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_27
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_28
    :goto_7
    iget-object p1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_29
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_2a
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_CONNECT_OUTPUT_TO_INPUT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2b
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_2c
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_2d
    :goto_8
    iget-object p1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz p1, :cond_30

    if-nez v2, :cond_2e

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    invoke-virtual {p0}, LN6/H;->b0()V

    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_2e
    invoke-virtual {p0}, LN6/H;->j0()V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object p1, p0, LN6/H;->j:LN6/g;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2f
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void

    :cond_30
    iget-boolean p1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_31

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_31
    iput-boolean v3, p0, LN6/H;->x:Z

    return-void
.end method

.method public H()V
    .locals 9

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN6/p;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lez v7, :cond_2

    if-gtz v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v5

    iget v5, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    invoke-virtual {v6}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v6

    iget v6, v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    int-to-float v7, v7

    add-float/2addr v7, v5

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    new-instance v0, LN6/H$e;

    invoke-direct {v0, p0}, LN6/H$e;-><init>(LN6/H;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v0, v6

    sub-float/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v7, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v8, v2, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float/2addr v5, v7

    div-float/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3fcccccd    # 1.6f

    invoke-static {v5, v0, v6}, LNc/b;->E(FFF)F

    move-result v0

    add-float/2addr v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    add-float/2addr v4, v2

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, LN6/H;->c:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    iput v2, p0, LN6/H;->d:F

    iput v0, p0, LN6/H;->e:F

    iget-object v1, p0, LN6/H;->j:LN6/g;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, LN6/g;->setGraphScale(F)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LN6/H;->t:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN6/H;->i0(LN6/p;)V

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    invoke-virtual {v1}, LN6/p;->f0()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, LN6/H;->u0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, LN6/H;->j:LN6/g;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_9
    :goto_2
    new-instance v0, LN6/H$d;

    invoke-direct {v0, p0}, LN6/H$d;-><init>(LN6/H;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final I(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "fromSlot",
            "to",
            "toSlot"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, LN6/H$g;

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-direct {v0, v1}, LN6/H$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    aget-object v0, v0, p4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Z

    move-result v1

    const-string v2, ": "

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INCOMPATIBLE_TYPE:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    aget-object p4, v0, p4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object p4

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p4, p2, :cond_2

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_FRAGMENT_TO_VERTEX:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-eq p4, p2, :cond_3

    if-ne p4, v0, :cond_4

    :cond_3
    invoke-virtual {p0, p1, p4}, LN6/H;->C(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_CHAIN_CONTAINS_OPPOSITE_STAGE_NODE:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LN6/H;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_0
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    div-float/2addr v2, p1

    div-float/2addr v3, p1

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/PointF;

    aget v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final K(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromNodeId",
            "fromSlot",
            "toNodeId",
            "toSlot"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    if-eq p2, v3, :cond_4

    goto :goto_0

    :cond_4
    iget v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    if-eq p4, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public final L(FF)LN6/p;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float v4, p1, v4

    div-float/2addr v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v2, p2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, LN6/p;->R(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final M(Landroid/view/View;FF)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "socket",
            "rawX",
            "rawY"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v4, v3

    sub-float/2addr v4, v1

    const/4 v5, 0x1

    aget v6, v0, v5

    int-to-float v6, v6

    sub-float/2addr v6, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    add-float/2addr v3, v1

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    add-float/2addr p1, v1

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_0

    cmpg-float p2, p2, v3

    if-gtz p2, :cond_0

    cmpl-float p2, p3, v6

    if-ltz p2, :cond_0

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_0

    move v2, v5

    :cond_0
    return v2
.end method

.method public N()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LN6/H;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, LN6/H;->o:LN6/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN6/H;->o:LN6/p;

    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic P(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    check-cast p1, LN6/w;

    invoke-static {}, LN7/c;->Y()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, LN6/H;->t0(FF)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, LN6/H;->G(FF)V

    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, LN6/H;->o0(LN6/w;FF)V

    return v1
.end method

.method public final synthetic V()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LN6/H;->n:Z

    iput-boolean v0, p0, LN6/H;->C:Z

    invoke-virtual {p0}, LN6/H;->s0()V

    return-void
.end method

.method public final synthetic W()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;-><init>()V

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;->j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LN6/H;->m:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;-><init>()V

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object v0

    iget-object v1, p0, LN6/H;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)V

    iget-object v0, p0, LN6/H;->m:Ljava/lang/String;

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->w(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LN6/x;

    invoke-direct {v0, p0}, LN6/x;-><init>(LN6/H;)V

    :goto_0
    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, LN6/x;

    invoke-direct {v0, p0}, LN6/x;-><init>(LN6/H;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, LN6/x;

    invoke-direct {v1, p0}, LN6/x;-><init>(LN6/H;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public final synthetic X()V
    .locals 1

    iget-object v0, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->J()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LN6/H;->C:Z

    :cond_1
    return-void
.end method

.method public final synthetic Y()V
    .locals 1

    invoke-static {}, Lda/h;->s()V

    iget-object v0, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->O()V

    new-instance v0, LN6/y;

    invoke-direct {v0, p0}, LN6/y;-><init>(LN6/H;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Z(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;->e(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;->d()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->e()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    return-object p1
.end method

.method public final a0()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LN6/H;->s:J

    iget-object v0, p0, LN6/H;->z:LN6/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN6/v;->C()V

    :cond_0
    return-void
.end method

.method public b0()V
    .locals 3

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c:J

    iget-object v0, p0, LN6/H;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, LN6/H;->D:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    if-eqz v1, :cond_1

    iget-object v2, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, v2}, LN6/p;->g0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LN6/H;->u0()V

    iget-object v0, p0, LN6/H;->j:LN6/g;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c0()V
    .locals 1

    invoke-virtual {p0}, LN6/H;->u0()V

    iget-object v0, p0, LN6/H;->j:LN6/g;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d0(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    iget v0, p0, LN6/H;->c:F

    add-float/2addr v0, p1

    iput v0, p0, LN6/H;->c:F

    iget p1, p0, LN6/H;->d:F

    add-float/2addr p1, p2

    iput p1, p0, LN6/H;->d:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, LN6/H;->t:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN6/H;->i0(LN6/p;)V

    iget-object p1, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LN6/p;

    invoke-virtual {p2}, LN6/p;->f0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LN6/H;->u0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, LN6/H;->u:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, LN6/H;->a0()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    return v1

    :cond_0
    invoke-virtual {p0, p1}, LN6/H;->J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, LN6/H;->q:F

    sub-float v2, v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, LN6/H;->r:F

    sub-float v3, p1, v3

    iput v0, p0, LN6/H;->q:F

    iput p1, p0, LN6/H;->r:F

    invoke-virtual {p0, v2, v3}, LN6/H;->d0(FF)V

    return v1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, LN6/H;->p:Z

    return v1

    :cond_2
    invoke-virtual {p0, p1}, LN6/H;->J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-boolean v1, p0, LN6/H;->p:Z

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, LN6/H;->q:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, LN6/H;->r:F

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e0()V
    .locals 2

    iget-object v0, p0, LN6/H;->b:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_GRID:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LN6/H;->j:LN6/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN6/g;->e()V

    :cond_0
    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LN6/p;->c0()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LN6/H;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/w;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LN6/w;->f()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, LN6/H;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/w;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LN6/w;->f()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final f0()V
    .locals 13

    invoke-virtual {p0}, LN6/H;->w()V

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/r;->a()V

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    new-instance v2, LN6/p;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, LN6/p;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;LN6/H;)V

    iget-object v3, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, LN6/H;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, LN6/p;->f0()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, LN6/p;->setPreviewEnabled(Z)V

    iget-object v3, p0, LN6/H;->z:LN6/v;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, LN6/v;->s(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, LN6/p;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v3, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->n(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v3

    const/high16 v6, 0x41f00000    # 30.0f

    if-eqz v3, :cond_8

    array-length v7, v3

    if-lez v7, :cond_8

    array-length v7, v3

    new-array v7, v7, [LN6/w;

    move v8, v5

    :goto_3
    array-length v9, v3

    if-ge v8, v9, :cond_7

    aget-object v9, v3, v8

    iget-object v10, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, v10, v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;I)I

    move-result v10

    if-gez v10, :cond_5

    goto :goto_5

    :cond_5
    new-instance v11, LN6/w;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, LN6/w;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_6

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    goto :goto_4

    :cond_6
    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :goto_4
    invoke-virtual {v11, v2, v4, v10, v9}, LN6/w;->a(LN6/p;ZILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    invoke-virtual {p0, v11}, LN6/H;->r(LN6/w;)V

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v9

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11}, Landroid/view/View;->bringToFront()V

    aput-object v11, v7, v8

    iget-object v9, p0, LN6/H;->h:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v7}, LN6/p;->setInputSockets([LN6/w;)V

    :cond_8
    iget-object v3, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v4, v3

    if-lez v4, :cond_b

    array-length v4, v3

    new-array v4, v4, [LN6/w;

    move v7, v5

    :goto_6
    array-length v8, v3

    if-ge v7, v8, :cond_a

    aget-object v8, v3, v7

    new-instance v9, LN6/w;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, LN6/w;-><init>(Landroid/content/Context;)V

    if-eqz v8, :cond_9

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    goto :goto_7

    :cond_9
    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :goto_7
    invoke-virtual {v9, v2, v5, v7, v8}, LN6/w;->a(LN6/p;ZILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    invoke-virtual {p0, v9}, LN6/H;->r(LN6/w;)V

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v8

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->bringToFront()V

    aput-object v9, v4, v7

    iget-object v8, p0, LN6/H;->h:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v2, v4}, LN6/p;->setOutputSockets([LN6/w;)V

    :cond_b
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, LN6/w;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, LN6/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LN6/w;->b(LN6/p;)V

    invoke-virtual {p0, v1}, LN6/H;->r(LN6/w;)V

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, LN6/H;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, LN6/p;->setBranchSocket(LN6/w;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, LN6/H;->j:LN6/g;

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v2, p0, LN6/H;->g:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, LN6/g;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;)V

    invoke-virtual {p0}, LN6/H;->u0()V

    return-void
.end method

.method public final g0(LN6/w;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, LN6/w;->getNodeView()LN6/p;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result v2

    invoke-virtual {p1}, LN6/w;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    if-nez p1, :cond_2

    return v1

    :cond_2
    new-instance v1, LN6/z;

    invoke-direct {v1, v0}, LN6/z;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, LN6/w;->e()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, LN6/w;->getType()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v3, v4, :cond_5

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    if-nez p1, :cond_4

    return v1

    :cond_4
    new-instance v1, LN6/A;

    invoke-direct {v1, v0, v2}, LN6/A;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_5
    iget-object v3, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez v3, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, LN6/w;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    new-instance v1, LN6/B;

    invoke-direct {v1, v0, v2}, LN6/B;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_7
    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    new-instance v1, LN6/C;

    invoke-direct {v1, v0, v2}, LN6/C;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v1
.end method

.method public getGraphData()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 1

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object v0
.end method

.method public getLastInteractionTime()J
    .locals 2

    iget-wide v0, p0, LN6/H;->s:J

    return-wide v0
.end method

.method public getNodeViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LN6/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, LN6/H;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPanX()F
    .locals 1

    iget v0, p0, LN6/H;->c:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    iget v0, p0, LN6/H;->d:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, LN6/H;->e:F

    return v0
.end method

.method public getSelectedNodeView()LN6/p;
    .locals 1

    iget-object v0, p0, LN6/H;->o:LN6/p;

    return-object v0
.end method

.method public final h0(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "slotIndex"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LN6/F;

    invoke-direct {v1, p1, p2}, LN6/F;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public i0(LN6/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeView"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->o:LN6/p;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LN6/p;->setSelected(Z)V

    :cond_1
    iput-object p1, p0, LN6/H;->o:LN6/p;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LN6/p;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public final j0()V
    .locals 6

    iget-object v0, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    :cond_1
    iget-object v0, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    invoke-virtual {p0, v1, v0}, LN6/H;->h0(Ljava/lang/String;I)V

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v2, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    iget v4, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public k0()V
    .locals 3

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/H;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, LN6/H;->m:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LN6/H;->C:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, LN6/H;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, LN6/H;->C:Z

    iput-boolean v1, p0, LN6/H;->n:Z

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->q()V

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LN6/D;

    invoke-direct {v1, p0}, LN6/D;-><init>(LN6/H;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-boolean v2, p0, LN6/H;->C:Z

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, LN6/H;->C:Z

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->q()V

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    new-instance v0, LN6/E;

    invoke-direct {v0, p0}, LN6/E;-><init>(LN6/H;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_MATERIAL_GRAPH_SAVED:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public l0(FF)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy"
        }
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, LN6/H;->c:F

    sub-float/2addr p1, v1

    iget v1, p0, LN6/H;->e:F

    div-float/2addr p1, v1

    iget v2, p0, LN6/H;->d:F

    sub-float/2addr p2, v2

    div-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public m0(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/r;->a()V

    invoke-virtual {p0}, LN6/H;->u()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lr4/a$e;->Above:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n0(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, p0, v0}, LN6/f;->G1(Landroid/view/View;Lr4/a$e;LN6/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    :goto_0
    return-void
.end method

.method public o0(LN6/w;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "rawX",
            "rawY"
        }
    .end annotation

    iput-object p1, p0, LN6/H;->v:LN6/w;

    iput-object p1, p0, LN6/H;->w:LN6/w;

    invoke-virtual {p0}, LN6/H;->a0()V

    const/4 v0, 0x0

    iput-object v0, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    const/4 v1, 0x0

    iput-boolean v1, p0, LN6/H;->x:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LN6/w;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LN6/w;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LN6/w;->getNodeView()LN6/p;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LN6/w;->getSlotIndex()I

    move-result v2

    invoke-static {v1, v0, v2}, LN6/H;->B(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    iget v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v1, p0, LN6/H;->y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    iget v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toSlot:I

    invoke-virtual {p0, v1, v2}, LN6/H;->h0(Ljava/lang/String;I)V

    iget-object v1, p0, LN6/H;->g:Ljava/util/Map;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {v1, v0}, LN6/p;->K(I)LN6/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, LN6/H;->w:LN6/w;

    :cond_1
    iget-object v0, p0, LN6/H;->j:LN6/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p0, p2, p3}, LN6/H;->p0(FF)Landroid/graphics/PointF;

    move-result-object p2

    iget-object p3, p0, LN6/H;->j:LN6/g;

    iget-object v0, p0, LN6/H;->w:LN6/w;

    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1, v0, p2}, LN6/g;->g(LN6/w;FF)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LN6/H;->z(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, LN6/H;->u:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, LN6/H;->L(FF)LN6/p;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LN6/H;->E(FF)LN6/w;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LN6/H;->u0()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->u:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, LN6/H;->a0()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_7

    iget-boolean v0, p0, LN6/H;->p:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, LN6/H;->p:Z

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_7

    invoke-virtual {p0, p1}, LN6/H;->J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-boolean v3, p0, LN6/H;->p:Z

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, LN6/H;->q:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, LN6/H;->r:F

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_7

    iget-boolean v0, p0, LN6/H;->p:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, LN6/H;->J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-boolean v3, p0, LN6/H;->p:Z

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p0, LN6/H;->q:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, LN6/H;->r:F

    :cond_3
    invoke-virtual {p0, p1}, LN6/H;->J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, LN6/H;->q:F

    sub-float v1, v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, LN6/H;->r:F

    sub-float v2, p1, v2

    iput v0, p0, LN6/H;->q:F

    iput p1, p0, LN6/H;->r:F

    invoke-virtual {p0, v1, v2}, LN6/H;->d0(FF)V

    return v3

    :cond_4
    iget-boolean v0, p0, LN6/H;->p:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, LN6/H;->p:Z

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, LN6/H;->L(FF)LN6/p;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, LN6/H;->E(FF)LN6/w;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN6/H;->i0(LN6/p;)V

    return v3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_7

    invoke-virtual {p0, p1}, LN6/H;->J(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-boolean v3, p0, LN6/H;->p:Z

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, LN6/H;->q:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, LN6/H;->r:F

    return v3

    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v3, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v1, v3

    :cond_9
    return v1
.end method

.method public p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;-><init>()V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->id:Ljava/lang/String;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0, p1, v2}, LN6/H;->l0(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    invoke-virtual {p0}, LN6/H;->f0()V

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p0(FF)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawX",
            "rawY"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public final q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeInterface"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;->a()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawCubemapNode;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, LN6/H;->l0(FF)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y:F

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    invoke-virtual {p0}, LN6/H;->f0()V

    invoke-virtual {p0}, LN6/H;->b0()V

    :cond_5
    :goto_0
    return-void
.end method

.method public q0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p1}, LN6/g;->i()V

    iget-object p1, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN6/p;

    invoke-virtual {v0}, LN6/p;->t0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LN6/H;->z:LN6/v;

    if-eqz p1, :cond_2

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, LN6/v;->O(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, LN6/H;->s0()V

    return-void
.end method

.method public final r(LN6/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    new-instance v0, LN6/G;

    invoke-direct {v0, p0}, LN6/G;-><init>(LN6/H;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final r0([LN6/w;FFLN6/w;F)LN6/w;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sockets",
            "rawX",
            "rawY",
            "best",
            "bestDist"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, p2, p3}, LN6/H;->M(Landroid/view/View;FF)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p2, p3}, LN6/H;->y(Landroid/view/View;FF)F

    move-result v3

    cmpg-float v4, v3, p5

    if-gez v4, :cond_3

    move-object p4, v2

    move p5, v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p4
.end method

.method public s(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object p1, p0, LN6/H;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, LN6/H;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LN6/H;->Z(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    iput-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    const-string v1, "Node graph"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g0(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    iget-object p1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    iput-object v0, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object p1, p0, LN6/H;->z:LN6/v;

    if-eqz p1, :cond_2

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1, v0, v1}, LN6/v;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    :cond_2
    invoke-virtual {p0}, LN6/H;->f0()V

    invoke-virtual {p0}, LN6/H;->s0()V

    return-void

    :cond_3
    :goto_0
    iput-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0}, LN6/H;->w()V

    iget-object p1, p0, LN6/H;->z:LN6/v;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, v0}, LN6/v;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    :cond_4
    return-void
.end method

.method public final s0()V
    .locals 6

    iget-object v0, p0, LN6/H;->A:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/H;->m:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LN6/H;->n:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, p0, LN6/H;->A:Landroid/widget/TextView;

    const-string v3, "Compiling shader..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, LN6/H;->A:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LN6/H;->A:Landroid/widget/TextView;

    iget-object v2, p0, LN6/H;->E:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, LN6/H;->B:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, LN6/H;->A:Landroid/widget/TextView;

    const-string v3, "Compiled"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, LN6/H;->A:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, LN6/H;->A:Landroid/widget/TextView;

    iget-object v3, p0, LN6/H;->E:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, LN6/H;->A:Landroid/widget/TextView;

    iget-object v3, p0, LN6/H;->E:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, LN6/H;->C:Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, LN6/H;->A:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iput-boolean v0, p0, LN6/H;->B:Z

    return-void
.end method

.method public setCompileStatusView(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iput-object p1, p0, LN6/H;->A:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_0
    invoke-virtual {p0}, LN6/H;->s0()V

    return-void
.end method

.method public setScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newScale"
        }
    .end annotation

    iget v0, p0, LN6/H;->e:F

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3fcccccd    # 1.6f

    invoke-static {v1, p1, v2}, LNc/b;->E(FFF)F

    move-result p1

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    iget v2, p0, LN6/H;->c:F

    sub-float v2, v1, v2

    div-float/2addr v2, v0

    iget v4, p0, LN6/H;->d:F

    sub-float v4, v3, v4

    div-float/2addr v4, v0

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, p0, LN6/H;->c:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iput v3, p0, LN6/H;->d:F

    :cond_1
    iput p1, p0, LN6/H;->e:F

    iget-object v0, p0, LN6/H;->j:LN6/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, LN6/g;->setGraphScale(F)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LN6/H;->t:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LN6/H;->i0(LN6/p;)V

    iget-object p1, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN6/p;

    invoke-virtual {v0}, LN6/p;->f0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LN6/H;->u0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, LN6/H;->j:LN6/g;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public t(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, LN6/H;->m:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, LN6/H;->n:Z

    iput-object p1, p0, LN6/H;->l:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez p1, :cond_1

    iput-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0}, LN6/H;->w()V

    iget-object p1, p0, LN6/H;->z:LN6/v;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0}, LN6/v;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->g(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    iput-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v1, p0, LN6/H;->z:LN6/v;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v0}, LN6/v;->i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    :cond_2
    invoke-virtual {p0}, LN6/H;->f0()V

    invoke-virtual {p0}, LN6/H;->s0()V

    return-void
.end method

.method public t0(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawX",
            "rawY"
        }
    .end annotation

    iget-object v0, p0, LN6/H;->j:LN6/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LN6/H;->a0()V

    invoke-virtual {p0, p1, p2}, LN6/H;->p0(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, LN6/H;->w:LN6/w;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, LN6/H;->v:LN6/w;

    :goto_0
    iget-object v0, p0, LN6/H;->j:LN6/g;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2, v1, p1}, LN6/g;->g(LN6/w;FF)V

    return-void
.end method

.method public final u()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->b()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->e(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;->g()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, LN6/H;->D([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, LN6/H;->D([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, v3, Ldd/b;->c:Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    new-instance v4, Ldd/b;

    invoke-interface {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;->f()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LN6/H$f;

    invoke-direct {v6, p0, v2}, LN6/H$f;-><init>(LN6/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    invoke-direct {v4, v5, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final u0()V
    .locals 14

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p0}, LN6/H;->getScale()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN6/p;

    invoke-virtual {v3}, LN6/p;->getInputSockets()[LN6/w;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4

    move v8, v5

    :goto_1
    array-length v9, v4

    if-ge v8, v9, :cond_4

    aget-object v9, v4, v8

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v8}, LN6/p;->M(ZI)Landroid/graphics/PointF;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v9, v0}, LN6/w;->setVisualScale(F)V

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v11

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v12

    mul-float/2addr v10, v12

    add-float/2addr v11, v10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v11, v10

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v3}, LN6/p;->getCardLeftLocal()F

    move-result v12

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v10, v12

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v6

    sub-float/2addr v10, v12

    sub-float/2addr v10, v1

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setY(F)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, LN6/p;->getOutputSockets()[LN6/w;

    move-result-object v4

    if-eqz v4, :cond_7

    move v8, v5

    :goto_3
    array-length v9, v4

    if-ge v8, v9, :cond_7

    aget-object v9, v4, v8

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v5, v8}, LN6/p;->M(ZI)Landroid/graphics/PointF;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v9, v0}, LN6/w;->setVisualScale(F)V

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v11

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v12

    mul-float/2addr v10, v12

    add-float/2addr v11, v10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    sub-float/2addr v11, v10

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v3}, LN6/p;->getCardRightLocal()F

    move-result v12

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v10, v12

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v6

    sub-float/2addr v10, v12

    add-float/2addr v10, v1

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setY(F)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, LN6/p;->getBranchSocket()LN6/w;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, LN6/p;->getBranchAnchorLocal()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v4, v0}, LN6/w;->setVisualScale(F)V

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v5, v8

    add-float/2addr v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v7, v5

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, LN6/p;->getCardLeftLocal()F

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v8, v3

    add-float/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v5, v3

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "fromSlot",
            "to",
            "toSlot"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LN6/H;->I(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v0(FF)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wx",
            "wy"
        }
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, LN6/H;->e:F

    mul-float/2addr p1, v1

    iget v2, p0, LN6/H;->c:F

    add-float/2addr p1, v2

    mul-float/2addr p2, v1

    iget v1, p0, LN6/H;->d:F

    add-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN6/H;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LN6/H;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LN6/H;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/w;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LN6/H;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LN6/H;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/w;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, LN6/H;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LN6/H;->j:LN6/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, v1}, LN6/g;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;)V

    :cond_3
    iput-object v1, p0, LN6/H;->o:LN6/p;

    invoke-virtual {p0}, LN6/H;->s0()V

    return-void
.end method

.method public final w0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromId",
            "toId"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->branchConnections:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;

    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/H;->o:LN6/p;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    iget-object v1, p0, LN6/H;->k:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    invoke-virtual {p0}, LN6/H;->f0()V

    invoke-virtual {p0}, LN6/H;->b0()V

    return-void
.end method

.method public final y(Landroid/view/View;FF)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "socket",
            "rawX",
            "rawY"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    sub-float/2addr p2, v1

    sub-float/2addr p3, v0

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    return p2
.end method

.method public final z(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, p0, LN6/H;->e:F

    mul-float/2addr v3, v2

    const/high16 v2, 0x41000000    # 8.0f

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    move v3, v2

    :cond_1
    iget v2, p0, LN6/H;->c:F

    rem-float/2addr v2, v3

    iget v4, p0, LN6/H;->d:F

    rem-float/2addr v4, v3

    :goto_0
    int-to-float v11, v0

    cmpg-float v5, v2, v11

    if-gtz v5, :cond_2

    int-to-float v9, v1

    iget-object v10, p0, LN6/H;->b:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, v2

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    int-to-float v0, v1

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_3

    const/4 v6, 0x0

    iget-object v10, p0, LN6/H;->b:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v4

    move v8, v11

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v4, v3

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
