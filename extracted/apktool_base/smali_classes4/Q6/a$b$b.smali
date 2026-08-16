.class public LQ6/a$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LQ6/a$b;


# direct methods
.method public constructor <init>(LQ6/a$b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$w",
            "val$h"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iput p2, p0, LQ6/a$b$b;->b:I

    iput p3, p0, LQ6/a$b$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->x1(LQ6/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->x1(LQ6/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, LQ6/a$b$b;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->x1(LQ6/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, LQ6/a$b$b;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    iget v1, p0, LQ6/a$b$b;->b:I

    iget v2, p0, LQ6/a$b$b;->c:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, LQ6/a;->y1(LQ6/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->x1(LQ6/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->v1(LQ6/a;)[I

    move-result-object v2

    iget v7, p0, LQ6/a$b$b;->b:I

    const/4 v6, 0x0

    iget v8, p0, LQ6/a$b$b;->c:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->z1(LQ6/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v1, v1, LQ6/a$b;->c:LQ6/a;

    invoke-static {v1}, LQ6/a;->x1(LQ6/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, LQ6/a$b$b;->d:LQ6/a$b;

    iget-object v0, v0, LQ6/a$b;->c:LQ6/a;

    invoke-static {v0}, LQ6/a;->z1(LQ6/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
