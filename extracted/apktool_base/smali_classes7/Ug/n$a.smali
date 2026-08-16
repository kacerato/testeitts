.class public LUg/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUg/n;->q(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:LUg/n;


# direct methods
.method public constructor <init>(LUg/n;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$post"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LUg/n$a;->b:LUg/n;

    iput-object p2, p0, LUg/n$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LUg/n$a;->b:LUg/n;

    const-string v1, "Bitmap extracted successfully."

    invoke-static {v0, v1}, LUg/n;->c(LUg/n;Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LUg/n$a;->b:LUg/n;

    invoke-static {v3}, LUg/n;->d(LUg/n;)I

    move-result v3

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, LUg/n$a;->b:LUg/n;

    invoke-static {v4}, LUg/n;->e(LUg/n;)I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, LUg/n$a;->b:LUg/n;

    invoke-static {v4}, LUg/n;->a(LUg/n;)LBb/b;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, LBb/b;->t(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, LUg/n$a;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    new-instance p1, LUg/n$a$a;

    invoke-direct {p1, p0}, LUg/n$a$a;-><init>(LUg/n$a;)V

    invoke-static {p1}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method
