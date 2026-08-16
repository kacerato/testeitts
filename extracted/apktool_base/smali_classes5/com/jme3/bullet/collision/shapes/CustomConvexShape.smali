.class public abstract Lcom/jme3/bullet/collision/shapes/CustomConvexShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field public static final loggerY:Ljava/util/logging/Logger;

.field private static final tagHalfExtents:Ljava/lang/String; = "halfExtents"

.field private static final tagInertia:Ljava/lang/String; = "inertia"

.field protected static final threadTmpVector:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private halfExtents:Lcom/jme3/math/Vector3f;

.field private inertia:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->loggerY:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape$1;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape$1;-><init>()V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->threadTmpVector:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    .line 5
    const-string v0, "X half extent"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 6
    const-string v0, "Y half extent"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 7
    const-string v0, "Z half extent"

    invoke-static {p3, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 9
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 11
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "half extents"

    invoke-static {p1, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->createShape()V

    return-void
.end method

.method private createShape()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v0}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->createShapeNative(Lcom/jme3/math/Vector3f;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private native createShapeNative(Lcom/jme3/math/Vector3f;)J
.end method

.method private static native setScaledInertia(JFFF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public abstract locateSupport(FFF)Lcom/jme3/math/Vector3f;
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

    const-string v0, "halfExtents"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "inertia"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public setScaledInertia(FFF)V
    .locals 2

    .line 1
    const-string v0, "X-axis inertia"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 2
    const-string v0, "Y-axis inertia"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 3
    const-string v0, "Z-axis inertia"

    invoke-static {p3, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->setScaledInertia(JFFF)V

    return-void
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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->halfExtents:Lcom/jme3/math/Vector3f;

    const-string v1, "halfExtents"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;->inertia:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "inertia"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
