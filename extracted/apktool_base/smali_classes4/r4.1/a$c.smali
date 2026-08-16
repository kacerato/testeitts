.class public Lr4/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Lr4/a$e;

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Landroid/graphics/Rect;

.field public final synthetic i:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

.field public final synthetic j:Lr4/a$f;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lr4/a$e;IFIFLandroid/graphics/Rect;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$anchorRect",
            "val$anchorSide",
            "val$screenWidth",
            "val$w",
            "val$screenHeight",
            "val$h",
            "val$saRect",
            "val$panel",
            "val$output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr4/a$c;->b:Landroid/graphics/Rect;

    iput-object p2, p0, Lr4/a$c;->c:Lr4/a$e;

    iput p3, p0, Lr4/a$c;->d:I

    iput p4, p0, Lr4/a$c;->e:F

    iput p5, p0, Lr4/a$c;->f:I

    iput p6, p0, Lr4/a$c;->g:F

    iput-object p7, p0, Lr4/a$c;->h:Landroid/graphics/Rect;

    iput-object p8, p0, Lr4/a$c;->i:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    iput-object p9, p0, Lr4/a$c;->j:Lr4/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lr4/a$c;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    div-int/2addr v3, v2

    invoke-static {}, LN7/c;->X()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lr4/a$c;->c:Lr4/a$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v4, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lr4/a$c;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lr4/a$c;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v3

    iget v3, p0, Lr4/a$c;->f:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lr4/a$c;->g:F

    :goto_0
    div-float/2addr v3, v5

    :goto_1
    sub-float/2addr v1, v3

    goto :goto_2

    :cond_1
    int-to-float v0, v1

    iget v1, p0, Lr4/a$c;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lr4/a$c;->e:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lr4/a$c;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lr4/a$c;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lr4/a$c;->f:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_2

    :cond_2
    int-to-float v0, v1

    iget v1, p0, Lr4/a$c;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lr4/a$c;->e:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lr4/a$c;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lr4/a$c;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lr4/a$c;->f:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lr4/a$c;->g:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lr4/a$c;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lr4/a$c;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lr4/a$c;->e:F

    sub-float/2addr v0, v1

    int-to-float v1, v3

    iget v3, p0, Lr4/a$c;->f:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lr4/a$c;->g:F

    goto :goto_0

    :goto_2
    sget v3, LK8/c;->a:I

    invoke-static {v3}, LN7/c;->j(I)F

    move-result v3

    sub-float/2addr v0, v3

    sget v3, LK8/c;->b:I

    invoke-static {v3}, LN7/c;->i(I)F

    move-result v3

    sub-float/2addr v1, v3

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v5, p0, Lr4/a$c;->e:F

    iget v7, p0, Lr4/a$c;->g:F

    invoke-direct {v3, v0, v1, v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    iget-object v0, p0, Lr4/a$c;->c:Lr4/a$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v6, v6, v6, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v6, v6, v1, v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    :goto_3
    iget-object v0, p0, Lr4/a$c;->i:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    iget-object v0, p0, Lr4/a$c;->j:Lr4/a$f;

    if-eqz v0, :cond_6

    invoke-interface {v0, v3}, Lr4/a$f;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_6
    return-void
.end method
