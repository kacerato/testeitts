.class public Lcom/jme3/scene/debug/custom/ArmatureNode;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# static fields
.field public static final PIXEL_BOX:F = 10.0f

.field private static final baseColor:Lcom/jme3/math/ColorRGBA;

.field private static final outlineColor:Lcom/jme3/math/ColorRGBA;

.field private static final selectedColor:Lcom/jme3/math/ColorRGBA;

.field private static final selectedColorJoint:Lcom/jme3/math/ColorRGBA;


# instance fields
.field private final armature:Lcom/jme3/anim/Armature;

.field private camera:Lcom/jme3/renderer/Camera;

.field private final geomToJoint:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/scene/Geometry;",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private final jointToGeoms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/anim/Joint;",
            "[",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private selectedJoint:Lcom/jme3/anim/Joint;

.field private final tempVec2f:Lcom/jme3/math/Vector2f;

.field private final tempVec3f:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    sput-object v0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedColor:Lcom/jme3/math/ColorRGBA;

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    sput-object v0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedColorJoint:Lcom/jme3/math/ColorRGBA;

    sget-object v0, Lcom/jme3/math/ColorRGBA;->LightGray:Lcom/jme3/math/ColorRGBA;

    sput-object v0, Lcom/jme3/scene/debug/custom/ArmatureNode;->outlineColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/scene/debug/custom/ArmatureNode;->baseColor:Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/Armature;",
            "Lcom/jme3/scene/Node;",
            "Lcom/jme3/scene/Node;",
            "Lcom/jme3/scene/Node;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->geomToJoint:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedJoint:Lcom/jme3/anim/Joint;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec3f:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec2f:Lcom/jme3/math/Vector2f;

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->armature:Lcom/jme3/anim/Armature;

    new-instance v0, Lcom/jme3/scene/Geometry;

    new-instance v1, Lcom/jme3/scene/debug/custom/JointShape;

    invoke-direct {v1}, Lcom/jme3/scene/debug/custom/JointShape;-><init>()V

    const-string v2, "Armature Origin"

    invoke-direct {v0, v2, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0, v0, v1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lcom/jme3/scene/debug/custom/ArmatureNode;->attach(Lcom/jme3/scene/Node;ZLcom/jme3/scene/Geometry;)V

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/scene/debug/custom/ArmatureNode;->createSkeletonGeoms(Lcom/jme3/anim/Joint;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->updateModelBound()V

    return-void
.end method

.method private attach(Lcom/jme3/scene/Node;ZLcom/jme3/scene/Geometry;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1, p3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :goto_0
    return-void
.end method

.method private resetSelection()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedJoint:Lcom/jme3/anim/Joint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0, v1, v2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    sget-object v3, Lcom/jme3/scene/debug/custom/ArmatureNode;->outlineColor:Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/jme3/scene/debug/custom/ArmatureNode;->baseColor:Lcom/jme3/math/ColorRGBA;

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    :cond_2
    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    sget-object v1, Lcom/jme3/scene/debug/custom/ArmatureNode;->outlineColor:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0, v0, v1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedJoint:Lcom/jme3/anim/Joint;

    return-void
.end method

.method private setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    new-array v2, v0, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget v4, p2, Lcom/jme3/math/ColorRGBA;->r:F

    aput v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    iget v5, p2, Lcom/jme3/math/ColorRGBA;->g:F

    aput v5, v2, v4

    add-int/lit8 v4, v3, 0x2

    iget v5, p2, Lcom/jme3/math/ColorRGBA;->b:F

    aput v5, v2, v4

    add-int/lit8 v4, v3, 0x3

    iget v5, p2, Lcom/jme3/math/ColorRGBA;->a:F

    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :goto_1
    return-void
.end method

.method private updateBoneMesh(Lcom/jme3/scene/Geometry;Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

    invoke-virtual {v0, p2, p3}, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;->updatePoints(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/scene/shape/Line;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/shape/Line;

    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-virtual {v0, p2, p3}, Lcom/jme3/scene/shape/Line;->updatePoints(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    return-void
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 10

    instance-of v0, p1, Lcom/jme3/math/Ray;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->camera:Lcom/jme3/renderer/Camera;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p1, Lcom/jme3/math/Ray;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec3f:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/renderer/Camera;->getScreenCoordinates(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec2f:Lcom/jme3/math/Vector2f;

    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec3f:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    iput v3, v0, Lcom/jme3/math/Vector2f;->x:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iput v2, v0, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v0, p2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->pick(Lcom/jme3/math/Vector2f;Lcom/jme3/collision/CollisionResults;)I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->geomToJoint:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Geometry;

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    instance-of v4, v4, Lcom/jme3/scene/debug/custom/JointShape;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "start"

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    const-string v5, "end"

    invoke-virtual {v3, v5}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/jme3/math/Vector3f;

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    iget-object v9, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->camera:Lcom/jme3/renderer/Camera;

    invoke-static {p1, v4, v8, v9}, Lcom/jme3/math/MathUtils;->raySegmentShortestDistance(Lcom/jme3/math/Ray;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/renderer/Camera;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4

    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    new-instance v8, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v8}, Lcom/jme3/collision/CollisionResult;-><init>()V

    invoke-virtual {v8, v3}, Lcom/jme3/collision/CollisionResult;->setGeometry(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {p2, v8}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final createSkeletonGeoms(Lcom/jme3/anim/Joint;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/Joint;",
            "Lcom/jme3/scene/Node;",
            "Lcom/jme3/scene/Node;",
            "Lcom/jme3/scene/Node;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Lcom/jme3/math/Vector3f;

    move v7, v3

    :goto_0
    if-ge v7, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/anim/Joint;

    invoke-virtual {v8}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    new-instance v8, Lcom/jme3/scene/Geometry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Joint"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/jme3/scene/debug/custom/JointShape;

    invoke-direct {v10}, Lcom/jme3/scene/debug/custom/JointShape;-><init>()V

    invoke-direct {v8, v9, v10}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v8, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    move-object/from16 v9, p2

    invoke-direct {v6, v9, v2, v8}, Lcom/jme3/scene/debug/custom/ArmatureNode;->attach(Lcom/jme3/scene/Node;ZLcom/jme3/scene/Geometry;)V

    if-nez v5, :cond_2

    iget-object v1, v6, Lcom/jme3/scene/debug/custom/ArmatureNode;->geomToJoint:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p3

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_2
    array-length v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    new-instance v10, Lcom/jme3/scene/shape/Line;

    aget-object v11, v5, v3

    invoke-direct {v10, v1, v11}, Lcom/jme3/scene/shape/Line;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v11, Lcom/jme3/scene/shape/Line;

    aget-object v12, v5, v3

    invoke-direct {v11, v1, v12}, Lcom/jme3/scene/shape/Line;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v12, v11

    move-object v11, v13

    goto :goto_2

    :cond_3
    new-instance v10, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

    invoke-direct {v10, v1, v5}, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;-><init>(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V

    new-instance v12, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

    invoke-direct {v12, v1, v5}, Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;-><init>(Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V

    move-object/from16 v13, p3

    invoke-virtual {v13, v11}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v11

    check-cast v11, Lcom/jme3/scene/Node;

    const/4 v14, 0x0

    :goto_2
    new-instance v15, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Bone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3, v10}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    if-nez v14, :cond_4

    sget-object v3, Lcom/jme3/scene/debug/custom/ArmatureNode;->outlineColor:Lcom/jme3/math/ColorRGBA;

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/jme3/scene/debug/custom/ArmatureNode;->baseColor:Lcom/jme3/math/ColorRGBA;

    :goto_3
    invoke-direct {v6, v15, v3}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    iget-object v3, v6, Lcom/jme3/scene/debug/custom/ArmatureNode;->geomToJoint:Ljava/util/Map;

    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "start"

    invoke-virtual {v15, v3, v1}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v5

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    aget-object v4, v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v10

    invoke-virtual {v10, v4, v4}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const-string v1, "end"

    invoke-virtual {v15, v1, v5}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v15, v1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    invoke-direct {v6, v11, v2, v15}, Lcom/jme3/scene/debug/custom/ArmatureNode;->attach(Lcom/jme3/scene/Node;ZLcom/jme3/scene/Geometry;)V

    if-eqz v14, :cond_6

    new-instance v4, Lcom/jme3/scene/Geometry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BoneOutline"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v12}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object v1, Lcom/jme3/scene/debug/custom/ArmatureNode;->outlineColor:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v6, v4, v1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    invoke-direct {v6, v14, v2, v4}, Lcom/jme3/scene/debug/custom/ArmatureNode;->attach(Lcom/jme3/scene/Node;ZLcom/jme3/scene/Geometry;)V

    move-object v1, v4

    move-object v4, v15

    goto :goto_5

    :cond_6
    move-object v4, v15

    const/4 v1, 0x0

    :goto_5
    iget-object v2, v6, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    filled-new-array {v8, v4, v1}, [Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/jme3/anim/Joint;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/scene/debug/custom/ArmatureNode;->createSkeletonGeoms(Lcom/jme3/anim/Joint;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Ljava/util/List;)V

    goto :goto_6

    :cond_7
    return-void
.end method

.method public getSelectedJoint()Lcom/jme3/anim/Joint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedJoint:Lcom/jme3/anim/Joint;

    return-object v0
.end method

.method public pick(Lcom/jme3/math/Vector2f;Lcom/jme3/collision/CollisionResults;)I
    .locals 8

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->camera:Lcom/jme3/renderer/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->geomToJoint:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    instance-of v3, v3, Lcom/jme3/scene/debug/custom/JointShape;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec3f:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v5}, Lcom/jme3/renderer/Camera;->getScreenCoordinates(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v3, p1, Lcom/jme3/math/Vector2f;->x:F

    iget-object v4, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->tempVec3f:Lcom/jme3/math/Vector3f;

    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v6, 0x41200000    # 10.0f

    add-float v7, v5, v6

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_1

    sub-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/jme3/math/Vector2f;->y:F

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    add-float v5, v4, v6

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    sub-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    new-instance v3, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v3}, Lcom/jme3/collision/CollisionResult;-><init>()V

    invoke-virtual {v3, v2}, Lcom/jme3/collision/CollisionResult;->setGeometry(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {p2, v3}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/scene/debug/custom/ArmatureNode;->resetSelection()V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->geomToJoint:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/Joint;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedJoint:Lcom/jme3/anim/Joint;

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/jme3/scene/debug/custom/ArmatureNode;->resetSelection()V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedJoint:Lcom/jme3/anim/Joint;

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedColorJoint:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0, v1, v2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/jme3/scene/debug/custom/ArmatureNode;->selectedColor:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0, v1, v2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    :cond_2
    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v1, Lcom/jme3/scene/debug/custom/ArmatureNode;->baseColor:Lcom/jme3/math/ColorRGBA;

    invoke-direct {p0, v0, v1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    :cond_3
    return-object p1

    :cond_4
    return-object v0
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->camera:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public setHeadColor(Lcom/jme3/anim/Joint;Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/scene/Geometry;

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public setHeadColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/scene/Geometry;

    const/4 v2, 0x0

    .line 4
    aget-object v1, v1, v2

    invoke-direct {p0, v1, p1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLineColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/scene/Geometry;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setColor(Lcom/jme3/scene/Geometry;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateGeometry()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v0}, Lcom/jme3/anim/Armature;->update()V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v0}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/jme3/scene/debug/custom/ArmatureNode;->updateSkeletonGeoms(Lcom/jme3/anim/Joint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateSkeletonGeoms(Lcom/jme3/anim/Joint;)V
    .locals 10

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureNode;->jointToGeoms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    if-eqz v2, :cond_3

    const-string v3, "start"

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    const-string v5, "end"

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    if-eqz v6, :cond_3

    move v7, v1

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    aget-object v8, v6, v7

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/anim/Joint;

    invoke-virtual {v9}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v4, v6}, Lcom/jme3/scene/debug/custom/ArmatureNode;->updateBoneMesh(Lcom/jme3/scene/Geometry;Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V

    const/4 v7, 0x2

    aget-object v0, v0, v7

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v4, v6}, Lcom/jme3/scene/debug/custom/ArmatureNode;->updateBoneMesh(Lcom/jme3/scene/Geometry;Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Vector3f;)V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, v6

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, v6, v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5, v6}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/debug/custom/ArmatureNode;->updateSkeletonGeoms(Lcom/jme3/anim/Joint;)V

    goto :goto_2

    :cond_4
    return-void
.end method
