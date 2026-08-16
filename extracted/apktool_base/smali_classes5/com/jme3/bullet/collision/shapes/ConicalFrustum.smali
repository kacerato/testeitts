.class public Lcom/jme3/bullet/collision/shapes/ConicalFrustum;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagUnscaledA:Ljava/lang/String; = "a"

.field private static final tagUnscaledB:Ljava/lang/String; = "b"

.field private static final tagUnscaledHeight:Ljava/lang/String; = "height"


# instance fields
.field private unscaledA:F

.field private unscaledB:F

.field private unscaledHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "A radius"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 4
    const-string v0, "B radius"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 5
    const-string v0, "height"

    invoke-static {p3, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 6
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledA:F

    .line 7
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledB:F

    .line 8
    iput p3, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledHeight:F

    .line 9
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->createShape()V

    return-void
.end method

.method private createShape()V
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledA:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledB:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledHeight:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->createShapeNative(FFF)J

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
.method public aRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledA:F

    return v0
.end method

.method public bRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledB:F

    return v0
.end method

.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

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

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public height()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledHeight:F

    return v0
.end method

.method public maxRadius()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->maxRadius(J)F

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

    const-string v0, "a"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledA:F

    const-string v0, "b"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledB:F

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledHeight:F

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public scaledVolume()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->scaledVolume(J)F

    move-result v0

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

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledA:F

    const-string v1, "a"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledB:F

    const-string v1, "b"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->unscaledHeight:F

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
