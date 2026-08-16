.class public Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final e0:Ljava/lang/String; = "NoCodePanel"

.field public static final f0:Ljava/lang/Class;

.field public static final g0:LAc/b;

.field public static final h0:LAc/b;


# instance fields
.field public X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

.field public Y:Le6/X;

.field public Z:LM7/e;

.field public a0:LM7/c;

.field public b0:LM7/c;

.field public final c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field private graphFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->f0:Ljava/lang/Class;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->g0:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->h0:LAc/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$c;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "NoCode"

    const-string v1, "NoCodePanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->c0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Le6/X;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    return-object p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->t1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0152

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090355

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090356

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f090352

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Le6/X;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Le6/X;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    invoke-virtual {v1, v4}, Le6/X;->setCompileStatusView(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    invoke-virtual {v4, v1}, Le6/X;->w(Ljava/lang/String;)V

    const-string v1, "NoCode Graph"

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-virtual {v1, v4}, Le6/X;->v(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    const-string v1, "NoCode"

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->w1(Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->x1(Landroid/widget/LinearLayout;)V

    return-object v0
.end method

.method public G0()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Le6/X;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Le6/X;->v(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public J0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/X;->t0()V

    :cond_0
    return-void
.end method

.method public M0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/X;->l0()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->c0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->s1(Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->s1(Ljava/util/List;)V

    return-void
.end method

.method public O0(Ln4/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of v0, p1, Ln4/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ln4/d;

    iget-object v0, p1, Ln4/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->v1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Ln4/d;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->u1(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S0()V

    const/4 p1, 0x1

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Le6/X;->A0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    invoke-virtual {v0}, Le6/X;->U()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->a0:LM7/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, LM7/g;->o(Z)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->b0:LM7/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, LM7/g;->o(Z)V

    :cond_1
    return-void
.end method

.method public final s1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM7/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LM7/g;->k()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t1()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->translateNoCodeV2:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getDisplayableTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getTitle()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v4, "NoCode"

    :cond_4
    new-instance v5, Ldd/b;

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;

    invoke-direct {v6, p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    invoke-direct {v5, v4, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public u1(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    const-string v0, "NoCode"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le6/X;->v(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->y1()V

    return-void
.end method

.method public v1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    const-string v0, "NoCode Graph"

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Y:Le6/X;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le6/X;->w(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->y1()V

    return-void
.end method

.method public final w1(Landroid/widget/LinearLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolbar"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, LM7/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->c0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, LM7/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    sget-object v3, LM7/c$b;->Left:LM7/c$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070097

    invoke-direct {v1, v5, v2, v3, v4}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->b0:LM7/c;

    new-instance v1, LM7/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    sget-object v3, LM7/c$b;->Right:LM7/c$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f0700d9

    invoke-direct {v1, v4, v2, v3, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->a0:LM7/c;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->c0:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->b0:LM7/c;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->c0:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->a0:LM7/c;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->c0:Ljava/util/List;

    invoke-virtual {v0, p1}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method public final x1(Landroid/widget/LinearLayout;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolbar"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, LM7/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, LM7/e;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070222

    const-string v5, ""

    invoke-direct {v1, v4, v5, v2, v3}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->g0:LAc/b;

    invoke-virtual {v1, v2}, LM7/e;->T(LAc/b;)LM7/e;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->h0:LAc/b;

    invoke-virtual {v1, v2}, LM7/e;->M(LAc/b;)LM7/e;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-virtual {v1, v2}, LM7/e;->a0(LAc/b;)LM7/e;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Z:LM7/e;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->y1()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Z:LM7/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    new-instance v2, LM7/c;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$h;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    sget-object v4, LM7/c$b;->Left:LM7/c$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070212

    invoke-direct {v2, v6, v3, v4, v5}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    new-instance v2, LM7/c;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$i;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    sget-object v4, LM7/c$b;->Middle:LM7/c$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0701de

    invoke-direct {v2, v6, v3, v4, v5}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    new-instance v2, LM7/c;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$j;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070240

    invoke-direct {v2, v6, v3, v4, v5}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    new-instance v2, LM7/c;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$k;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070274

    invoke-direct {v2, v6, v3, v4, v5}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    new-instance v2, LM7/c;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    sget-object v4, LM7/c$b;->Right:LM7/c$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f0700ac

    invoke-direct {v2, v5, v3, v4, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->d0:Ljava/util/List;

    invoke-virtual {v0, p1}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method public final y1()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->Z:LM7/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-static {v1, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v1, "NoCode"

    invoke-static {v1}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->m(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "Select NoCode"

    invoke-static {v1}, LAc/c;->a(Ljava/lang/String;)LAc/b;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->m(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LM7/e;->h0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public z(Lo4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z(Lo4/b;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->graphFile:Ljava/lang/String;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->X:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$d;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method
