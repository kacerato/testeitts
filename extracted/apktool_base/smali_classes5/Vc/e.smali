.class public LVc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVc/e$k;
    }
.end annotation


# static fields
.field public static a:Lf7/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lf7/e;

    const v4, 0x7f050146

    sget-object v5, Lf7/e$a;->SHORT:Lf7/e$a;

    const-string v1, "Importing Texture"

    const-string v2, "ITsMagic"

    const v3, 0x7f070271

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf7/e;-><init>(Ljava/lang/String;Ljava/lang/String;IILf7/e$a;)V

    sput-object v6, LVc/e;->a:Lf7/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/widget/LinearLayout;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "linearLayout",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public static B(Landroid/widget/RadioButton;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "radioButton",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, LVc/e;->p(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static C(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "linearLayout",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, LVc/e;->o(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public static D(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "path",
            "context"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->G(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p2}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1, p2}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static E(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Lcom/bumptech/glide/load/resource/bitmap/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "path",
            "context",
            "transformation"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->G(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p2}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p3}, LU/a;->I0(LC/l;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1, p2}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static F(Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "file"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, LVc/e;->G(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method

.method public static G(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p0, p1, p2, v0, v1}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method

.method public static H(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;LU/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "options"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p0, p1, p2, p3, v0}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method

.method public static I(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "options",
            "strategy"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method

.method public static J(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/resource/bitmap/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "options",
            "transformation"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, LVc/e;->M(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/resource/bitmap/h;)V

    return-void
.end method

.method public static K(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;Lcom/bumptech/glide/load/resource/bitmap/h;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "transformation"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LU/h;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, LVc/e;->M(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/resource/bitmap/h;)V

    return-void
.end method

.method public static L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "options",
            "strategy"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p2}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LU/a;->F0(Z)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static M(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/resource/bitmap/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "options",
            "strategy",
            "transformation"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p2}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LU/a;->F0(Z)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p5}, LU/a;->I0(LC/l;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static N(Lcom/jsibbold/zoomage/ZoomageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "options",
            "strategy"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p2}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LU/a;->F0(Z)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static O(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context"
        }
    .end annotation

    const v0, 0x7f070271

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p0, p1, p2, v0, v1}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    return-void
.end method

.method public static P(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "onError"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p0, p1, p2, p3, v0}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    return-void
.end method

.method public static Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "onError",
            "diskCacheStrategy"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".texture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p2

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p2, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    sget-object p3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p3, :cond_0

    invoke-virtual {p2, v2}, LU/a;->F0(Z)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lub/p;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LVc/e;->a:Lf7/e;

    invoke-static {v0}, Lf7/d;->a(Lf7/e;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LVc/e$c;

    invoke-direct {v1, p1, p2}, LVc/e$c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "Engine texture convertor"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p2

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p2, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    sget-object p3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p3, :cond_3

    invoke-virtual {p2, v2}, LU/a;->F0(Z)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    :cond_3
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load GlideImage "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static R(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "diskCacheStrategy"
        }
    .end annotation

    const v0, 0x7f070271

    invoke-static {p0, p1, p2, v0, p3}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    return-void
.end method

.method public static S(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context",
            "onError",
            "diskCacheStrategy"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".texture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p2

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p2, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2}, LU/a;->c()LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    sget-object p3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p3, :cond_0

    invoke-virtual {p2, v2}, LU/a;->F0(Z)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lub/p;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LVc/e;->a:Lf7/e;

    invoke-static {v0}, Lf7/d;->a(Lf7/e;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LVc/e$d;

    invoke-direct {v1, p1, p2}, LVc/e$d;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "Engine texture convertor"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p2

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p2, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2}, LU/a;->c()LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    sget-object p3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p4, p3, :cond_3

    invoke-virtual {p2, v2}, LU/a;->F0(Z)LU/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/j;

    :cond_3
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load GlideImage "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static T(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "r"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static U(Landroid/widget/ImageView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "r"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    return-void
.end method

.method public static V(Landroid/widget/ImageView;ILandroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "r",
            "context"
        }
    .end annotation

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    const/4 v5, 0x0

    const v3, 0x7f070271

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, LVc/e;->W(Landroid/widget/ImageView;ILandroid/content/Context;ILcom/bumptech/glide/load/engine/i;I)V

    return-void
.end method

.method public static W(Landroid/widget/ImageView;ILandroid/content/Context;ILcom/bumptech/glide/load/engine/i;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "r",
            "context",
            "onError",
            "diskCacheStrategy",
            "tries"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/bumptech/glide/k;->I(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p5

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p5, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/j;

    invoke-virtual {p5, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/j;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-eq p4, v1, :cond_0

    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->I(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, v1}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p3}, LU/a;->u(I)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p5, p1}, Lcom/bumptech/glide/j;->Z0(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, p3}, LU/a;->u(I)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public static X(Landroid/widget/ImageView;ILandroid/content/Context;ILcom/bumptech/glide/load/engine/i;ILU/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "r",
            "context",
            "onError",
            "diskCacheStrategy",
            "tries",
            "options"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/k;->I(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p1, p2}, LU/a;->z(LC/b;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p3}, LU/a;->u(I)LU/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p6}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static Y(Landroid/widget/ImageView;ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "r",
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static Z(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "url"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, LVc/e;->e0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "context"
        }
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static a0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "url",
            "placeHolder",
            "failed",
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, p2}, LU/a;->v0(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    :try_start_0
    invoke-static {p4}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p3

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p3, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p3, v0}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    new-instance v0, LVc/e$h;

    invoke-direct {v0, p4, p1, p2, p0}, LVc/e$h;-><init>(Landroid/content/Context;Ljava/lang/String;LU/h;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Leightbitlab/com/blurview/BlurView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blurView"
        }
    .end annotation

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, LVc/e;->c(Leightbitlab/com/blurview/BlurView;F)V

    return-void
.end method

.method public static b0(Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Lcom/bumptech/glide/load/engine/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "url",
            "placeHolder",
            "failed",
            "context",
            "diskCacheStrategy"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, p2}, LU/a;->v0(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    :try_start_0
    invoke-static {p4}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p3

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p3, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    invoke-virtual {p3, p5}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    new-instance p5, LVc/e$i;

    invoke-direct {p5, p4, p1, p2, p0}, LVc/e$i;-><init>(Landroid/content/Context;Ljava/lang/String;LU/h;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p5}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Leightbitlab/com/blurview/BlurView;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blurView",
            "radius"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, LN7/c;->E()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    new-instance v0, LRd/p;

    invoke-direct {v0}, LRd/p;-><init>()V

    invoke-virtual {p0, v1, v0}, Leightbitlab/com/blurview/BlurView;->g(Landroid/view/ViewGroup;LRd/a;)LRd/d;

    move-result-object p0

    invoke-interface {p0, p1}, LRd/d;->c(F)LRd/d;

    goto :goto_0

    :cond_0
    new-instance v2, LRd/q;

    invoke-direct {v2, v0}, LRd/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2}, Leightbitlab/com/blurview/BlurView;->g(Landroid/view/ViewGroup;LRd/a;)LRd/d;

    move-result-object p0

    invoke-interface {p0, p1}, LRd/d;->c(F)LRd/d;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "invalid activity root view"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c0(Landroid/widget/ImageView;Ljava/lang/String;IILcom/bumptech/glide/load/engine/i;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "url",
            "placeHolder",
            "failed",
            "strategy",
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, p2}, LU/a;->v0(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    :try_start_0
    invoke-static {p5}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, v0}, LU/a;->s(Landroid/graphics/Bitmap$CompressFormat;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    invoke-virtual {p3}, LU/a;->p()LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    sget-object v0, LC/b;->DEFAULT:LC/b;

    invoke-virtual {p3, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    invoke-virtual {p3, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    new-instance v6, LVc/e$j;

    move-object v0, v6

    move-object v1, p4

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LVc/e$j;-><init>(Lcom/bumptech/glide/load/engine/i;Landroid/content/Context;Ljava/lang/String;LU/h;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v6}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static d(IIII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "reqWidth",
            "reqHeight"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int v1, p1, v0

    if-lt v1, p3, :cond_1

    div-int v1, p0, v0

    if-lt v1, p2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static d0(Landroid/widget/ImageView;Ljava/lang/String;IILcom/bumptech/glide/load/engine/i;Landroid/content/Context;LVc/e$k;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "url",
            "placeHolder",
            "failed",
            "strategy",
            "context",
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, p2}, LU/a;->v0(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    invoke-virtual {p2, p3}, LU/a;->u(I)LU/a;

    move-result-object p2

    check-cast p2, LU/h;

    :try_start_0
    invoke-static {p5}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, v0}, LU/a;->s(Landroid/graphics/Bitmap$CompressFormat;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    invoke-virtual {p3}, LU/a;->p()LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    sget-object v0, LC/b;->DEFAULT:LC/b;

    invoke-virtual {p3, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    invoke-virtual {p3, p4}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/j;

    new-instance v7, LVc/e$a;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LVc/e$a;-><init>(Lcom/bumptech/glide/load/engine/i;Landroid/content/Context;Ljava/lang/String;LU/h;Landroid/widget/ImageView;LVc/e$k;)V

    invoke-virtual {p3, v7}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static e(Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public static e0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "url",
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    :try_start_0
    invoke-static {p2}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v1

    sget-object v2, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {v1, v2}, LU/a;->z(LC/b;)LU/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/j;

    sget-object v2, Lcom/bumptech/glide/load/engine/i;->a:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v1, v2}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/j;

    new-instance v2, LVc/e$g;

    invoke-direct {v2, p2, p1, v0, p0}, LVc/e$g;-><init>(Landroid/content/Context;Ljava/lang/String;LU/h;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static f()V
    .locals 1

    new-instance v0, LVc/e$b;

    invoke-direct {v0}, LVc/e$b;-><init>()V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f0(Landroid/view/View;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "ImageUtils:setMargins: Unknown instance of view;"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static g(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "targetWidth",
            "targetHeight"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p1, :cond_1

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-static {v0, v1, p1, p2}, LVc/e;->d(IIII)I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    int-to-float p2, v1

    int-to-float v1, v0

    div-float/2addr p2, v1

    if-le v0, p1, :cond_3

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_2
    int-to-float p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    if-le v1, p2, :cond_3

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static g0(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "file",
            "context"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->c()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v2, LVc/e$e;

    invoke-direct {v2, p0}, LVc/e$e;-><init>(Landroid/widget/ImageView;)V

    invoke-static {p1, p2, v0, v1, v2}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    return-void
.end method

.method public static h(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "context"
        }
    .end annotation

    invoke-static {p0}, LVc/e;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 v0, 0x1000

    invoke-static {p0, v0, v0}, LVc/e;->g(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, LVc/e;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "height"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    invoke-static {p2, p0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p2, p2

    invoke-static {p2, p0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "ImageUtils:setSizeHeightDP: Unknown instance of view;"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static i0(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "width"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    invoke-static {p2, p0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p2, p2

    invoke-static {p2, p0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "ImageUtils:setSizeWidthDP: Unknown instance of view;"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "context",
            "options",
            "strategy",
            "listener"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v0, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p0, v0}, LU/a;->z(LC/b;)LU/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p0, p3}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, LU/a;->F0(Z)LU/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p0

    new-instance p2, LVc/e$f;

    invoke-direct {p2, p4, p1}, LVc/e$f;-><init>(LVc/e$k;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/j;->e1(LV/p;)LV/p;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static k(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/k;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static l(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public static m(Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public static n(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "context"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static o(Landroid/content/Context;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "color"
        }
    .end annotation

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static p(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "color"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    :cond_1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/view/View;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-nez p2, :cond_0

    invoke-static {p0, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static r(Landroid/view/View;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static s(Landroid/view/View;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, LVc/e;->o(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static t(Landroid/view/View;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public static u(Landroid/view/View;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, LVc/e;->p(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public static v(Landroid/view/View;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, LVc/e;->o(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public static w(Landroid/widget/CheckBox;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "checkBox",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, LVc/e;->p(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static x(Landroid/widget/ImageView;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, LVc/e;->o(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void
.end method

.method public static y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-nez p2, :cond_0

    invoke-static {p0, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void
.end method

.method public static z(Landroid/widget/LinearLayout;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "linearLayout",
            "context",
            "color"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, LVc/e;->o(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
