.class public abstract Lcom/jme3/bullet/objects/PhysicsBody;
.super Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final massForStatic:F = 0.0f

.field private static final tagJoints:Ljava/lang/String; = "joints"


# instance fields
.field private joints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    return-void
.end method

.method public static native getDeactivationDeadline()F
.end method

.method public static native isDeactivationEnabled()Z
.end method

.method public static native setDeactivationDeadline(F)V
.end method

.method public static native setDeactivationEnabled(Z)V
.end method


# virtual methods
.method public addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V
    .locals 1

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public cloneJoints(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/objects/PhysicsBody;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {v1}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->findOtherBody(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/objects/PhysicsBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {v3}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1, v1}, Lcom/jme3/bullet/joints/PhysicsJoint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public countJoints()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
.end method

.method public abstract getMass()F
.end method

.method public listJoints()[Lcom/jme3/bullet/joints/PhysicsJoint;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/joints/PhysicsJoint;

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public readJoints(Lcom/jme3/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "joints"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    return-void
.end method

.method public removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V
    .locals 1

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract setGravity(Lcom/jme3/math/Vector3f;)V
.end method

.method public abstract setMass(F)V
.end method

.method public abstract setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
.end method

.method public writeJoints(Lcom/jme3/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsBody;->joints:Ljava/util/ArrayList;

    const-string v1, "joints"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
