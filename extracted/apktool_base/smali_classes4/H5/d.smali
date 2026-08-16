.class public LH5/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final l0:Ljava/lang/String; = "RotationSliders"


# instance fields
.field public X:Landroid/view/View;

.field public Y:Z

.field public Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

.field public a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

.field public b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/TextView;

.field public e0:Landroid/widget/TextView;

.field public f0:F

.field public g0:F

.field public h0:F

.field public i0:F

.field public j0:F

.field public k0:F


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROTATE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(LH5/d;FF)F
    .locals 0

    invoke-direct {p0, p1, p2}, LH5/d;->r1(FF)F

    move-result p0

    return p0
.end method

.method private r1(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "last",
            "pos"
        }
    .end annotation

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    :goto_0
    move p1, p2

    :cond_1
    return p1
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0192

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LH5/d;->X:Landroid/view/View;

    invoke-virtual {p0}, LH5/d;->s1()V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, LH5/d;

    invoke-direct {v0}, LH5/d;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l0()Z

    move-result v0

    iput-boolean v0, p0, LH5/d;->Y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lv3/c;->a()Lv3/c$b;

    move-result-object v0

    sget-object v1, Lv3/c$b;->Rotation:Lv3/c$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l0()Z

    move-result v0

    iput-boolean v0, p0, LH5/d;->Y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lv3/c;->a()Lv3/c$b;

    move-result-object v0

    sget-object v1, Lv3/c$b;->Rotation:Lv3/c$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method

.method public final q1()V
    .locals 4

    iget-object v0, p0, LH5/d;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v0, :cond_0

    iget-object v0, p0, LH5/d;->a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v0, :cond_0

    iget-object v0, p0, LH5/d;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v0, :cond_0

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, LH5/d;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    iget-object v1, p0, LH5/d;->a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    iget-object v1, p0, LH5/d;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    :cond_0
    return-void
.end method

.method public final s1()V
    .locals 5

    iget-object v0, p0, LH5/d;->X:Landroid/view/View;

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iput-object v0, p0, LH5/d;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iget-object v0, p0, LH5/d;->X:Landroid/view/View;

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iput-object v0, p0, LH5/d;->a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iget-object v0, p0, LH5/d;->X:Landroid/view/View;

    const v1, 0x7f090121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iput-object v0, p0, LH5/d;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iget-object v0, p0, LH5/d;->X:Landroid/view/View;

    const v1, 0x7f0905d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LH5/d;->c0:Landroid/widget/TextView;

    iget-object v0, p0, LH5/d;->X:Landroid/view/View;

    const v1, 0x7f0905d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LH5/d;->d0:Landroid/widget/TextView;

    iget-object v0, p0, LH5/d;->X:Landroid/view/View;

    const v1, 0x7f0905da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LH5/d;->e0:Landroid/widget/TextView;

    iget-object v1, p0, LH5/d;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v1, :cond_0

    iget-object v1, p0, LH5/d;->a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v1, :cond_0

    iget-object v1, p0, LH5/d;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v1, :cond_0

    iget-object v1, p0, LH5/d;->c0:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, LH5/d;->d0:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LH5/d;->q1()V

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, LH5/d;->i0:F

    iput v0, p0, LH5/d;->j0:F

    iput v0, p0, LH5/d;->k0:F

    iget-object v1, p0, LH5/d;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartAngle(D)V

    iget-object v0, p0, LH5/d;->a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iget v1, p0, LH5/d;->j0:F

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartAngle(D)V

    iget-object v0, p0, LH5/d;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iget v1, p0, LH5/d;->k0:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartAngle(D)V

    iget-object v0, p0, LH5/d;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    new-instance v1, LH5/d$a;

    invoke-direct {v1, p0}, LH5/d$a;-><init>(LH5/d;)V

    invoke-virtual {v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setOnSliderRangeMovedListener(Lcom/bozapro/circularsliderrange/CircularSliderRange$a;)V

    iget-object v0, p0, LH5/d;->a0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    new-instance v1, LH5/d$b;

    invoke-direct {v1, p0}, LH5/d$b;-><init>(LH5/d;)V

    invoke-virtual {v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setOnSliderRangeMovedListener(Lcom/bozapro/circularsliderrange/CircularSliderRange$a;)V

    iget-object v0, p0, LH5/d;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    new-instance v1, LH5/d$c;

    invoke-direct {v1, p0}, LH5/d$c;-><init>(LH5/d;)V

    invoke-virtual {v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setOnSliderRangeMovedListener(Lcom/bozapro/circularsliderrange/CircularSliderRange$a;)V

    :cond_0
    return-void
.end method
