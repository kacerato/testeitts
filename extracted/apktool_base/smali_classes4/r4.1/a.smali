.class public Lr4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr4/a$e;,
        Lr4/a$f;
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

    new-instance v0, Lr4/a$a;

    invoke-direct {v0}, Lr4/a$a;-><init>()V

    sput-object v0, Lr4/a;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lr4/a$b;

    invoke-direct {v0}, Lr4/a$b;-><init>()V

    sput-object v0, Lr4/a;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lr4/a$e;LG4/b;)LG4/a;
    .locals 8
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
            "anchor",
            "cls",
            "instance",
            "tittle",
            "anchorSide",
            "classPanelCallbacks"
        }
    .end annotation

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lr4/a;->b(Landroid/view/View;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lr4/a$e;LG4/b;FF)LG4/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lr4/a$e;LG4/b;FF)LG4/a;
    .locals 13
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
            "anchor",
            "cls",
            "instance",
            "tittle",
            "anchorSide",
            "classPanelCallbacks",
            "w",
            "h"
        }
    .end annotation

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {}, LN7/c;->h0()V

    sget-object v2, Lr4/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v6, p0

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    add-int/2addr v6, v7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eqz v7, :cond_3

    if-eq v7, v11, :cond_2

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_0

    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v2, v4

    div-float v4, v1, v10

    sub-float/2addr v2, v4

    :goto_1
    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_2

    :cond_1
    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    div-float v4, v0, v10

    sub-float v4, v6, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v5

    div-float/2addr v2, v3

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_2
    int-to-float v3, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v4, v0, v10

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v2, v4

    sub-float/2addr v2, v1

    goto :goto_1

    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v3, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :goto_2
    sget v4, LK8/c;->a:I

    invoke-static {v4}, LN7/c;->j(I)F

    move-result v4

    sub-float/2addr v2, v4

    sget v4, LK8/c;->b:I

    invoke-static {v4}, LN7/c;->i(I)F

    move-result v4

    sub-float/2addr v3, v4

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v11, :cond_4

    if-eq v0, v9, :cond_4

    if-eq v0, v8, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v11, v11, v11, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v11, v11, v1, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_3
    new-instance v0, LG4/a;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct {v0, v5, p1, p2, v6}, LG4/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LG4/b;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v0
.end method

.method public static c(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;)LG4/c;
    .locals 7
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
            "entries",
            "tittle",
            "anchorSide",
            "classPanelCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Ljava/lang/String;",
            "Lr4/a$e;",
            "LG4/d;",
            ")",
            "LG4/c;"
        }
    .end annotation

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lr4/a;->d(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FF)LG4/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FF)LG4/c;
    .locals 10
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
            "anchor",
            "entries",
            "tittle",
            "anchorSide",
            "classPanelCallbacks",
            "w",
            "h"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Ljava/lang/String;",
            "Lr4/a$e;",
            "LG4/d;",
            "FF)",
            "LG4/c;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;
    .locals 13
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
            "anchor",
            "entries",
            "tittle",
            "anchorSide",
            "classPanelCallbacks",
            "w",
            "h",
            "closeWhenTouchOutside",
            "hideTittlebar",
            "captureTouchWhenOutside"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Ljava/lang/String;",
            "Lr4/a$e;",
            "LG4/d;",
            "FFZZZ)",
            "LG4/c;"
        }
    .end annotation

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {}, LN7/c;->h0()V

    sget-object v2, Lr4/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v6, p0

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    add-int/2addr v6, v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eqz v7, :cond_3

    if-eq v7, v11, :cond_2

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_0

    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v2, v4

    div-float v4, v1, v10

    add-float/2addr v2, v4

    :goto_1
    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_2

    :cond_1
    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    div-float v4, v0, v10

    sub-float v4, v6, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v5

    div-float/2addr v2, v3

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_2
    int-to-float v3, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v4, v0, v10

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v4, v5

    div-float/2addr v2, v4

    sub-float/2addr v2, v1

    goto :goto_1

    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v3, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :goto_2
    sget v4, LK8/c;->a:I

    invoke-static {v4}, LN7/c;->j(I)F

    move-result v4

    sub-float/2addr v2, v4

    sget v4, LK8/c;->b:I

    invoke-static {v4}, LN7/c;->i(I)F

    move-result v4

    sub-float/2addr v3, v4

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v11, :cond_4

    if-eq v0, v9, :cond_4

    if-eq v0, v8, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v11, v11, v11, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v11, v11, v1, v11}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_3
    if-eqz p8, :cond_6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_6
    move/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    new-instance v0, LG4/c;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    invoke-direct {v0, p2, p1, v5}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;LG4/d;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object v4, v0, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v0
.end method

.method public static f(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "panel",
            "anchorSide"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p0, p1, p2, v0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 10
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
            "panel",
            "anchorSide",
            "w",
            "h"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_6

    invoke-static {}, LN7/c;->h0()V

    sget-object v0, Lr4/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    const/4 v4, 0x2

    div-int/2addr p0, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/2addr v5, v4

    invoke-static {}, LN7/c;->X()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-eq v6, v4, :cond_1

    if-eq v6, v7, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_1

    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    int-to-float v0, v2

    div-float/2addr p0, v0

    :goto_0
    int-to-float v0, v5

    int-to-float v1, v3

    div-float/2addr v0, v1

    div-float v1, p4, v8

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_1
    int-to-float p0, p0

    int-to-float v2, v2

    div-float/2addr p0, v2

    div-float v2, p3, v8

    sub-float/2addr p0, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    goto :goto_1

    :cond_2
    int-to-float p0, p0

    int-to-float v2, v2

    div-float/2addr p0, v2

    div-float v2, p3, v8

    sub-float/2addr p0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    sub-float/2addr v0, p4

    goto :goto_1

    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    int-to-float v0, v2

    div-float/2addr p0, v0

    sub-float/2addr p0, p3

    goto :goto_0

    :goto_1
    sget v1, LK8/c;->a:I

    invoke-static {v1}, LN7/c;->j(I)F

    move-result v1

    sub-float/2addr p0, v1

    sget v1, LK8/c;->b:I

    invoke-static {v1}, LN7/c;->i(I)F

    move-result v1

    sub-float/2addr v0, v1

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_5

    if-eq p0, v9, :cond_4

    if-eq p0, v4, :cond_4

    if-eq p0, v7, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v9, v9, v9, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v9, v9, p2, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_2
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)V
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
            "anchor",
            "panel",
            "anchorSide",
            "w",
            "h"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-void
