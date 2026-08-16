.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

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
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
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

    instance-of p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarPathFinder;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method
