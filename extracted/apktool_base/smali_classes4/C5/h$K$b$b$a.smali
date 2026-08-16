.class public LC5/h$K$b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h$K$b$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$K$b$b;


# direct methods
.method public constructor <init>(LC5/h$K$b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LC5/h$K$b$b$a;->a:LC5/h$K$b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LC5/h$K$b$b$a;->a:LC5/h$K$b$b;

    iget-object v0, v0, LC5/h$K$b$b;->a:LC5/h$K$b;

    iget-object v0, v0, LC5/h$K$b;->b:LC5/h$K;

    iget-object v0, v0, LC5/h$K;->b:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    invoke-interface {v0}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LC5/h$K$b$b$a;->a:LC5/h$K$b$b;

    iget-object v0, v0, LC5/h$K$b$b;->a:LC5/h$K$b;

    iget-object v0, v0, LC5/h$K$b;->b:LC5/h$K;

    iget-object v1, v0, LC5/h$K;->b:LC5/b;

    if-eqz v1, :cond_0

    iget-object v1, v0, LC5/h$K;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, v0, LC5/h$K;->d:Landroid/widget/ImageView;

    invoke-static {v0}, LC5/h;->o(Landroid/widget/ImageView;)V

    iget-object v0, p0, LC5/h$K$b$b$a;->a:LC5/h$K$b$b;

    iget-object v0, v0, LC5/h$K$b$b;->a:LC5/h$K$b;

    iget-object v0, v0, LC5/h$K$b;->b:LC5/h$K;

    iget-object v0, v0, LC5/h$K;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-static {p1}, LH3/f;->y1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->H(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, LC5/h$K$b$b$a;->a:LC5/h$K$b$b;

    iget-object v1, v1, LC5/h$K$b$b;->a:LC5/h$K$b;

    iget-object v1, v1, LC5/h$K$b;->b:LC5/h$K;

    iget-object v1, v1, LC5/h$K;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, LC5/h$K$b$b$a;->a:LC5/h$K$b$b;

    iget-object v0, v0, LC5/h$K$b$b;->a:LC5/h$K$b;

    iget-object v0, v0, LC5/h$K$b;->b:LC5/h$K;

    iget-object v0, v0, LC5/h$K;->b:LC5/b;

    iget-object v0, v0, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@MG@@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "temp"

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_0
    return-void
.end method
