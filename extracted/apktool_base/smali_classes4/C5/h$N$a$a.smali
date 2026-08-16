.class public LC5/h$N$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$N$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$N$a;


# direct methods
.method public constructor <init>(LC5/h$N$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$N$a$a;->a:LC5/h$N$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LC5/h$N$a$a;->a:LC5/h$N$a;

    iget-object p1, p1, LC5/h$N$a;->b:LC5/h$N;

    iget-object v0, p1, LC5/h$N;->b:LC5/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, LC5/h$N;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, LC5/h$N;->d:Landroid/widget/ImageView;

    invoke-static {p1}, LC5/h;->o(Landroid/widget/ImageView;)V

    iget-object p1, p0, LC5/h$N$a$a;->a:LC5/h$N$a;

    iget-object p1, p1, LC5/h$N$a;->b:LC5/h$N;

    iget-object p1, p1, LC5/h$N;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v1, p0, LC5/h$N$a$a;->a:LC5/h$N$a;

    iget-object v1, v1, LC5/h$N$a;->b:LC5/h$N;

    iget-object v1, v1, LC5/h$N;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v0, p0, LC5/h$N$a$a;->a:LC5/h$N$a;

    iget-object v0, v0, LC5/h$N$a;->b:LC5/h$N;

    iget-object v0, v0, LC5/h$N;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, LC5/h$N$a$a;->a:LC5/h$N$a;

    iget-object p1, p1, LC5/h$N$a;->b:LC5/h$N;

    iget-object p1, p1, LC5/h$N;->b:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v1, "temp"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_0
    return-void
.end method
