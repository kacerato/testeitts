.class public LH5/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LH5/c$k;,
        LH5/c$l;
    }
.end annotation


# static fields
.field public static final g0:Ljava/lang/String; = "QuatEntryEditor"

.field public static final h0:I = 0x7f0c01cf


# instance fields
.field public X:LH5/c$k;

.field public Y:Landroid/view/View;

.field public Z:LH5/c$l;

.field public a0:F

.field public b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

.field public c0:F

.field public d0:Landroid/widget/TextView;

.field public final e0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f0:F


# direct methods
.method public constructor <init>(Ljava/lang/String;LH5/c$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LH5/c$k;->X:LH5/c$k;

    iput-object p1, p0, LH5/c;->X:LH5/c$k;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LH5/c;->a0:F

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LH5/c;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, LH5/c;->f0:F

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p2, p0, LH5/c;->Z:LH5/c$l;

    return-void
.end method

.method public static E1(Landroid/view/View;Ljava/lang/String;LH5/c$l;)LH5/c;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tittle",
            "floatListener"
        }
    .end annotation

    const/16 v0, 0x12c

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v4

    const/16 v0, 0x5c

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v5

    new-instance v0, LH5/c;

    invoke-direct {v0, p1, p2}, LH5/c;-><init>(Ljava/lang/String;LH5/c$l;)V

    sget-object v3, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v6, LH5/c$b;

    invoke-direct {v6}, LH5/c$b;-><init>()V

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-object v0
.end method

.method private F1(FF)F
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

