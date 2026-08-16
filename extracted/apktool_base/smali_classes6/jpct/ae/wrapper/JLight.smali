.class public Ljpct/ae/wrapper/JLight;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpcLight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Light;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final LIGHT_INVISIBLE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final LIGHT_VISIBLE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public Initialize(Lcom/threed/jpct/World;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Light;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Light;-><init>(Lcom/threed/jpct/World;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JLight;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public disable()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->disable()V

    return-void
.end method

.method public enable()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->enable()V

    return-void
.end method

.method public getAttenuation()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->getAttenuation()F

    move-result v0

    return v0
.end method

.method public getDiscardDistance()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->getDiscardDistance()F

    move-result v0

    return v0
.end method

.method public getDistanceOverride()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->getDistanceOverride()F

    move-result v0

    return v0
.end method

.method public getIntensity()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->getIntensity()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->getPosition()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Light;->getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0}, Lcom/threed/jpct/Light;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public rotate(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Light;->rotate(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setAttenuation(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Light;->setAttenuation(F)V

    return-void
.end method

.method public setDiscardDistance(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Light;->setDiscardDistance(F)V

    return-void
.end method

.method public setDistanceOverride(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Light;->setDistanceOverride(F)V

    return-void
.end method

.method public setIntensity(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Light;->setIntensity(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setIntensity2(FFF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Light;->setIntensity(FFF)V

    return-void
.end method

.method public setPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLight;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Light;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Light;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method
