.class public Ljpct/ae/wrapper/JPrimitives;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctPrimitives"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Primitives;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static getCube(F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/Primitives;->getCube(F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBox(FF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getBox(FF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getCone(F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Primitives;->getCone(F)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getCone2(IF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getCone(IF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getCone3(IFF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/threed/jpct/Primitives;->getCone(IFF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getCylinder(F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Primitives;->getCylinder(F)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getCylinder2(IF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getCylinder(IF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getCylinder3(IFF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/threed/jpct/Primitives;->getCylinder(IFF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getDoubleCone(F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Primitives;->getDoubleCone(F)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getDoubleCone2(IF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getDoubleCone(IF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getEllipsoid(FF)Lcom/threed/jpct/Object3D;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getEllipsoid(FF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getEllipsoid(IFF)Lcom/threed/jpct/Object3D;
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/threed/jpct/Primitives;->getEllipsoid(IFF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getPlane(IF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getPyramide(F)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Primitives;->getPyramide(F)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getPyramide2(FF)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getPyramide(FF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getSphere(F)Lcom/threed/jpct/Object3D;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/threed/jpct/Primitives;->getSphere(F)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getSphere(IF)Lcom/threed/jpct/Object3D;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/threed/jpct/Primitives;->getSphere(IF)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method
