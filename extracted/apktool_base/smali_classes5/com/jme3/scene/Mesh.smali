.class public Lcom/jme3/scene/Mesh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/Mesh$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData; = null

.field private static final DEFAULT_ELEMENT_COUNT:I = -0x1

.field private static final DEFAULT_INSTANCE_COUNT:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:F = 1.0f

.field private static final DEFAULT_MAX_NUM_WEIGHTS:I = -0x1

.field private static final DEFAULT_PATCH_VERTEX_COUNT:I = 0x3

.field private static final DEFAULT_POINT_SIZE:F = 1.0f

.field private static final DEFAULT_VERTEX_ARRAY_ID:I = -0x1

.field private static final DEFAULT_VERT_COUNT:I = -0x1


# instance fields
.field private buffers:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private buffersList:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private collisionTree:Lcom/jme3/scene/CollisionData;

.field private elementCount:I

.field private elementLengths:[I

.field private instanceCount:I

.field private lineWidth:F

.field private lodLevels:[Lcom/jme3/scene/VertexBuffer;

.field private maxNumWeights:I

.field private meshBound:Lcom/jme3/bounding/BoundingVolume;

.field private mode:Lcom/jme3/scene/Mesh$Mode;

.field private modeStart:[I

.field private morphTargets:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/mesh/MorphTarget;",
            ">;"
        }
    .end annotation
.end field

.field private patchVertexCount:I

.field private pointSize:F

.field private vertCount:I

.field private transient vertexArrayID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    sget-object v0, Lcom/jme3/scene/Mesh;->DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/scene/Mesh;->pointSize:F

    iput v0, p0, Lcom/jme3/scene/Mesh;->lineWidth:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    iput v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    iput v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    iput v0, p0, Lcom/jme3/scene/Mesh;->instanceCount:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/jme3/scene/Mesh;->patchVertexCount:I

    iput v0, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    return-void
.end method

.method private computeInstanceCount()I
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getBaseInstanceCount()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getBaseInstanceCount()I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private computeNumElements(I)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_1
    iget v0, p0, Lcom/jme3/scene/Mesh;->patchVertexCount:I

    div-int/2addr p1, v0

    return p1

    :pswitch_2
    add-int/lit8 p1, p1, -0x2

    return p1

    :pswitch_3
    div-int/lit8 p1, p1, 0x3

    :pswitch_4
    return p1

    :pswitch_5
    add-int/lit8 p1, p1, -0x1

    return p1

    :pswitch_6
    div-int/lit8 p1, p1, 0x2

    :pswitch_7
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addMorphTarget(Lcom/jme3/scene/mesh/MorphTarget;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/mesh/MorphTarget;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/VertexBuffer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    :cond_0
    return-void
.end method

.method public clearCollisionData()V
    .locals 1

    sget-object v0, Lcom/jme3/scene/Mesh;->DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    return-void
.end method

.method public clone()Lcom/jme3/scene/Mesh;
    .locals 4

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    .line 3
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    .line 4
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    .line 5
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap;->clone()Lcom/jme3/util/IntMap;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    .line 6
    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v2, Lcom/jme3/scene/VertexBuffer;

    iget-object v3, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v1, v2, v3}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    .line 8
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->modeStart:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    .line 12
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    sget-object p2, Lcom/jme3/scene/Mesh;->DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData;

    iput-object p2, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    iget-object p2, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bounding/BoundingVolume;

    iput-object p2, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    iget-object p2, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/IntMap;

    iput-object p2, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    iget-object p2, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/scene/VertexBuffer;

    iput-object p2, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    iget-object p2, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    iget-object p2, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    return-void
.end method

.method public cloneForAnim()Lcom/jme3/scene/Mesh;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :cond_0
    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->createCollisionData()V

    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jme3/scene/CollisionData;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public createCollisionData()V
    .locals 1

    new-instance v0, Lcom/jme3/collision/bih/BIHTree;

    invoke-direct {v0, p0}, Lcom/jme3/collision/bih/BIHTree;-><init>(Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v0}, Lcom/jme3/collision/bih/BIHTree;->construct()V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    return-void
.end method

.method public deepClone()Lcom/jme3/scene/Mesh;
    .locals 8

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    sget-object v1, Lcom/jme3/scene/Mesh;->DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData;

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    new-instance v1, Lcom/jme3/util/IntMap;

    invoke-direct {v1}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v3, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v1, v3}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/scene/VertexBuffer;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    iget-object v7, v0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v7, v5, v6}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v5, v6}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    iget v1, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    iput v1, v0, Lcom/jme3/scene/Mesh;->vertCount:I

    iget v1, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    iput v1, v0, Lcom/jme3/scene/Mesh;->elementCount:I

    iget v1, p0, Lcom/jme3/scene/Mesh;->instanceCount:I

    iput v1, v0, Lcom/jme3/scene/Mesh;->instanceCount:I

    iget v1, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    iput v1, v0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iput-object v1, v0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [I

    :cond_3
    iput-object v2, v0, Lcom/jme3/scene/Mesh;->modeStart:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public extractVertexData(Lcom/jme3/scene/Mesh;)V
    .locals 10

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v2

    new-instance v3, Lcom/jme3/util/IntMap;

    invoke-direct {v3, v2}, Lcom/jme3/util/IntMap;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v2, :cond_1

    invoke-virtual {v1, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v7, v6, :cond_8

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_2

    new-instance v7, Lcom/jme3/scene/mesh/IndexIntBuffer;

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/jme3/scene/mesh/IndexShortBuffer;

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;)V

    :goto_1
    move v8, v5

    :goto_2
    if-ge v8, v2, :cond_3

    invoke-virtual {v1, v8}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    instance-of v8, v7, Lcom/jme3/scene/mesh/IndexIntBuffer;

    if-eqz v8, :cond_4

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    goto :goto_3

    :cond_4
    sget-object v8, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    :goto_3
    invoke-virtual {v7}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v1, v3, v0, v8, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v2, v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v7

    invoke-static {v3, v7, v6}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v7

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v8

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9, v3}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    move v3, v5

    :goto_5
    if-ge v3, v6, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7, v2, v3}, Lcom/jme3/scene/VertexBuffer;->copyElement(ILcom/jme3/scene/VertexBuffer;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMaxNumWeights(I)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public generateBindPose()V
    .locals 7

    .line 2
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 5
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 6
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    .line 7
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v5

    .line 9
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 10
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 12
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    .line 13
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v3, v4}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 15
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v4

    .line 16
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v5

    .line 17
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v6

    .line 18
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 19
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 20
    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    .line 22
    :cond_1
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v3, v4}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 24
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v4

    .line 25
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v5

    .line 26
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v6

    .line 27
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 28
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public generateBindPose(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->generateBindPose()V

    return-void
.end method

.method public getBound()Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    return-object v0
.end method

.method public getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/VertexBuffer;

    return-object p1
.end method

.method public getBufferList()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getBuffers()Lcom/jme3/util/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    return-object v0
.end method

.method public getElementLengths()[I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    return-object v0
.end method

.method public getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    return v0
.end method

.method public getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->isListMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/scene/mesh/WrappedIndexBuffer;-><init>(Lcom/jme3/scene/Mesh;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;

    iget v1, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    iget-object v2, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;-><init>(ILcom/jme3/scene/Mesh$Mode;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hybrid mode not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstanceCount()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Mesh;->instanceCount:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/jme3/scene/Mesh;->lineWidth:F

    return v0
.end method

.method public getLodLevel(I)Lcom/jme3/scene/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMaxNumWeights()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    return v0
.end method

.method public getMode()Lcom/jme3/scene/Mesh$Mode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    return-object v0
.end method

.method public getModeStart()[I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    return-object v0
.end method

.method public getMorphIndex(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/jme3/scene/mesh/MorphTarget;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getMorphTarget(I)Lcom/jme3/scene/mesh/MorphTarget;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/mesh/MorphTarget;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMorphTargetNames()[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/scene/mesh/MorphTarget;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jme3/scene/mesh/MorphTarget;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/mesh/MorphTarget;

    return-object v0
.end method

.method public getNumLodLevels()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPatchVertexCount()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Mesh;->patchVertexCount:I

    return v0
.end method

.method public getPointSize()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getShortBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/ShortBuffer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public getTriangle(ILcom/jme3/math/Triangle;)V
    .locals 3

    .line 12
    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jme3/scene/Mesh;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 13
    invoke-virtual {p2, p1}, Lcom/jme3/math/Triangle;->setIndex(I)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p2, p1}, Lcom/jme3/math/Triangle;->setCenter(Lcom/jme3/math/Vector3f;)V

    .line 15
    invoke-virtual {p2, p1}, Lcom/jme3/math/Triangle;->setNormal(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    mul-int/2addr p1, v3

    .line 5
    invoke-virtual {v1, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    .line 6
    invoke-virtual {v1, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    add-int/lit8 p1, p1, 0x2

    .line 7
    invoke-virtual {v1, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result p1

    .line 8
    invoke-static {p2, v0, v2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 9
    invoke-static {p3, v0, v3}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 10
    invoke-static {p4, v0, p1}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Position buffer not set or  has incompatible format"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTriangle(I[I)V
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x3

    .line 17
    invoke-virtual {v0, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p2, v2

    add-int/lit8 v1, p1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, p2, v2

    const/4 v1, 0x2

    add-int/2addr p1, v1

    .line 19
    invoke-virtual {v0, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result p1

    aput p1, p2, v1

    return-void
.end method

.method public getTriangleCount()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    return v0
.end method

.method public getTriangleCount(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/scene/Mesh;->computeNumElements(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOD level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LOD level cannot be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p1, :cond_3

    .line 6
    iget p1, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    return p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There are no LOD levels on the mesh!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVertexCount()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    return v0
.end method

.method public hasMorphTargets()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimated()Z
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAnimatedByBone(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->isAnimatedByJoint(I)Z

    move-result p1

    return p1
.end method

.method public isAnimatedByJoint(I)Z
    .locals 10

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->rewind()V

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->remaining()I

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_3

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_2

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->get()I

    move-result v7

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v8

    iget v9, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    if-ge v6, v9, :cond_1

    if-ne v7, p1, :cond_1

    const/4 v7, 0x0

    cmpl-float v7, v8, v7

    if-eqz v7, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method public jmeClone()Lcom/jme3/scene/Mesh;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Lcom/jme3/scene/Mesh;->vertexArrayID:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->jmeClone()Lcom/jme3/scene/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public prepareForAnim(Z)V
    .locals 8

    if-eqz p1, :cond_4

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    :cond_3
    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    goto/16 :goto_2

    :cond_4
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    :goto_1
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    :cond_6
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    :cond_7
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p1, v5}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, p1, v7, v6}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result p1

    invoke-virtual {v3, v7, v0, v7, p1}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1, v5}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result p1

    invoke-virtual {v4, v7, v1, v7, p1}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_9
    :goto_2
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "modelBound"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    const-string v0, "vertCount"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    const-string v0, "elementCount"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    const-string v0, "instanceCount"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->instanceCount:I

    const-string v0, "max_num_weights"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    const-class v0, Lcom/jme3/scene/Mesh$Mode;

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const-string v3, "mode"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh$Mode;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    const-string v0, "elementLengths"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    const-string v2, "modeStart"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    const-string v3, "collisionTree"

    sget-object v4, Lcom/jme3/scene/Mesh;->DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData;

    invoke-interface {p1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/collision/bih/BIHTree;

    iput-object v3, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    const-string v0, "pointSize"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->pointSize:F

    const-string v0, "buffers"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntSavableMap(Ljava/lang/String;Lcom/jme3/util/IntMap;)Lcom/jme3/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/IntMap$Entry;

    iget-object v3, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v3, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->isAnimated()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v0, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v0, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {v0, v2}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :cond_1
    const-string v0, "lodLevels"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    new-array v2, v2, [Lcom/jme3/scene/VertexBuffer;

    iput-object v2, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const-string v0, "morphTargets"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/mesh/MorphTarget;

    invoke-direct {v0, v1, p1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    :cond_3
    return-void
.end method

.method public removeMorphTarget(I)Lcom/jme3/scene/mesh/MorphTarget;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/mesh/MorphTarget;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeMorphTarget(Lcom/jme3/scene/mesh/MorphTarget;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public scaleTextureCoordinates(Lcom/jme3/math/Vector2f;)V
    .locals 7

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    div-int/2addr v4, v2

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/jme3/math/Vector2f;->getX()F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {p1}, Lcom/jme3/math/Vector2f;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only 2D texture coords are supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only float texture coord format is supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The mesh has no texture coordinates"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBound(Lcom/jme3/bounding/BoundingVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v0, p1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 8
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result p1

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 11
    invoke-virtual {v0, p4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 12
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The buffer already set is incompatible with the given parameters"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V
    .locals 1

    .line 16
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[B)V
    .locals 0

    .line 19
    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V
    .locals 0

    .line 15
    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[I)V
    .locals 0

    .line 17
    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V
    .locals 0

    .line 21
    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer type already set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDynamic()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setElementLengths([I)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    return-void
.end method

.method public setId(I)V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ID has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInterleaved()V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/VertexBuffer;

    iget v5, v4, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v2, v4}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    mul-int/2addr v5, v3

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v8, v7, v5}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    iget-object v6, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v6, v4, v2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    move v4, v1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/VertexBuffer;

    sget-object v7, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/DoubleBuffer;

    move v8, v1

    :goto_3
    iget v9, v6, Lcom/jme3/scene/VertexBuffer;->components:I

    if-ge v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/IntBuffer;

    move v8, v1

    :goto_4
    iget v9, v6, Lcom/jme3/scene/VertexBuffer;->components:I

    if-ge v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->get()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :pswitch_2
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ShortBuffer;

    move v8, v1

    :goto_5
    iget v9, v6, Lcom/jme3/scene/VertexBuffer;->components:I

    if-ge v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->get()S

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :pswitch_3
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    move v8, v1

    :goto_6
    iget v9, v6, Lcom/jme3/scene/VertexBuffer;->components:I

    if-ge v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :pswitch_4
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/FloatBuffer;

    move v8, v1

    :goto_7
    iget v9, v6, Lcom/jme3/scene/VertexBuffer;->components:I

    if-ge v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_1
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/VertexBuffer;->setOffset(I)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/VertexBuffer;->setStride(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    iget v2, v2, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    add-int/2addr v1, v2

    goto :goto_9

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLineWidth(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/jme3/scene/Mesh;->lineWidth:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lineWidth must be greater than or equal to 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLodLevels([Lcom/jme3/scene/VertexBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    return-void
.end method

.method public setMaxNumWeights(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    return-void
.end method

.method public setMode(Lcom/jme3/scene/Mesh$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method public setModeStart([I)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    return-void
.end method

.method public setPatchVertexCount(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/Mesh;->patchVertexCount:I

    return-void
.end method

.method public setStatic()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStreamed()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateBound()V
    .locals 2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingVolume;->computeFromPoints(Ljava/nio/FloatBuffer;)V

    :cond_0
    return-void
.end method

.method public updateCounts()V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    div-int/2addr v2, v0

    iput v2, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/Mesh;->computeNumElements(I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    invoke-direct {p0, v0}, Lcom/jme3/scene/Mesh;->computeNumElements(I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    :goto_0
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;->computeInstanceCount()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->instanceCount:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should update counts before interleave"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    const-string v1, "modelBound"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    const-string v1, "vertCount"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    const-string v1, "elementCount"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/Mesh;->instanceCount:I

    const-string v1, "instanceCount"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    const-string v1, "max_num_weights"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "mode"

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    const-string v1, "collisionTree"

    sget-object v3, Lcom/jme3/scene/Mesh;->DEFAULT_COLLISION_TREE:Lcom/jme3/scene/CollisionData;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    const-string v1, "elementLengths"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    const-string v1, "modeStart"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    iget v0, p0, Lcom/jme3/scene/Mesh;->pointSize:F

    const-string v1, "pointSize"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->HWBoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    const-string v4, "buffers"

    invoke-interface {p1, v0, v4, v2}, Lcom/jme3/export/OutputCapsule;->writeIntSavableMap(Lcom/jme3/util/IntMap;Ljava/lang/String;Lcom/jme3/util/IntMap;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    const-string v1, "lodLevels"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->morphTargets:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "morphTargets"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
