.class public LH5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LH5/a$i;
    }
.end annotation


# static fields
.field public static final d0:Ljava/lang/String; = "FloatEntryEditor"


# instance fields
.field public X:Landroid/view/View;

.field public Y:LH5/a$i;

.field public Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

.field public a0:F

.field public b0:Landroid/widget/TextView;

.field public final c0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;LH5/a$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "floatListener"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, LH5/a;->a0:F

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LH5/a;->c0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p2, p0, LH5/a;->Y:LH5/a$i;

    return-void
.end method

.method public static synthetic p1(LH5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LH5/a;->c0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic q1(LH5/a;)F
    .locals 0

    iget p0, p0, LH5/a;->a0:F

    return p0
.end method

.method public static synthetic r1(LH5/a;F)F
    .locals 0

    iput p1, p0, LH5/a;->a0:F

    return p1
.end method

.method public static synthetic s1(LH5/a;F)F
    .locals 1

    iget v0, p0, LH5/a;->a0:F

    mul-float/2addr v0, p1

    iput v0, p0, LH5/a;->a0:F

    return v0
.end method

.method public static synthetic t1(LH5/a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LH5/a;->b0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic u1(LH5/a;FF)F
    .locals 0

    invoke-virtual {p0, p1, p2}, LH5/a;->y1(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic v1(LH5/a;)LH5/a$i;
    .locals 0

    iget-object p0, p0, LH5/a;->Y:LH5/a$i;

    return-object p0
.end method

.method public static w1(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;LH5/a$i;)LH5/a;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tittle",
            "context",
            "floatListener"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->Q()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/high16 v2, 0x433c0000    # 188.0f

    invoke-static {v2, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v3, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0600b3

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr v3, p2

    float-to-int p2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v6, v2, v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float v7, p2, v0

    new-instance p2, LH5/a;

    invoke-direct {p2, p1, p3}, LH5/a;-><init>(Ljava/lang/String;LH5/a$i;)V

    sget-object v5, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v8, LH5/a$a;

    invoke-direct {v8}, LH5/a$a;-><init>()V

    move-object v3, p0

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-object p2
.end method


# virtual methods
.method public final A1()V
    .locals 3

    iget-object v0, p0, LH5/a;->X:Landroid/view/View;

    const v1, 0x7f0903d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setStep(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMinValue(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMaxValue(I)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setFillColor(I)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBaseColor(I)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleFillColor(I)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextColor(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBarHeight(I)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleRadius(I)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LNc/b;->p1(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextSize(I)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    new-instance v1, LH5/a$g;

    invoke-direct {v1, p0}, LH5/a$g;-><init>(LH5/a;)V

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setOnRangeSeekBarViewChangeListener(Ldn/e;)V

    return-void
.end method

.method public final B1()V
    .locals 5

    iget-object v0, p0, LH5/a;->X:Landroid/view/View;

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iput-object v0, p0, LH5/a;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iget-object v0, p0, LH5/a;->X:Landroid/view/View;

    const v1, 0x7f0905d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LH5/a;->b0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    iput v0, p0, LH5/a;->a0:F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotE:F

    iget-object v2, p0, LH5/a;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartAngle(D)V

    iget-object v0, p0, LH5/a;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    iget-object v0, p0, LH5/a;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    new-instance v1, LH5/a$b;

    invoke-direct {v1, p0}, LH5/a$b;-><init>(LH5/a;)V

    invoke-virtual {v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setOnSliderRangeMovedListener(Lcom/bozapro/circularsliderrange/CircularSliderRange$a;)V

    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LH5/a;->X:Landroid/view/View;

    new-instance v1, LH5/a$h;

    invoke-direct {v1, p0}, LH5/a$h;-><init>(LH5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, LH5/a;->B1()V

    invoke-virtual {p0}, LH5/a;->z1()V

    invoke-virtual {p0}, LH5/a;->A1()V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3

    new-instance v0, LH5/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LH5/a;->Y:LH5/a$i;

    invoke-direct {v0, v1, v2}, LH5/a;-><init>(Ljava/lang/String;LH5/a$i;)V

    return-object v0
.end method

.method public m1()V
    .locals 0

    return-void
.end method

.method public n1()V
    .locals 3

    iget-object v0, p0, LH5/a;->c0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->e()V

    :cond_0
    return-void
.end method

.method public final x1(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LH5/a;->Z:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    if-eqz v0, :cond_0

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    :cond_0
    return-void
.end method

.method public final y1(FF)F
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

.method public final z1()V
    .locals 5

    iget-object v0, p0, LH5/a;->X:Landroid/view/View;

    const v1, 0x7f0903a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, LH5/a;->X:Landroid/view/View;

    const v2, 0x7f0903a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, LH5/a;->X:Landroid/view/View;

    const v3, 0x7f090314

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, LH5/a;->X:Landroid/view/View;

    const v4, 0x7f090313

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, LH5/a$c;

    invoke-direct {v4, p0}, LH5/a$c;-><init>(LH5/a;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LH5/a$d;

    invoke-direct {v0, p0}, LH5/a$d;-><init>(LH5/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LH5/a$e;

    invoke-direct {v0, p0}, LH5/a$e;-><init>(LH5/a;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LH5/a$f;

    invoke-direct {v0, p0}, LH5/a$f;-><init>(LH5/a;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
