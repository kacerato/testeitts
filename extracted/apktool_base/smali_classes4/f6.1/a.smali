.class public Lf6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final d0:Ljava/lang/String; = "NotificationBalloon"


# instance fields
.field public final X:Landroid/view/View;

.field public final Y:I

.field public final Z:Ljava/lang/String;

.field public final a0:Z

.field public b0:F

.field public c0:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ILjava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attachmentView",
            "iconResource",
            "title",
            "autoClose"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lf6/a;->b0:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf6/a;->c0:Z

    iput-object p1, p0, Lf6/a;->X:Landroid/view/View;

    iput p2, p0, Lf6/a;->Y:I

    iput-object p3, p0, Lf6/a;->Z:Ljava/lang/String;

    iput-boolean p4, p0, Lf6/a;->a0:Z

    return-void
.end method

.method public static p1(Landroid/view/View;ILjava/lang/String;Z)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attachmentView",
            "iconResource",
            "title",
            "autoClose"
        }
    .end annotation

    new-instance v0, Lf6/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lf6/a;-><init>(Landroid/view/View;ILjava/lang/String;Z)V

    const p0, 0x7f0601ee

    invoke-static {p0}, LN7/c;->v(I)I

    move-result p0

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const p1, 0x7f0601ed

    invoke-static {p1}, LN7/c;->v(I)I

    move-result p1

    invoke-static {p1}, LN7/c;->f(I)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    const/4 p3, 0x0

    invoke-static {v0, p2, p3, p0, p1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0158

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lf6/a$a;

    invoke-direct {v1, p0}, Lf6/a$a;-><init>(Lf6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf6/a$b;

    invoke-direct {v2, p0}, Lf6/a$b;-><init>(Lf6/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lf6/a;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lf6/a;->Y:I

    if-gtz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lf6/a;->X:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lf6/a;->X:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v2, 0x7f0601e0

    invoke-static {v2}, LN7/c;->w(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lf6/a;->X:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public m1()V
    .locals 2

    iget-boolean v0, p0, Lf6/a;->a0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf6/a;->c0:Z

    if-nez v0, :cond_0

    iget v0, p0, Lf6/a;->b0:F

    invoke-static {}, LJAVARuntime/Time;->unscaledDeltaTime()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lf6/a;->b0:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf6/a;->c0:Z

    :cond_0
    return-void
.end method
