.class public abstract Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COLLISION_GROUP_01:I = 0x1

.field public static final COLLISION_GROUP_02:I = 0x2

.field public static final COLLISION_GROUP_03:I = 0x4

.field public static final COLLISION_GROUP_04:I = 0x8

.field public static final COLLISION_GROUP_05:I = 0x10

.field public static final COLLISION_GROUP_06:I = 0x20

.field public static final COLLISION_GROUP_07:I = 0x40

.field public static final COLLISION_GROUP_08:I = 0x80

.field public static final COLLISION_GROUP_09:I = 0x100

.field public static final COLLISION_GROUP_10:I = 0x200

.field public static final COLLISION_GROUP_11:I = 0x400

.field public static final COLLISION_GROUP_12:I = 0x800

.field public static final COLLISION_GROUP_13:I = 0x1000

.field public static final COLLISION_GROUP_14:I = 0x2000

.field public static final COLLISION_GROUP_15:I = 0x4000

.field public static final COLLISION_GROUP_16:I = 0x8000

.field public static final COLLISION_GROUP_NONE:I = 0x0

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagAnisotropicFrictionComponents:Ljava/lang/String; = "anisotropicFrictionComponents"

.field private static final tagAnisotropicFrictionMode:Ljava/lang/String; = "anisotropicFrictionMode"

.field private static final tagApplicationData:Ljava/lang/String; = "applicationData"

.field private static final tagCcdMotionThreshold:Ljava/lang/String; = "ccdMotionThreshold"

.field private static final tagCcdSweptSphereRadius:Ljava/lang/String; = "ccdSweptSphereRadius"

.field private static final tagCollisionGroup:Ljava/lang/String; = "collisionGroup"

.field private static final tagCollisionGroupsMask:Ljava/lang/String; = "collisionGroupsMask"

.field private static final tagCollisionShape:Ljava/lang/String; = "collisionShape"

.field private static final tagContactDamping:Ljava/lang/String; = "contactDamping"

.field private static final tagContactProcessingThreshold:Ljava/lang/String; = "contactProcessingThreshold"

.field private static final tagContactStiffness:Ljava/lang/String; = "contactStiffness"

.field private static final tagDeactivationTime:Ljava/lang/String; = "deactivationTime"

.field private static final tagDebugMaterial:Ljava/lang/String; = "debugMaterial"

.field private static final tagDebugMeshNormals:Ljava/lang/String; = "debugMeshNormals"

.field private static final tagDebugMeshResolution:Ljava/lang/String; = "debugMeshResolution"

.field private static final tagFriction:Ljava/lang/String; = "friction"

.field private static final tagHasCsd:Ljava/lang/String; = "hasCsd"

.field private static final tagIgnoreList:Ljava/lang/String; = "ignoreList"

.field private static final tagRestitution:Ljava/lang/String; = "restitution"

.field private static final tagRollingFriction:Ljava/lang/String; = "rollingFriction"

.field private static final tagSpinningFriction:Ljava/lang/String; = "spinningFriction"

.field private static final tagUserIndex:Ljava/lang/String; = "userIndex"

.field private static final tagUserIndex2:Ljava/lang/String; = "userIndex2"

.field private static final tagUserIndex3:Ljava/lang/String; = "userIndex3"

.field private static final tagUserObject:Ljava/lang/String; = "userObject"


# instance fields
.field private applicationData:Ljava/lang/Object;

.field private collideWithGroups:I

.field private collisionGroup:I

.field private collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

.field private debugMaterial:Lcom/jme3/material/Material;

.field private debugMeshInitListener:Lcom/jme3/bullet/debug/DebugMeshInitListener;

.field private debugMeshNormals:Lif/j;

.field private debugMeshResolution:I

.field private debugNumSides:I

.field private ignoreList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            ">;"
        }
    .end annotation
.end field

.field private userObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshInitListener:Lcom/jme3/bullet/debug/DebugMeshInitListener;

    const/4 v1, 0x1

    iput v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    iput v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionGroup:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution:I

    iput v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugNumSides:I

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    sget-object v1, Lif/j;->None:Lif/j;

    iput-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals:Lif/j;

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    return-void
.end method