.end method

.method public static i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V
    .locals 13
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
            "anchor",
            "panel",
            "anchorSide",
            "w",
            "h",
            "output"
        }
    .end annotation

    move-object v0, p0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->h0()V

    sget-object v1, Lr4/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    new-instance v12, Lr4/a$c;

    move-object v2, v12

    move-object v3, v1

    move-object v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move-object v10, p1

    move-object/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Lr4/a$c;-><init>(Landroid/graphics/Rect;Lr4/a$e;IFIFLandroid/graphics/Rect;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$f;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lr4/a$d;

    invoke-direct {v2, p0, v1, v12}, Lr4/a$d;-><init>(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-static {v2}, LN7/c;->c0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Anchor can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "panel",
            "anchorSide"
        }
    .end annotation

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p0, p1, p2, v0, v1}, Lr4/a;->k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 10
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
            "panel",
            "anchorSide",
            "w",
            "h"
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-static {}, LN7/c;->h0()V

    sget-object v0, Lr4/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    const/4 v4, 0x2

    div-int/2addr p0, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/2addr v5, v4

    invoke-static {}, LN7/c;->X()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-eq v6, v4, :cond_1

    if-eq v6, v7, :cond_0

    const/4 p0, 0x0

    move v0, p0

    goto :goto_1

    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    int-to-float v0, v2

    div-float/2addr p0, v0

    :goto_0
    int-to-float v0, v5

    int-to-float v1, v3

    div-float/2addr v0, v1

    div-float v1, p4, v8

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_1
    int-to-float p0, p0

    int-to-float v2, v2

    div-float/2addr p0, v2

    div-float v2, p3, v8

    sub-float/2addr p0, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    goto :goto_1

    :cond_2
    int-to-float p0, p0

    int-to-float v2, v2

    div-float/2addr p0, v2

    div-float v2, p3, v8

    sub-float/2addr p0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    sub-float/2addr v0, p4

    goto :goto_1

    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    int-to-float v0, v2

    div-float/2addr p0, v0

    sub-float/2addr p0, p3

    goto :goto_0

    :goto_1
    sget v1, LK8/c;->a:I

    invoke-static {v1}, LN7/c;->j(I)F

    move-result v1

    sub-float/2addr p0, v1

    sget v1, LK8/c;->b:I

    invoke-static {v1}, LN7/c;->i(I)F

    move-result v1

    sub-float/2addr v0, v1

    new-instance v1, Lm4/d;

    invoke-direct {v1, p0, v0, p3, p4}, Lm4/d;-><init>(FFFF)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_5

    if-eq p0, v9, :cond_4

    if-eq p0, v4, :cond_4

    if-eq p0, v7, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v9, v9, v9, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v9, v9, p2, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_2
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFFF)LG4/c;
    .locals 1
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
            "entries",
            "tittle",
            "anchorSide",
            "classPanelCallbacks",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Ljava/lang/String;",
            "Lr4/a$e;",
            "LG4/d;",
            "FFFF)",
            "LG4/c;"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    sget-object v0, Lr4/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    sget v0, LK8/c;->a:I

    invoke-static {v0}, LN7/c;->j(I)F

    move-result v0

    sub-float/2addr p4, v0

    sget v0, LK8/c;->b:I

    invoke-static {v0}, LN7/c;->i(I)F

    move-result v0

    sub-float/2addr p5, v0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {v0, p4, p5, p6, p7}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p5, :cond_0

    const/4 p6, 0x2

    if-eq p2, p6, :cond_0

    const/4 p6, 0x3

    if-eq p2, p6, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p5, p5, p5, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p5, p5, p4, p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_0
    new-instance p2, LG4/c;

    invoke-direct {p2, p1, p0, p3}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;LG4/d;)V

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object p2
.end method

.method public static m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panel",
            "w",
            "h"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v1, v2, v1

    div-float v0, p2, v0

    sub-float/2addr v2, v0

    invoke-static {p0, v1, v2, p1, p2}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
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
            "panel",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    sget v0, LK8/c;->a:I

    invoke-static {v0}, LN7/c;->j(I)F

    move-result v0

    sub-float/2addr p1, v0

    sget v0, LK8/c;->b:I

    invoke-static {v0}, LN7/c;->i(I)F

    move-result v0

    sub-float/2addr p2, v0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v0
.end method

.method public static o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panel",
            "w",
            "h"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v1, v2, v1

    div-float v0, p2, v0

    sub-float/2addr v2, v0

    invoke-static {p0, v1, v2, p1, p2}, Lr4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
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
            "panel",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    sget v0, LK8/c;->a:I

    invoke-static {v0}, LN7/c;->j(I)F

    move-result v0

    sub-float/2addr p1, v0

    sget v0, LK8/c;->b:I

    invoke-static {v0}, LN7/c;->i(I)F

    move-result v0

    sub-float/2addr p2, v0

    new-instance v0, Lm4/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lm4/d;-><init>(FFFF)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v0
.end method
