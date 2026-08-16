.class public LL5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final h0:Ljava/lang/String; = "ProjectLoadingPanel"

.field public static i0:LL5/a;


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public a0:Landroid/widget/TextView;

.field public b0:Landroid/widget/TextView;

.field public c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

.field public d0:LI5/a;

.field public e0:Ljava/lang/String;

.field public f0:I

.field public g0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LL5/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    new-instance v0, LI5/a;

    invoke-direct {v0}, LI5/a;-><init>()V

    iput-object v0, p0, LL5/a;->d0:LI5/a;

    const/4 v0, 0x0

    iput v0, p0, LL5/a;->f0:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LL5/a;->g0:Ljava/util/List;

    iput-object p1, p0, LL5/a;->e0:Ljava/lang/String;

    return-void
.end method

.method public static p1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "productID",
            "projectName"
        }
    .end annotation

    sget-object v0, LL5/a;->i0:LL5/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LL5/a;

    invoke-direct {v0, p1}, LL5/a;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, LL5/a;->g0:Ljava/util/List;

    new-instance v1, LM5/d;

    invoke-direct {v1, p0}, LM5/d;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sput-object v0, LL5/a;->i0:LL5/a;

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p1, v1, v1}, Lr4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iput-object p1, v0, LL5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method private q1()V
    .locals 2

    iget v0, p0, LL5/a;->f0:I

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, LL5/a;->f0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LL5/a;->f0:I

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL5/b;

    invoke-virtual {v0}, LL5/b;->k()V

    invoke-direct {p0}, LL5/a;->s1()V

    return-void

    :cond_0
    iget-object v0, p0, LL5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    const/4 v0, 0x0

    iput-object v0, p0, LL5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_1
    return-void
.end method

.method public static r1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    sget-object v0, LL5/a;->i0:LL5/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LL5/a;

    invoke-direct {v0, p0}, LL5/a;-><init>(Ljava/lang/String;)V

    sput-object v0, LL5/a;->i0:LL5/a;

    const/4 p0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p0, p0, v1, v1}, Lr4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iput-object p0, v0, LL5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method private s1()V
    .locals 3

    iget-object v0, p0, LL5/a;->g0:Ljava/util/List;

    iget v1, p0, LL5/a;->f0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL5/b;

    iget-object v1, p0, LL5/a;->Z:Landroid/widget/TextView;

    invoke-virtual {v0}, LL5/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LL5/a;->Y:Landroid/widget/TextView;

    invoke-virtual {v0}, LL5/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LL5/a;->c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    invoke-virtual {v0}, LL5/b;->e()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    iget-object v0, p0, LL5/a;->b0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LL5/a;->f0:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LL5/a;->g0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LL5/a$a;

    invoke-direct {v1, p0}, LL5/a$a;-><init>(LL5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LL5/a;->Y:Landroid/widget/TextView;

    const v1, 0x7f0903c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object v1, p0, LL5/a;->c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LL5/a;->Z:Landroid/widget/TextView;

    const v1, 0x7f0905a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LL5/a;->a0:Landroid/widget/TextView;

    const v1, 0x7f0904c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LL5/a;->b0:Landroid/widget/TextView;

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/k;

    invoke-direct {v3}, LM5/k;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->projectCheckAtStartup:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/a;

    invoke-direct {v3}, LM5/a;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/c;

    invoke-direct {v3}, LM5/c;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->projectCheckAtStartup:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/b;

    invoke-direct {v3}, LM5/b;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->projectCheckAtStartup:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/g;

    invoke-direct {v3}, LM5/g;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->projectCheckAtStartup:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/f;

    invoke-direct {v3}, LM5/f;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/i;

    invoke-direct {v3}, LM5/i;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    new-instance v3, LM5/e;

    invoke-direct {v3}, LM5/e;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LL5/a;->e0:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/_EDITOR/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pv.config"

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, LX7/a;->B(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_4

    new-instance v2, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;-><init>()V

    :cond_4
    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL5/b;

    iget-object v4, p0, LL5/a;->e0:Ljava/lang/String;

    iput-object v4, v3, LL5/b;->b:Ljava/lang/String;

    iput-object v2, v3, LL5/b;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    iget-object v4, p0, LL5/a;->d0:LI5/a;

    iput-object v4, v3, LL5/b;->c:LI5/a;

    goto :goto_1

    :cond_5
    iget-object v1, p0, LL5/a;->g0:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL5/b;

    invoke-virtual {v1}, LL5/b;->k()V

    iget-object v1, p0, LL5/a;->Z:Landroid/widget/TextView;

    iget-object v3, p0, LL5/a;->g0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL5/b;

    invoke-virtual {v3}, LL5/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LL5/a;->Y:Landroid/widget/TextView;

    iget-object v3, p0, LL5/a;->g0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL5/b;

    invoke-virtual {v3}, LL5/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LL5/a;->c0:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    invoke-virtual {v1, v2}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    iget-object v1, p0, LL5/a;->a0:Landroid/widget/TextView;

    sget-object v2, LW7/b;->f:LC8/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LL5/a;->b0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LL5/a;->g0:Ljava/util/List;

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

    sput-object v0, LL5/a;->i0:LL5/a;

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LL5/a;

    iget-object v1, p0, LL5/a;->e0:Ljava/lang/String;

    invoke-direct {v0, v1}, LL5/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LL5/a;->g0:Ljava/util/List;

    iget v1, p0, LL5/a;->f0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL5/b;

    invoke-virtual {v0}, LL5/b;->p()V

    iget-object v0, p0, LL5/a;->g0:Ljava/util/List;

    iget v1, p0, LL5/a;->f0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL5/b;

    invoke-virtual {v0}, LL5/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, LL5/a;->q1()V

    :cond_0
    invoke-direct {p0}, LL5/a;->s1()V

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

    iget-object p1, p0, LL5/a;->g0:Ljava/util/List;

    iget v0, p0, LL5/a;->f0:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL5/b;

    invoke-virtual {p1}, LL5/b;->a()V

    return-void
.end method
