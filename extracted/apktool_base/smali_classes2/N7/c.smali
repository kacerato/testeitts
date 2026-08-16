.class public abstract LN7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN7/c$g;
    }
.end annotation


# static fields
.field public static a:Lv3/m;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static b:LN7/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Ljava/lang/Class;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->G()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static B()Landroid/view/LayoutInflater;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->w()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->n()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    return-object v0
.end method

.method public static E()Landroid/view/View;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->m()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static F()Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->g()Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public static G()Landroid/view/View;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->p()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static H()Ld7/a;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->u()Ld7/a;

    move-result-object v0

    return-object v0
.end method

.method public static I()Lv3/o;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->l()Lv3/o;

    move-result-object v0

    return-object v0
.end method

.method public static J()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->i()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static K()Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->s()Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;

    move-result-object v0

    return-object v0
.end method

.method public static L()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LN7/d;->x()V

    :cond_0
    return-void
.end method

.method public static M()Z
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static N()Z
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->d()Z

    move-result v0

    return v0
.end method

.method public static O(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LN7/c;->r()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static P(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, LN7/c;->w0(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q()F
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->a()F

    move-result v0

    return v0
.end method

.method public static R()I
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->m()I

    move-result v0

    return v0
.end method

.method public static S()F
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->e()F

    move-result v0

    return v0
.end method

.method public static T()I
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->p()I

    move-result v0

    return v0
.end method

.method public static U()F
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->c()F

    move-result v0

    return v0
.end method

.method public static V()I
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->j()I

    move-result v0

    return v0
.end method

.method public static W()F
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->o()F

    move-result v0

    return v0
.end method

.method public static X()I
    .locals 1

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0}, Lv3/m;->l()I

    move-result v0

    return v0
.end method

.method public static Y()V
    .locals 1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->z()V

    return-void
.end method

.method public static Z()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->c()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    return-void
.end method

.method public static a0()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->q()V

    return-void
.end method

.method public static b(LN7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPage"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0, p0}, LN7/d;->z(LN7/c$g;)V

    return-void
.end method

.method public static b0()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->f()V

    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0, p0}, LN7/d;->E(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V

    return-void
.end method

.method public static c0(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    new-instance v0, LN7/c$b;

    invoke-direct {v0, p0}, LN7/c$b;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->D()V

    if-eqz p0, :cond_0

    new-instance v0, LN7/c$f;

    invoke-direct {v0, p0}, LN7/c$f;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static d0(ILjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nframes",
            "runnable"
        }
    .end annotation

    new-instance v0, LN7/c$c;

    invoke-direct {v0, p1}, LN7/c$c;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static e()V
    .locals 3

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static e0()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LN7/d;->C()V

    :cond_0
    return-void
.end method

.method public static f(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->g(I)F

    move-result p0

    return p0
.end method

.method public static f0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public static g(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->d(I)F

    move-result p0

    return p0
.end method

.method public static g0()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LN7/d;->F()V

    :cond_0
    return-void
.end method

.method public static h(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentage"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->f(F)F

    move-result p0

    return p0
.end method

.method public static h0()V
    .locals 2

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should call from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PX"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->n(I)F

    move-result p0

    return p0
.end method

.method public static i0()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->r()V

    return-void
.end method

.method public static j(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PX"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->b(I)F

    move-result p0

    return p0
.end method

.method public static j0(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0, p0}, LN7/d;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentage"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->k(F)F

    move-result p0

    return p0
.end method

.method public static k0(Ln4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method

.method public static l(FLjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seconds",
            "runnable"
        }
    .end annotation

    new-instance v0, Lob/b;

    new-instance v1, LN7/c$a;

    invoke-direct {v1, p1}, LN7/c$a;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, p0}, Lob/b;-><init>(Lob/b$a;F)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void
.end method

.method public static l0(LN7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageToMainListener"
        }
    .end annotation

    sput-object p0, LN7/c;->b:LN7/d;

    return-void
.end method

.method public static m(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0, p0}, LN7/d;->o(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Lv3/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticCalls"
        }
    .end annotation

    sput-object p0, LN7/c;->a:Lv3/m;

    return-void
.end method

.method public static n()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->b()V

    return-void
.end method

.method public static n0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    sget-object v0, LN7/c;->a:Lv3/m;

    invoke-interface {v0, p0}, Lv3/m;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static o()Landroid/app/Activity;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static o0()V
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LN7/d;->j()V

    :cond_0
    return-void
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    sget-object v0, LW7/b;->f:LC8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p0(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static q()I
    .locals 2

    sget-object v0, LW7/b;->f:LC8/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LC8/a;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static q0(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static r()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->A()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static r0(ILandroid/content/Intent;Lv3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "intent",
            "listener"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0, p0, p1, p2}, LN7/d;->y(ILandroid/content/Intent;Lv3/l;)V

    return-void
.end method

.method public static s()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->k()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static s0(Landroid/content/Intent;Lv3/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "listener"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    const/4 v1, 0x1

    const v2, 0x1869f

    invoke-static {v1, v2}, LNc/d;->j(II)I

    move-result v1

    invoke-static {v1}, LNc/b;->l(I)I

    move-result v1

    invoke-interface {v0, v1, p0, p1}, LN7/d;->y(ILandroid/content/Intent;Lv3/l;)V

    return-void
.end method

.method public static t()Landroid/content/Context;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static t0(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "view"
        }
    .end annotation

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0, p0, p1}, LN7/d;->B(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static u()LN7/c$g;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->h()LN7/c$g;

    move-result-object v0

    return-object v0
.end method

.method public static u0(Lbd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LN7/c;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public static v(I)I
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dimen"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static v0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, LN7/c$d;

    invoke-direct {v0, p0}, LN7/c$d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static w(I)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dimen"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static w0(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "isLong"
        }
    .end annotation

    invoke-static {}, LN7/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, LN7/c$e;

    invoke-direct {v0, p0, p1}, LN7/c$e;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static x()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->i()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public static x0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->F0(Ljava/lang/Object;)V

    return-void
.end method

.method public static y()Landroidx/fragment/app/FragmentManager;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->t()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public static z()Ly0/b;
    .locals 1

    sget-object v0, LN7/c;->b:LN7/d;

    invoke-interface {v0}, LN7/d;->v()Ly0/b;

    move-result-object v0

    return-object v0
.end method
