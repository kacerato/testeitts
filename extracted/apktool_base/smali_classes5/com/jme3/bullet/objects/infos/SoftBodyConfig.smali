.class public Lcom/jme3/bullet/objects/infos/SoftBodyConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagBody:Ljava/lang/String; = "body"

.field private static final tagClusterIterations:Ljava/lang/String; = "clusterIterations"

.field private static final tagCollisionFlags:Ljava/lang/String; = "collisionFlags"

.field private static final tagDriftIterations:Ljava/lang/String; = "driftIterations"

.field private static final tagPositionIterations:Ljava/lang/String; = "positionIterations"

.field private static final tagVelocityIterations:Ljava/lang/String; = "velocityIterations"


# instance fields
.field private body:Lcom/jme3/bullet/objects/PhysicsSoftBody;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-void
.end method

.method private static native copyValues(JJ)V
.end method

.method private static native getAeroModel(J)I
.end method

.method private static native getAnchorsHardness(J)F
.end method

.method private static native getClusterIterations(J)I
.end method

.method private static native getClusterKineticHardness(J)F
.end method

.method private static native getClusterKineticImpulseSplitCoef(J)F
.end method

.method private static native getClusterRigidHardness(J)F
.end method

.method private static native getClusterRigidImpulseSplitCoef(J)F
.end method

.method private static native getClusterSoftHardness(J)F
.end method

.method private static native getClusterSoftImpulseSplitCoef(J)F
.end method

.method private static native getCollisionsFlags(J)I
.end method

.method private static native getDampingCoef(J)F
.end method

.method private static native getDragCoef(J)F
.end method

.method private static native getDriftIterations(J)I
.end method

.method private static native getDynamicFrictionCoef(J)F
.end method

.method private static native getKineticContactsHardness(J)F
.end method

.method private static native getLiftCoef(J)F
.end method

.method private static native getMaximumVolumeRatio(J)F
.end method

.method private static native getPoseMatchingCoef(J)F
.end method

.method private static native getPositionIterations(J)I
.end method

.method private static native getPressureCoef(J)F
.end method

.method private static native getRigidContactsHardness(J)F
.end method

.method private static native getSoftContactsHardness(J)F
.end method

.method private static native getTimeScale(J)F
.end method

.method private static native getVelocitiesCorrectionFactor(J)F
.end method

.method private static native getVelocitiesIterations(J)I
.end method

.method private static native getVolumeConservationCoef(J)F
.end method

.method private static native setAeroModel(JI)V
.end method

.method private static native setAnchorsHardness(JF)V
.end method

.method private static native setClusterIterations(JI)V
.end method

.method private static native setClusterKineticHardness(JF)V
.end method

.method private static native setClusterKineticImpulseSplitCoef(JF)V
.end method

.method private static native setClusterRigidHardness(JF)V
.end method

.method private static native setClusterRigidImpulseSplitCoef(JF)V
.end method

.method private static native setClusterSoftHardness(JF)V
.end method

.method private static native setClusterSoftImpulseSplitCoef(JF)V
.end method

.method private static native setCollisionsFlags(JI)V
.end method

.method private static native setDampingCoef(JF)V
.end method

.method private static native setDragCoef(JF)V
.end method

.method private static native setDriftIterations(JI)V
.end method

.method private static native setDynamicFrictionCoef(JF)V
.end method

.method private static native setKineticContactsHardness(JF)V
.end method

.method private static native setLiftCoef(JF)V
.end method

.method private static native setMaximumVolumeRatio(JF)V
.end method

.method private static native setPoseMatchingCoef(JF)V
.end method

.method private static native setPositionIterations(JI)V
.end method

.method private static native setPressureCoef(JF)V
.end method

.method private static native setRigidContactsHardness(JF)V
.end method

.method private static native setSoftContactsHardness(JF)V
.end method

.method private static native setTimeScale(JF)V
.end method

.method private static native setVelocitiesCorrectionFactor(JF)V
.end method

.method private static native setVelocitiesIterations(JI)V
.end method

.method private static native setVolumeConservationCoef(JF)V
.end method


