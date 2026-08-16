.class public Lq7/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq7/a$d;
    }
.end annotation


# static fields
.field public static final c0:Ljava/lang/String; = "SmallInfinityLoadingBar"

.field public static final d0:I = 0x18


# instance fields
.field public final X:Z

.field public Y:F

.field public final Z:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

.field public b0:F


# direct methods
.method public constructor <init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureClicks",
            "blockPanel"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SmallInfinityLoadingBar"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lq7/a;->Y:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lq7/a;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    iput-boolean p1, p0, Lq7/a;->X:Z

    iput-object p2, p0, Lq7/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-void
.end method

.method public static r1()Lq7/a;
    .locals 5

    const/16 v0, 0x20

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v1

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v0

    new-instance v2, Lq7/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lq7/a;-><init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-static {v2, v1, v0}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    return-object v2
.end method

.method public static s1(FF)Lq7/a;
    .locals 4
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

    new-instance v0, Lq7/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lq7/a;-><init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    const/16 v1, 0x20

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v3

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    invoke-static {v0, p0, p1, v3, v1}, Lr4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    return-object v0
.end method

.method public static t1(Landroid/view/View;Lr4/a$e;)Lq7/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide"
        }
    .end annotation

    new-instance v0, Lq7/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lq7/a;-><init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    const/16 v1, 0x20

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v3

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    invoke-static {p0, v0, p1, v3, v1}, Lr4/a;->k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    return-object v0
.end method

.method public static u1(ZLq7/a$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blockClicks",
            "listener"
        }
    .end annotation

    new-instance v0, Lq7/a$a;

    invoke-direct {v0, p0, p1}, Lq7/a$a;-><init>(ZLq7/a$d;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c019f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lq7/a;->X:Z

    if-eqz v1, :cond_0

    new-instance v1, Lq7/a$b;

    invoke-direct {v1, p0}, Lq7/a$b;-><init>(Lq7/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, Lq7/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method

.method public m1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, Lq7/a;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    iget v0, p0, Lq7/a;->b0:F

    invoke-static {}, LK8/d;->d()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lq7/a;->b0:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_1
    return-void
.end method

.method public n1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    return-void
.end method

.method public p1()V
    .locals 2

    iget-object v0, p0, Lq7/a;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lq7/a$c;

    invoke-direct {v0, p0}, Lq7/a$c;-><init>(Lq7/a;)V

    invoke-static {v0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q1(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    iput-object p1, p0, Lq7/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-void
.end method
