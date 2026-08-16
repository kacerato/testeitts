.class public Lu5/a;
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

    iget-object p3, p4, LF7/i;->a:Ljava/lang/String;

    const-string v0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v0, p3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    instance-of p3, p4, Lu5/d$t;

    if-eqz p3, :cond_0

    check-cast p4, Lu5/d$t;

    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    iget-object p3, p4, Lu5/d$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/k;->G(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p3, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p3}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1, p3}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, v0}, LU/a;->F0(Z)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    const p3, 0x7f070271

    invoke-virtual {p1, p3}, LU/a;->u(I)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;

    return-void

    :cond_0
    iget-object p3, p4, LF7/i;->a:Ljava/lang/String;

    invoke-static {p2, p3, p1, v0}, LIc/l;->j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method
