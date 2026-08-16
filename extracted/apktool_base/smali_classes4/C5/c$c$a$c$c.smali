.class public LC5/c$c$a$c$c;
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

    iput-object p1, p0, LC5/c$c$a$c$c;->a:LC5/c$c$a$c;

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

    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object p1, p0, LC5/c$c$a$c$c;->a:LC5/c$c$a$c;

    iget-object p1, p1, LC5/c$c$a$c;->b:LC5/c$c$a;

    iget-object p1, p1, LC5/c$c$a;->d:LC5/c$c;

    iget-object p1, p1, LC5/c$c;->b:LC5/d;

    iget-object p1, p1, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, LC5/c$c$a$c$c;->a:LC5/c$c$a$c;

    iget-object v0, v0, LC5/c$c$a$c;->b:LC5/c$c$a;

    iget-object v0, v0, LC5/c$c$a;->d:LC5/c$c;

    iget-object v0, v0, LC5/c$c;->b:LC5/d;

    iget-object v0, v0, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    iget-object v0, p0, LC5/c$c$a$c$c;->a:LC5/c$c$a$c;

    iget-object v0, v0, LC5/c$c$a$c;->b:LC5/c$c$a;

    iget-object v0, v0, LC5/c$c$a;->d:LC5/c$c;

    iget-object v0, v0, LC5/c$c;->b:LC5/d;

    iget-object v0, v0, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v0, p0, LC5/c$c$a$c$c;->a:LC5/c$c$a$c;

    iget-object v0, v0, LC5/c$c$a$c;->b:LC5/c$c$a;

    iget-object v0, v0, LC5/c$c$a;->d:LC5/c$c;

    iget-object v0, v0, LC5/c$c;->b:LC5/d;

    iget-object v0, v0, LC5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method
