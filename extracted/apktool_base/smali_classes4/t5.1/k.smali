.class public Lt5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/k$g;,
        Lt5/k$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt5/k$a;

    invoke-direct {v0}, Lt5/k$a;-><init>()V

    sput-object v0, Lt5/k;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lt5/k$b;

    invoke-direct {v0}, Lt5/k$b;-><init>()V

    sput-object v0, Lt5/k;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lr4/a$e;Lt5/k$g;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "tittle",
            "context",
            "anchorSide",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, LC5/b;

    new-instance v3, Lt5/k$c;

    move-object/from16 v4, p4

    invoke-direct {v3, v4}, Lt5/k$c;-><init>(Lt5/k$g;)V

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v2, v3, v0, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v3, p2

    invoke-static {v3, v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->f(Landroid/content/Context;Ljava/lang/String;F)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v4, 0x42f00000    # 120.0f

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, LN7/c;->g(I)F

    move-result v4

    const/16 v5, 0x1c

    invoke-static {v5}, LN7/c;->f(I)F

    move-result v6

    invoke-static {v4}, LNc/b;->I(F)F

    move-result v4

    invoke-static {v6}, LNc/b;->I(F)F

    move-result v6

    sget-object v7, Lt5/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object/from16 v11, p0

    invoke-virtual {v11, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v11, v7, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v11

    add-int/2addr v11, v12

    sget-object v12, Lt5/k$e;->a:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v12, v13

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eq v13, v3, :cond_3

    if-eq v13, v5, :cond_2

    if-eq v13, v15, :cond_1

    if-eq v13, v14, :cond_0

    const/4 v7, 0x0

    move v8, v7

    goto :goto_2

    :cond_0
    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v7, v7, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v7, v7

    int-to-float v9, v10

    div-float/2addr v7, v9

    div-float v9, v6, v16

    add-float/2addr v7, v9

    :goto_1
    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_2

    :cond_1
    int-to-float v11, v11

    int-to-float v9, v9

    div-float/2addr v11, v9

    div-float v9, v4, v16

    sub-float v9, v11, v9

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v10

    div-float/2addr v7, v8

    move v8, v7

    move v7, v9

    goto :goto_2

    :cond_2
    int-to-float v8, v11

    int-to-float v9, v9

    div-float/2addr v8, v9

    div-float v9, v4, v16

    sub-float/2addr v8, v9

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    int-to-float v9, v10

    div-float/2addr v7, v9

    sub-float/2addr v7, v6

    goto :goto_1

    :cond_3
    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v8, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :goto_2
    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {v9, v7, v8, v4, v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v12, v4

    if-eq v4, v3, :cond_4

    if-eq v4, v5, :cond_5

    if-eq v4, v15, :cond_5

    if-eq v4, v14, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v9, v3, v3, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_4

    :goto_3
    invoke-virtual {v9, v3, v3, v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_4
    invoke-virtual {v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    const/16 v4, 0x1c

    invoke-virtual {v9, v2, v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    new-instance v2, LG4/c;

    new-instance v3, Lt5/k$d;

    invoke-direct {v3}, Lt5/k$d;-><init>()V

    invoke-direct {v2, v0, v1, v3}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;LG4/d;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method
