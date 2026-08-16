.class public Lf5/c$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/c;->n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf5/c;


# direct methods
.method public constructor <init>(Lf5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lf5/c$n;->a:Lf5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {p1}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object p1

    invoke-interface {p1}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {p1}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object p1

    invoke-interface {p1}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/r;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :try_start_1
    iget-object p3, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {p3}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object p3

    invoke-interface {p3}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_1

    iget-object p3, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {p3}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object p3

    invoke-interface {p3}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {p3}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object p3

    invoke-interface {p3}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {v0}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object v0

    invoke-interface {v0}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->U0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p1, LMb/a;

    iget-object v0, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {v0}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object v0

    invoke-interface {v0}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p1, p2, v0, p3}, LMb/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/b;->d(LMb/a;)V

    sget-object p1, LW7/b;->h:Lb8/f;

    invoke-virtual {p1, p2}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {v0}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object v0

    invoke-interface {v0}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p1, LMb/a;

    iget-object v0, p0, Lf5/c$n;->a:Lf5/c;

    invoke-static {v0}, Lf5/c;->H(Lf5/c;)Lf5/c$o;

    move-result-object v0

    invoke-interface {v0}, Lf5/c$o;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p1, p2, v0, p3}, LMb/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/b;->d(LMb/a;)V

    sget-object p1, LW7/b;->h:Lb8/f;

    invoke-virtual {p1, p2}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
