.class public Ljpct/ae/wrapper/JOverlay;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctOverlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/util/Overlay;",
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
.method public Initialize(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/util/Overlay;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JOverlay;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Lcom/threed/jpct/World;IIIILjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/threed/jpct/util/Overlay;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;IIIILjava/lang/String;)V

    invoke-virtual {p0, v7}, Ljpct/ae/wrapper/JOverlay;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize3(Lcom/threed/jpct/World;IIIILjava/lang/String;Z)V
    .locals 9

    new-instance v8, Lcom/threed/jpct/util/Overlay;

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;IIIILjava/lang/String;Z)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Ljpct/ae/wrapper/JOverlay;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0}, Lcom/threed/jpct/util/Overlay;->dispose()V

    return-void
.end method

.method public getObject3D()Lcom/threed/jpct/Object3D;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0}, Lcom/threed/jpct/util/Overlay;->getObject3D()Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public setColor(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setColor(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public setDepth(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setDepth(F)V

    return-void
.end method

.method public setNewCoordinates(IIII)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/util/Overlay;->setNewCoordinates(IIII)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setRotation(F)V

    return-void
.end method

.method public setRotationPivot(II)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/util/Overlay;->setRotationPivot(II)V

    return-void
.end method

.method public setSourceCoordinates(IIII)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/util/Overlay;->setSourceCoordinates(IIII)V

    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setTexture(Ljava/lang/String;)V

    return-void
.end method

.method public setTexture2(Lcom/threed/jpct/TextureInfo;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setTexture(Lcom/threed/jpct/TextureInfo;)V

    return-void
.end method

.method public setTransparency(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setTransparency(I)V

    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setTransparencyMode(I)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->setVisibility(Z)V

    return-void
.end method

.method public unlink()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0}, Lcom/threed/jpct/util/Overlay;->unlink()V

    return-void
.end method

.method public update(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOverlay;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/Overlay;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/util/Overlay;->update(Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method
