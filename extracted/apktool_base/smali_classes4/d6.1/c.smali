.class public Ld6/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final Z:Ljava/lang/String; = "DownloadProgress"


# instance fields
.field public X:Landroid/widget/TextView;

.field public Y:Lcom/daimajia/numberprogressbar/NumberProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Download progress"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r1()Ld6/c;
    .locals 6

    new-instance v0, Ld6/c;

    invoke-direct {v0}, Ld6/c;-><init>()V

    const/16 v1, 0xfa

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v2}, LN7/c;->f(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v4, v5, v4

    div-float v3, v2, v3

    sub-float/2addr v5, v3

    invoke-static {v0, v4, v5, v1, v2}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object v0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object v1, p0, Ld6/c;->Y:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const v1, 0x7f0903c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ld6/c;->X:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    new-instance v1, Lob/b;

    new-instance v2, Ld6/c$a;

    invoke-direct {v2, p0}, Ld6/c$a;-><init>(Ld6/c;)V

    invoke-direct {v1, v2}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v1}, LK8/a;->J(Lob/b;)V

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Ld6/c;

    invoke-direct {v0}, Ld6/c;-><init>()V

    return-object v0
.end method

.method public p1(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "text"
        }
    .end annotation

    iget-object v0, p0, Ld6/c;->Y:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    invoke-virtual {v0, p1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    iget-object p1, p0, Ld6/c;->X:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Ld6/c;->X:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
