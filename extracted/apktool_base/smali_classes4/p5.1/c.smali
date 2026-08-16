.class public Lp5/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp5/c$f;
    }
.end annotation


# static fields
.field public static final h0:Ljava/lang/String; = "AssistanceExport"


# instance fields
.field public final X:Lp5/c$f;

.field public final Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq5/a;",
            ">;"
        }
    .end annotation
.end field

.field public Z:I

.field public a0:Landroid/widget/Button;

.field public b0:Landroid/widget/Button;

.field public c0:Landroid/widget/LinearLayout;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;

.field public f0:Landroid/widget/TextView;

.field public g0:Lq5/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lp5/c$f;->APK:Lp5/c$f;

    invoke-direct {p0, v0}, Lp5/c;-><init>(Lp5/c$f;)V

    return-void
.end method

.method public constructor <init>(Lp5/c$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exportType"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    const-string v1, "AssistanceExport"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lp5/c;->Z:I

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lp5/c$f;->APK:Lp5/c$f;

    :cond_0
    iput-object p1, p0, Lp5/c;->X:Lp5/c$f;

    .line 5
    new-instance p1, Lp5/c$a;

    invoke-direct {p1, p0}, Lp5/c$a;-><init>(Lp5/c;)V

    iput-object p1, p0, Lp5/c;->Y:Ljava/util/List;

    return-void
.end method

.method public static synthetic p1(Lp5/c;)Lp5/c$f;
    .locals 0

    iget-object p0, p0, Lp5/c;->X:Lp5/c$f;

    return-object p0
.end method

.method public static synthetic q1(Lp5/c;)I
    .locals 0

    iget p0, p0, Lp5/c;->Z:I

    return p0
.end method

.method public static synthetic r1(Lp5/c;)I
    .locals 2

    iget v0, p0, Lp5/c;->Z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lp5/c;->Z:I

    return v0
.end method

.method public static synthetic s1(Lp5/c;)I
    .locals 2

    iget v0, p0, Lp5/c;->Z:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lp5/c;->Z:I

    return v0
.end method

.method public static synthetic t1(Lp5/c;)V
    .locals 0

    invoke-direct {p0}, Lp5/c;->v1()V

    return-void
.end method

.method public static synthetic u1(Lp5/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lp5/c;->Y:Ljava/util/List;

    return-object p0
.end method

.method private v1()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lp5/c;->Y:Ljava/util/List;

    iget v1, p0, Lp5/c;->Z:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/a;

    iget-object v1, p0, Lp5/c;->g0:Lq5/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lq5/a;->c()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    iget-object v2, p0, Lp5/c;->g0:Lq5/a;

    iget-object v2, v2, Lq5/a;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v1, p0, Lp5/c;->g0:Lq5/a;

    const/4 v2, 0x0

    iput-object v2, v1, Lq5/a;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1, v2}, Lq5/a;->g(Lq5/a$a;)V

    iput-object v2, p0, Lp5/c;->g0:Lq5/a;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget v1, p0, Lp5/c;->Z:I

    iget-object v2, p0, Lp5/c;->Y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lp5/c;->b0:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lp5/c;->b0:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lp5/c;->Z:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lp5/c;->a0:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lp5/c;->a0:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lp5/c;->c0:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v0, Lq5/a;->c:Landroid/app/Activity;

    iput-object p0, v0, Lq5/a;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    new-instance v1, Lp5/c$e;

    invoke-direct {v1, p0}, Lp5/c$e;-><init>(Lp5/c;)V

    invoke-virtual {v0, v1}, Lq5/a;->g(Lq5/a$a;)V

    invoke-virtual {v0}, Lq5/a;->e()V

    invoke-virtual {v0}, Lq5/a;->b()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lp5/c;->c0:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lp5/c;->f0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_STAGE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lp5/c;->Z:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lp5/c;->Y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lp5/c;->g0:Lq5/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static w1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1

    sget-object v0, Lp5/c$f;->APK:Lp5/c$f;

    invoke-static {v0}, Lp5/c;->x1(Lp5/c$f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    return-object v0
.end method

.method public static x1(Lp5/c$f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exportType"
        }
    .end annotation

    new-instance v0, Lp5/c;

    invoke-direct {v0, p0}, Lp5/c;-><init>(Lp5/c$f;)V

    const/16 p0, 0x1c2

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v3, v4, v3

    div-float v2, v1, v2

    sub-float/2addr v4, v2

    invoke-static {v0, v3, v4, p0, v1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lp5/c;->Y:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00ad

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lp5/c;->c0:Landroid/widget/LinearLayout;

    const v1, 0x7f0904b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lp5/c;->f0:Landroid/widget/TextView;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_TITTLE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090548

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lp5/c;->d0:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lp5/c;->e0:Landroid/view/View;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lp5/c;->a0:Landroid/widget/Button;

    new-instance v2, Lp5/c$b;

    invoke-direct {v2, p0}, Lp5/c$b;-><init>(Lp5/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lp5/c;->a0:Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_BACK:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lp5/c;->b0:Landroid/widget/Button;

    new-instance v2, Lp5/c$c;

    invoke-direct {v2, p0}, Lp5/c$c;-><init>(Lp5/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lp5/c;->b0:Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_NEXT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lp5/c$d;

    invoke-direct {v2, p0}, Lp5/c$d;-><init>(Lp5/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lp5/c;->v1()V

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lp5/c;->g0:Lq5/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lq5/a;->h()V

    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    iget-object v0, p0, Lp5/c;->d0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lp5/c;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Lp5/c;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lp5/c;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Lp5/c;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lp5/c;->e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
