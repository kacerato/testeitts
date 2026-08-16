.class public Ly6/e;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final e0:Ljava/lang/String; = "ScriptingHome"

.field public static final f0:Ljava/lang/Class;


# instance fields
.field public X:Landroid/widget/LinearLayout;

.field public Y:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public Z:LF6/d;

.field public a0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public b0:Landroid/widget/LinearLayout;

.field public c0:Landroid/widget/LinearLayout;

.field public d0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ly6/e;

    sput-object v0, Ly6/e;->f0:Ljava/lang/Class;

    new-instance v0, Ly6/e$a;

    invoke-direct {v0}, Ly6/e$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HOME:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScriptingHome"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object v2, p0, Ly6/e;->Z:LF6/d;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ly6/e;->d0:I

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
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

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ly6/e;->Z:LF6/d;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Ly6/e;->d0:I

    return-void
.end method

.method public static synthetic p1(Ly6/e;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public static synthetic q1(Ly6/e;)V
    .locals 0

    invoke-virtual {p0}, Ly6/e;->w1()V

    return-void
.end method

.method public static synthetic r1(Ly6/e;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Ly6/e;->b0:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic s1(Ly6/e;)V
    .locals 0

    invoke-virtual {p0}, Ly6/e;->v1()V

    return-void
.end method

.method public static synthetic t1(Ly6/e;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Ly6/e;->c0:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private u1(Ly6/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflateListener"
        }
    .end annotation

    iget-object v0, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v0, "scripting_editor_background"

    invoke-static {v0}, LN7/c;->m(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1, v0}, Ly6/b;->a(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Ly6/e;->a0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    new-instance v1, Ly6/e$b;

    invoke-direct {v1, p0, p1}, Ly6/e$b;-><init>(Ly6/e;Ly6/b;)V

    const p1, 0x7f0c0051

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ly6/e;->Z:LF6/d;

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->s()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ly6/e;->a0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0194

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ly6/e;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Ly6/e;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Ly6/e;->w1()V

    iget-object v0, p0, Ly6/e;->X:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
    iget-object v0, p0, Ly6/e;->X:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public G0()V
    .locals 2

    iget-object v0, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Ly6/e;->X:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Ly6/e;->Z:LF6/d;

    return-void
.end method

.method public O0(Ln4/f;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of p1, p1, Ln4/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ly6/e;->w1()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Ly6/e;

    invoke-direct {v0}, Ly6/e;-><init>()V

    return-object v0
.end method

.method public o1()V
    .locals 4

    sget-object v0, LW7/b;->j:Ld8/j;

    sget-object v0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v3, LW7/b;->j:Ld8/j;

    sget-object v3, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Ly6/e;->d0:I

    if-eq v2, v0, :cond_3

    invoke-virtual {p0}, Ly6/e;->v1()V

    :cond_3
    return-void
.end method

.method public final v1()V
    .locals 6

    iget-object v0, p0, Ly6/e;->b0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ly6/e;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ly6/e;->d0:I

    invoke-static {}, Ld8/j;->W()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_6

    :try_start_0
    sget-object v2, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v4, "_PROJECT/Scripts/_JContainer.java"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget v3, p0, Ly6/e;->d0:I

    if-lez v3, :cond_4

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Ly6/e;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, LNc/b;->k0(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0193

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ly6/e$i;

    invoke-direct {v5, p0, v2}, Ly6/e$i;-><init>(Ly6/e;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Ly6/e;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v2, p0, Ly6/e;->d0:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ly6/e;->d0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public final w1()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Ly6/e;->Z:LF6/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, LF6/d;->onClose(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-static {}, Ly6/d;->d()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Ly6/d;->c(I)LF6/d;

    move-result-object v2

    sget-object v3, Ly6/c$l;->Welcome:Ly6/c$l;

    invoke-interface {v2, v3}, LF6/d;->matchState(Ly6/c$l;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, LF6/d;->duplicate()LF6/d;

    move-result-object v1

    iput-object v1, p0, Ly6/e;->Z:LF6/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    new-instance v4, Ly6/e$c;

    invoke-direct {v4, p0}, Ly6/e$c;-><init>(Ly6/e;)V

    invoke-interface {v1, v2, v3, v4, p0}, LF6/d;->onStart(Landroid/content/Context;Landroid/view/LayoutInflater;Ly6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iget-object v1, p0, Ly6/e;->Z:LF6/d;

    iget-object v2, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, p0, Ly6/e;->a0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ly6/e$d;

    invoke-direct {v5, p0}, Ly6/e$d;-><init>(Ly6/e;)V

    invoke-interface {v1, v2, v3, v4, v5}, LF6/d;->inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {}, Ly6/d;->f()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {v0}, Ly6/d;->e(I)Ld8/r;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v2, v1, Ld8/r;->c:Ljava/lang/Class;

    if-eqz v2, :cond_3

    new-instance v2, Ly6/e$e;

    invoke-direct {v2, p0, v1}, Ly6/e$e;-><init>(Ly6/e;Ld8/r;)V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_3

    const-class v3, LJAVARuntime/ScriptingExtension;

    if-eq v2, v3, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_3

    :try_start_3
    new-instance v2, Ly6/e$f;

    invoke-direct {v2, p0, v1}, Ly6/e$f;-><init>(Ly6/e;Ld8/r;)V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/ScriptingExtension;

    invoke-virtual {v1}, LJAVARuntime/ScriptingExtension;->getScriptingInterface()LF6/d;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Ly6/c$l;->Welcome:Ly6/c$l;

    invoke-interface {v1, v2}, LF6/d;->matchState(Ly6/c$l;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, LF6/d;->duplicate()LF6/d;

    move-result-object v1

    iput-object v1, p0, Ly6/e;->Z:LF6/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    new-instance v4, Ly6/e$g;

    invoke-direct {v4, p0}, Ly6/e$g;-><init>(Ly6/e;)V

    invoke-interface {v1, v2, v3, v4, p0}, LF6/d;->onStart(Landroid/content/Context;Landroid/view/LayoutInflater;Ly6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iget-object v1, p0, Ly6/e;->Z:LF6/d;

    iget-object v2, p0, Ly6/e;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, p0, Ly6/e;->a0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ly6/e$h;

    invoke-direct {v5, p0}, Ly6/e$h;-><init>(Ly6/e;)V

    invoke-interface {v1, v2, v3, v4, v5}, LF6/d;->inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_7
    return-void
.end method
