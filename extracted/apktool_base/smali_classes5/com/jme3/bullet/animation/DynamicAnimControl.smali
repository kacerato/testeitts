.class public Lcom/jme3/bullet/animation/DynamicAnimControl;
.super Lcom/jme3/bullet/animation/DacLinks;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/collision/PhysicsCollisionListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger35:Ljava/util/logging/Logger;

.field private static final matrixIdentity:Lcom/jme3/math/Matrix3f;

.field private static final tagCenterLocation:Ljava/lang/String; = "centerLocation"

.field private static final tagCenterVelocity:Ljava/lang/String; = "centerVelocity"

.field private static final tagIkJoints:Ljava/lang/String; = "ikJoints"

.field private static final tagRagdollMass:Ljava/lang/String; = "ragdollMass"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private blendListener:Lcom/jme3/bullet/animation/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/bullet/animation/CompletionListener<",
            "Lcom/jme3/bullet/animation/DynamicAnimControl;",
            ">;"
        }
    .end annotation
.end field

.field private centerLocation:Lcom/jme3/math/Vector3f;

.field private centerVelocity:Lcom/jme3/math/Vector3f;

.field private collisionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/animation/RagdollCollisionListener;",
            ">;"
        }
    .end annotation
.end field

.field private ikJoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/animation/IKJoint;",
            ">;"
        }
    .end annotation
.end field

