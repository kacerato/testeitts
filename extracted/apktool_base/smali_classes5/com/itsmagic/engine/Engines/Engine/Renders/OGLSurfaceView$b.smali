.class public Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->u(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->w(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->v(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->u(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->w(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;->b:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->v(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