.method private static native activate(JZ)V
.end method

.method public static native attachCollisionShape(JJ)V
.end method

.method private checkIgnoreList()Z
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getNumObjectsWithoutCollision(J)I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-eq v1, v0, :cond_1

    sget-object v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0}  jvmCount = {1}, nativeCount = {2}"

    invoke-virtual {v3, v4, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static native finalizeNative(J)V
.end method

.method public static native findInstance(J)Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->finalizeNative(J)V

    return-void
.end method

.method private static native getActivationState(J)I
.end method

.method private static native getAnisotropicFriction(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBasis(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native getBasisDp(JLcom/simsilica/mathd/Matrix3d;)V
.end method

.method private static native getCcdMotionThreshold(J)F
.end method

.method private static native getCcdSweptSphereRadius(J)F
.end method

.method private static native getCollideWithGroups(J)I
.end method

.method private static native getCollisionFlags(J)I
.end method

.method private static native getCollisionGroup(J)I
.end method

.method private static native getCollisionSpace(J)Lcom/jme3/bullet/CollisionSpace;
.end method

.method private static native getContactDamping(J)F
.end method

.method private static native getContactProcessingThreshold(J)F
.end method

.method private static native getContactStiffness(J)F
.end method

.method private static native getDeactivationTime(J)F
.end method

.method private static native getFriction(J)F
.end method

.method public static final native getInternalType(J)I
.end method

.method private static native getLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getNumObjectsWithoutCollision(J)I
.end method

.method private static native getObjectWithoutCollision(JI)J
.end method

.method private static native getOrientation(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native getOrientationDp(JLcom/simsilica/mathd/Quatd;)V
.end method

.method private static native getProxyFilterGroup(J)I
.end method

.method private static native getProxyFilterMask(J)I
.end method

.method private static native getRestitution(J)F
.end method

.method private static native getRollingFriction(J)F
.end method

.method private static native getSpaceId(J)J
.end method

.method private static native getSpinningFriction(J)F
.end method

.method private static native getUserIndex(J)I
.end method

.method private static native getUserIndex2(J)I
.end method

.method private static native getUserIndex3(J)I
.end method

.method private static native hasAnisotropicFriction(JI)Z
.end method

.method private static native hasBroadphaseProxy(J)Z
.end method

.method private native initUserPointer(JII)V
.end method

.method private static native isActive(J)Z
.end method

.method private static native isInWorld(J)Z
.end method

.method public static native setActivationState(JI)V
.end method

.method private static native setAnisotropicFriction(JLcom/jme3/math/Vector3f;I)V
.end method

.method private static native setCcdMotionThreshold(JF)V
.end method

.method private static native setCcdSweptSphereRadius(JF)V
.end method

.method private static native setCollideWithGroups(JI)V
.end method

.method public static native setCollisionFlags(JI)V
.end method

.method private static native setCollisionGroup(JI)V
.end method

.method private static native setContactProcessingThreshold(JF)V
.end method

.method private static native setContactStiffnessAndDamping(JFF)V
.end method

.method private static native setDeactivationTime(JF)V
.end method

.method private static native setFriction(JF)V
.end method

.method private static native setIgnoreCollisionCheck(JJZ)V
.end method

.method private static native setLocationAndBasis(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
.end method

.method private static native setRestitution(JF)V
.end method

.method private static native setRollingFriction(JF)V
.end method

.method private static native setSpinningFriction(JF)V
.end method

.method private static native setUserIndex(JI)V
.end method

.method private static native setUserIndex2(JI)V
.end method

.method private static native setUserIndex3(JI)V
.end method


# virtual methods
.method public activate(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->activate(JZ)V

    return-void
.end method

.method public addCollideWithGroup(I)V
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(JI)V

    :cond_0
    return-void
.end method

.method public addToIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 5

    const-string v0, "other collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x1

    if-eq p1, p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "2 distinct collision objects"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    :cond_2
    iget-object v1, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setIgnoreCollisionCheck(JJZ)V

    :cond_3
    return-void
.end method

.method public boundingBox(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p1}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {v2, v1, v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    return-object p1
.end method

.method public clearIgnoreList()V
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {v3}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v0, v1, v4, v5, v6}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setIgnoreCollisionCheck(JJZ)V

    iget-object v3, v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v3, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_1
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/Cloneable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iget-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/Material;

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    :cond_2
    return-void
.end method

.method public cloneIgnoreList(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 2

    iget-object p2, p2, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->addToIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public collisionFlags()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionFlags(J)I

    move-result v0

    return v0
.end method

.method public final copyPcoProperties(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdMotionThreshold(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdSweptSphereRadius(F)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactDamping()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactDamping(F)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactProcessingThreshold()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactProcessingThreshold(F)V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactStiffness()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactStiffness(F)V

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDeactivationTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setDeactivationTime(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getFriction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRestitution()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRollingFriction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRollingFriction(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getSpinningFriction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setSpinningFriction(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex2(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex3(I)V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasAnisotropicFriction(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getAnisotropicFriction(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setAnisotropicFriction(Lcom/jme3/math/Vector3f;I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasAnisotropicFriction(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getAnisotropicFriction(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setAnisotropicFriction(Lcom/jme3/math/Vector3f;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public countIgnored()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public debugMeshInitListener()Lcom/jme3/bullet/debug/DebugMeshInitListener;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshInitListener:Lcom/jme3/bullet/debug/DebugMeshInitListener;

    return-object v0
.end method

.method public debugMeshNormals()Lif/j;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals:Lif/j;

    return-object v0
.end method

.method public debugMeshResolution()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution:I

    return v0
.end method

.method public debugNumSides()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugNumSides:I

    return v0
.end method

.method public getActivationState()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getActivationState(J)I

    move-result v0

    return v0
.end method

.method public getAnisotropicFriction(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getAnisotropicFriction(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public getCcdMotionThreshold()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold(J)F

    move-result v0

    return v0
.end method

.method public getCcdSquareMotionThreshold()F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold()F

    move-result v0

    mul-float/2addr v0, v0

    return v0
.end method

.method public getCcdSweptSphereRadius()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius(J)F

    move-result v0

    return v0
.end method

.method public getCollideWithGroups()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    return v0
.end method

.method public getCollisionGroup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionGroup:I

    return v0
.end method

.method public getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-object v0
.end method

.method public getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->spaceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionSpace(J)Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContactDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactDamping(J)F

    move-result v0

    return v0
.end method

.method public getContactProcessingThreshold()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactProcessingThreshold(J)F

    move-result v0

    return v0
.end method

.method public getContactStiffness()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactStiffness(J)F

    move-result v0

    return v0
.end method

.method public getDeactivationTime()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDeactivationTime(J)F

    move-result v0

    return v0
.end method

.method public getDebugMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getFriction()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getFriction(J)F

    move-result v0

    return v0
.end method

.method public getPhysicsLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getLocation(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getLocationDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getOrientation(JLcom/jme3/math/Quaternion;)V

    return-object p1
.end method

.method public getPhysicsRotationDp(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Quatd;

    invoke-direct {p1}, Lcom/simsilica/mathd/Quatd;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getOrientationDp(JLcom/simsilica/mathd/Quatd;)V

    return-object p1
.end method

.method public getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getBasis(JLcom/jme3/math/Matrix3f;)V

    return-object p1
.end method

.method public getPhysicsRotationMatrixDp(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Matrix3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Matrix3d;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getBasisDp(JLcom/simsilica/mathd/Matrix3d;)V

    return-object p1
.end method

.method public getRestitution()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRestitution(J)F

    move-result v0

    return v0
.end method

.method public getRollingFriction()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRollingFriction(J)F

    move-result v0

    return v0
.end method

.method public getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getSpinningFriction()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getSpinningFriction(J)F

    move-result v0

    return v0
.end method

.method public getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public hasAnisotropicFriction(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    const-string v2, "mode"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasAnisotropicFriction(JI)Z

    move-result p1

    return p1
.end method

.method public ignores(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public initUserPointer()V
    .locals 4

    .line 1
    sget-object v0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "initUserPointer() for {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionGroup:I

    iget v3, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer(JII)V

    return-void
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isActive(J)Z

    move-result v0

    return v0
.end method

.method public final isContactResponse()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionFlags(J)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInWorld()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld(J)Z

    move-result v0

    return v0
.end method

.method public final isStatic()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionFlags(J)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public jmeClone()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    .line 3
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->jmeClone()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    return-object v0
.end method

.method public listIgnoredPcos()[Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    iget-object v2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public proxyGroup()Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasBroadphaseProxy(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getProxyFilterGroup(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public proxyMask()Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasBroadphaseProxy(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getProxyFilterMask(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "collisionGroup"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionGroup:I

    const-string v0, "collisionGroupsMask"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    const-class v0, Lif/j;

    sget-object v1, Lif/j;->None:Lif/j;

    const-string v2, "debugMeshNormals"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lif/j;

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals:Lif/j;

    const-string v0, "debugMeshResolution"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution:I

    const-string v0, "debugMaterial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    const-string v0, "collisionShape"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CollisionShape;

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void
.end method

.method public final readPcoProperties(Lcom/jme3/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ccdMotionThreshold"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdMotionThreshold(F)V

    const-string v0, "ccdSweptSphereRadius"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdSweptSphereRadius(F)V

    const-string v0, "hasCsd"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "contactDamping"

    const v3, 0x3dcccccd    # 0.1f

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactDamping(F)V

    :cond_0
    const-string v2, "contactProcessingThreshold"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactProcessingThreshold(F)V

    if-eqz v0, :cond_1

    const-string v0, "contactStiffness"

    const v2, 0x7149f2ca    # 1.0E30f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactStiffness(F)V

    :cond_1
    const-string v0, "deactivationTime"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setDeactivationTime(F)V

    const-string v0, "friction"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    const-string v0, "restitution"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    const-string v0, "rollingFriction"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRollingFriction(F)V

    const-string v0, "spinningFriction"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setSpinningFriction(F)V

    const-string v0, "anisotropicFrictionMode"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v3, "anisotropicFrictionComponents"

    invoke-interface {p1, v3, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setAnisotropicFriction(Lcom/jme3/math/Vector3f;I)V

    :cond_2
    const-string v0, "ignoreList"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    check-cast v4, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->addToIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "applicationData"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    const-string v0, "userIndex"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex(I)V

    const-string v0, "userIndex2"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex2(I)V

    const-string v0, "userIndex3"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex3(I)V

    const-string v0, "userObject"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    return-void
.end method

.method public removeCollideWithGroup(I)V
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(I)V

    :cond_0
    return-void
.end method

.method public removeFromIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 5

    const-string v0, "other collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "2 distinct collision objects"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setIgnoreCollisionCheck(JJZ)V

    :cond_1
    return-void
.end method

.method public setAnisotropicFriction(Lcom/jme3/math/Vector3f;I)V
    .locals 3

    .line 1
    const-string v0, "components"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    const-string v2, "mode"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setAnisotropicFriction(JLcom/jme3/math/Vector3f;I)V

    return-void
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    return-void
.end method

.method public setCcdMotionThreshold(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdMotionThreshold(JF)V

    return-void
.end method

.method public setCcdSweptSphereRadius(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdSweptSphereRadius(JF)V

    return-void
.end method

.method public setCollideWithGroups(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iput p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(JI)V

    return-void
.end method

.method public setCollisionGroup(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "exactly one bit set"

    .line 2
    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 3
    iput p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionGroup:I

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionGroup(JI)V

    return-void
.end method

.method public setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    const-string v0, "collision shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    return-void
.end method

.method public setContactDamping(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactStiffness(J)F

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactStiffnessAndDamping(JFF)V

    return-void
.end method

.method public setContactProcessingThreshold(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactProcessingThreshold(JF)V

    return-void
.end method

.method public setContactStiffness(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactDamping(J)F

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactStiffnessAndDamping(JFF)V

    return-void
.end method

.method public setDeactivationTime(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setDeactivationTime(JF)V

    return-void
.end method

.method public setDebugMaterial(Lcom/jme3/material/Material;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    return-void
.end method

.method public setDebugMeshInitListener(Lcom/jme3/bullet/debug/DebugMeshInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshInitListener:Lcom/jme3/bullet/debug/DebugMeshInitListener;

    return-void
.end method

.method public setDebugMeshNormals(Lif/j;)V
    .locals 1

    const-string v0, "new setting"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals:Lif/j;

    return-void
.end method

.method public setDebugMeshResolution(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "new setting"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    iput p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution:I

    return-void
.end method

.method public setDebugNumSides(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "number of sides"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    iput p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugNumSides:I

    return-void
.end method

.method public setFriction(F)V
    .locals 2

    .line 1
    const-string v0, "friction"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(JF)V

    return-void
.end method

.method public setIgnoreList([Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 4

    const-string v0, "desired list"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->clearIgnoreList()V

    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    iget-object v3, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->addToIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setLocationAndBasis(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 2

    .line 1
    const-string v0, "center location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    const-string v0, "orientation"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setLocationAndBasis(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public setRestitution(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(JF)V

    return-void
.end method

.method public setRollingFriction(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRollingFriction(JF)V

    return-void
.end method

.method public setSpinningFriction(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setSpinningFriction(JF)V

    return-void
.end method

.method public setUserIndex(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex(JI)V

    return-void
.end method

.method public setUserIndex2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex2(JI)V

    return-void
.end method

.method public setUserIndex3(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex3(JI)V

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    return-void
.end method

.method public spaceId()J
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getSpaceId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Control"

    const-string v3, "C"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Physics"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Object"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#unassigned"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public userIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserIndex(J)I

    move-result v0

    return v0
.end method

.method public userIndex2()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserIndex2(J)I

    move-result v0

    return v0
.end method

.method public userIndex3()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserIndex3(J)I

    move-result v0

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionGroup:I

    const-string v1, "collisionGroup"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collideWithGroups:I

    const-string v1, "collisionGroupsMask"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals:Lif/j;

    const-string v1, "debugMeshNormals"

    sget-object v3, Lif/j;->None:Lif/j;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution:I

    const-string v1, "debugMeshResolution"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMaterial:Lcom/jme3/material/Material;

    const-string v1, "debugMaterial"

    const/4 v4, 0x0

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionShape:Lcom/jme3/bullet/collision/shapes/CollisionShape;

    const-string v1, "collisionShape"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->applicationData:Ljava/lang/Object;

    instance-of v1, v0, Lcom/jme3/export/Savable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/export/Savable;

    const-string v1, "applicationData"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex()I

    move-result v0

    const-string v1, "userIndex"

    const/4 v5, -0x1

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex2()I

    move-result v0

    const-string v1, "userIndex2"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex3()I

    move-result v0

    const-string v1, "userIndex3"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userObject:Ljava/lang/Object;

    instance-of v1, v0, Lcom/jme3/export/Savable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jme3/export/Savable;

    const-string v1, "userObject"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold()F

    move-result v0

    const-string v1, "ccdMotionThreshold"

    const/4 v5, 0x0

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result v0

    const-string v1, "ccdSweptSphereRadius"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    const-string v1, "hasCsd"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactDamping()F

    move-result v0

    const-string v1, "contactDamping"

    const v6, 0x3dcccccd    # 0.1f

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactProcessingThreshold()F

    move-result v0

    const-string v1, "contactProcessingThreshold"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactStiffness()F

    move-result v0

    const-string v1, "contactStiffness"

    const v6, 0x7149f2ca    # 1.0E30f

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDeactivationTime()F

    move-result v0

    const-string v1, "deactivationTime"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getFriction()F

    move-result v0

    const-string v1, "friction"

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v6}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRestitution()F

    move-result v0

    const-string v1, "restitution"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRollingFriction()F

    move-result v0

    const-string v1, "rollingFriction"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getSpinningFriction()F

    move-result v0

    const-string v1, "spinningFriction"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasAnisotropicFriction(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasAnisotropicFriction(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    const-string v0, "anisotropicFrictionMode"

    invoke-interface {p1, v2, v0, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    if-eqz v2, :cond_5

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getAnisotropicFriction(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "anisotropicFrictionComponents"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_5
    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/export/Savable;

    iget-object v1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignoreList:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v1, "ignoreList"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    :cond_6
    return-void
.end method
