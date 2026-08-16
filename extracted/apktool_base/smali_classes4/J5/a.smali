.class public LJ5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final f0:Ljava/lang/String; = "ITsMagicLoadingSplashScreenPanel"

.field public static g0:LJ5/a;

.field public static final h0:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public a0:Landroid/widget/TextView;

.field public b0:Landroid/widget/TextView;

.field public c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

.field public d0:I

.field public e0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJ5/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LJ5/a;->h0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LJ5/a;->d0:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    new-instance v2, LK5/e;

    invoke-direct {v2}, LK5/e;-><init>()V

    new-instance v3, LK5/d;

    invoke-direct {v3}, LK5/d;-><init>()V

    new-instance v4, LK5/a;

    invoke-direct {v4}, LK5/a;-><init>()V

    new-instance v5, LK5/b;

    invoke-direct {v5}, LK5/b;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [LJ5/b;

    aput-object v2, v6, v0

    const/4 v0, 0x1

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, LJ5/a;->e0:Ljava/util/List;

    return-void
.end method

.method public static q1()V
    .locals 4

    sget-object v0, LJ5/a;->h0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->j()V

    return-void

    :cond_0
    sget-object v0, LJ5/a;->g0:LJ5/a;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, LJ5/a;

    invoke-direct {v0}, LJ5/a;-><init>()V

    sput-object v0, LJ5/a;->g0:LJ5/a;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1, v2, v2}, Lr4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iput-object v1, v0, LJ5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LJ5/a$a;

    invoke-direct {v1, p0}, LJ5/a$a;-><init>(LJ5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LJ5/a;->Y:Landroid/widget/TextView;

    const v1, 0x7f0903c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object v1, p0, LJ5/a;->c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LJ5/a;->Z:Landroid/widget/TextView;

    const v1, 0x7f0905a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LJ5/a;->a0:Landroid/widget/TextView;

    const v1, 0x7f0904c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LJ5/a;->b0:Landroid/widget/TextView;

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    iget-object v1, p0, LJ5/a;->e0:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ5/b;

    invoke-virtual {v1}, LJ5/b;->g()V

    iget-object v1, p0, LJ5/a;->Z:Landroid/widget/TextView;

    iget-object v3, p0, LJ5/a;->e0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ5/b;

    invoke-virtual {v3}, LJ5/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LJ5/a;->Y:Landroid/widget/TextView;

    iget-object v3, p0, LJ5/a;->e0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ5/b;

    invoke-virtual {v3}, LJ5/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LJ5/a;->c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    invoke-virtual {v1, v2}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    iget-object v1, p0, LJ5/a;->a0:Landroid/widget/TextView;

    sget-object v2, LW7/b;->f:LC8/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LJ5/a;->b0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LJ5/a;->e0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-object v0, LJ5/a;->g0:LJ5/a;

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, LJ5/a;

    invoke-direct {v0}, LJ5/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LJ5/a;->e0:Ljava/util/List;

    iget v1, p0, LJ5/a;->d0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ5/b;

    invoke-virtual {v0}, LJ5/b;->l()V

    iget-object v0, p0, LJ5/a;->e0:Ljava/util/List;

    iget v1, p0, LJ5/a;->d0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ5/b;

    invoke-virtual {v0}, LJ5/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ5/a;->p1()V

    :cond_0
    invoke-virtual {p0}, LJ5/a;->r1()V

    return-void
.end method

.method public final p1()V
    .locals 3

    iget v0, p0, LJ5/a;->d0:I

    iget-object v1, p0, LJ5/a;->e0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, LJ5/a;->d0:I

    add-int/2addr v0, v2

    iput v0, p0, LJ5/a;->d0:I

    iget-object v1, p0, LJ5/a;->e0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ5/b;

    invoke-virtual {v0}, LJ5/b;->g()V

    invoke-virtual {p0}, LJ5/a;->r1()V

    return-void

    :cond_0
    iget-object v0, p0, LJ5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    const/4 v0, 0x0

    iput-object v0, p0, LJ5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    sget-object v0, LJ5/a;->h0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final r1()V
    .locals 3

    iget-object v0, p0, LJ5/a;->e0:Ljava/util/List;

    iget v1, p0, LJ5/a;->d0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ5/b;

    iget-object v1, p0, LJ5/a;->Z:Landroid/widget/TextView;

    invoke-virtual {v0}, LJ5/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LJ5/a;->Y:Landroid/widget/TextView;

    invoke-virtual {v0}, LJ5/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LJ5/a;->c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    invoke-virtual {v0}, LJ5/b;->c()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    iget-object v0, p0, LJ5/a;->b0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LJ5/a;->d0:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJ5/a;->e0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z(Lo4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z(Lo4/b;)V

    iget-object p1, p0, LJ5/a;->e0:Ljava/util/List;

    iget v0, p0, LJ5/a;->d0:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ5/b;

    invoke-virtual {p1}, LJ5/b;->a()V

    return-void
.end method
