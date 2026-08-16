.class public Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->a(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->a(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/SwapChain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->Q(Lcom/google/android/filament/SwapChain;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/filament/Engine;->v(Ljava/lang/Object;)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Lcom/google/android/filament/SwapChain;)Lcom/google/android/filament/SwapChain;

    return-void
.end method

.method public b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->s(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->a(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->a(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/SwapChain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->Q(Lcom/google/android/filament/SwapChain;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;->a:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Lcom/google/android/filament/SwapChain;)Lcom/google/android/filament/SwapChain;

    :cond_0
    return-void
.end method
