.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final H:Ljava/lang/String; = "AStarWaypointConnection"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public final E:J

.field public F:LJAVARuntime/GizmoPath;

.field public G:LJAVARuntime/Component;

.field private waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "AStarWaypointConnection"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->E:J

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    return-object p0
.end method

.method private resolveWaypoint(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    return-object p1
.end method

.method private resolveWaypointGuid(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;->getGraphGuid()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method private syncConnection()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->getWaypointAGUID()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->getWaypointBGUID()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->j(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->j(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getGraphGuid()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->E:J

    return-wide v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V

    const-string v2, "Waypoint A"

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V

    const-string v2, "Waypoint B"

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AStarWaypointConnection"

    return-object v0
.end method

.method public getWaypointA()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->resolveWaypoint(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    move-result-object v0

    return-object v0
.end method

.method public getWaypointAGUID()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->resolveWaypointGuid(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWaypointB()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->resolveWaypoint(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypoint;

    move-result-object v0

    return-object v0
.end method

.method public getWaypointBGUID()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->resolveWaypointGuid(Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->syncConnection()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarSceneController;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->syncConnection()V

    return-void
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->G:LJAVARuntime/Component;

    return-void
.end method

.method public setWaypointA(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->syncConnection()V

    return-void
.end method

.method public setWaypointB(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->syncConnection()V

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->G:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AStarWaypointConnection;

    invoke-direct {v0, p0}, LJAVARuntime/AStarWaypointConnection;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->G:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoPath;

    invoke-direct {v0}, LJAVARuntime/GizmoPath;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointAReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->waypointBReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    invoke-virtual {v2}, LJAVARuntime/GizmoPath;->clear()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->apply()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_1
    return-void
.end method

.method public updateOnUnselectedHierarchy()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnUnselectedHierarchy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AStar/AStarWaypointConnection;->F:LJAVARuntime/GizmoPath;

    return-void
.end method