.method private G1()V
    .locals 10

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0904c7

    invoke-virtual {p0, v1}, LH5/c;->A1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, LM7/c;

    new-instance v4, LH5/c$h;

    invoke-direct {v4, p0}, LH5/c$h;-><init>(LH5/c;)V

    sget-object v5, LM7/c$b;->Left:LM7/c$b;

    const v6, 0x7f0701f4

    invoke-direct {v3, v6, v4, v5, v0}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v4, Lf5/d;->b:LAc/b;

    invoke-virtual {v3, v4}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v3

    sget-object v5, Lf5/d;->c:LAc/b;

    invoke-virtual {v3, v5}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v3

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v7

    invoke-virtual {v3, v7}, LM7/c;->m0(I)LM7/c;

    move-result-object v3

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v7

    invoke-virtual {v3, v7}, LM7/c;->Y(I)LM7/c;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LM7/h;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v1, v7}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, LM7/h;->g(Ljava/util/List;)V

    const v1, 0x7f0904c8

    invoke-virtual {p0, v1}, LH5/c;->A1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, LM7/c;

    new-instance v7, LH5/c$i;

    invoke-direct {v7, p0}, LH5/c$i;-><init>(LH5/c;)V

    sget-object v8, LM7/c$b;->Right:LM7/c$b;

    const v9, 0x7f07016b

    invoke-direct {v3, v9, v7, v8, v0}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v5}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v3

    invoke-virtual {v0, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-static {v6}, LNc/b;->k0(F)I

    move-result v3

    invoke-virtual {v0, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/h;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method private H1()V
    .locals 3

    const v0, 0x7f0903d8

    invoke-virtual {p0, v0}, LH5/c;->A1(I)Landroid/view/View;

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

    new-instance v1, LH5/c$j;

    invoke-direct {v1, p0}, LH5/c$j;-><init>(LH5/c;)V

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setOnRangeSeekBarViewChangeListener(Ldn/e;)V

    return-void
.end method

.method private I1()V
    .locals 5

    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, LH5/c;->A1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bozapro/circularsliderrange/CircularSliderRange;

    iput-object v0, p0, LH5/c;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    const v0, 0x7f0905d0

    invoke-virtual {p0, v0}, LH5/c;->A1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LH5/c;->d0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    iput v0, p0, LH5/c;->c0:F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotS:F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->entryEditorRotE:F

    iget-object v2, p0, LH5/c;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartAngle(D)V

    iget-object v0, p0, LH5/c;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    iget-object v0, p0, LH5/c;->b0:Lcom/bozapro/circularsliderrange/CircularSliderRange;

    new-instance v1, LH5/c$g;

    invoke-direct {v1, p0}, LH5/c$g;-><init>(LH5/c;)V

    invoke-virtual {v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setOnSliderRangeMovedListener(Lcom/bozapro/circularsliderrange/CircularSliderRange$a;)V

    return-void
.end method

.method public static synthetic p1(LH5/c;LH5/c$k;)LH5/c$k;
    .locals 0

    iput-object p1, p0, LH5/c;->X:LH5/c$k;

    return-object p1
.end method

.method public static synthetic q1(LH5/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LH5/c;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic r1(LH5/c;)F
    .locals 0

    iget p0, p0, LH5/c;->c0:F

    return p0
.end method

.method public static synthetic s1(LH5/c;F)F
    .locals 0

    iput p1, p0, LH5/c;->c0:F

    return p1
.end method

.method public static synthetic t1(LH5/c;F)F
    .locals 1

    iget v0, p0, LH5/c;->c0:F

    mul-float/2addr v0, p1

    iput v0, p0, LH5/c;->c0:F

    return v0
.end method

.method public static synthetic u1(LH5/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LH5/c;->d0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic v1(LH5/c;FF)F
    .locals 0

    invoke-direct {p0, p1, p2}, LH5/c;->F1(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic w1(LH5/c;F)V
    .locals 0

    invoke-virtual {p0, p1}, LH5/c;->D1(F)V

    return-void
.end method

.method public static synthetic x1(LH5/c;)F
    .locals 0

    iget p0, p0, LH5/c;->a0:F

    return p0
.end method

.method public static synthetic y1(LH5/c;F)F
    .locals 0

    iput p1, p0, LH5/c;->a0:F

    return p1
.end method

.method public static synthetic z1(LH5/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, LH5/c;->Y:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final A1(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, LH5/c;->Y:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public B1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, LH5/c;->Y:Landroid/view/View;

    return-object v0
.end method

.method public C0()Landroid/view/View;
    .locals 3

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LH5/c;->Y:Landroid/view/View;

    new-instance v1, LH5/c$c;

    invoke-direct {v1, p0}, LH5/c$c;-><init>(LH5/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, LH5/c;->C1()V

    invoke-direct {p0}, LH5/c;->I1()V

    invoke-direct {p0}, LH5/c;->G1()V

    invoke-direct {p0}, LH5/c;->H1()V

    invoke-virtual {p0}, LH5/c;->J1()V

    return-object v0
.end method

.method public final C1()V
    .locals 12

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900c6

    invoke-virtual {p0, v1}, LH5/c;->A1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, LM7/o;

    new-instance v4, LH5/c$d;

    invoke-direct {v4, p0}, LH5/c$d;-><init>(LH5/c;)V

    sget-object v5, LM7/c$b;->Top:LM7/c$b;

    const v6, 0x7f07007e

    invoke-direct {v3, v6, v4, v5, v0}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v4, Lf5/d;->b:LAc/b;

    invoke-virtual {v3, v4}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v5

    sget-object v6, Lf5/d;->c:LAc/b;

    invoke-virtual {v5, v6}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v5

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v8

    invoke-virtual {v5, v8}, LM7/c;->m0(I)LM7/c;

    move-result-object v5

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v8

    invoke-virtual {v5, v8}, LM7/c;->Y(I)LM7/c;

    new-instance v5, LM7/o;

    new-instance v8, LH5/c$e;

    invoke-direct {v8, p0}, LH5/c$e;-><init>(LH5/c;)V

    sget-object v9, LM7/c$b;->Middle:LM7/c$b;

    const v10, 0x7f07007f

    invoke-direct {v5, v10, v8, v9, v0}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v5, v4}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v8

    invoke-virtual {v8, v6}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v8

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v9

    invoke-virtual {v8, v9}, LM7/c;->m0(I)LM7/c;

    move-result-object v8

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v9

    invoke-virtual {v8, v9}, LM7/c;->Y(I)LM7/c;

    new-instance v8, LM7/o;

    new-instance v9, LH5/c$f;

    invoke-direct {v9, p0}, LH5/c$f;-><init>(LH5/c;)V

    sget-object v10, LM7/c$b;->Bottom:LM7/c$b;

    const v11, 0x7f070080

    invoke-direct {v8, v11, v9, v10, v0}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v8, v4}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v0

    invoke-virtual {v0, v6}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v0

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {v0, v4}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {v0, v4}, LM7/c;->Y(I)LM7/c;

    new-instance v0, LM7/p;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, LM7/p;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, LM7/p;->E(Z)V

    invoke-virtual {v0, v3}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v0, v5}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v0, v8}, LM7/p;->s(LM7/g;)LM7/p;

    invoke-virtual {v0, v3}, LM7/p;->B(LM7/o;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/h;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method public final D1(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LH5/c;->Z:LH5/c$l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LH5/c;->X:LH5/c$k;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LH5/c;->Z:LH5/c$l;

    invoke-interface {v0, p1}, LH5/c$l;->b(F)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid axis"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, LH5/c;->Z:LH5/c$l;

    invoke-interface {v0, p1}, LH5/c$l;->c(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, LH5/c;->Z:LH5/c$l;

    invoke-interface {v0, p1}, LH5/c$l;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final J1()V
    .locals 4

    const v0, 0x7f0904c9

    invoke-virtual {p0, v0}, LH5/c;->A1(I)Landroid/view/View;

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

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN_DARK:LAc/b;

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

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setDefaultPadding(I)V

    const v1, 0x7f0904ca

    invoke-virtual {p0, v1}, LH5/c;->A1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LH5/c;->a0:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, LH5/c$a;

    invoke-direct {v2, p0, v1}, LH5/c$a;-><init>(LH5/c;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setOnRangeSeekBarViewChangeListener(Ldn/e;)V

    return-void
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LH5/c;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->e()V

    :cond_0
    return-void
.end method
