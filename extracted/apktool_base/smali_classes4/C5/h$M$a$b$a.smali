.class public LC5/h$M$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h$M$a$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$M$a$b;


# direct methods
.method public constructor <init>(LC5/h$M$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LC5/h$M$a$b$a;->a:LC5/h$M$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC5/h$M$a$b$a;->a:LC5/h$M$a$b;

    iget-object v0, v0, LC5/h$M$a$b;->a:LC5/h$M$a;

    iget-object v0, v0, LC5/h$M$a;->b:LC5/h$M;

    iget-object v0, v0, LC5/h$M;->d:Landroid/widget/ImageView;

    invoke-static {v0}, LC5/h;->o(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LC5/h$M$a$b$a;->a:LC5/h$M$a$b;

    iget-object v0, v0, LC5/h$M$a$b;->a:LC5/h$M$a;

    iget-object v0, v0, LC5/h$M$a;->b:LC5/h$M;

    iget-object v0, v0, LC5/h$M;->d:Landroid/widget/ImageView;

    invoke-static {p1}, LH3/a;->x1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LVc/c;

    invoke-direct {v3}, LVc/c;-><init>()V

    invoke-static {v0, v1, v2, v3}, LVc/e;->K(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;Lcom/bumptech/glide/load/resource/bitmap/h;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC5/h$M$a$b$a;->a:LC5/h$M$a$b;

    iget-object v0, v0, LC5/h$M$a$b;->a:LC5/h$M$a;

    iget-object v0, v0, LC5/h$M$a;->b:LC5/h$M;

    iget-object v1, v0, LC5/h$M;->d:Landroid/widget/ImageView;

    iget-object v0, v0, LC5/h$M;->c:Landroid/content/Context;

    invoke-static {v1, v0}, LVc/e;->n(Landroid/widget/ImageView;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string v0, "temp"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LC5/h$M$a$b$a;->a:LC5/h$M$a$b;

    iget-object v1, v1, LC5/h$M$a$b;->a:LC5/h$M$a;

    iget-object v1, v1, LC5/h$M$a;->b:LC5/h$M;

    iget-object v1, v1, LC5/h$M;->b:LC5/b;

    iget-object v1, v1, LC5/b;->b:LD5/h;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@gallery@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, LC5/h$M$a$b$a;->a:LC5/h$M$a$b;

    iget-object p1, p1, LC5/h$M$a$b;->a:LC5/h$M$a;

    iget-object p1, p1, LC5/h$M$a;->b:LC5/h$M;

    iget-object p1, p1, LC5/h$M;->b:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :goto_2
    return-void
.end method
