.class public Lm6/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final i0:J = 0xfaL

.field public static final j0:F = 40.0f


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;

.field public Z:Landroid/widget/TextView;

.field public a0:I

.field public b0:Lm4/a;

.field public c0:J

.field public d0:F

.field public e0:F

.field public f0:J

.field public g0:I

.field public h0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 10
    const-string v1, "FPS"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lm6/b;->c0:J

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lm6/b;->d0:F

    .line 13
    iput v0, p0, Lm6/b;->e0:F

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lm6/b;->f0:J

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lm6/b;->g0:I

    .line 16
    iput v0, p0, Lm6/b;->h0:I

    .line 17
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 18
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lm6/b;->c0:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lm6/b;->d0:F

    .line 4
    iput p1, p0, Lm6/b;->e0:F

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lm6/b;->f0:J

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lm6/b;->g0:I

    .line 7
    iput p1, p0, Lm6/b;->h0:I

    .line 8
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    .line 9
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    return-void
.end method

.method public static A1()V
    .locals 3

    const/16 v0, 0x26

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x20

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lm6/b;

    invoke-direct {v2}, Lm6/b;-><init>()V

    invoke-static {v2, v0, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object v0, v2, Lm6/b;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static synthetic p1(Lm6/b;)J
    .locals 2

    iget-wide v0, p0, Lm6/b;->c0:J

    return-wide v0
.end method

.method public static synthetic q1(Lm6/b;J)J
    .locals 0

    iput-wide p1, p0, Lm6/b;->c0:J

    return-wide p1
.end method

.method public static synthetic r1(Lm6/b;)F
    .locals 0

    iget p0, p0, Lm6/b;->d0:F

    return p0
.end method

.method public static synthetic s1(Lm6/b;F)F
    .locals 0

    iput p1, p0, Lm6/b;->d0:F

    return p1
.end method

.method public static synthetic t1(Lm6/b;)F
    .locals 0

    iget p0, p0, Lm6/b;->e0:F

    return p0
.end method

.method public static synthetic u1(Lm6/b;F)F
    .locals 0

    iput p1, p0, Lm6/b;->e0:F

    return p1
.end method

.method public static synthetic v1(Lm6/b;)Lm4/a;
    .locals 0

    iget-object p0, p0, Lm6/b;->b0:Lm4/a;

    return-object p0
.end method

.method public static synthetic w1(Lm6/b;Lm4/a;)Lm4/a;
    .locals 0

    iput-object p1, p0, Lm6/b;->b0:Lm4/a;

    return-object p1
.end method

.method public static synthetic x1(Lm6/b;)V
    .locals 0

    invoke-virtual {p0}, Lm6/b;->z1()V

    return-void
.end method

.method public static synthetic y1(Lm6/b;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iget-object p0, p0, Lm6/b;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;

    iput-object v1, p0, Lm6/b;->Y:Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lm6/b;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lm6/b;->Y:Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->setStrokeColor(I)V

    iget-object v1, p0, Lm6/b;->Y:Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;->setStrokeWidth(F)V

    new-instance v1, Lm6/b$a;

    invoke-direct {v1, p0}, Lm6/b$a;-><init>(Lm6/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lm6/b;

    invoke-direct {v0}, Lm6/b;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 8

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget v0, p0, Lm6/b;->g0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm6/b;->g0:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lm6/b;->f0:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget v4, p0, Lm6/b;->g0:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lm6/b;->h0:I

    iput v5, p0, Lm6/b;->g0:I

    add-long/2addr v2, v6

    iput-wide v2, p0, Lm6/b;->f0:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lm6/b;->f0:J

    :cond_0
    iget-object v0, p0, Lm6/b;->b0:Lm4/a;

    if-eqz v0, :cond_2

    sget-object v0, Lrc/a;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltc/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ltc/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    invoke-virtual {v0}, Ltc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v0, v0

    iget-object v2, p0, Lm6/b;->b0:Lm4/a;

    iget v3, v2, Lm4/a;->a:I

    sub-int/2addr v1, v3

    iget v3, v2, Lm4/a;->b:I

    sub-int/2addr v0, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    iget v3, v3, Li4/a;->a:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lm6/b;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v2, v2, Lm4/a;->c:F

    add-float/2addr v2, v1

    invoke-static {v2}, LNc/b;->I(F)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(F)V

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k:Li4/a;

    iget v1, v1, Li4/a;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lm6/b;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v2, p0, Lm6/b;->b0:Lm4/a;

    iget v2, v2, Lm4/a;->d:F

    add-float/2addr v2, v0

    invoke-static {v2}, LNc/b;->I(F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->M1(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lm6/b;->b0:Lm4/a;

    :cond_2
    :goto_0
    return-void
.end method

.method public o1()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    iget-object v0, p0, Lm6/b;->Y:Lcom/itsmagic/engine/Activities/Editor/Utils/StrokeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm6/b;->h0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lm6/b;->a0:I

    iget v1, p0, Lm6/b;->h0:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lm6/b;->a0:I

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm6/b;->Z:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm6/b;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm6/b;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final z1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
