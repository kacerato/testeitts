.class public LQb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/filament/Engine;

.field public static b:Lcom/google/android/filament/Renderer;

.field public static c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public static d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LQb/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/filament/SwapChain;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "swapChain",
            "frameTimeNanos"
        }
    .end annotation

    sget-object v0, LQb/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LQb/a;->b:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/filament/Renderer;->a(Lcom/google/android/filament/SwapChain;J)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Already rendering"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clear",
            "discard"
        }
    .end annotation

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Renderer;->e()Lcom/google/android/filament/Renderer$a;

    move-result-object v0

    iput-boolean p0, v0, Lcom/google/android/filament/Renderer$a;->b:Z

    iput-boolean p1, v0, Lcom/google/android/filament/Renderer$a;->c:Z

    sget-object p0, Lhc/a;->a:[D

    iput-object p0, v0, Lcom/google/android/filament/Renderer$a;->a:[D

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Renderer;->r(Lcom/google/android/filament/Renderer$a;)V

    return-void
.end method

.method public static c()V
    .locals 3

    sget-object v0, LQb/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LQb/a;->b:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0}, Lcom/google/android/filament/Renderer;->d()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not rendering"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d()V
    .locals 1

    invoke-static {}, LQb/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/NoPermitedInBeginFrameException;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/NoPermitedInBeginFrameException;-><init>()V

    throw v0
.end method

.method public static e()V
    .locals 1

    invoke-static {}, LQb/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/BeginFrameIsRequiredException;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/BeginFrameIsRequiredException;-><init>()V

    throw v0
.end method

.method public static f()Lcom/google/android/filament/Engine;
    .locals 1

    sget-object v0, LQb/a;->a:Lcom/google/android/filament/Engine;

    return-object v0
.end method

.method public static g()Lcom/google/android/filament/Renderer;
    .locals 1

    sget-object v0, LQb/a;->b:Lcom/google/android/filament/Renderer;

    return-object v0
.end method

.method public static h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 1

    sget-object v0, LQb/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object v0
.end method

.method public static i()Lcom/google/android/filament/TransformManager;
    .locals 1

    invoke-static {}, LQb/a;->d()V

    sget-object v0, LQb/a;->a:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->j0()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
    .locals 1

    sget-object v0, LQb/a;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    sget-object v0, LQb/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static l()V
    .locals 3

    sget-object v0, LQb/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Begin not called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/Renderer;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceView",
            "engine",
            "renderer",
            "scene",
            "view"
        }
    .end annotation

    sput-object p1, LQb/a;->a:Lcom/google/android/filament/Engine;

    sput-object p2, LQb/a;->b:Lcom/google/android/filament/Renderer;

    sput-object p3, LQb/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    sput-object p4, LQb/a;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {}, Lcom/google/android/filament/filamat/MaterialBuilder;->o()V

    return-void
.end method

.method public static n()V
    .locals 2

    sget-object v0, LQb/a;->b:Lcom/google/android/filament/Renderer;

    if-eqz v0, :cond_0

    sget-object v1, LQb/a;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Renderer;->o(Lcom/google/android/filament/View;)V

    invoke-static {}, LQb/a;->p()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentView"
        }
    .end annotation

    sget-object v0, LQb/a;->b:Lcom/google/android/filament/Renderer;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Renderer;->o(Lcom/google/android/filament/View;)V

    invoke-static {}, LQb/a;->p()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static p()V
    .locals 4

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LQb/a;->a:Lcom/google/android/filament/Engine;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->r()Lcom/google/android/filament/Fence;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lcom/google/android/filament/Fence$b;->FLUSH:Lcom/google/android/filament/Fence$b;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/Fence;->c(Lcom/google/android/filament/Fence$b;J)Lcom/google/android/filament/Fence$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, LQb/a;->a:Lcom/google/android/filament/Engine;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine;->D(Lcom/google/android/filament/Fence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-void

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    sget-object v2, LQb/a;->a:Lcom/google/android/filament/Engine;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/Engine;->D(Lcom/google/android/filament/Fence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_1
    throw v1

    :cond_2
    :goto_1
    return-void
.end method
