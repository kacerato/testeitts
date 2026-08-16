.class public Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

.field private concreteDepthReference:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private concreteTextureReference:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(II[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "colorTexture",
            "depthTexture"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->e:Z

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->a:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->b:I

    new-instance p1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {p1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    if-eqz p3, :cond_0

    array-length p2, p3

    new-array p2, p2, [Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->concreteTextureReference:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    array-length v1, p2

    invoke-static {p3, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length p2, p3

    if-ge v0, p2, :cond_0

    aget-object p2, p3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR7:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR6:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR5:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR4:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR3:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR2:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR1:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D0()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->concreteDepthReference:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    sget-object p2, Lcom/google/android/filament/RenderTarget$a;->DEPTH:Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->B0()Lcom/google/android/filament/Texture;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    :cond_1
    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-direct {p2, p1, p3, p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->e:Z

    const-string v1, "framebuffer binded to multiple views at the same time"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-nez v0, :cond_0

    invoke-static {}, LQb/a;->j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->B(Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->e:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t bind a garbage FBO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->e:Z

    const-string v1, "framebuffer binded to multiple views at the same time"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->B(Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t bind a garbage FBO"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "View can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->f:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->v(Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->f:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->destroyImmediate()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FBO still bound to a view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t destroy a garbage FBO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->e:Z

    invoke-static {}, LQb/a;->j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t unbind a garbage FBO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
