.class public LU7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageView",
            "subIconImageView",
            "eElement"
        }
    .end annotation

    iget-object v0, p4, LF7/i;->a:Ljava/lang/String;

    const-string v1, ".meta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p4, LF7/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LTc/b;->k(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p4}, LF7/i;->n()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f070197

    invoke-static {p2, p3, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    const p3, 0x7f070196

    invoke-static {p2, p3, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, LF7/i;->n()Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f07013d

    invoke-static {p2, p3, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_0

    :cond_3
    const p3, 0x7f07013e

    invoke-static {p2, p3, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    return-void
.end method
