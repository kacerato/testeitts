.class public Ljpct/ae/wrapper/JWorld;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Alhowiriny"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctWorld"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.0f
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/World;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final FOGGING_DISABLED()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final FOGGING_ENABLED()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultThread()Ljava/lang/Thread;
    .locals 1

    invoke-static {}, Lcom/threed/jpct/World;->getDefaultThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultThread(Ljava/lang/Thread;)V
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/World;->setDefaultThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/World;

    invoke-direct {v0}, Lcom/threed/jpct/World;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JWorld;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public addObject(Lcom/threed/jpct/Object3D;)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    move-result p1

    return p1
.end method

.method public addObjects([Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->addObjects([Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public addPolyline(Lcom/threed/jpct/Polyline;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->addPolyline(Lcom/threed/jpct/Polyline;)V

    return-void
.end method

.method public buildAllObjects()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->buildAllObjects()V

    return-void
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/World;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F

    move-result p1

    return p1
.end method

.method public calcMinDistanceAndObject3D(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/World;->calcMinDistanceAndObject3D(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkCameraCollision(IF)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/World;->checkCameraCollision(IF)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollision2(IFZ)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/World;->checkCameraCollision(IFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollision3(IFFZ)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCameraCollision(IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollision4(Lcom/threed/jpct/SimpleVector;FFZ)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCameraCollision(Lcom/threed/jpct/SimpleVector;FFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionEllipsoid(ILcom/threed/jpct/SimpleVector;FI)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCameraCollisionEllipsoid(ILcom/threed/jpct/SimpleVector;FI)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionEllipsoid2(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FI)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCameraCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FI)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionSpherical(IFFZ)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCameraCollisionSpherical(IFFZ)Z

    move-result p1

    return p1
.end method

.method public checkCameraCollisionSpherical2(Lcom/threed/jpct/SimpleVector;FFZ)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCameraCollisionSpherical(Lcom/threed/jpct/SimpleVector;FFZ)Z

    move-result p1

    return p1
.end method

.method public checkCollision(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/World;->checkCollision(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)I

    move-result p1

    return p1
.end method

.method public checkCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->checkCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public checkCollisionSpherical(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/World;->checkCollisionSpherical(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public compileAllObjects()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->compileAllObjects()V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->dispose()V

    return-void
.end method

.method public draw(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public drawWireframe(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/RGBColor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/World;->drawWireframe(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public getAmbientLight()[I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getAmbientLight()[I

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/threed/jpct/Camera;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getFogging()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getFogging()I

    move-result v0

    return v0
.end method

.method public getFrameCounter()J
    .locals 2

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getFrameCounter()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getGlobalShader()Lcom/threed/jpct/GLSLShader;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/threed/jpct/Object3D;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->getObject(I)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->getObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getSize()I

    move-result v0

    return v0
.end method

.method public newCamera()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->newCamera()V

    return-void
.end method

.method public removeAll()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->removeAll()V

    return-void
.end method

.method public removeAllLights()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->removeAllLights()V

    return-void
.end method

.method public removeAllObjects()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->removeAllObjects()V

    return-void
.end method

.method public removeObject(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->removeObject(I)V

    return-void
.end method

.method public removeObject2(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->removeObject(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public removePolyline(Lcom/threed/jpct/Polyline;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->removePolyline(Lcom/threed/jpct/Polyline;)V

    return-void
.end method

.method public renderScene(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->renderScene(Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public setAmbientLight(III)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/World;->setAmbientLight(III)V

    return-void
.end method

.method public setCameraTo(Lcom/threed/jpct/Camera;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->setCameraTo(Lcom/threed/jpct/Camera;)V

    return-void
.end method

.method public setClippingPlanes(FF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/World;->setClippingPlanes(FF)V

    return-void
.end method

.method public setFogParameters(FFFF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/threed/jpct/World;->setFogParameters(FFFF)V

    return-void
.end method

.method public setFogParameters2(FFFFF)V
    .locals 7

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/World;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/threed/jpct/World;->setFogParameters(FFFFF)V

    return-void
.end method

.method public setFogging(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->setFogging(I)V

    return-void
.end method

.method public setGlobalShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->setGlobalShader(Lcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public setObjectsVisibility(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JWorld;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/World;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->setObjectsVisibility(Z)V

    return-void
.end method
