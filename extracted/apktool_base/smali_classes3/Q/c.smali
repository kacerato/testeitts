.class public final LQ/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:LF/e;

.field public final b:LQ/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:LQ/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ/e<",
            "LP/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LF/e;LQ/e;LQ/e;)V
    .locals 0
    .param p1    # LF/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LQ/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LQ/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF/e;",
            "LQ/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "LQ/e<",
            "LP/c;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/c;->a:LF/e;

    iput-object p2, p0, LQ/c;->b:LQ/e;

    iput-object p3, p0, LQ/c;->c:LQ/e;

    return-void
.end method

.method public static b(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p0    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "LP/c;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;LC/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "LC/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object p1, p0, LQ/c;->b:LQ/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, LQ/c;->a:LF/e;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/g;->c(Landroid/graphics/Bitmap;LF/e;)Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object v0

    invoke-interface {p1, v0, p2}, LQ/e;->a(Lcom/bumptech/glide/load/engine/t;LC/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v0, LP/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQ/c;->c:LQ/e;

    invoke-static {p1}, LQ/c;->b(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    invoke-interface {v0, p1, p2}, LQ/e;->a(Lcom/bumptech/glide/load/engine/t;LC/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
