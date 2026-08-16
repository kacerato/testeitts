.class public abstract Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public transient E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

.field public transient I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

.field public final L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public P:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field public Q:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private cblb:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public i1:Z

.field public m1:Lcom/jme3/bullet/joints/Constraint;

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SERIALIZED_NAME"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    return p1
.end method

.method private addToPhysics()V
    .locals 11

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, v1}, Lk9/a;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, v1}, Lk9/a;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lh9/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lh9/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_2

    const-class v2, Lh9/a;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v2, Lh9/a;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    instance-of v2, v2, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v2

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2, v3}, Lk9/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3, v4}, Lk9/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object v4, p0

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->internalCreateConstraint(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/joints/Constraint;

    move-result-object v4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v4}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    invoke-virtual {v4, v5}, Lcom/jme3/bullet/joints/Constraint;->setCollisionBetweenLinkedBodies(Z)V

    :cond_1
    sget-object v4, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, LK8/a;->o:LCc/c;

    iget-object v5, v5, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v5, v6}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->P:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->Q:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private internalCreateConstraint(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/joints/Constraint;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rbA",
            "rbB",
            "pivotInA",
            "pivotInB",
            "axisInA",
            "axisInB"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->createConstraint(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/joints/Constraint;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constraint can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeFromPhysics()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    if-eqz v0, :cond_0

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    return-void
.end method

.method private searchHitch()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ConstraintHitch:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ConstraintHitch:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->K:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintHitch;

    :cond_5
    return-void
.end method

.method private searchTarget()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ConstraintPivot:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v1, "Pivot"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Override!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseConstraint"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->i()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->i()Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    return-void
.end method

.method public createConstraint(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/joints/Constraint;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rbA",
            "rbB",
            "pivotInA",
            "pivotInB",
            "axisInA",
            "axisInB"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Override!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    :cond_0
    return-void
.end method

.method public getConstraint()Lcom/jme3/bullet/joints/Constraint;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    return-object v0
.end method

.method public getGlobalPivotADirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalPivotAPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->J:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalPivotBDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalPivotBPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0700af

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009e

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TARGET:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)V

    const-string v2, "Hitch"

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)V

    const-string v2, "Collision between bodies"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTargetConstraintPivotComp()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    return-object v0
.end method

.method public getTargetObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getTargetPivot()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Override!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Override!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->searchTarget()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->searchHitch()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
    invoke-static {}, Lc8/b;->j()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq p2, v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto/16 :goto_0

    :cond_1
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object p2

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto :goto_0

    :cond_2
    const-class p2, Lh9/a;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->P:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object p1

    if-eq v0, p1, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object p2

    instance-of p2, p2, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->Q:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object p1

    if-eq p2, p1, :cond_8

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->removeFromPhysics()V

    :cond_8
    :goto_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    if-eqz p1, :cond_9

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_9

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->m1:Lcom/jme3/bullet/joints/Constraint;

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->cblb:Z

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/Constraint;->setCollisionBetweenLinkedBodies(Z)V

    :cond_9
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->i1:Z

    if-nez p1, :cond_a

    sget-wide p1, LK8/a;->u:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-lez p1, :cond_a

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->addToPhysics()V

    :cond_a
    return-void
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setHitchObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->hitchReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->I:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    return-void
.end method

.method public setTargetConstraintPivotComp(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetConstraintPivotComp"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    return-void
.end method

.method public setTargetObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->targetReference:Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    return-void
.end method
