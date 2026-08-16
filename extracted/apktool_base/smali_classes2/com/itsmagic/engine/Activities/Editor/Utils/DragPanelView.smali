.class public Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final f:J = 0xfaL


# instance fields
.field public b:F

.field public c:F

.field public d:Lm4/a;

.field public e:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->b:F

    .line 3
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->b:F

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->b:F

    .line 9
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c:F

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->b:F

    return p1
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->c:F

    return p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)Lm4/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;Lm4/a;)Lm4/a;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    return-object p1
.end method


# virtual methods
.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_1

    sget-object v0, Lrc/a;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltc/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    invoke-virtual {v0}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v0, v0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    iget v3, v2, Lm4/a;->a:I

    sub-int/2addr v1, v3

    iget v2, v2, Lm4/a;->b:I

    sub-int/2addr v0, v2

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->N()Li4/a;

    move-result-object v2

    int-to-float v1, v1

    iget v3, v2, Li4/a;->a:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    iget v4, v4, Lm4/a;->c:F

    add-float/2addr v4, v1

    invoke-static {v4}, LNc/b;->I(F)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(F)V

    int-to-float v0, v0

    iget v1, v2, Li4/a;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    iget v2, v2, Lm4/a;->d:F

    add-float/2addr v2, v0

    invoke-static {v2}, LNc/b;->I(F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->M1(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->d:Lm4/a;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use setPanel()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
