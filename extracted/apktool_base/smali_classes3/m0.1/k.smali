.class public Lm0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroid/os/Handler;

.field public c:Landroid/hardware/display/DisplayManager;

.field public d:Landroid/view/Display;

.field public e:Lcom/google/android/filament/Renderer;

.field public f:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm0/k;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lm0/k;->b:Landroid/os/Handler;

    .line 4
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lm0/k;->c:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1}, Lm0/k;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object p2, p0, Lm0/k;->b:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lm0/k;)V
    .locals 0

    invoke-virtual {p0}, Lm0/k;->j()V

    return-void
.end method

.method public static d(Landroid/view/Display;)J
    .locals 2
    .param p0    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static f(Landroid/view/Display;Lcom/google/android/filament/Renderer$b;)Lcom/google/android/filament/Renderer$b;
    .locals 0
    .param p0    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/filament/Renderer$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/filament/Renderer$b;

    invoke-direct {p1}, Lcom/google/android/filament/Renderer$b;-><init>()V

    :cond_0
    invoke-static {p0}, Lm0/k;->i(Landroid/view/Display;)F

    move-result p0

    iput p0, p1, Lcom/google/android/filament/Renderer$b;->a:F

    return-object p1
.end method

.method public static g(Landroid/view/Display;)J
    .locals 2
    .param p0    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xb10080

    return-wide v0
.end method

.method public static h(Landroid/view/Display;)J
    .locals 4
    .param p0    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public static i(Landroid/view/Display;)F
    .locals 0
    .param p0    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method


# virtual methods
.method public b(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/Renderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lm0/k;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm0/k;->c:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm0/k;->e:Lcom/google/android/filament/Renderer;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lm0/k;->d:Landroid/view/Display;

    if-ne p2, v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lm0/k;->e:Lcom/google/android/filament/Renderer;

    iput-object p2, p0, Lm0/k;->d:Landroid/view/Display;

    new-instance p1, Lm0/k$a;

    invoke-direct {p1, p0, p2}, Lm0/k$a;-><init>(Lm0/k;Landroid/view/Display;)V

    iput-object p1, p0, Lm0/k;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p2, p0, Lm0/k;->c:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lm0/k;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lm0/k;->b:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance p2, Lm0/k$b;

    invoke-direct {p2, p0}, Lm0/k$b;-><init>(Lm0/k;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm0/k;->j()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lm0/k;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm0/k;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lm0/k;->c:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lm0/k;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v1, p0, Lm0/k;->d:Landroid/view/Display;

    iput-object v1, p0, Lm0/k;->e:Lcom/google/android/filament/Renderer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lm0/k;->d:Landroid/view/Display;

    return-object v0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lm0/k;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lm0/k;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm0/k;->e:Lcom/google/android/filament/Renderer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lm0/k;->d:Landroid/view/Display;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/filament/Renderer;->f()Lcom/google/android/filament/Renderer$b;

    move-result-object v3

    invoke-static {v2, v3}, Lm0/k;->f(Landroid/view/Display;Lcom/google/android/filament/Renderer$b;)Lcom/google/android/filament/Renderer$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Renderer;->t(Lcom/google/android/filament/Renderer$b;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
