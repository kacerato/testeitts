.class Ljpct/ae/wrapper/CollisionListenerInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threed/jpct/CollisionListener;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ba:Lanywheresoftware/b4a/BA;

.field private final eventName:Ljava/lang/String;

.field private final requiresPolygonIDs:Z

.field private final sender:Ljpct/ae/wrapper/JCollisionListener;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JCollisionListener;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->eventName:Ljava/lang/String;

    iput-object p2, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->sender:Ljpct/ae/wrapper/JCollisionListener;

    iput-boolean p4, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->requiresPolygonIDs:Z

    return-void
.end method


# virtual methods
.method public collision(Lcom/threed/jpct/CollisionEvent;)V
    .locals 12

    iget-object v0, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->sender:Ljpct/ae/wrapper/JCollisionListener;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_CollisionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getAlgorithm()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getPolygonIDs()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getFirstContact()Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getObject()Lcom/threed/jpct/Object3D;

    move-result-object v9

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getSource()Lcom/threed/jpct/Object3D;

    move-result-object v10

    invoke-virtual {p1}, Lcom/threed/jpct/CollisionEvent;->getTargets()[Lcom/threed/jpct/Object3D;

    move-result-object v11

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requiresPolygonIDs()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/CollisionListenerInterface;->requiresPolygonIDs:Z

    return v0
.end method
