.class public Le6/X;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/X$j;
    }
.end annotation


# static fields
.field public static final G:J = 0x12cL

.field public static final H:F = 48.0f


# instance fields
.field public A:Le6/F;

.field public B:Landroid/widget/TextView;

.field public C:Z

.field public D:Z

.field public final E:Ljava/lang/Runnable;

.field public final F:Ljava/lang/Runnable;

.field public final b:Landroid/graphics/Paint;

.field public c:F

.field public d:F

.field public e:F

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le6/E;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le6/E;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le6/K;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le6/K;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le6/m;

.field public k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public l:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Le6/E;

.field public p:Z

.field public q:F

.field public r:F

.field public s:J

.field public t:J

.field public u:Landroid/view/ScaleGestureDetector;

.field public v:Le6/K;

.field public w:Le6/K;

.field public x:Z

.field public y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

.field public z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;


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
    invoke-direct {p0, p1, v0}, Le6/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-object p2, p0, Le6/X;->b:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Le6/X;->e:F

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Le6/X;->f:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le6/X;->g:Ljava/util/Map;

    .line 7
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Le6/X;->h:Ljava/util/List;

    .line 8
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Le6/X;->i:Ljava/util/List;

    .line 9
    new-instance v1, Le6/X$a;

    invoke-direct {v1, p0}, Le6/X$a;-><init>(Le6/X;)V

    iput-object v1, p0, Le6/X;->E:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Le6/X$b;

    invoke-direct {v1, p0}, Le6/X$b;-><init>(Le6/X;)V

    iput-object v1, p0, Le6/X;->F:Ljava/lang/Runnable;

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
    new-instance p2, Le6/m;

    invoke-direct {p2, p1}, Le6/m;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le6/X;->j:Le6/m;

    .line 19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p2, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 21
    iget-object p2, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    iget-object p2, p0, Le6/X;->j:Le6/m;

    iget v0, p0, Le6/X;->e:F

    invoke-virtual {p2, v0}, Le6/m;->setGraphScale(F)V

    .line 23
    new-instance p2, Le6/F;

    invoke-direct {p2, p0}, Le6/F;-><init>(Le6/X;)V

    iput-object p2, p0, Le6/X;->A:Le6/F;

    .line 24
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Le6/X$c;

    invoke-direct {v0, p0}, Le6/X$c;-><init>(Le6/X;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Le6/X;->u:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static F(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;
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
            "toSlot"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

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

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;
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

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

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

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic Y(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic Z(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic a(Le6/X;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/X;->V(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le6/X;->a0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic c(Le6/X;)V
    .locals 0

    invoke-virtual {p0}, Le6/X;->f0()V

    return-void
.end method

.method public static synthetic c0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic d(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le6/X;->Y(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 1

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic e(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le6/X;->Z(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Le6/X;)V
    .locals 0

    invoke-virtual {p0}, Le6/X;->e0()V

    return-void
.end method

.method public static synthetic g(Le6/X;)V
    .locals 0

    invoke-virtual {p0}, Le6/X;->W()V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le6/X;->c0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Le6/X;)V
    .locals 0

    invoke-virtual {p0}, Le6/X;->X()V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le6/X;->d0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le6/X;->b0(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Le6/X;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 0

    iget-object p0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object p0
.end method

.method public static synthetic m(Le6/X;)V
    .locals 0

    invoke-virtual {p0}, Le6/X;->C0()V

    return-void
.end method

.method public static synthetic n(Le6/X;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Le6/X;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic o(Le6/X;)F
    .locals 0

    iget p0, p0, Le6/X;->e:F

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iput-object v0, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    return-void
.end method

.method public A0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p1}, Le6/m;->i()V

    iget-object p1, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/E;

    invoke-virtual {v0}, Le6/E;->l1()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le6/X;->A:Le6/F;

    if-eqz p1, :cond_2

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Le6/F;->e(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Le6/X;->C0()V

    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/X;->o:Le6/E;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->N0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->i0()V

    return-void
.end method

.method public final B0([Le6/K;FFLe6/K;F)Le6/K;
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
    invoke-virtual {p0, v2, p2, p3}, Le6/X;->S(Landroid/view/View;FF)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, p2, p3}, Le6/X;->C(Landroid/view/View;FF)F

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

.method public final C(Landroid/view/View;FF)F
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

.method public final C0()V
    .locals 6

    iget-object v0, p0, Le6/X;->B:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Le6/X;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Le6/X;->D:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    const-string v3, "Saving..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Le6/X;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Le6/X;->B:Landroid/widget/TextView;

    iget-object v2, p0, Le6/X;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    iget-boolean v3, p0, Le6/X;->C:Z

    if-eqz v3, :cond_4

    const-string v3, "Saved"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Le6/X;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Le6/X;->B:Landroid/widget/TextView;

    iget-object v3, p0, Le6/X;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Le6/X;->B:Landroid/widget/TextView;

    iget-object v3, p0, Le6/X;->F:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Le6/X;->D:Z

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iput-boolean v1, p0, Le6/X;->C:Z

    return-void
.end method

.method public final D(Landroid/graphics/Canvas;)V
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

    iget v3, p0, Le6/X;->e:F

    mul-float/2addr v3, v2

    const/high16 v2, 0x41000000    # 8.0f

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    move v3, v2

    :cond_1
    iget v2, p0, Le6/X;->c:F

    rem-float/2addr v2, v3

    iget v4, p0, Le6/X;->d:F

    rem-float/2addr v4, v3

    :goto_0
    int-to-float v11, v0

    cmpg-float v5, v2, v11

    if-gtz v5, :cond_2

    int-to-float v9, v1

    iget-object v10, p0, Le6/X;->b:Landroid/graphics/Paint;

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

    iget-object v10, p0, Le6/X;->b:Landroid/graphics/Paint;

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

.method public D0(FF)V
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

    iget-object v0, p0, Le6/X;->j:Le6/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le6/X;->h0()V

    invoke-virtual {p0, p1, p2}, Le6/X;->z0(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Le6/X;->w:Le6/K;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Le6/X;->v:Le6/K;

    :goto_0
    iget-object v0, p0, Le6/X;->j:Le6/m;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2, v1, p1}, Le6/m;->g(Le6/K;FF)V

    return-void
.end method

.method public E()V
    .locals 3

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/X;->o:Le6/E;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->r()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->h0(FFLandroid/content/Context;)V

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->i0()V

    return-void
.end method

.method public final E0()V
    .locals 14

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p0}, Le6/X;->getScale()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le6/E;

    invoke-virtual {v3}, Le6/E;->getInputSockets()[Le6/K;

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

    invoke-virtual {v3, v10, v8}, Le6/E;->m0(ZI)Landroid/graphics/PointF;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v9, v0}, Le6/K;->setVisualScale(F)V

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

    invoke-virtual {v3}, Le6/E;->getCardLeftLocal()F

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
    invoke-virtual {v3}, Le6/E;->getOutputSockets()[Le6/K;

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
    invoke-virtual {v3, v5, v8}, Le6/E;->m0(ZI)Landroid/graphics/PointF;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v9, v0}, Le6/K;->setVisualScale(F)V

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

    invoke-virtual {v3}, Le6/E;->getCardRightLocal()F

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
    invoke-virtual {v3}, Le6/E;->getBranchInputSocket()Le6/K;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Le6/E;->getBranchInputAnchorLocal()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v4, v0}, Le6/K;->setVisualScale(F)V

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v9

    mul-float/2addr v5, v9

    add-float/2addr v8, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v8, v5

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Le6/E;->getCardLeftLocal()F

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v5, v9

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setY(F)V

    :cond_8
    invoke-virtual {v3}, Le6/E;->getBranchOutputSocket()Le6/K;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Le6/E;->getBranchOutputAnchorLocal()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v4, v0}, Le6/K;->setVisualScale(F)V

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

    invoke-virtual {v3}, Le6/E;->getCardRightLocal()F

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

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public F0(FF)Landroid/graphics/PointF;
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

    iget v1, p0, Le6/X;->e:F

    mul-float/2addr p1, v1

    iget v2, p0, Le6/X;->c:F

    add-float/2addr p1, v2

    mul-float/2addr p2, v1

    iget v1, p0, Le6/X;->d:F

    add-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final G0(Ljava/lang/String;Ljava/lang/String;)Z
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
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

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

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lga/B;)Ljava/lang/String;
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

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->M()Lga/B;

    move-result-object v4

    sget-object v5, Lga/B;->VERTEX:Lga/B;

    if-ne p2, v5, :cond_5

    sget-object v6, Lga/B;->FRAGMENT:Lga/B;

    if-ne v4, v6, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    sget-object v6, Lga/B;->FRAGMENT:Lga/B;

    if-ne p2, v6, :cond_7

    if-ne v4, v5, :cond_7

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_7
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-static {v5, p1, v4}, Le6/X;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-object v1
.end method

.method public final I([Ljava/lang/String;Ljava/util/List;)Ldd/b;
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

.method public final J(FF)Le6/K;
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

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move-object v4, v0

    move v7, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le6/E;

    invoke-virtual {v8}, Le6/E;->getInputSockets()[Le6/K;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Le6/X;->B0([Le6/K;FFLe6/K;F)Le6/K;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v7

    :cond_0
    invoke-virtual {v8}, Le6/E;->getOutputSockets()[Le6/K;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Le6/X;->B0([Le6/K;FFLe6/K;F)Le6/K;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v7

    :cond_1
    invoke-virtual {v8}, Le6/E;->getBranchInputSocket()Le6/K;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->S(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v2

    cmpg-float v3, v2, v7

    if-gez v3, :cond_2

    move-object v0, v1

    move v7, v2

    :cond_2
    invoke-virtual {v8}, Le6/E;->getBranchOutputSocket()Le6/K;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->S(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v2

    cmpg-float v3, v2, v7

    if-gez v3, :cond_3

    move-object v4, v1

    move v7, v2

    goto :goto_0

    :cond_3
    move-object v4, v0

    goto :goto_0

    :cond_4
    return-object v4
.end method

.method public final K(FFZ)Le6/K;
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

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move-object v7, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    invoke-virtual {v1}, Le6/E;->getInputSockets()[Le6/K;

    move-result-object v4

    if-eqz p3, :cond_2

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Le6/X;->B0([Le6/K;FFLe6/K;F)Le6/K;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v2

    :cond_0
    invoke-virtual {v1}, Le6/E;->getBranchInputSocket()Le6/K;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le6/K;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->S(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    move-object v3, v1

    move v2, v4

    :cond_1
    move-object v7, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Le6/E;->getOutputSockets()[Le6/K;

    move-result-object v4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Le6/X;->B0([Le6/K;FFLe6/K;F)Le6/K;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v2

    :cond_3
    invoke-virtual {v1}, Le6/E;->getBranchOutputSocket()Le6/K;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le6/K;->g()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->S(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Le6/X;->C(Landroid/view/View;FF)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    move-object v7, v1

    move v2, v4

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method public L(FF)V
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

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le6/X;->h0()V

    iget-object v0, p0, Le6/X;->v:Le6/K;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p1}, Le6/m;->a()V

    iput-object v1, p0, Le6/X;->w:Le6/K;

    invoke-virtual {p0}, Le6/X;->A()V

    return-void

    :cond_1
    invoke-virtual {v0}, Le6/K;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v4}, Le6/X;->K(FFZ)Le6/K;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2}, Le6/X;->J(FF)Le6/K;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Le6/X;->K(FFZ)Le6/K;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2}, Le6/X;->J(FF)Le6/K;

    move-result-object v2

    :cond_3
    :goto_0
    iget-object p1, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p1}, Le6/m;->a()V

    iput-object v1, p0, Le6/X;->v:Le6/K;

    iput-object v1, p0, Le6/X;->w:Le6/K;

    if-eqz v2, :cond_2e

    if-ne v2, v0, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v0}, Le6/K;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v2

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    invoke-virtual {v0}, Le6/K;->g()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    invoke-virtual {p1}, Le6/K;->g()Z

    move-result p2

    if-nez p2, :cond_29

    invoke-virtual {v0}, Le6/K;->g()Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-virtual {p1}, Le6/K;->getNodeView()Le6/E;

    move-result-object p2

    invoke-virtual {p2}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p2

    invoke-virtual {v0}, Le6/K;->getNodeView()Le6/E;

    move-result-object v2

    invoke-virtual {v2}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v2

    if-eqz p2, :cond_26

    if-nez v2, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v0}, Le6/K;->e()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Le6/K;->g()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Le6/K;->getType()Lga/H;

    move-result-object v5

    sget-object v6, Lga/H;->BRANCH:Lga/H;

    if-ne v5, v6, :cond_9

    goto :goto_3

    :cond_9
    move v5, v4

    goto :goto_4

    :cond_a
    :goto_3
    move v5, v3

    :goto_4
    invoke-virtual {p1}, Le6/K;->getType()Lga/H;

    move-result-object v6

    sget-object v7, Lga/H;->BRANCH:Lga/H;

    if-ne v6, v7, :cond_b

    goto :goto_5

    :cond_b
    move v3, v4

    :goto_5
    if-nez v5, :cond_15

    if-eqz v3, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result v1

    invoke-virtual {v0}, Le6/K;->getSlotIndex()I

    move-result v3

    invoke-virtual {p0, p2, v1, v2, v3}, Le6/X;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_d
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_e
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_f
    iget-object v1, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result v3

    if-ne v1, v3, :cond_11

    iget-object v1, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    invoke-virtual {v0}, Le6/K;->getSlotIndex()I

    move-result v3

    if-ne v1, v3, :cond_11

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_10
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_11
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Le6/K;->getSlotIndex()I

    move-result v6

    invoke-virtual {p0, v1, v3, v5, v6}, Le6/X;->P(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_12
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_13
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_14
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Le6/K;->getSlotIndex()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Le6/X;->q0(Ljava/lang/String;I)V

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Le6/K;->getSlotIndex()I

    move-result v0

    invoke-direct {v3, p2, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Le6/X;->i0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_15
    :goto_6
    if-eqz v5, :cond_23

    if-nez v3, :cond_16

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_OUTPUT_DOES_NOT_ACCEPT_BRANCH:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_17
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_18
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_19
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v5, :cond_1a

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    :cond_1a
    invoke-virtual {v0}, Le6/K;->e()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v0, -0x1

    goto :goto_7

    :cond_1b
    invoke-virtual {v0}, Le6/K;->getSlotIndex()I

    move-result v0

    :goto_7
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v5, :cond_1c

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    if-ne v6, v0, :cond_1c

    move-object v1, v5

    :cond_1d
    if-eqz v1, :cond_1e

    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1e
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Le6/X;->G0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v1, :cond_1f

    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_20
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_21
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_22
    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p2, p1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Le6/X;->i0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_23
    :goto_8
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_BRANCH_NEEDS_BRANCH_INPUT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_24
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_25
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_26
    :goto_9
    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_27
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_28
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_29
    :goto_a
    invoke-virtual {p0}, Le6/X;->Q()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2a
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_2b
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_CONNECT_OUTPUT_TO_INPUT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2c
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_2d
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_2e
    :goto_b
    invoke-virtual {p0}, Le6/X;->Q()Z

    move-result p1

    if-eqz p1, :cond_31

    if-nez v2, :cond_2f

    invoke-virtual {p0}, Le6/X;->A()V

    invoke-virtual {p0}, Le6/X;->i0()V

    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_2f
    invoke-virtual {p0}, Le6/X;->s0()V

    invoke-virtual {p0}, Le6/X;->A()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_30
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void

    :cond_31
    iget-boolean p1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Le6/X;->i0()V

    :cond_32
    iput-boolean v4, p0, Le6/X;->x:Z

    return-void
.end method

.method public M()V
    .locals 10

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

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
    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

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

    check-cast v6, Le6/E;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

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
    invoke-virtual {v6}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v6}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->z(Landroid/content/Context;)F

    move-result v6

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

    new-instance v0, Le6/X$e;

    invoke-direct {v0, p0}, Le6/X$e;-><init>(Le6/X;)V

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

    iput v2, p0, Le6/X;->c:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    iput v2, p0, Le6/X;->d:F

    iput v0, p0, Le6/X;->e:F

    iget-object v1, p0, Le6/X;->j:Le6/m;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Le6/m;->setGraphScale(F)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le6/X;->t:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le6/X;->r0(Le6/E;)V

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    invoke-virtual {v1}, Le6/E;->P0()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Le6/X;->E0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Le6/X;->j:Le6/m;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_9
    :goto_2
    new-instance v0, Le6/X$d;

    invoke-direct {v0, p0}, Le6/X$d;-><init>(Le6/X;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Ljava/lang/String;
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
    new-instance v0, Le6/X$j;

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v0, v1}, Le6/X$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILga/D;)Lga/H;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    aget-object v0, v0, p4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-static {p2, v0}, Lga/C;->a(Lga/H;Lga/H;)Z

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
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->M()Lga/B;

    move-result-object p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    aget-object p4, v0, p4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->M()Lga/B;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->b(Lga/B;)Lga/B;

    move-result-object p4

    sget-object v0, Lga/B;->FRAGMENT:Lga/B;

    if-ne p2, v0, :cond_2

    sget-object p2, Lga/B;->VERTEX:Lga/B;

    if-ne p4, p2, :cond_2

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_INVALID_CONNECTION_FRAGMENT_TO_VERTEX:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p2, Lga/B;->VERTEX:Lga/B;

    if-eq p4, p2, :cond_3

    if-ne p4, v0, :cond_4

    :cond_3
    invoke-virtual {p0, p1, p4}, Le6/X;->H(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lga/B;)Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le6/X;->G0(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public final O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
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

.method public final P(Ljava/lang/String;ILjava/lang/String;I)Z
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

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

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

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    if-eq p2, v3, :cond_4

    goto :goto_0

    :cond_4
    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-eq p4, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-nez v0, :cond_1

    iget-object v0, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final R(FF)Le6/E;
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

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

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

    invoke-virtual {v1, v4, v2}, Le6/E;->r0(FF)Z

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

.method public final S(Landroid/view/View;FF)Z
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

.method public T()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Le6/X;->t:J

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

.method public U()Z
    .locals 1

    iget-object v0, p0, Le6/X;->o:Le6/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le6/X;->o:Le6/E;

    invoke-virtual {v0}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic V(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    check-cast p1, Le6/K;

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

    invoke-virtual {p0, p1, p2}, Le6/X;->D0(FF)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Le6/X;->L(FF)V

    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Le6/X;->y0(Le6/K;FF)V

    return v1
.end method

.method public final synthetic W()V
    .locals 0

    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->i0()V

    return-void
.end method

.method public final synthetic X()V
    .locals 0

    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->i0()V

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

    iget-object v0, p0, Le6/X;->u:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Le6/X;->h0()V

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
    invoke-virtual {p0, p1}, Le6/X;->O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Le6/X;->q:F

    sub-float v2, v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Le6/X;->r:F

    sub-float v3, p1, v3

    iput v0, p0, Le6/X;->q:F

    iput p1, p0, Le6/X;->r:F

    invoke-virtual {p0, v2, v3}, Le6/X;->k0(FF)V

    return v1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Le6/X;->p:Z

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Le6/X;->O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-boolean v1, p0, Le6/X;->p:Z

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Le6/X;->q:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Le6/X;->r:F

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final synthetic e0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/X;->n:Z

    iput-boolean v0, p0, Le6/X;->D:Z

    invoke-virtual {p0}, Le6/X;->C0()V

    return-void
.end method

.method public final synthetic f0()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;-><init>()V

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le6/X;->m:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Le6/V;

    invoke-direct {v0, p0}, Le6/V;-><init>(Le6/X;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance v0, Le6/X$f;

    invoke-direct {v0, p0}, Le6/X$f;-><init>(Le6/X;)V

    :goto_0
    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

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

    new-instance v0, Le6/V;

    invoke-direct {v0, p0}, Le6/V;-><init>(Le6/X;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance v0, Le6/X$f;

    invoke-direct {v0, p0}, Le6/X$f;-><init>(Le6/X;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Le6/V;

    invoke-direct {v1, p0}, Le6/V;-><init>(Le6/X;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance v1, Le6/X$f;

    invoke-direct {v1, p0}, Le6/X$f;-><init>(Le6/X;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public final g0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->e(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->d()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lga/E;->c()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    return-object p1
.end method

.method public getGraphData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 1

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0
.end method

.method public getLastInteractionTime()J
    .locals 2

    iget-wide v0, p0, Le6/X;->s:J

    return-wide v0
.end method

.method public getNodeViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le6/E;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Le6/X;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPanX()F
    .locals 1

    iget v0, p0, Le6/X;->c:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    iget v0, p0, Le6/X;->d:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Le6/X;->e:F

    return v0
.end method

.method public getSelectedNodeView()Le6/E;
    .locals 1

    iget-object v0, p0, Le6/X;->o:Le6/E;

    return-object v0
.end method

.method public final h0()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le6/X;->s:J

    iget-object v0, p0, Le6/X;->A:Le6/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/F;->c()V

    :cond_0
    return-void
.end method

.method public i0()V
    .locals 3

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->c:J

    iget-object v0, p0, Le6/X;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Le6/X;->E:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v2}, Le6/E;->Q0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    iget-object v2, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v2}, Le6/E;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Le6/X;->E0()V

    iget-object v0, p0, Le6/X;->j:Le6/m;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j0()V
    .locals 1

    invoke-virtual {p0}, Le6/X;->E0()V

    iget-object v0, p0, Le6/X;->j:Le6/m;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public k0(FF)V
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

    iget v0, p0, Le6/X;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Le6/X;->c:F

    iget p1, p0, Le6/X;->d:F

    add-float/2addr p1, p2

    iput p1, p0, Le6/X;->d:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Le6/X;->t:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le6/X;->r0(Le6/E;)V

    iget-object p1, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le6/E;

    invoke-virtual {p2}, Le6/E;->P0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le6/X;->E0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public l0()V
    .locals 2

    iget-object v0, p0, Le6/X;->b:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_GRID:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le6/X;->j:Le6/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/m;->e()V

    :cond_0
    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le6/E;->M0()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le6/X;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/K;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Le6/K;->h()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Le6/X;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/K;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Le6/K;->h()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public m0()V
    .locals 0

    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->i0()V

    return-void
.end method

.method public final n0()V
    .locals 14

    invoke-virtual {p0}, Le6/X;->z()V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    invoke-static {}, Lga/q;->a()V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    new-instance v2, Le6/E;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Le6/E;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Le6/X;)V

    iget-object v3, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Le6/X;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Le6/E;->P0()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Le6/E;->setPreviewEnabled(Z)V

    iget-object v3, p0, Le6/X;->A:Le6/F;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Le6/F;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Le6/E;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    new-instance v6, Le6/X$j;

    iget-object v7, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v6, v7}, Le6/X$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    const/high16 v7, 0x41f00000    # 30.0f

    if-eqz v3, :cond_8

    array-length v8, v3

    if-lez v8, :cond_8

    array-length v8, v3

    new-array v8, v8, [Le6/K;

    move v9, v4

    :goto_2
    array-length v10, v3

    if-ge v9, v10, :cond_7

    aget-object v10, v3, v9

    iget-object v11, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v11, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->E(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;I)I

    move-result v11

    if-gez v11, :cond_4

    goto :goto_4

    :cond_4
    new-instance v12, Le6/K;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Le6/K;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1, v11}, Le6/X$j;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;

    move-result-object v13

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    iget-object v13, v10, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    goto :goto_3

    :cond_6
    sget-object v13, Lga/H;->NUMBER:Lga/H;

    :goto_3
    invoke-virtual {v12, v2, v5, v11, v13}, Le6/K;->a(Le6/E;ZILga/H;)V

    invoke-virtual {p0, v12}, Le6/X;->u(Le6/K;)V

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v10

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12}, Landroid/view/View;->bringToFront()V

    aput-object v12, v8, v9

    iget-object v10, p0, Le6/X;->h:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v8}, Le6/E;->setInputSockets([Le6/K;)V

    :cond_8
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->K(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    if-eqz v3, :cond_c

    array-length v5, v3

    if-lez v5, :cond_c

    array-length v5, v3

    new-array v5, v5, [Le6/K;

    move v8, v4

    :goto_5
    array-length v9, v3

    if-ge v8, v9, :cond_b

    aget-object v9, v3, v8

    new-instance v10, Le6/K;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Le6/K;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILga/D;)Lga/H;

    move-result-object v11

    if-eqz v11, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v9, :cond_a

    iget-object v11, v9, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    goto :goto_6

    :cond_a
    sget-object v11, Lga/H;->NUMBER:Lga/H;

    :goto_6
    invoke-virtual {v10, v2, v4, v8, v11}, Le6/K;->a(Le6/E;ZILga/H;)V

    invoke-virtual {p0, v10}, Le6/X;->u(Le6/K;)V

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v9

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10}, Landroid/view/View;->bringToFront()V

    aput-object v10, v5, v8

    iget-object v9, p0, Le6/X;->h:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v5}, Le6/E;->setOutputSockets([Le6/K;)V

    :cond_c
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->z0()Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Le6/K;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Le6/K;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Le6/K;->b(Le6/E;)V

    invoke-virtual {p0, v3}, Le6/X;->u(Le6/K;)V

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    iget-object v4, p0, Le6/X;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Le6/E;->setBranchInputSocket(Le6/K;)V

    :cond_d
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->c0()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Le6/K;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Le6/K;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Le6/K;->c(Le6/E;)V

    invoke-virtual {p0, v1}, Le6/X;->u(Le6/K;)V

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v3, p0, Le6/X;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Le6/E;->setBranchOutputSocket(Le6/K;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Le6/X;->j:Le6/m;

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v2, p0, Le6/X;->g:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Le6/m;->f(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/util/Map;)V

    invoke-virtual {p0}, Le6/X;->E0()V

    return-void
.end method

.method public final o0(Le6/K;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Le6/K;->getNodeView()Le6/E;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result v2

    invoke-virtual {p1}, Le6/K;->e()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Le6/K;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Le6/K;->getType()Lga/H;

    move-result-object v3

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Le6/K;->g()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Le6/K;->getType()Lga/H;

    move-result-object v3

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    if-ne v3, v4, :cond_4

    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez p1, :cond_3

    return v1

    :cond_3
    new-instance v1, Le6/P;

    invoke-direct {v1, v0, v2}, Le6/P;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_4
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-nez v3, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Le6/K;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    new-instance v1, Le6/Q;

    invoke-direct {v1, v0, v2}, Le6/Q;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    new-instance v1, Le6/S;

    invoke-direct {v1, v0, v2}, Le6/S;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v3, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Le6/K;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, -0x1

    :cond_9
    iget-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    new-instance v1, Le6/O;

    invoke-direct {v1, v0, v2}, Le6/O;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_a
    :goto_1
    return v1
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

    invoke-virtual {p0, p1}, Le6/X;->D(Landroid/graphics/Canvas;)V

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

    iget-object v0, p0, Le6/X;->u:Landroid/view/ScaleGestureDetector;

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

    invoke-virtual {p0, v0, v3}, Le6/X;->R(FF)Le6/E;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Le6/X;->J(FF)Le6/K;

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

    invoke-virtual {p0}, Le6/X;->E0()V

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

    iget-object v0, p0, Le6/X;->u:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Le6/X;->h0()V

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

    iget-boolean v0, p0, Le6/X;->p:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Le6/X;->p:Z

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_7

    invoke-virtual {p0, p1}, Le6/X;->O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-boolean v3, p0, Le6/X;->p:Z

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Le6/X;->q:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Le6/X;->r:F

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_7

    iget-boolean v0, p0, Le6/X;->p:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Le6/X;->O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-boolean v3, p0, Le6/X;->p:Z

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p0, Le6/X;->q:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Le6/X;->r:F

    :cond_3
    invoke-virtual {p0, p1}, Le6/X;->O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Le6/X;->q:F

    sub-float v1, v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Le6/X;->r:F

    sub-float v2, p1, v2

    iput v0, p0, Le6/X;->q:F

    iput p1, p0, Le6/X;->r:F

    invoke-virtual {p0, v1, v2}, Le6/X;->k0(FF)V

    return v3

    :cond_4
    iget-boolean v0, p0, Le6/X;->p:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Le6/X;->p:Z

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Le6/X;->R(FF)Le6/E;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Le6/X;->J(FF)Le6/K;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le6/X;->r0(Le6/E;)V

    return v3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_7

    invoke-virtual {p0, p1}, Le6/X;->O(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-boolean v3, p0, Le6/X;->p:Z

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Le6/X;->q:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Le6/X;->r:F

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

.method public p(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;-><init>()V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le6/X;->q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final p0(Ljava/lang/String;I)V
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

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Le6/T;

    invoke-direct {v1, p1, p2}, Le6/T;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g0()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Le6/X;->u0(FF)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->v0(FFLandroid/content/Context;)V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->i0()V

    return-void
.end method

.method public final q0(Ljava/lang/String;I)V
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

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Le6/N;

    invoke-direct {v1, p1, p2}, Le6/N;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public r(Lga/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeInterface"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lga/p;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Le6/X;->q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r0(Le6/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeView"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->o:Le6/E;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le6/E;->setSelected(Z)V

    :cond_1
    iput-object p1, p0, Le6/X;->o:Le6/E;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Le6/E;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/SetAttributeNode;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/SetAttributeNode;-><init>()V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/SetAttributeNode;->attributeId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le6/X;->q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final s0()V
    .locals 6

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    invoke-virtual {p0, v1, v0}, Le6/X;->q0(Ljava/lang/String;I)V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v2, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-virtual {p0, v1, v0}, Le6/X;->p0(Ljava/lang/String;I)V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v2, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
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

    iput-object p1, p0, Le6/X;->B:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_0
    invoke-virtual {p0}, Le6/X;->C0()V

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

    iget v0, p0, Le6/X;->e:F

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

    iget v2, p0, Le6/X;->c:F

    sub-float v2, v1, v2

    div-float/2addr v2, v0

    iget v4, p0, Le6/X;->d:F

    sub-float v4, v3, v4

    div-float/2addr v4, v0

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, p0, Le6/X;->c:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iput v3, p0, Le6/X;->d:F

    :cond_1
    iput p1, p0, Le6/X;->e:F

    iget-object v0, p0, Le6/X;->j:Le6/m;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Le6/m;->setGraphScale(F)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Le6/X;->t:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le6/X;->r0(Le6/E;)V

    iget-object p1, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le6/E;

    invoke-virtual {v0}, Le6/E;->P0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Le6/X;->E0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Le6/X;->j:Le6/m;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lma/b;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/b$c;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lma/b$c;->a:Ljava/lang/String;

    iget-object v4, v2, Lma/b$c;->b:Ljava/lang/String;

    const-string v5, "Actions"

    const-string v6, "Component"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Le6/X;->I([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Ldd/b;->c:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v3, p1

    :goto_1
    new-instance v4, Ldd/b;

    iget-object v5, v2, Lma/b$c;->c:Ljava/lang/String;

    new-instance v6, Le6/X$i;

    invoke-direct {v6, p0, v2}, Le6/X$i;-><init>(Le6/X;Lma/b$c;)V

    invoke-direct {v4, v5, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public t0()V
    .locals 2

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le6/X;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Le6/X;->m:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Le6/X;->D:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Le6/X;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Le6/X;->D:Z

    iput-boolean v1, p0, Le6/X;->n:Z

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e1()V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le6/L;

    invoke-direct {v1, p0}, Le6/L;-><init>(Le6/X;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Le6/X;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-boolean v0, p0, Le6/X;->D:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-boolean v1, p0, Le6/X;->D:Z

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e1()V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object v0, p0, Le6/X;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->setNoCodeData(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->b:Z

    iget-object v0, p0, Le6/X;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    iput-boolean v1, p0, Le6/X;->D:Z

    invoke-virtual {p0}, Le6/X;->C0()V

    return-void
.end method

.method public final u(Le6/K;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    new-instance v0, Le6/W;

    invoke-direct {v0, p0}, Le6/W;-><init>(Le6/X;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public u0(FF)Landroid/graphics/PointF;
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

    iget v1, p0, Le6/X;->c:F

    sub-float/2addr p1, v1

    iget v1, p0, Le6/X;->e:F

    div-float/2addr p1, v1

    iget v2, p0, Le6/X;->d:F

    sub-float/2addr p2, v2

    div-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Le6/X;->m:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Le6/X;->n:Z

    iput-object p1, p0, Le6/X;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-nez p1, :cond_1

    iput-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p0}, Le6/X;->z()V

    iget-object p1, p0, Le6/X;->A:Le6/F;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0}, Le6/F;->a(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    iput-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p1, :cond_2

    new-instance v1, Le6/M;

    invoke-direct {v1, p0}, Le6/M;-><init>(Le6/X;)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X0(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Le6/X;->A:Le6/F;

    if-eqz p1, :cond_3

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1, v0, v1}, Le6/F;->a(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    :cond_3
    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->C0()V

    return-void
.end method

.method public v0(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lga/q;->a()V

    invoke-virtual {p0}, Le6/X;->x()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ldd/b;

    new-instance v2, Le6/X$g;

    invoke-direct {v2, p0}, Le6/X$g;-><init>(Le6/X;)V

    const v3, 0x7f070218

    const-string v4, "Search"

    invoke-direct {v1, v3, v4, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v1, Lr4/a$e;->Above:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Le6/X;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/X;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Le6/X;->l:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Le6/X;->g0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    iput-object p1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p1, :cond_1

    new-instance v1, Le6/U;

    invoke-direct {v1, p0}, Le6/U;-><init>(Le6/X;)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->X0(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Le6/X;->A:Le6/F;

    if-eqz p1, :cond_2

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1, v0, v1}, Le6/F;->a(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    :cond_2
    invoke-virtual {p0}, Le6/X;->n0()V

    invoke-virtual {p0}, Le6/X;->C0()V

    return-void

    :cond_3
    :goto_0
    iput-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p0}, Le6/X;->z()V

    iget-object p1, p0, Le6/X;->A:Le6/F;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, v0}, Le6/F;->a(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    :cond_4
    return-void
.end method

.method public w0(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, p0, v0}, Le6/l;->U1(Landroid/view/View;Lr4/a$e;Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    :goto_0
    return-void
.end method

.method public final x()Ljava/util/List;
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
    invoke-static {}, Lga/o;->b()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-static {v1}, Lga/o;->e(I)Lga/p;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lga/p;->g()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {v2}, Lga/p;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Le6/X;->I([Ljava/lang/String;Ljava/util/List;)Ldd/b;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Le6/X;->I([Ljava/lang/String;Ljava/util/List;)Ldd/b;

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
    invoke-interface {v2}, Lga/p;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lga/p;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_3
    new-instance v5, Ldd/b;

    new-instance v6, Le6/X$h;

    invoke-direct {v6, p0, v2}, Le6/X$h;-><init>(Le6/X;Lga/p;)V

    invoke-direct {v5, v4, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Le6/X;->t(Ljava/util/List;)V

    return-object v0
.end method

.method public x0(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-object v0, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, p0, v0}, Le6/l;->W1(Landroid/view/View;Lr4/a$e;Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    :goto_0
    return-void
.end method

.method public final y(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Z
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

    invoke-virtual {p0, p1, p2, p3, p4}, Le6/X;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y0(Le6/K;FF)V
    .locals 7
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

    iput-object p1, p0, Le6/X;->v:Le6/K;

    iput-object p1, p0, Le6/X;->w:Le6/K;

    invoke-virtual {p0}, Le6/X;->h0()V

    const/4 v0, 0x0

    iput-object v0, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iput-object v0, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    const/4 v1, 0x0

    iput-boolean v1, p0, Le6/X;->x:Z

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Le6/K;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Le6/K;->getNodeView()Le6/E;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le6/E;->getNode()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Le6/K;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Le6/K;->getType()Lga/H;

    move-result-object v1

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result v2

    invoke-static {v1, v0, v2}, Le6/X;->G(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v1, p0, Le6/X;->y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    invoke-virtual {p0, v1, v2}, Le6/X;->q0(Ljava/lang/String;I)V

    iget-object v1, p0, Le6/X;->g:Ljava/util/Map;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-virtual {v1, v0}, Le6/E;->i0(I)Le6/K;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Le6/X;->w:Le6/K;

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p1}, Le6/K;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Le6/K;->getSlotIndex()I

    move-result v1

    :goto_1
    iget-object v3, p0, Le6/X;->k:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Le6/X;->F(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v1, p0, Le6/X;->z:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    invoke-virtual {p0, v1, v3}, Le6/X;->p0(Ljava/lang/String;I)V

    iget-object v1, p0, Le6/X;->g:Ljava/util/Map;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Le6/E;->getBranchOutputSocket()Le6/K;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v0}, Le6/E;->i0(I)Le6/K;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    iput-object v0, p0, Le6/X;->w:Le6/K;

    :cond_5
    :goto_3
    iget-object v0, p0, Le6/X;->j:Le6/m;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    invoke-virtual {p0, p2, p3}, Le6/X;->z0(FF)Landroid/graphics/PointF;

    move-result-object p2

    iget-object p3, p0, Le6/X;->j:Le6/m;

    iget-object v0, p0, Le6/X;->w:Le6/K;

    if-eqz v0, :cond_7

    move-object p1, v0

    :cond_7
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1, v0, p2}, Le6/m;->g(Le6/K;FF)V

    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le6/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Le6/X;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Le6/X;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/K;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le6/X;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Le6/X;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/K;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Le6/X;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Le6/X;->j:Le6/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, v1}, Le6/m;->f(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/util/Map;)V

    :cond_3
    iput-object v1, p0, Le6/X;->o:Le6/E;

    invoke-virtual {p0}, Le6/X;->C0()V

    return-void
.end method

.method public final z0(FF)Landroid/graphics/PointF;
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
