.class public Lcom/jme3/bullet/collision/shapes/SphericalSegment;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagUnscaledRadius:Ljava/lang/String; = "radius"

.field private static final tagUnscaledYMax:Ljava/lang/String; = "yMax"

.field private static final tagUnscaledYMin:Ljava/lang/String; = "yMin"


# instance fields
.field private unscaledRadius:F

.field private unscaledYMax:F

.field private unscaledYMin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p1, v0}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 4
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 5
    const-string v0, "yMax"

    invoke-static {p2, v0, p3, p1}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 6
    const-string v0, "yMin"

    neg-float v1, p1

    invoke-static {p3, v0, v1, p2}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 7
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledRadius:F

    .line 8
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMax:F

    .line 9
    iput p3, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMin:F

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->createShape()V

    return-void
.end method

.method private createShape()V
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledRadius:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMax:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMin:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->createShapeNative(FFF)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native createShapeNative(FFF)J
.end method

.method private static native maxRadius(J)F
.end method

.method private static native scaledVolume(J)F
.end method


# virtual methods
.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/SphericalSegment;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getHeight()F
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMax:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public maxRadius()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->maxRadius(J)F

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "radius"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledRadius:F

    const-string v0, "yMax"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMax:F

    const-string v0, "yMin"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMin:F

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public scaledVolume()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->scaledVolume(J)F

    move-result v0

    return v0
.end method

.method public sphereRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledRadius:F

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledRadius:F

    const-string v1, "radius"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMax:F

    const-string v1, "yMax"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMin:F

    const-string v1, "yMin"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public yMax()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMax:F

    return v0
.end method

.method public yMin()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->unscaledYMin:F

    return v0
.end method
