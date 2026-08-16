.class public Lcom/bumptech/glide/load/resource/bitmap/F$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/F$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/bitmap/F;->p(LF/e;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->a:F

    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->b:F

    iput p3, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->c:F

    iput p4, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->a:F

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->b:F

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->c:F

    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/F$b;->d:F

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v1, 0x2

    aput v2, v5, v1

    const/4 v1, 0x3

    aput v2, v5, v1

    const/4 v1, 0x4

    aput v3, v5, v1

    const/4 v1, 0x5

    aput v3, v5, v1

    const/4 v1, 0x6

    aput v4, v5, v1

    const/4 v1, 0x7

    aput v4, v5, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v5, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
