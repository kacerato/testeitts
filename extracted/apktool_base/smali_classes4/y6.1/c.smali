.class public Ly6/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/c$l;
    }
.end annotation


# static fields
.field public static final e0:Ljava/lang/String; = "Scripting"


# instance fields
.field public X:Landroid/widget/LinearLayout;

.field public Y:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public Z:LF6/d;

.field public a0:Ly6/c$l;

.field public b0:Landroid/view/View;

.field public c0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public d0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CODING:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ly6/c;->Z:LF6/d;

    sget-object v0, Ly6/c$l;->Welcome:Ly6/c$l;

    iput-object v0, p0, Ly6/c;->a0:Ly6/c$l;

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->W0(Z)V

    return-void
.end method

.method public static A1(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ly6/d;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Ly6/d;->c(I)LF6/d;

    move-result-object v2

    new-instance v4, Ljd/b;

    invoke-direct {v4, p0}, Ljd/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, LF6/d;->supportFile(Ljd/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {}, Ly6/d;->f()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Ly6/d;->e(I)Ld8/r;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v4, v2, Ld8/r;->c:Ljava/lang/Class;

    if-eqz v4, :cond_2

    new-instance v4, Ly6/c$j;

    invoke-direct {v4, v2}, Ly6/c$j;-><init>(Ld8/r;)V

    invoke-virtual {v2, v4}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    const-class v5, LJAVARuntime/ScriptingExtension;

    if-eq v4, v5, :cond_2

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    :try_start_2
    new-instance v4, Ly6/c$k;

    invoke-direct {v4, v2}, Ly6/c$k;-><init>(Ld8/r;)V

    invoke-virtual {v2, v4}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/ScriptingExtension;

    invoke-virtual {v2}, LJAVARuntime/ScriptingExtension;->getScriptingInterface()LF6/d;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v4, Ljd/b;

    invoke-direct {v4, p0}, Ljd/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, LF6/d;->supportFile(Ljd/b;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_2

    return v3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, ".mtl"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".java|.lua"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".txt"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".pdf"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".doc"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".docx"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".xml"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".json"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_5

    :cond_4
    return v0

    :cond_5
    :goto_5
    return v3
.end method

.method public static synthetic p1(Ly6/c;Ly6/c$l;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Ly6/c;->x1(Ly6/c$l;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q1(Ly6/c;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public static synthetic r1(Ly6/c;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 0

    iget-object p0, p0, Ly6/c;->c0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-object p0
.end method

.method public static synthetic s1(Ly6/c;)LF6/d;
    .locals 0

    iget-object p0, p0, Ly6/c;->Z:LF6/d;

    return-object p0
.end method

.method public static synthetic t1(Ly6/c;)Ly6/c$l;
    .locals 0

    iget-object p0, p0, Ly6/c;->a0:Ly6/c$l;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ly6/c;->Z:LF6/d;

    if-nez v0, :cond_1

    invoke-static {}, LN7/c;->s()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ly6/c;->c0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0194

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ly6/c;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Ly6/c;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ly6/c;->d0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ly6/c;->z1(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ly6/c;->X:Landroid/widget/LinearLayout;

    return-object v0

    :cond_1
    iget-object v0, p0, Ly6/c;->X:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public E0()V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 2

    iget-object v0, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Ly6/c;->X:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Ly6/c;->Z:LF6/d;

    sget-object v0, Ly6/c$l;->Welcome:Ly6/c$l;

    iput-object v0, p0, Ly6/c;->a0:Ly6/c$l;

    return-void
.end method

.method public K0()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T0()V

    return-void
.end method

.method public N0()V
    .locals 0

    return-void
.end method

.method public O0(Ln4/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of v0, p1, Ln4/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ln4/c;

    iget-object v1, v0, Ln4/c;->a:Ljava/lang/String;

    invoke-static {v1}, Ly6/c;->A1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Ln4/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ly6/c;->z1(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of p1, p1, Ln4/b;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Ly6/c;

    invoke-direct {v0}, Ly6/c;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 0

    return-void
.end method

.method public n1()V
    .locals 1

    iget-object v0, p0, Ly6/c;->Z:LF6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LF6/d;->updateVisible()V

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 0

    return-void
.end method

.method public final u1(LF6/d;Ljd/b;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anInterface",
            "pFile",
            "originalFilePath",
            "duplicate"
        }
    .end annotation

    invoke-interface {p1, p2}, LF6/d;->supportFile(Ljd/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ly6/c;->Z:LF6/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, LF6/d;->onClose(Landroid/content/Context;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p1}, LF6/d;->duplicate()LF6/d;

    move-result-object p1

    iput-object p1, p0, Ly6/c;->Z:LF6/d;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Ly6/c;->Z:LF6/d;

    :goto_0
    iget-object p1, p0, Ly6/c;->Z:LF6/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    new-instance v1, Ly6/c$a;

    invoke-direct {v1, p0, p3}, Ly6/c$a;-><init>(Ly6/c;Ljava/lang/String;)V

    invoke-interface {p1, p4, v0, v1, p0}, LF6/d;->onStart(Landroid/content/Context;Landroid/view/LayoutInflater;Ly6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    new-instance p1, Ly6/c$b;

    invoke-direct {p1, p0, p2}, Ly6/c$b;-><init>(Ly6/c;Ljd/b;)V

    invoke-virtual {p0, p1}, Ly6/c;->y1(Ly6/b;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final v1(Ly6/c$l;LF6/d;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "anInterface"
        }
    .end annotation

    invoke-interface {p2, p1}, LF6/d;->matchState(Ly6/c$l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, LF6/d;->duplicate()LF6/d;

    move-result-object p2

    iput-object p2, p0, Ly6/c;->Z:LF6/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    new-instance v2, Ly6/c$e;

    invoke-direct {v2, p0, p1}, Ly6/c$e;-><init>(Ly6/c;Ly6/c$l;)V

    invoke-interface {p2, v0, v1, v2, p0}, LF6/d;->onStart(Landroid/content/Context;Landroid/view/LayoutInflater;Ly6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    new-instance p1, Ly6/c$f;

    invoke-direct {p1, p0}, Ly6/c$f;-><init>(Ly6/c;)V

    invoke-virtual {p0, p1}, Ly6/c;->y1(Ly6/b;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public w1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly6/c;->Z:LF6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LF6/d;->hasScript()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly6/c;->Z:LF6/d;

    invoke-interface {v0}, LF6/d;->getOpenFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final x1(Ly6/c$l;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iput-object p1, p0, Ly6/c;->a0:Ly6/c$l;

    :try_start_0
    iget-object v0, p0, Ly6/c;->Z:LF6/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, LF6/d;->onClose(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_8

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

    invoke-virtual {p0, p1, v2}, Ly6/c;->v1(Ly6/c$l;LF6/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v1, v0

    :goto_3
    invoke-static {}, Ly6/d;->f()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-static {v1}, Ly6/d;->e(I)Ld8/r;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :try_start_1
    iget-object v3, v2, Ld8/r;->c:Ljava/lang/Class;

    if-eqz v3, :cond_3

    new-instance v3, Ly6/c$c;

    invoke-direct {v3, p0, v2}, Ly6/c$c;-><init>(Ly6/c;Ld8/r;)V

    invoke-virtual {v2, v3}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_3

    const-class v4, LJAVARuntime/ScriptingExtension;

    if-eq v3, v4, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_3

    :try_start_3
    new-instance v3, Ly6/c$d;

    invoke-direct {v3, p0, v2}, Ly6/c$d;-><init>(Ly6/c;Ld8/r;)V

    invoke-virtual {v2, v3}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/ScriptingExtension;

    invoke-virtual {v2}, LJAVARuntime/ScriptingExtension;->getScriptingInterface()LF6/d;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v2}, Ly6/c;->v1(Ly6/c$l;LF6/d;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_3

    goto :goto_7

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_5

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_7
    iget-object p1, p0, Ly6/c;->b0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public final y1(Ly6/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflateListener"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v0, "scripting_editor_background"

    invoke-static {v0}, LN7/c;->m(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Ly6/c;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1, v0}, Ly6/b;->a(Landroid/view/View;)V

    return-void

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly6/c;->c0:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    new-instance v1, Ly6/c$g;

    invoke-direct {v1, p0, p1}, Ly6/c$g;-><init>(Ly6/c;Ly6/b;)V

    const p1, 0x7f0c0051

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unitialize exception"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public z1(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "JAVA_SCRIPTING_OPEN"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly6/c;->d0:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljd/b;

    invoke-direct {v1, v0}, Ljd/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    iget-object v3, p0, Ly6/c;->Z:LF6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, LF6/d;->supportFile(Ljd/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Ly6/c;->Z:LF6/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v1, v0}, LF6/d;->replaceScript(Ljd/b;Landroid/content/Context;)V

    return-void

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {}, Ly6/d;->d()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    invoke-static {v3}, Ly6/d;->c(I)LF6/d;

    move-result-object v4

    invoke-virtual {p0, v4, v1, p1, v5}, Ly6/c;->u1(LF6/d;Ljd/b;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    move v4, v2

    :goto_2
    invoke-static {}, Ly6/d;->f()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-static {v4}, Ly6/d;->e(I)Ld8/r;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v7, v6, Ld8/r;->c:Ljava/lang/Class;

    if-eqz v7, :cond_3

    new-instance v7, Ly6/c$h;

    invoke-direct {v7, p0, v6}, Ly6/c$h;-><init>(Ly6/c;Ld8/r;)V

    invoke-virtual {v6, v7}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    const-class v8, LJAVARuntime/ScriptingExtension;

    if-eq v7, v8, :cond_3

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_3

    :try_start_2
    new-instance v7, Ly6/c$i;

    invoke-direct {v7, p0, v6}, Ly6/c$i;-><init>(Ly6/c;Ld8/r;)V

    invoke-virtual {v6, v7}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJAVARuntime/ScriptingExtension;

    invoke-virtual {v6}, LJAVARuntime/ScriptingExtension;->getScriptingInterface()LF6/d;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6, v1, p1, v2}, Ly6/c;->u1(LF6/d;Ljd/b;Ljava/lang/String;Z)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_3

    goto :goto_6

    :catch_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_4

    :goto_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_6
    if-nez v5, :cond_6

    invoke-static {v0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lz6/a;->e:Ljava/lang/String;

    sget-object p1, Ly6/c$l;->MissingEditor:Ly6/c$l;

    invoke-virtual {p0, p1}, Ly6/c;->x1(Ly6/c$l;)Landroid/view/View;

    goto :goto_7

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_6
    :goto_7
    return-void
.end method
