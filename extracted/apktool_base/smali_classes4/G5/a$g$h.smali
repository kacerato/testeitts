.class public LG5/a$g$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG5/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG5/a$g;


# direct methods
.method public constructor <init>(LG5/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LG5/a$g$h;->a:LG5/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    invoke-interface {p1}, LG5/a$k;->get()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->x(LG5/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object v1, v1, LG5/a$g;->b:LG5/a;

    invoke-static {v1}, LG5/a;->x(LG5/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v0, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object v0, v0, LG5/a$g;->b:LG5/a;

    invoke-static {v0}, LG5/a;->y(LG5/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->t(LG5/a;)V

    iget-object p1, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, LG5/a$k;->b(Ljava/lang/String;)V

    iget-object p1, p0, LG5/a$g$h;->a:LG5/a$g;

    iget-object p1, p1, LG5/a$g;->b:LG5/a;

    invoke-static {p1}, LG5/a;->u(LG5/a;)V

    goto :goto_1

    :cond_0
    const-string p1, "No texture attached!"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
