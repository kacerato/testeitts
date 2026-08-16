.class public Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagNativeMesh:Ljava/lang/String; = "nativeMesh"


# instance fields
.field protected nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "at least one triangle"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 4
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0, p1, p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 7
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 9
    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v4, v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 11
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string p1, "at least one triangle"

    .line 12
    invoke-static {v1, p1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 13
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/scene/Mesh;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 15
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>([Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 16
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "at least one triangle"

    .line 17
    invoke-static {p1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 18
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(J)J
.end method

.method private static native recalcAabb(J)V
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public countMeshTriangles()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    return v0
.end method

.method public countMeshVertices()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countVertices()I

    move-result v0

    return v0
.end method

.method public countSubmeshes()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v0

    return v0
.end method

.method public createShape()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape(J)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 5
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 7
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method public getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "submesh index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object p1

    return-object p1
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

    const-string v0, "nativeMesh"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->recalcAabb(J)V

    return-void
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->recalculateAabb()V

    return-void
.end method

.method public split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 7

    const-string v0, "splitting triangle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    aget-object v5, p1, v4

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v5

    :goto_1
    if-eqz v3, :cond_3

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v5, p1, v2

    invoke-virtual {v5, v3, v4}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->maxMin(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v3, v4, v4}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    new-instance v5, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    aget-object v6, p1, v2

    invoke-direct {v5, v6, v3}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;-><init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;Lcom/jme3/math/Vector3f;)V

    iget-object v6, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    new-instance v6, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-direct {v6, v4, v5}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    aput-object v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    new-instance p1, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-direct {p1, v0, p0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    if-lez v3, :cond_4

    aput-object p1, v1, v2

    goto :goto_4

    :cond_4
    if-lez v5, :cond_5

    aput-object p1, v1, v4

    :cond_5
    :goto_4
    return-object v1
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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    const-string v1, "nativeMesh"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
