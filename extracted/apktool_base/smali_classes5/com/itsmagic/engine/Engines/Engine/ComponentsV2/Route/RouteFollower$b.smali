.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    move-result-object v0

    return-object v0
.end method

.method public getAllowObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public match(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    instance-of p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    return p1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method
