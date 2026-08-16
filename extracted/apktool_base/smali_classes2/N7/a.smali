.class public LN7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN7/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, LN7/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
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

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported before editor opens!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D()V
    .locals 1

    invoke-static {}, LN7/c;->E()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public E(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    return-void
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()Ljava/lang/Class;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Landroid/app/Activity;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-virtual {p0}, LN7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LN7/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, LN7/a;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.itsmagic.engine2"

    return-object v0
.end method

.method public h()LN7/c$g;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Lv3/o;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported before editor opens!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Landroidx/fragment/app/FragmentManager;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u()Ld7/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ly0/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Landroid/view/LayoutInflater;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported before editor opens!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public y(ILandroid/content/Intent;Lv3/l;)V
    .locals 0
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

    return-void
.end method

.method public z(LN7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPage"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported before editor opens!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
