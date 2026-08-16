.class public Lcom/jme3/bullet/control/SoftBodyControl;
.super Lcom/jme3/bullet/control/AbstractPhysicsControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagBody:Ljava/lang/String; = "body"

.field private static final tagGeometry:Ljava/lang/String; = "geometry"

.field private static final tagMergeVertices:Ljava/lang/String; = "mergeVertices"

.field private static final tagUpdateNormals:Ljava/lang/String; = "updateNormals"

.field private static final tagUseTriangles:Ljava/lang/String; = "useTriangles"


# instance fields
.field private body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

.field private geometry:Lcom/jme3/scene/Geometry;

.field private indexMap:Ljava/nio/IntBuffer;

.field private mergeVertices:Z

.field private updateNormals:Z

.field private useTriangles:Lcom/jme3/bullet/control/UseTriangles;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/control/SoftBodyControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/SoftBodyControl;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->mergeVertices:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    .line 5
    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    .line 6
    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    .line 7
    sget-object v0, Lcom/jme3/bullet/control/UseTriangles;->FacesOnly:Lcom/jme3/bullet/control/UseTriangles;

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    .line 8
    sget-object v0, Lcom/jme3/bullet/control/UseTriangles;->FacesOnly:Lcom/jme3/bullet/control/UseTriangles;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/bullet/control/SoftBodyControl;-><init>(ZZZLcom/jme3/bullet/control/UseTriangles;)V

    return-void
.end method

.method public constructor <init>(ZZZLcom/jme3/bullet/control/UseTriangles;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->mergeVertices:Z

    .line 11
    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    .line 13
    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    .line 14
    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    .line 15
    sget-object v0, Lcom/jme3/bullet/control/UseTriangles;->FacesOnly:Lcom/jme3/bullet/control/UseTriangles;

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    .line 16
    const-string v0, "use triangles"

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 17
    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setApplyPhysicsLocal(Z)V

    .line 18
    iput-boolean p3, p0, Lcom/jme3/bullet/control/SoftBodyControl;->mergeVertices:Z

    .line 19
    iput-boolean p2, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    .line 20
    iput-object p4, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    return-void
.end method

.method private appendFromGeometry()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v2

    sget-object v3, Lcom/jme3/bullet/control/SoftBodyControl$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v3, Lcom/jme3/bullet/control/SoftBodyControl$1;->$SwitchMap$com$jme3$bullet$control$UseTriangles:[I

    iget-object v6, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-static {v0, v2}, Lif/p;->P(Lcom/jme3/scene/mesh/IndexBuffer;I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    :goto_0
    move-object v2, v5

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useTriangles = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v5

    move-object v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-static {v0, v2}, Lif/p;->P(Lcom/jme3/scene/mesh/IndexBuffer;I)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-boolean v3, p0, Lcom/jme3/bullet/control/SoftBodyControl;->mergeVertices:Z

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->generateIndexMap(Ljava/nio/FloatBuffer;)Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    invoke-static {v3, v1, v4}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->mapVertexData(Ljava/nio/IntBuffer;Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v1

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    invoke-static {v3, v0, v5}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->mapIndices(Ljava/nio/IntBuffer;Lcom/jme3/scene/mesh/IndexBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    :cond_4
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    invoke-static {v3, v2, v5}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->mapIndices(Ljava/nio/IntBuffer;Lcom/jme3/scene/mesh/IndexBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    goto :goto_2

    :cond_5
    iput-object v5, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v3, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(Lcom/jme3/scene/mesh/IndexBuffer;)V

    :cond_8
    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isApplyPhysicsLocal()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-static {v0, v1, v5}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    :cond_9
    iget-object v1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->applyTransform(Lcom/jme3/math/Transform;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPhysics()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object p1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iget-object p1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/jme3/bullet/control/SoftBodyControl;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p2, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 2

    new-instance v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    invoke-static {p1}, Lif/s;->B(Lcom/jme3/scene/Spatial;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/control/SoftBodyControl;->appendFromGeometry()V

    return-void
.end method

.method public getBody()Lcom/jme3/bullet/objects/PhysicsSoftBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "body"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const-string v0, "geometry"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    const-string v0, "mergeVertices"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->mergeVertices:Z

    const-string v0, "updateNormals"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    const-class v0, Lcom/jme3/bullet/control/UseTriangles;

    sget-object v1, Lcom/jme3/bullet/control/UseTriangles;->FacesOnly:Lcom/jme3/bullet/control/UseTriangles;

    const-string v2, "useTriangles"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/control/UseTriangles;

    iput-object p1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    iget-object p1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removePhysics()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public removeSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 0

    return-void
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/jme3/bullet/PhysicsSoftSpace;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The PhysicsSpace must be a PhysicsSoftSpace or null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    return-void
.end method

.method public update(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isApplyPhysicsLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    :cond_1
    move-object v6, v0

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    iget-object v1, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iget-object v2, p0, Lcom/jme3/bullet/control/SoftBodyControl;->indexMap:Ljava/nio/IntBuffer;

    iget-boolean v5, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/nio/IntBuffer;Lcom/jme3/scene/Mesh;ZZLcom/jme3/math/Transform;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->updateModelBound()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const-string v1, "body"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->geometry:Lcom/jme3/scene/Geometry;

    const-string v1, "geometry"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->mergeVertices:Z

    const-string v1, "mergeVertices"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->updateNormals:Z

    const-string v1, "updateNormals"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/control/SoftBodyControl;->useTriangles:Lcom/jme3/bullet/control/UseTriangles;

    const-string v1, "useTriangles"

    sget-object v2, Lcom/jme3/bullet/control/UseTriangles;->FacesOnly:Lcom/jme3/bullet/control/UseTriangles;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
