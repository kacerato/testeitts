.class public Lm0/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m$b;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/view/SurfaceView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic b:Lm0/m;


# direct methods
.method public constructor <init>(Lm0/m;Landroid/view/SurfaceView;)V
    .locals 2
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

    iput-object p1, p0, Lm0/m$e;->b:Lm0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/m$e;->a:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {p1}, Lm0/m;->b(Lm0/m;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lm0/m;->a(Lm0/m;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lm0/m;->b(Lm0/m;)I

    move-result v0

    invoke-static {p1}, Lm0/m;->a(Lm0/m;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lm0/m$e;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, p1, v0}, Lm0/m$e;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lm0/m$e;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lm0/m$e;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lm0/m$e;->b:Lm0/m;

    invoke-static {p1}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm0/m$e;->b:Lm0/m;

    invoke-static {p1}, Lm0/m;->c(Lm0/m;)Lm0/m$c;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lm0/m$c;->b(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lm0/m$e;->b:Lm0/m;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lm0/m;->d(Lm0/m;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lm0/m$e;->b:Lm0/m;

    invoke-static {p1}, Lm0/m;->e(Lm0/m;)V

    return-void
.end method
