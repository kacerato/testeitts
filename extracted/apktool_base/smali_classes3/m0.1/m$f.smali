.class public Lm0/m$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m$b;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/view/TextureView;

.field public b:Landroid/view/Surface;

.field public final synthetic c:Lm0/m;


# direct methods
.method public constructor <init>(Lm0/m;Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Lm0/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/m$f;->a:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lm0/m;->b(Lm0/m;)I

    move-result v0

    invoke-static {p1}, Lm0/m;->a(Lm0/m;)I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lm0/m$f;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lm0/m$f;->a:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lm0/m$f;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lm0/m$c;->b(II)V

    :cond_1
    return-void
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lm0/m$f;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public final d(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object v0, p0, Lm0/m$f;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iput-object p1, p0, Lm0/m$f;->b:Landroid/view/Surface;

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->b(Lm0/m;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->a(Lm0/m;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->b(Lm0/m;)I

    move-result v0

    iget-object v1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v1}, Lm0/m;->a(Lm0/m;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lm0/m$f;->d(Landroid/view/Surface;)V

    iget-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p1, v0}, Lm0/m;->d(Lm0/m;Landroid/view/Surface;)V

    iget-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p1}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p1}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lm0/m$c;->b(II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm0/m$f;->d(Landroid/view/Surface;)V

    iget-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p1}, Lm0/m;->e(Lm0/m;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->b(Lm0/m;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {v0}, Lm0/m;->a(Lm0/m;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p2, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p2}, Lm0/m;->b(Lm0/m;)I

    move-result p2

    iget-object p3, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p3}, Lm0/m;->a(Lm0/m;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p1}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p1

    iget-object p2, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p2}, Lm0/m;->b(Lm0/m;)I

    move-result p2

    iget-object p3, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p3}, Lm0/m;->a(Lm0/m;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lm0/m$c;->b(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p1}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lm0/m$c;->b(II)V

    :goto_0
    invoke-virtual {p0}, Lm0/m$f;->c()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lm0/m$f;->c:Lm0/m;

    invoke-static {p2}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p2

    invoke-interface {p2, p1}, Lm0/m$c;->a(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
