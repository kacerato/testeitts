.class public Ljpct/ae/wrapper/JLensFlare;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctLensFlare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/util/LensFlare;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(Lcom/threed/jpct/SimpleVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/threed/jpct/util/LensFlare;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/util/LensFlare;-><init>(Lcom/threed/jpct/SimpleVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljpct/ae/wrapper/JLensFlare;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public render(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->render(Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public setDirection(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->setDirection(Z)V

    return-void
.end method

.method public setGlobalScale(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->setGlobalScale(F)V

    return-void
.end method

.method public setHiding(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->setHiding(Z)V

    return-void
.end method

.method public setLightPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->setLightPosition(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setMaximumDistance(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->setMaximumDistance(F)V

    return-void
.end method

.method public setTransparency(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/LensFlare;->setTransparency(I)V

    return-void
.end method

.method public update(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JLensFlare;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/LensFlare;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/util/LensFlare;->update(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/World;)V

    return-void
.end method
