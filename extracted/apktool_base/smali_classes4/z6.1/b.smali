.class public Lz6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF6/d;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field public c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public d:Ly6/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lz6/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lz6/b;->b:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public duplicate()LF6/d;
    .locals 1

    new-instance v0, Lz6/b;

    invoke-direct {v0}, Lz6/b;-><init>()V

    return-object v0
.end method

.method public getOpenFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasScript()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideView()V
    .locals 2

    iget-object v0, p0, Lz6/b;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;Ly6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulesContent",
            "asyncLayoutInflater",
            "context",
            "inflateListener"
        }
    .end annotation

    iput-object p1, p0, Lz6/b;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "scripting_editor_missingjava"

    invoke-static {v0}, LN7/c;->m(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p4, v0}, Ly6/b;->a(Landroid/view/View;)V

    iput-object v0, p0, Lz6/b;->b:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Lz6/b$a;

    invoke-direct {v0, p0, p3, p1, p4}, Lz6/b$a;-><init>(Lz6/b;Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;Ly6/b;)V

    const p1, 0x7f0c0055

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method public matchState(Ly6/c$l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Ly6/c$l;->MissingJava:Ly6/c$l;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClose(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object p1, p0, Lz6/b;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/view/LayoutInflater;Ly6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layoutInflater",
            "upperCommunication",
            "editorPanel"
        }
    .end annotation

    iput-object p1, p0, Lz6/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lz6/b;->d:Ly6/f;

    return-void
.end method

.method public openScript(Ljd/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "script",
            "context"
        }
    .end annotation

    return-void
.end method

.method public replaceScript(Ljd/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newScript",
            "context"
        }
    .end annotation

    return-void
.end method

.method public saveScript(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public showView()V
    .locals 2

    iget-object v0, p0, Lz6/b;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public supportFile(Ljd/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
