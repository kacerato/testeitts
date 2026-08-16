.class public Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljd/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljd/b;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decal ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->c:Landroid/content/Context;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->d:Landroid/widget/ImageView;

    invoke-static {v2, v3, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->c(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->c:I

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Settings/b;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->p(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a;->e:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->q(ILjava/lang/String;)V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Settings/a;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/a;-><init>()V

    invoke-static {p1}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method