.field private ragdollMass:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/animation/DynamicAnimControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/DynamicAnimControl;->logger35:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/DynamicAnimControl;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/animation/DynamicAnimControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/bullet/animation/DacLinks;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ragdollMass:F

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/bullet/animation/RagdollCollisionListener;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->collisionListeners:Ljava/util/List;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private static blendDescendants(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->listChildren()[Lcom/jme3/bullet/animation/PhysicsLink;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/jme3/bullet/animation/BoneLink;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v3, p1, p2}, Lcom/jme3/bullet/animation/BoneLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    goto :goto_1

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Lcom/jme3/bullet/animation/AttachmentLink;->blendToKinematicMode(FLcom/jme3/math/Transform;)V

    :cond_1
    :goto_1
    invoke-static {v2, p1, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendDescendants(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blendSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendDescendants(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lcom/jme3/bullet/animation/TorsoLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;FLcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/animation/BoneLink;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/bullet/animation/BoneLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p3, v1}, Lcom/jme3/bullet/animation/AttachmentLink;->blendToKinematicMode(FLcom/jme3/math/Transform;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recalculateCenter()V
    .locals 11

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const-class v3, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacLinks;->listLinks(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {v6}, Lcom/jme3/bullet/animation/PhysicsLink;->isReleased()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result v8

    float-to-double v9, v8

    add-double/2addr v4, v9

    invoke-virtual {v7, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v8}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/bullet/animation/PhysicsLink;->velocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v8}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v0}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    double-to-float v0, v4

    iput v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ragdollMass:F

    return-void
.end method


# virtual methods
.method public addCollisionListener(Lcom/jme3/bullet/animation/RagdollCollisionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->collisionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPhysics()V
    .locals 3

    invoke-super {p0}, Lcom/jme3/bullet/animation/DacLinks;->addPhysics()V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->addTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    iget-object v1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/IKJoint;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/IKJoint;->getPhysicsJoint()Lcom/jme3/bullet/joints/Constraint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public amputateSubtree(Lcom/jme3/bullet/animation/BoneLink;F)V
    .locals 2

    const-string v0, "root link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "link belongs to this control"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "blend interval"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    sget-object v0, Lcom/jme3/bullet/animation/KinematicSubmode;->Amputated:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-static {p1, v0, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendDescendants(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    invoke-virtual {p1, v0, p2}, Lcom/jme3/bullet/animation/BoneLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    return-void
.end method

.method public animateSubtree(Lcom/jme3/bullet/animation/PhysicsLink;F)V
    .locals 2

    const-string v0, "root link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "link belongs to this control"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "blend interval"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    sget-object v0, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-direct {p0, p1, v0, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    return-void
.end method

.method public bindSubtree(Lcom/jme3/bullet/animation/PhysicsLink;F)V
    .locals 2

    const-string v0, "root link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "link belongs to this control"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "blend interval"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    sget-object v0, Lcom/jme3/bullet/animation/KinematicSubmode;->Bound:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-direct {p0, p1, v0, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    return-void
.end method

.method public blendToKinematicMode(FLcom/jme3/math/Transform;)V
    .locals 1

    .line 1
    const-string v0, "blend interval"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 2
    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-virtual {p0, v0, p1, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;FLcom/jme3/math/Transform;)V

    return-void
.end method

.method public blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;FLcom/jme3/math/Transform;)V
    .locals 1

    .line 4
    const-string v0, "submode"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    const-string v0, "blend interval"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 6
    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/bullet/animation/TorsoLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;FLcom/jme3/math/Transform;)V

    .line 8
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getBoneLinks()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/BoneLink;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/jme3/bullet/animation/BoneLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->listAttachmentLinks()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/bullet/animation/AttachmentLink;

    .line 11
    invoke-virtual {p3}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p3, p2, v0}, Lcom/jme3/bullet/animation/AttachmentLink;->blendToKinematicMode(FLcom/jme3/math/Transform;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public centerOfMass(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 1

    const-string v0, "calculate the center of mass"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/bullet/animation/DynamicAnimControl;->recalculateCenter()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    iget p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ragdollMass:F

    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/DacLinks;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->collisionListeners:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->collisionListeners:Ljava/util/List;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public collision(Lcom/jme3/bullet/collision/PhysicsCollisionEvent;)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getNodeA()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getNodeB()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getObjectA()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getObjectB()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v2, Lcom/jme3/bullet/animation/PhysicsLink;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    check-cast v2, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v4

    if-ne v4, p0, :cond_2

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    :cond_2
    :goto_0
    instance-of v4, v3, Lcom/jme3/bullet/animation/PhysicsLink;

    if-eqz v4, :cond_4

    move-object v2, v3

    check-cast v2, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    if-ne v1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v6, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->eventDispatchImpulseThreshold()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getAppliedImpulse()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->collisionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/animation/RagdollCollisionListener;

    invoke-interface {v3, v2, v0, p1}, Lcom/jme3/bullet/animation/RagdollCollisionListener;->collide(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionEvent;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public dropAttachments()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->listAttachmentLinks()Ljava/util/Collection;

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

    check-cast v1, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/animation/DacConfiguration;->gravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/AttachmentLink;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findManagerForVertex(Ljava/lang/String;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/animation/PhysicsLink;
    .locals 11

    const-string v0, "vertex specifier"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    const/4 v3, 0x3

    if-gt v1, v3, :cond_d

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v4

    if-ne v1, v3, :cond_6

    aget-object v5, v0, v2

    const-string v6, "no attachment to bone %s"

    const-string v7, "non-existent bone %s in vertex specifier"

    if-nez p1, :cond_3

    invoke-virtual {v4, v5}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Lif/r;->o(Lcom/jme3/animation/Bone;)Lcom/jme3/scene/Node;

    move-result-object v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {v5}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-virtual {p1, v5}, Lcom/jme3/anim/Armature;->getJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {v8}, Lif/r;->n(Lcom/jme3/anim/Joint;)Lcom/jme3/scene/Node;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v5}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {v5}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v7

    :goto_0
    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-static {v7, v6}, Lif/s;->s(Lcom/jme3/scene/Spatial;Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v6

    if-eqz v6, :cond_c

    check-cast v6, Lcom/jme3/scene/Geometry;

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    aget-object v9, v0, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v9, -0x1

    :goto_1
    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v10

    if-ltz v9, :cond_b

    if-ge v9, v10, :cond_b

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v8, 0x0

    invoke-static {v7, v5, v9, v8}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    if-ne v1, v3, :cond_7

    aget-object p1, v0, v2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findAttachmentLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/AttachmentLink;

    move-result-object p1

    invoke-virtual {v6, v5, p2}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_4

    :cond_7
    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/DacConfiguration;->managerMap(Lcom/jme3/animation/Skeleton;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->managerMap(Lcom/jme3/anim/Armature;)[Ljava/lang/String;

    move-result-object p1

    :goto_2
    const/4 v0, 0x4

    new-array v1, v0, [I

    new-array v0, v0, [F

    invoke-static {v7, v9, v1, v0, p1}, Lcom/jme3/bullet/animation/RagUtils;->findManager(Lcom/jme3/scene/Mesh;I[I[F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, v8}, Lcom/jme3/bullet/animation/DacLinks;->meshTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-static {v0, v5, p2}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_4
    if-eqz p3, :cond_a

    invoke-virtual {p1, v8}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-static {v0, p2, p3}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_a
    return-object p1

    :cond_b
    aget-object p1, v0, v8

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "non-existent vertex %s in vertex specifier (legal range: 0 to %d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c
    aget-object p1, v0, v5

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "non-existent geometry %s in vertex specifier"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "malformed vertex specifier "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public fixToWorld(Lcom/jme3/bullet/animation/PhysicsLink;Z)Lcom/jme3/bullet/animation/IKJoint;
    .locals 9

    const-string v0, "add an IK joint"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    new-instance p1, Lcom/jme3/bullet/joints/New6Dof;

    sget-object v5, Lcom/jme3/bullet/animation/DynamicAnimControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    sget-object v7, Lcom/jme3/bullet/animation/DynamicAnimControl;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    sget-object v8, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    move-object v2, p1

    move-object v4, v5

    invoke-direct/range {v2 .. v8}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {v1, v2, v0}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {v1, v2, v0}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(Z)V

    add-int/lit8 v1, v0, 0x3

    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lcom/jme3/bullet/joints/New6Dof;->set(Lcom/jme3/bullet/joints/motors/MotorParam;IF)V

    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v2, v1, v3}, Lcom/jme3/bullet/joints/New6Dof;->set(Lcom/jme3/bullet/joints/motors/MotorParam;IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jme3/bullet/animation/IKJoint;

    invoke-direct {v0, p1, p2}, Lcom/jme3/bullet/animation/IKJoint;-><init>(Lcom/jme3/bullet/joints/Constraint;Z)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-object v0
.end method

.method public freezeSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Z)V
    .locals 3

    const-string v0, "root link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "link belongs to this control"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->freeze(Z)V

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->listChildren()[Lcom/jme3/bullet/animation/PhysicsLink;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->freezeSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getBlendListener()Lcom/jme3/bullet/animation/CompletionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/bullet/animation/CompletionListener<",
            "Lcom/jme3/bullet/animation/DynamicAnimControl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendListener:Lcom/jme3/bullet/animation/CompletionListener;

    return-object v0
.end method

.method public kineticEnergy()D
    .locals 5

    const-class v0, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->listLinks(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->isReleased()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kineticEnergy()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    return-wide v1
.end method

.method public listIKJoints()[Lcom/jme3/bullet/animation/IKJoint;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/animation/IKJoint;

    iget-object v1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public mechanicalEnergy()D
    .locals 5

    const-class v0, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->listLinks(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->isReleased()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mechanicalEnergy()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    return-wide v1
.end method

.method public moveToBody(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/animation/IKJoint;
    .locals 1

    const-string v0, "pivot in link body"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "goal body"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "pivot in goal body"

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    new-instance v0, Lcom/jme3/bullet/joints/Point2PointJoint;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/jme3/bullet/joints/Point2PointJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/bullet/animation/IKJoint;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/jme3/bullet/animation/IKJoint;-><init>(Lcom/jme3/bullet/joints/Constraint;Z)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-object p1
.end method

.method public moveToWorld(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/animation/IKJoint;
    .locals 1

    const-string v0, "pivot in link body"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "goal location"

    invoke-static {p3, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    new-instance v0, Lcom/jme3/bullet/joints/Point2PointJoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/bullet/joints/Point2PointJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/bullet/animation/IKJoint;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/jme3/bullet/animation/IKJoint;-><init>(Lcom/jme3/bullet/joints/Constraint;Z)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-object p1
.end method

.method public pinToSelf(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/animation/IKJoint;
    .locals 1

    const-string v0, "add an IK joint"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p2

    new-instance v0, Lcom/jme3/bullet/joints/Point2PointJoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Point2PointJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/bullet/animation/IKJoint;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/jme3/bullet/animation/IKJoint;-><init>(Lcom/jme3/bullet/joints/Constraint;Z)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-object p1
.end method

.method public pinToWorld(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/animation/IKJoint;
    .locals 3

    .line 11
    const-string v0, "pivot location"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 12
    const-string v0, "add an IK joint"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p1, v2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 16
    invoke-static {p1, p2, v1}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/jme3/bullet/joints/Point2PointJoint;

    invoke-direct {p2, v0, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;)V

    .line 18
    new-instance p1, Lcom/jme3/bullet/animation/IKJoint;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/jme3/bullet/animation/IKJoint;-><init>(Lcom/jme3/bullet/joints/Constraint;Z)V

    .line 19
    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-object p1
.end method

.method public pinToWorld(Lcom/jme3/bullet/animation/PhysicsLink;Z)Lcom/jme3/bullet/animation/IKJoint;
    .locals 8

    .line 1
    const-string v0, "add an IK joint"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/jme3/bullet/joints/New6Dof;

    sget-object v4, Lcom/jme3/bullet/animation/DynamicAnimControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    sget-object v6, Lcom/jme3/bullet/animation/DynamicAnimControl;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    sget-object v7, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v4

    move-object v5, v6

    invoke-direct/range {v1 .. v7}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    .line 4
    invoke-virtual {v0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 6
    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {v1, v2, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    .line 7
    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {v1, v2, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    .line 8
    new-instance p1, Lcom/jme3/bullet/animation/IKJoint;

    invoke-direct {p1, v0, p2}, Lcom/jme3/bullet/animation/IKJoint;-><init>(Lcom/jme3/bullet/joints/Constraint;Z)V

    .line 9
    iget-object p2, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "ikJoints"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    const-string v0, "ragdollMass"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ragdollMass:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "centerLocation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "centerVelocity"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public removePhysics()V
    .locals 3

    invoke-super {p0}, Lcom/jme3/bullet/animation/DacLinks;->removePhysics()V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    iget-object v1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/IKJoint;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/IKJoint;->getPhysicsJoint()Lcom/jme3/bullet/joints/Constraint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveCurrentPose()V
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getBoneLinks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/TorsoLink;->countManaged()I

    move-result v2

    new-array v3, v2, [Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v4

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    invoke-virtual {v1, v6}, Lcom/jme3/bullet/animation/TorsoLink;->boneIndex(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/anim/Joint;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lcom/jme3/bullet/animation/TorsoLink;->setEndBoneTransforms([Lcom/jme3/math/Transform;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v2

    new-array v3, v2, [Lcom/jme3/math/Transform;

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_1

    invoke-virtual {v1, v6}, Lcom/jme3/bullet/animation/BoneLink;->boneIndex(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/anim/Joint;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Lcom/jme3/bullet/animation/BoneLink;->setEndBoneTransforms([Lcom/jme3/math/Transform;)V

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v6, v2, :cond_3

    invoke-virtual {v1, v6}, Lcom/jme3/bullet/animation/TorsoLink;->boneIndex(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v8

    invoke-static {v8, v7}, Lif/r;->f(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v3}, Lcom/jme3/bullet/animation/TorsoLink;->setEndBoneTransforms([Lcom/jme3/math/Transform;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v2

    new-array v3, v2, [Lcom/jme3/math/Transform;

    move v6, v5

    :goto_5
    if-ge v6, v2, :cond_4

    invoke-virtual {v1, v6}, Lcom/jme3/bullet/animation/BoneLink;->boneIndex(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v8

    invoke-static {v8, v7}, Lif/r;->f(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v8

    aput-object v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v1, v3}, Lcom/jme3/bullet/animation/BoneLink;->setEndBoneTransforms([Lcom/jme3/math/Transform;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public setBlendListener(Lcom/jme3/bullet/animation/CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/bullet/animation/CompletionListener<",
            "Lcom/jme3/bullet/animation/DynamicAnimControl;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendListener:Lcom/jme3/bullet/animation/CompletionListener;

    return-void
.end method

.method public setContactResponseSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Z)V
    .locals 3

    const-string v0, "root link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "link belongs to this control"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setContactResponse(Z)V

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->listChildren()[Lcom/jme3/bullet/animation/PhysicsLink;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/jme3/bullet/animation/DynamicAnimControl;->setContactResponseSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setDynamicChain(Lcom/jme3/bullet/animation/PhysicsLink;ILcom/jme3/math/Vector3f;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "chain length"

    invoke-static {p2, v0}, Lif/E;->F(ILjava/lang/String;)Z

    const-string v0, "start link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "uniform acceleration"

    invoke-static {p3, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "put links into dynamic mode"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/jme3/bullet/animation/BoneLink;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v0, p3, p4, p4, p4}, Lcom/jme3/bullet/animation/BoneLink;->setDynamic(Lcom/jme3/math/Vector3f;ZZZ)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/jme3/bullet/animation/AttachmentLink;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v0, p3}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getParent()Lcom/jme3/bullet/animation/PhysicsLink;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/animation/DynamicAnimControl;->setDynamicChain(Lcom/jme3/bullet/animation/PhysicsLink;ILcom/jme3/math/Vector3f;Z)V

    :cond_3
    return-void
.end method

.method public setDynamicSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/math/Vector3f;Z)V
    .locals 3

    const-string v0, "root link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "link belongs to this control"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v0, "uniform acceleration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "change modes"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/animation/TorsoLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/jme3/bullet/animation/BoneLink;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v0, p2, p3, p3, p3}, Lcom/jme3/bullet/animation/BoneLink;->setDynamic(Lcom/jme3/math/Vector3f;ZZZ)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->listChildren()[Lcom/jme3/bullet/animation/PhysicsLink;

    move-result-object p1

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2, p3}, Lcom/jme3/bullet/animation/DynamicAnimControl;->setDynamicSubtree(Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/math/Vector3f;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setKinematicMode()V
    .locals 3

    .line 1
    const-string v0, "set kinematic mode"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;FLcom/jme3/math/Transform;)V

    return-void
.end method

.method public setKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;)V
    .locals 2

    .line 3
    const-string v0, "submode"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "set kinematic mode"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;FLcom/jme3/math/Transform;)V

    return-void
.end method

.method public setRagdollMode()V
    .locals 2

    const-string v0, "set ragdoll mode"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/TorsoLink;->setRagdollMode()V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getBoneLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/BoneLink;->setRagdollMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->listAttachmentLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/AttachmentLink;->setRagdollMode()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/IKJoint;

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/IKJoint;->setRagdollMode()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->update(F)V

    iget-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendListener:Lcom/jme3/bullet/animation/CompletionListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendListener:Lcom/jme3/bullet/animation/CompletionListener;

    invoke-interface {p1, p0}, Lcom/jme3/bullet/animation/CompletionListener;->onCompletion(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->blendListener:Lcom/jme3/bullet/animation/CompletionListener;

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ikJoints:Ljava/util/ArrayList;

    const-string v1, "ikJoints"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->ragdollMass:F

    const-string v1, "ragdollMass"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerLocation:Lcom/jme3/math/Vector3f;

    const-string v1, "centerLocation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DynamicAnimControl;->centerVelocity:Lcom/jme3/math/Vector3f;

    const-string v1, "centerVelocity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
