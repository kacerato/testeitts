.class public Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->a:Z

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTimeNanos"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->x(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->J()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->y(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lm0/m;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->y(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lm0/m;

    move-result-object v0

    invoke-virtual {v0}, Lm0/m;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, LK8/a;->n()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Engine;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->f(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Renderer;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->w(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, LQb/a;->m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/Renderer;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->w(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->h(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->i(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0, v1, v2}, LW7/b;->l(IILandroid/view/SurfaceView;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->k(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;J)J

    return-void

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->r(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->s(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result v0

    invoke-virtual {p1, v2, v2, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result p2

    invoke-static {p1, p2}, LW7/b;->k(II)V

    return-void

    :cond_6
    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->j(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->k(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;J)J

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->j(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v5

    cmp-long v0, p1, v5

    if-gez v0, :cond_9

    return-void

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->k(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;J)J

    :cond_9
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result v0

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I

    move-result v5

    invoke-static {v0, v5}, LW7/b;->i(II)V

    :cond_a
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->a(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    invoke-static {v0, p1, p2}, LQb/a;->a(Lcom/google/android/filament/SwapChain;J)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, LW7/b;->e()V

    invoke-static {}, LQb/a;->c()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->a:Z

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->j(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v0

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J

    move-result-wide v1

    mul-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->l(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;J)J

    goto :goto_0

    :cond_b
    invoke-static {}, LQb/a;->l()V

    invoke-static {}, LW7/b;->h()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->a:Z

    :cond_c
    :goto_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;->a:Z

    if-nez p1, :cond_d

    invoke-static {}, LW7/b;->g()V

    invoke-static {}, LW7/b;->b()V

    nop

    :cond_d
    :goto_1
    return-void
.end method
