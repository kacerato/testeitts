.class public LC5/c$c$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/c$c$a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/c$c$a$c;


# direct methods
.method public constructor <init>(LC5/c$c$a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$c$a;->a:LC5/c$c$a$c;

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

    :try_start_0
    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object v0, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, LC5/c$c$a$c$a;->a:LC5/c$c$a$c;

    iget-object v0, v0, LC5/c$c$a$c;->b:LC5/c$c$a;

    iget-object v0, v0, LC5/c$c$a;->d:LC5/c$c;

    iget-object v0, v0, LC5/c$c;->b:LC5/d;

    iget-object v0, v0, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    iput-object v0, p1, La8/b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object p1, p0, LC5/c$c$a$c$a;->a:LC5/c$c$a$c;

    iget-object p1, p1, LC5/c$c$a$c;->b:LC5/c$c$a;

    iget-object p1, p1, LC5/c$c$a;->d:LC5/c$c;

    iget-object p1, p1, LC5/c$c;->c:Landroid/content/Context;

    const-string v0, "Component copied. Paste on another object."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
