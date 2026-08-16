.class public Ljpct/ae/wrapper/JPolyline;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctPolyline"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Polyline;",
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
.method public Initialize([Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/RGBColor;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Polyline;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/Polyline;-><init>([Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/RGBColor;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JPolyline;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getColor()Lcom/threed/jpct/RGBColor;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0}, Lcom/threed/jpct/Polyline;->getColor()Lcom/threed/jpct/RGBColor;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0}, Lcom/threed/jpct/Polyline;->getLength()I

    move-result v0

    return v0
.end method

.method public getPercentage()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0}, Lcom/threed/jpct/Polyline;->getPercentage()F

    move-result v0

    return v0
.end method

.method public getTransparencyMode()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0}, Lcom/threed/jpct/Polyline;->getTransparencyMode()I

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0}, Lcom/threed/jpct/Polyline;->getWidth()F

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0}, Lcom/threed/jpct/Polyline;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setColor(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Polyline;->setColor(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public setPercentage(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Polyline;->setPercentage(F)V

    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Polyline;->setTransparencyMode(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Polyline;->setVisible(Z)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Polyline;->setWidth(F)V

    return-void
.end method

.method public update([Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolyline;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Polyline;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Polyline;->update([Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method
