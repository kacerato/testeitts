.class public Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final defaultCapacity:I = 0x6

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final matrixIdentity:Lcom/jme3/math/Matrix3f;

.field private static final tagChildren:Ljava/lang/String; = "children"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->createEmpty(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 5
    const-string v0, "initial capacity"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->createEmpty(I)V

    return-void
.end method

.method private static native addChildShape(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
.end method

.method private static native calculatePrincipalAxisTransform(JLjava/nio/FloatBuffer;Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native countChildren(J)I
.end method

.method private createEmpty(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->createShape2(ZI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native createShape2(ZI)J
.end method

.method private loadChildren()V
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v6

    new-instance v8, Lcom/jme3/math/Matrix3f;

    invoke-direct {v8}, Lcom/jme3/math/Matrix3f;-><init>()V

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-virtual {v0, v9}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v8}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-wide v0, v6

    move-object v4, v9

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static native recalcAabb(J)V
.end method

.method private static native removeChildShape(JJ)V
.end method

.method private static native rotate(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native setChildTransform(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
.end method

.method private static native translate(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 2

    .line 1
    const-string v0, "child shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    sget-object v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->translateIdentity:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;FFF)V
    .locals 1

    .line 3
    const-string v0, "child shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p2, p3, p4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    .line 5
    sget-object p2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V
    .locals 1

    .line 16
    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 6
    const-string v0, "child shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 7
    const-string v0, "offset"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 8
    sget-object v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 7

    .line 9
    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 11
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-direct {v0, p2, p3, p1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 12
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    move-object v5, p2

    move-object v6, p3

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A CompoundCollisionShape cannot have a CompoundCollisionShape child!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public canSplit()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canSplit()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->createEmpty(I)V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->loadChildren()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public connectivityMatrix(Lcom/jme3/bullet/CollisionSpace;)[[Z
    .locals 11

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    new-instance v4, Lcom/jme3/math/Matrix3f;

    invoke-direct {v4}, Lcom/jme3/math/Matrix3f;-><init>()V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    new-array v6, v0, [Lcom/jme3/bullet/objects/PhysicsGhostObject;

    move v7, v3

    :goto_0
    if-ge v7, v0, :cond_0

    aget-object v8, v1, v7

    aput-boolean v2, v8, v7

    iget-object v8, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v8}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v9

    new-instance v10, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-direct {v10, v9}, Lcom/jme3/bullet/objects/PhysicsGhostObject;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-virtual {v8, v5}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v5}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v8, v4}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    invoke-virtual {v10, v4}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/jme3/bullet/CollisionSpace;

    sget-object v4, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->DBVT:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    invoke-direct {p1, v5, v5, v4}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    :cond_1
    move v4, v3

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_4

    aget-object v5, v6, v4

    add-int/lit8 v7, v4, 0x1

    move v8, v7

    :goto_2
    if-ge v8, v0, :cond_3

    aget-object v9, v6, v8

    const/4 v10, 0x0

    invoke-virtual {p1, v5, v9, v10}, Lcom/jme3/bullet/CollisionSpace;->pairTest(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionListener;)I

    move-result v9

    if-lez v9, :cond_2

    move v9, v2

    goto :goto_3

    :cond_2
    move v9, v3

    :goto_3
    aget-object v10, v1, v4

    aput-boolean v9, v10, v8

    aget-object v10, v1, v8

    aput-boolean v9, v10, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v4, v7

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public correctAxes(Lcom/jme3/math/Transform;)V
    .locals 1

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->rotate(Lcom/jme3/math/Matrix3f;)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/jme3/math/Matrix4f;->toTranslationVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->translate(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public countChildren()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public countGroups(Lcom/jme3/bullet/CollisionSpace;[I)I
    .locals 11

    const-string v0, "storage for colors"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "the correct length"

    invoke-static {v1, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->connectivityMatrix(Lcom/jme3/bullet/CollisionSpace;)[[Z

    move-result-object p1

    move v1, v2

    :goto_1
    const/4 v4, -0x1

    if-ge v1, v0, :cond_1

    aput v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    move v5, v2

    :goto_2
    if-lez v1, :cond_9

    move v6, v5

    :goto_3
    if-ge v6, v0, :cond_3

    aget v7, p2, v6

    if-ne v7, v4, :cond_2

    add-int/lit8 v7, v5, 0x1

    aput v5, p2, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move v7, v5

    move v5, v4

    :goto_4
    if-ne v5, v4, :cond_4

    move v5, v7

    goto :goto_7

    :cond_4
    move v6, v3

    :cond_5
    if-eqz v6, :cond_8

    move v6, v2

    move v8, v6

    :goto_5
    if-ge v8, v0, :cond_5

    aget v9, p2, v8

    if-ne v9, v5, :cond_7

    move v9, v2

    :goto_6
    if-ge v9, v0, :cond_7

    aget v10, p2, v9

    if-ne v10, v4, :cond_6

    aget-object v10, p1, v8

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_6

    aput v5, p2, v9

    add-int/lit8 v1, v1, -0x1

    move v6, v3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    move v5, v7

    goto :goto_2

    :cond_9
    :goto_7
    return v5
.end method

.method public findIndex(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public maxRadius()F
    .locals 7

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    const/4 v3, 0x0

    invoke-static {v4, v0, v3}, Lcom/jme3/bullet/util/DebugShapeFactory;->maxDistance(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;I)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public principalAxes(Ljava/nio/FloatBuffer;Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    const-string v0, "storage for inertia"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->calculatePrincipalAxisTransform(JLjava/nio/FloatBuffer;Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The buffer must be direct."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const-string v0, "children"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->loadChildren()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    iget-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->recalcAabb(J)V

    return-void
.end method

.method public removeChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 3
    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->removeChildShape(JJ)V

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    .line 7
    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public rotate(Lcom/jme3/math/Matrix3f;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix3f;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    .line 4
    invoke-virtual {v3, v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p1, v0, v0}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    invoke-virtual {v3, v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    .line 7
    invoke-virtual {p1, v1, v1}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    .line 8
    invoke-virtual {v3, v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->rotate(JLcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public scaledVolume()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scaledVolume()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public setChildTransform(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v6

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->findIndex(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result p1

    .line 5
    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object p2

    move-object v4, v6

    move-object v5, p2

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->setChildTransform(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    .line 7
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    .line 8
    invoke-virtual {p1, v6, p2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->updateScale()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 10

    const-string v0, "parent triangle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    new-instance v3, Lcom/jme3/math/Matrix3f;

    invoke-direct {v3}, Lcom/jme3/math/Matrix3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v6, p1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_0

    aget-object v8, v6, v7

    if-eqz v8, :cond_2

    aget-object v9, v2, v7

    if-nez v9, :cond_1

    new-instance v9, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v9, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>(I)V

    aput-object v9, v2, v7

    :cond_1
    invoke-virtual {v8}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v9

    invoke-virtual {v8, v4}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v3}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    aget-object v8, v2, v7

    invoke-virtual {v8, v9, v4, v3}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public toSplittableShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>(I)V

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->toSplittableShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v5

    invoke-virtual {v4, v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v5, v2, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public translate(Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix3f;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    .line 4
    invoke-virtual {v3, v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    invoke-virtual {v3, v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    .line 7
    invoke-virtual {v3, v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 9
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->translate(JLcom/jme3/math/Vector3f;)V

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->children:Ljava/util/ArrayList;

    const-string v1, "children"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
