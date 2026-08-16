.class public Ljpct/ae/wrapper/JCollisionListener;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctCollisionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Ljpct/ae/wrapper/CollisionListenerInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static EVENT_ALGORITHM_ELLIPSOID()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static EVENT_ALGORITHM_RAY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static EVENT_ALGORITHM_SPHERE()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static EVENT_TYPE_SOURCE()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static EVENT_TYPE_TARGET()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_CollisionListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljpct/ae/wrapper/CollisionListenerInterface;

    invoke-direct {v0, p1, p0, p2, p3}, Ljpct/ae/wrapper/CollisionListenerInterface;-><init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JCollisionListener;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JCollisionListener;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Sub "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_CollisionListener - Doesn\'t exist!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JPCT"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public collision(Lcom/threed/jpct/CollisionEvent;)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCollisionListener;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/CollisionListenerInterface;

    invoke-virtual {v0, p1}, Ljpct/ae/wrapper/CollisionListenerInterface;->collision(Lcom/threed/jpct/CollisionEvent;)V

    return-void
.end method

.method public requiresPolygonIDs()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JCollisionListener;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/CollisionListenerInterface;

    invoke-virtual {v0}, Ljpct/ae/wrapper/CollisionListenerInterface;->requiresPolygonIDs()Z

    move-result v0

    return v0
.end method