# virtual methods
.method public aerodynamics()Lcom/jme3/bullet/objects/infos/Aero;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getAeroModel(J)I

    move-result v0

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Aero;->values()[Lcom/jme3/bullet/objects/infos/Aero;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    check-cast p2, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->copyAll(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)V

    return-void
.end method

.method public clusterIterations()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterIterations(J)I

    move-result v0

    return v0
.end method

.method public collisionFlags()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getCollisionsFlags(J)I

    move-result v0

    return v0
.end method

.method public copyAll(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object p1, p1, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->copyValues(JJ)V

    return-void
.end method

.method public driftIterations()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getDriftIterations(J)I

    move-result v0

    return v0
.end method

.method public get(Lcom/jme3/bullet/objects/infos/Sbcp;)F
    .locals 3

    const-string v0, "parameter"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/objects/infos/SoftBodyConfig$1;->$SwitchMap$com$jme3$bullet$objects$infos$Sbcp:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getVolumeConservationCoef(J)F

    move-result p1

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getVelocitiesCorrectionFactor(J)F

    move-result p1

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getTimeScale(J)F

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getSoftContactsHardness(J)F

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getRigidContactsHardness(J)F

    move-result p1

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getPressureCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getPoseMatchingCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getMaximumVolumeRatio(J)F

    move-result p1

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getLiftCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getKineticContactsHardness(J)F

    move-result p1

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getDynamicFrictionCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getDragCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getDampingCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterSoftImpulseSplitCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterSoftHardness(J)F

    move-result p1

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterRigidImpulseSplitCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_10
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterRigidHardness(J)F

    move-result p1

    goto :goto_0

    :pswitch_11
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterKineticImpulseSplitCoef(J)F

    move-result p1

    goto :goto_0

    :pswitch_12
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getClusterKineticHardness(J)F

    move-result p1

    goto :goto_0

    :pswitch_13
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getAnchorsHardness(J)F

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public jmeClone()Lcom/jme3/bullet/objects/infos/SoftBodyConfig;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->jmeClone()Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    move-result-object v0

    return-object v0
.end method

.method public positionIterations()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getPositionIterations(J)I

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "body"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const-string v0, "clusterIterations"

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterIterations(I)V

    const-string v0, "collisionFlags"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {p0, v0, v2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setCollisionFlags(I[I)V

    const-string v0, "driftIterations"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setDriftIterations(I)V

    const-string v0, "positionIterations"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setPositionIterations(I)V

    const-string v0, "velocityIterations"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setVelocityIterations(I)V

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Sbcp;->values()[Lcom/jme3/bullet/objects/infos/Sbcp;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/infos/Sbcp;->defValue()F

    move-result v5

    invoke-interface {p1, v4, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(Lcom/jme3/bullet/objects/infos/Sbcp;F)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/infos/Sbcp;->canSet(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/objects/infos/SoftBodyConfig$1;->$SwitchMap$com$jme3$bullet$objects$infos$Sbcp:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setVolumeConservationCoef(JF)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setVelocitiesCorrectionFactor(JF)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setTimeScale(JF)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setSoftContactsHardness(JF)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setRigidContactsHardness(JF)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setPressureCoef(JF)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setPoseMatchingCoef(JF)V

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setMaximumVolumeRatio(JF)V

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setLiftCoef(JF)V

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setKineticContactsHardness(JF)V

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setDynamicFrictionCoef(JF)V

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setDragCoef(JF)V

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setDampingCoef(JF)V

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterSoftImpulseSplitCoef(JF)V

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterSoftHardness(JF)V

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterRigidImpulseSplitCoef(JF)V

    goto :goto_0

    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterRigidHardness(JF)V

    goto :goto_0

    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterKineticImpulseSplitCoef(JF)V

    goto :goto_0

    :pswitch_12
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterKineticHardness(JF)V

    goto :goto_0

    :pswitch_13
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setAnchorsHardness(JF)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s cannot be set to %f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAerodynamics(Lcom/jme3/bullet/objects/infos/Aero;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setAeroModel(JI)V

    return-void
.end method

.method public setClusterIterations(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setClusterIterations(JI)V

    return-void
.end method

.method public varargs setCollisionFlags(I[I)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setCollisionsFlags(JI)V

    return-void
.end method

.method public setDriftIterations(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setDriftIterations(JI)V

    return-void
.end method

.method public setPositionIterations(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setPositionIterations(JI)V

    return-void
.end method

.method public setVelocityIterations(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->setVelocitiesIterations(JI)V

    return-void
.end method

.method public velocityIterations()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->getVelocitiesIterations(J)I

    move-result v0

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const-string v1, "body"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->clusterIterations()I

    move-result v0

    const-string v1, "clusterIterations"

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->collisionFlags()I

    move-result v0

    const-string v1, "collisionFlags"

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->driftIterations()I

    move-result v0

    const-string v1, "driftIterations"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->positionIterations()I

    move-result v0

    const-string v1, "positionIterations"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->velocityIterations()I

    move-result v0

    const-string v1, "velocityIterations"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Sbcp;->values()[Lcom/jme3/bullet/objects/infos/Sbcp;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/infos/Sbcp;->defValue()F

    move-result v3

    invoke-interface {p1, v4, v5, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
