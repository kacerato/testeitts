.class public Lcom/itsmagic/engine/Activities/InitScreen/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/InitScreen/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a$a;->b()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen is not attached"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a$a;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/InitScreen/a$a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a$a;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Override this method at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override this method at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lcom/itsmagic/engine/Activities/InitScreen/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connector"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    return-void
.end method

.method public k(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/a;->a:Lcom/itsmagic/engine/Activities/InitScreen/a$a;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/InitScreen/a$a;->c()V

    return-void
.end method
