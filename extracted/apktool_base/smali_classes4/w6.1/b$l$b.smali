.class public Lw6/b$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$l;->e(Ljava/io/File;Ljava/lang/String;Z)LF7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lw6/b$l;


# direct methods
.method public constructor <init>(Lw6/b$l;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$icon"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$l$b;->b:Lw6/b$l;

    iput-object p2, p0, Lw6/b$l$b;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LF7/i;)V
    .locals 7
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

    iget-object p3, p0, Lw6/b$l$b;->a:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    const p4, 0x7f0701e6

    if-eqz p3, :cond_0

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p3, LU/h;

    invoke-direct {p3}, LU/h;-><init>()V

    invoke-virtual {p3}, LU/a;->c()LU/a;

    move-result-object p3

    check-cast p3, LU/h;

    invoke-virtual {p3, p4}, LU/a;->u(I)LU/a;

    move-result-object p3

    check-cast p3, LU/h;

    iget-object p4, p0, Lw6/b$l$b;->a:Ljava/io/File;

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p2, p4, p1, p3, v0}, LVc/e;->I(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p3, LU/h;

    invoke-direct {p3}, LU/h;-><init>()V

    invoke-virtual {p3}, LU/a;->y()LU/a;

    move-result-object p3

    check-cast p3, LU/h;

    invoke-virtual {p3, p4}, LU/a;->u(I)LU/a;

    move-result-object p3

    move-object v6, p3

    check-cast v6, LU/h;

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    const/4 v5, 0x0

    const v1, 0x7f0701e6

    const v3, 0x7f0701e6

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, LVc/e;->X(Landroid/widget/ImageView;ILandroid/content/Context;ILcom/bumptech/glide/load/engine/i;ILU/h;)V

    :goto_0
    return-void
.end method
