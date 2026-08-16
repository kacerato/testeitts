.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;
.super LN7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {p0}, LN7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;Landroid/view/View;)V
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

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->n:Lv3/b;

    invoke-virtual {v0, p1, p2}, Lv3/b;->b(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->x(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    return-void
.end method

.method public E(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-super {p0, p1}, LN7/a;->E(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->R(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V

    return-void
.end method

.method public F()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->w(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    return-void
.end method

.method public G()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->V()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->i()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->onBackPressed()V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "https://itsmagic.com.br/privacy-policy.html"

    invoke-static {v0}, LIc/i;->n(Ljava/lang/String;)V

    return-void
.end method

.method public g()Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->P(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public h()LN7/c$g;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)LN7/c$g;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->t(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->h0()V

    return-void
.end method

.method public k()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->p(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public l()Lv3/o;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->o:Lv3/o;

    return-object v0
.end method

.method public m()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->N(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->O(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->N(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

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

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->n:Lv3/b;

    invoke-virtual {v0, p1}, Lv3/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public p()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->b0()V

    return-void
.end method

.method public s()Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->h:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;

    return-object v0
.end method

.method public t()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->M(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public u()Ld7/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->L(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ld7/a;

    move-result-object v0

    return-object v0
.end method

.method public v()Ly0/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->v(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ly0/b;

    move-result-object v0

    return-object v0
.end method

.method public w()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->q(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->W()V

    return-void
.end method

.method public y(ILandroid/content/Intent;Lv3/l;)V
    .locals 3
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

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lv3/h;

    invoke-direct {v2, p1, p3}, Lv3/h;-><init>(ILv3/l;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-virtual {p3, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z(LN7/c$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPage"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->n(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;LN7/c$g;)LN7/c$g;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/i;

    invoke-interface {v2, p1}, Lv3/i;->a(LN7/c$g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
