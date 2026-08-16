.class public LI5/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI5/c$b;
    }
.end annotation


# static fields
.field public static final e0:Ljava/lang/String; = "LoadingWorld"

.field public static f0:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public a0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

.field public b0:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public d0:LI5/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LI5/c;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(LI5/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    iput-object p1, p0, LI5/c;->d0:LI5/c$b;

    return-void
.end method

.method public static synthetic p1(LI5/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iget-object p0, p0, LI5/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method

.method public static synthetic q1(LI5/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LI5/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static r1(LI5/c$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, LI5/c;->f0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xfa

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x55

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v3, v4, v3

    div-float v2, v1, v2

    sub-float/2addr v4, v2

    new-instance v2, LI5/c;

    invoke-direct {v2, p0}, LI5/c;-><init>(LI5/c$b;)V

    invoke-static {v2, v3, v4, v0, v1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iput-object p0, v2, LI5/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0107

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LI5/c;->Y:Landroid/widget/TextView;

    const v1, 0x7f0903c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object v1, p0, LI5/c;->a0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LI5/c;->Z:Landroid/widget/TextView;

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LI5/c;

    iget-object v1, p0, LI5/c;->d0:LI5/c$b;

    invoke-direct {v0, v1}, LI5/c;-><init>(LI5/c$b;)V

    return-object v0
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LI5/c;->Z:Landroid/widget/TextView;

    iget-object v1, p0, LI5/c;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LI5/c;->Y:Landroid/widget/TextView;

    iget-object v1, p0, LI5/c;->b0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LI5/c;->a0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iget-object v1, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {v1}, LI5/c$b;->a()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    iget-object v0, p0, LI5/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {v0}, LI5/c$b;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI5/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    const/4 v0, 0x0

    iput-object v0, p0, LI5/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_0
    return-void
.end method

.method public z(Lo4/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z(Lo4/b;)V

    iget-object p1, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {p1}, LI5/c$b;->finished()Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_4

    iget-object p1, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {p1}, LI5/c$b;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%"

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iput-object p1, p0, LI5/c;->c0:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    const/4 p1, 0x0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    aget-object p1, v0, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    array-length p1, v0

    const/4 v3, 0x4

    const/4 v6, 0x2

    const-string v7, " "

    if-lt p1, v3, :cond_0

    aget-object p1, v0, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {p1}, LI5/c$b;->c()F

    move-result p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LI5/c;->c0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    aget-object p1, v0, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {p1}, LI5/c$b;->c()F

    move-result p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LI5/c;->c0:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, p0, LI5/c;->c0:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v0, p0, LI5/c;->c0:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {p1}, LI5/c$b;->b()I

    move-result p1

    iget-object v0, p0, LI5/c;->d0:LI5/c$b;

    invoke-interface {v0}, LI5/c$b;->d()I

    move-result v0

    if-lez v0, :cond_3

    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v3, v2

    float-to-int p1, v3

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LI5/c;->b0:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LI5/c;->b0:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v0, p0, LI5/c;->b0:Ljava/lang/String;

    new-instance p1, LI5/c$a;

    invoke-direct {p1, p0}, LI5/c$a;-><init>(LI5/c;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
