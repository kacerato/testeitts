.class public LU7/a;
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
    .locals 1
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

    :try_start_0
    iget-object p4, p4, LF7/i;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2, p4, p1, v0}, LIc/l;->j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    const p4, 0x7f070250

    invoke-static {p2, p4, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
