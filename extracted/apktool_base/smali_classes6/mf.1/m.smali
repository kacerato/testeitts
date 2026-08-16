.class public Lmf/m;
.super Ljme3utilities/debug/d;
.source "SourceFile"


# static fields
.field public static final A:Ljava/util/logging/Logger;

.field public static final B:Lcom/jme3/math/Vector3f;


# instance fields
.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lmf/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmf/m;->A:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lmf/m;->B:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljme3utilities/debug/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmf/m;->q:Z

    .line 3
    iput-boolean v0, p0, Lmf/m;->r:Z

    .line 4
    iput-boolean v0, p0, Lmf/m;->s:Z

    .line 5
    iput-boolean v0, p0, Lmf/m;->t:Z

    .line 6
    iput-boolean v0, p0, Lmf/m;->u:Z

    .line 7
    iput-boolean v0, p0, Lmf/m;->v:Z

    .line 8
    iput-boolean v0, p0, Lmf/m;->w:Z

    .line 9
    iput-boolean v0, p0, Lmf/m;->x:Z

    .line 10
    iput-boolean v0, p0, Lmf/m;->y:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lmf/m;->z:Z

    .line 12
    new-instance v0, Lmf/l;

    invoke-direct {v0}, Lmf/l;-><init>()V

    .line 13
    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->J(Ljme3utilities/debug/c;)Ljme3utilities/debug/d;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljme3utilities/debug/d;-><init>(Ljava/io/PrintStream;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lmf/m;->q:Z

    .line 16
    iput-boolean p1, p0, Lmf/m;->r:Z

    .line 17
    iput-boolean p1, p0, Lmf/m;->s:Z

    .line 18
    iput-boolean p1, p0, Lmf/m;->t:Z

    .line 19
    iput-boolean p1, p0, Lmf/m;->u:Z

    .line 20
    iput-boolean p1, p0, Lmf/m;->v:Z

    .line 21
    iput-boolean p1, p0, Lmf/m;->w:Z

    .line 22
    iput-boolean p1, p0, Lmf/m;->x:Z

    .line 23
    iput-boolean p1, p0, Lmf/m;->y:Z

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lmf/m;->z:Z

    .line 25
    new-instance p1, Lmf/l;

    invoke-direct {p1}, Lmf/l;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Ljme3utilities/debug/d;->J(Ljme3utilities/debug/c;)Ljme3utilities/debug/d;

    return-void
.end method

.method public static d0(Ljava/nio/FloatBuffer;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p0, p1, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {v0}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A0(Lmf/e;)Z
    .locals 3

    sget-object v0, Lmf/m$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Ljme3utilities/debug/d;->H()Z

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Ljme3utilities/debug/d;->G()Z

    move-result p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljme3utilities/debug/d;->F()Z

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljme3utilities/debug/d;->E()Z

    move-result p1

    goto :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lmf/m;->z:Z

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Ljme3utilities/debug/d;->D()Z

    move-result p1

    goto :goto_0

    :pswitch_6
    iget-boolean p1, p0, Lmf/m;->y:Z

    goto :goto_0

    :pswitch_7
    iget-boolean p1, p0, Lmf/m;->x:Z

    goto :goto_0

    :pswitch_8
    iget-boolean p1, p0, Lmf/m;->w:Z

    goto :goto_0

    :pswitch_9
    iget-boolean p1, p0, Lmf/m;->v:Z

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Ljme3utilities/debug/d;->C()Z

    move-result p1

    goto :goto_0

    :pswitch_b
    iget-boolean p1, p0, Lmf/m;->u:Z

    goto :goto_0

    :pswitch_c
    iget-boolean p1, p0, Lmf/m;->t:Z

    goto :goto_0

    :pswitch_d
    iget-boolean p1, p0, Lmf/m;->s:Z

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Ljme3utilities/debug/d;->B()Z

    move-result p1

    goto :goto_0

    :pswitch_f
    iget-boolean p1, p0, Lmf/m;->r:Z

    goto :goto_0

    :pswitch_10
    iget-boolean p1, p0, Lmf/m;->q:Z

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Ljme3utilities/debug/d;->A()Z

    move-result p1

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Ljme3utilities/debug/d;->z()Z

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public B0(Lmf/e;Z)Lmf/m;
    .locals 2

    sget-object v0, Lmf/m$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->S(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->R(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->Q(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->P(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_4
    iput-boolean p2, p0, Lmf/m;->z:Z

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->O(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_6
    iput-boolean p2, p0, Lmf/m;->y:Z

    goto :goto_0

    :pswitch_7
    iput-boolean p2, p0, Lmf/m;->x:Z

    goto :goto_0

    :pswitch_8
    iput-boolean p2, p0, Lmf/m;->w:Z

    goto :goto_0

    :pswitch_9
    iput-boolean p2, p0, Lmf/m;->v:Z

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->N(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_b
    iput-boolean p2, p0, Lmf/m;->u:Z

    goto :goto_0

    :pswitch_c
    iput-boolean p2, p0, Lmf/m;->t:Z

    goto :goto_0

    :pswitch_d
    iput-boolean p2, p0, Lmf/m;->s:Z

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->M(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_f
    iput-boolean p2, p0, Lmf/m;->r:Z

    goto :goto_0

    :pswitch_10
    iput-boolean p2, p0, Lmf/m;->q:Z

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->L(Z)Ljme3utilities/debug/d;

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->K(Z)Ljme3utilities/debug/d;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final V(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isKinematic()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getActivationState()I

    move-result p1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, " act=%d"

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    return-void
.end method

.method public final W(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getFriction()F

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " contact[fric="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRestitution()F

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " rest="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactDamping()F

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " damp="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactProcessingThreshold()F

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " pth="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactStiffness()F

    move-result p1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " stiff="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(C)V

    return-void
.end method

.method public final X(Lcom/jme3/bullet/objects/PhysicsRigidBody;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " grav[%s] "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isGravityProtected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "NOT"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "protected ccd[mth="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " r="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularDamping()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearDamping()F

    move-result v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, "] damp[l="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearSleepingThreshold()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularSleepingThreshold()F

    move-result v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, "] sleep[lth="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " ath="

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDeactivationTime()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, " v[%s]"

    invoke-virtual {v3, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->totalAppliedForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, " force[%s]"

    invoke-virtual {v3, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, " lFact[%s]"

    invoke-virtual {v3, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " inert["

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    sget-object v1, Lmf/m;->B:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->divide(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, " w[%s]"

    invoke-virtual {v1, v2, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->totalAppliedTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, " torq[%s]"

    invoke-virtual {v1, v2, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, " aFact[%s]"

    invoke-virtual {p2, v0, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_4
    return-void
.end method

.method public final Y(J)V
    .locals 2

    iget-boolean v0, p0, Lmf/m;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Z(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " userIndex="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex2()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " userIndex2="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex3()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " userIndex3="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic c()Ljme3utilities/debug/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/m;->c0()Lmf/m;

    move-result-object v0

    return-object v0
.end method

.method public c0()Lmf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljme3utilities/debug/d;->c()Ljme3utilities/debug/d;

    move-result-object v0

    check-cast v0, Lmf/m;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/m;->c0()Lmf/m;

    move-result-object v0

    return-object v0
.end method

.method public e0(Lcom/jme3/bullet/BulletAppState;)V
    .locals 1

    const-string v0, "app state"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lmf/m;->o0(Lcom/jme3/bullet/BulletAppState;Ljava/lang/String;)V

    return-void
.end method

.method public f0(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmf/m;->g0(Lcom/jme3/bullet/PhysicsSpace;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    return-void
.end method

.method public g0(Lcom/jme3/bullet/PhysicsSpace;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v2, "indent"

    invoke-static {v8, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getCharacterList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/CollisionSpace;->getGhostObjectList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v4

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v13, "s"

    const-string v14, ""

    const/4 v15, 0x1

    if-ne v2, v15, :cond_0

    move-object v6, v14

    goto :goto_0

    :cond_0
    move-object v6, v13

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v4, v15, :cond_1

    move-object/from16 v16, v14

    goto :goto_1

    :cond_1
    move-object/from16 v16, v13

    :goto_1
    move-object/from16 v2, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v16

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%n%s%s with %d char%s, %d ghost%s, "

    invoke-virtual {v12, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getJointList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v3, v15, :cond_2

    move-object v3, v14

    goto :goto_2

    :cond_2
    move-object v3, v13

    :goto_2
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%d joint%s, "

    invoke-virtual {v4, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v5, v1, Lcom/jme3/bullet/MultiBodySpace;

    if-eqz v5, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/jme3/bullet/MultiBodySpace;

    invoke-virtual {v3}, Lcom/jme3/bullet/MultiBodySpace;->getMultiBodyList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v5, v15, :cond_3

    move-object v5, v14

    goto :goto_3

    :cond_3
    move-object v5, v13

    :goto_3
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%d multi%s, "

    invoke-virtual {v6, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getRigidBodyList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    iget-object v7, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-ne v6, v15, :cond_5

    move-object v6, v14

    goto :goto_4

    :cond_5
    move-object v6, v13

    :goto_4
    filled-new-array {v12, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v12, "%d rigid%s, "

    invoke-virtual {v7, v12, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v4, v1, Lcom/jme3/bullet/PhysicsSoftSpace;

    const-string v7, "%d soft%s, "

    if-eqz v4, :cond_7

    move-object v6, v1

    check-cast v6, Lcom/jme3/bullet/PhysicsSoftSpace;

    invoke-virtual {v6}, Lcom/jme3/bullet/PhysicsSoftSpace;->getSoftBodyList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v12

    move-object/from16 v16, v6

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    move-object/from16 v17, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-ne v12, v15, :cond_6

    move-object v12, v14

    goto :goto_5

    :cond_6
    move-object/from16 v12, v17

    :goto_5
    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_6
    move-object/from16 v6, v16

    goto :goto_8

    :cond_7
    move-object/from16 v17, v13

    instance-of v12, v1, Lcom/jme3/bullet/DeformableSpace;

    if-eqz v12, :cond_9

    move-object v6, v1

    check-cast v6, Lcom/jme3/bullet/DeformableSpace;

    invoke-virtual {v6}, Lcom/jme3/bullet/DeformableSpace;->getSoftBodyList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v12

    iget-object v13, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    move-object/from16 v16, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ne v12, v15, :cond_8

    move-object v12, v14

    goto :goto_7

    :cond_8
    move-object/from16 v12, v17

    :goto_7
    filled-new-array {v6, v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_6

    :cond_9
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getVehicleList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-ne v7, v15, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v14, v17

    :goto_9
    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v7

    const-string v13, "%d vehicle%s"

    invoke-virtual {v12, v13, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lmf/m;->Y(J)V

    invoke-virtual {v0, v8}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/CollisionSpace;->getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    move-result-object v7

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v13, " bphase=%s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/jme3/bullet/PhysicsSpace;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v13

    iget-object v14, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v13}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v15, " grav[%s] timeStep["

    invoke-virtual {v14, v15, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps()I

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep()F

    move-result v13

    invoke-static {v13}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v15, "VAR max=%s"

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_a

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getAccuracy()F

    move-result v14

    invoke-static {v14}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v14, v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%s maxSS=%d"

    invoke-virtual {v15, v14, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->countCollisionListeners()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/CollisionSpace;->countCollisionGroupListeners()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->countTickListeners()I

    move-result v15

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "] listeners[c=%d cg=%d t=%d]"

    invoke-virtual {v12, v14, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v0, v8}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getSolverType()Lcom/jme3/bullet/SolverType;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->getSolverInfo()Lcom/jme3/bullet/SolverInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->numIterations()I

    move-result v14

    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->globalCfm()F

    move-result v15

    move-object/from16 v17, v2

    iget-object v2, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v15}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v12, v14, v15}, [Ljava/lang/Object;

    move-result-object v12

    const-string v14, " solver[%s iters=%d cfm=%s"

    invoke-virtual {v2, v14, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->minBatch()I

    move-result v2

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v14, " batch=%d splitImp[th="

    invoke-virtual {v12, v14, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->isSplitImpulseEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v12, "global"

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->splitImpulseThreshold()F

    move-result v2

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->splitImpulseErp()F

    move-result v2

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v14, " erp=%s]"

    invoke-virtual {v12, v14, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v13}, Lcom/jme3/bullet/SolverInfo;->mode()I

    move-result v2

    iget-object v12, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lcom/jme3/bullet/SolverMode;->describe(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v13, " mode=%s]"

    invoke-virtual {v12, v13, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/CollisionSpace;->getConfiguration()Lcom/jme3/bullet/CollisionConfiguration;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v12

    invoke-virtual {v12, v2}, Lmf/l;->X(Lcom/jme3/bullet/CollisionConfiguration;)Ljava/lang/String;

    move-result-object v2

    iget-object v13, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v14, "%n%s conf[%s]"

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->isCcdWithStaticOnly()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v13, " CCDwso"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/CollisionSpace;->isUsingDeterministicDispatch()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v13, " DeterministicDispatch"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/PhysicsSpace;->isUsingScr()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v13, " SCR"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/CollisionSpace;->getRayTestFlags()I

    move-result v2

    invoke-static {v2}, Lcom/jme3/bullet/RayTestFlag;->describe(I)Ljava/lang/String;

    move-result-object v2

    iget-object v13, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v14, " rayTest=%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v2, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->AXIS_SWEEP_3:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    if-eq v7, v2, :cond_10

    sget-object v2, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->AXIS_SWEEP_3_32:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    if-ne v7, v2, :cond_11

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/CollisionSpace;->getWorldMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-static {v7}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/CollisionSpace;->getWorldMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    iget-object v13, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v14, " worldMin[%s] worldMax[%s]"

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_11
    if-eqz v4, :cond_12

    check-cast v1, Lcom/jme3/bullet/PhysicsSoftSpace;

    invoke-virtual {v1}, Lcom/jme3/bullet/PhysicsSoftSpace;->getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;

    move-result-object v1

    invoke-virtual {v12, v1}, Lmf/l;->Y(Lcom/jme3/bullet/SoftBodyWorldInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v7, "%n%s %s"

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmf/m;->Y(J)V

    :cond_12
    iget-boolean v1, v0, Lmf/m;->z:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v9, :cond_14

    invoke-interface {v9, v4}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_14
    invoke-virtual {v0, v4, v1}, Lmf/m;->k0(Lcom/jme3/bullet/objects/PhysicsCharacter;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    if-eqz v9, :cond_17

    invoke-interface {v9, v4}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_17
    invoke-virtual {v0, v4, v1}, Lmf/m;->l0(Lcom/jme3/bullet/objects/PhysicsGhostObject;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v0, v3, v1, v9}, Lmf/m;->v0(Lcom/jme3/bullet/MultiBody;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_e

    :cond_19
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v9, :cond_1b

    invoke-interface {v9, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_1b
    invoke-virtual {v0, v3, v1}, Lmf/m;->m0(Lcom/jme3/bullet/objects/PhysicsRigidBody;Ljava/lang/String;)V

    goto :goto_f

    :cond_1c
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v9, :cond_1e

    invoke-interface {v9, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1e
    invoke-virtual {v0, v3, v1}, Lmf/m;->n0(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    iget-boolean v1, v0, Lmf/m;->u:Z

    if-eqz v1, :cond_20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lmf/m;->t0(Ljava/util/Collection;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :cond_20
    iget-object v1, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public h0(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/String;)V
    .locals 3

    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/l;->Z(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljme3utilities/debug/c;->J(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmf/m;->Y(J)V

    iget-boolean v0, p0, Lmf/m;->q:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {p0, p1, p2}, Lmf/m;->p0(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/jme3/app/state/AppState;Ljava/lang/String;)V
    .locals 1

    const-string v0, "app state"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/jme3/bullet/BulletAppState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/BulletAppState;

    invoke-virtual {p0, p1, p2}, Lmf/m;->o0(Lcom/jme3/bullet/BulletAppState;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljme3utilities/debug/d;->i(Lcom/jme3/app/state/AppState;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i0(Lcom/jme3/bullet/joints/PhysicsJoint;Ljava/lang/String;)V
    .locals 8

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    iget-boolean v1, p0, Lmf/m;->w:Z

    invoke-virtual {v0, p1, v1}, Lmf/l;->t0(Lcom/jme3/bullet/joints/PhysicsJoint;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lcom/jme3/bullet/joints/SixDofJoint;

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    check-cast p1, Lcom/jme3/bullet/joints/SixDofJoint;

    invoke-virtual {v0, p1}, Lmf/l;->l0(Lcom/jme3/bullet/joints/SixDofJoint;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "%n%s %s"

    invoke-virtual {v5, v6, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Lmf/l;->u0(Lcom/jme3/bullet/joints/SixDofJoint;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean p2, p0, Lmf/m;->v:Z

    if-eqz p2, :cond_3

    move p2, v3

    :goto_0
    if-ge p2, v4, :cond_0

    invoke-static {p2}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, "%n%srot%s: "

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/l;->d0(Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SixDofJoint;->getTranslationalLimitMotor()Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    move-result-object p1

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-static {v3}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "%n%stra%s: "

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v5, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v0, p1, v3}, Lmf/l;->e0(Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lcom/jme3/bullet/joints/New6Dof;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/jme3/bullet/joints/New6Dof;

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/New6Dof;->getPivotOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, " offset[%s]"

    invoke-virtual {v6, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/New6Dof;->calculatedOriginA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, " locA[%s]"

    invoke-virtual {v6, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/New6Dof;->calculatedOriginB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, " locB[%s]"

    invoke-virtual {v6, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/New6Dof;->getAngles(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v6, " angles[%s]"

    invoke-virtual {v5, v6, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, " ro=%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/New6Dof;->calculatedBasisA(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p2}, Lif/t;->h(Lcom/jme3/math/Matrix3f;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v6, " basA[%s]"

    invoke-virtual {v5, v6, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/New6Dof;->calculatedBasisB(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p2

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {p2}, Lif/t;->h(Lcom/jme3/math/Matrix3f;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v5, " basB[%s]"

    invoke-virtual {v2, v5, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean p2, p0, Lmf/m;->v:Z

    if-eqz p2, :cond_3

    :goto_2
    const/4 p2, 0x6

    if-ge v3, p2, :cond_3

    rem-int/lit8 p2, v3, 0x3

    if-ge v3, v4, :cond_2

    const-string v2, "T"

    goto :goto_3

    :cond_2
    const-string v2, "R"

    :goto_3
    invoke-static {p2}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, "%n%s%s%s:"

    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v0, p1, v3}, Lmf/l;->o0(Lcom/jme3/bullet/joints/New6Dof;I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public j0(Lcom/jme3/bullet/objects/MultiBodyCollider;Ljava/lang/String;)V
    .locals 4

    const-string v0, "collider"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "Collider"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/l;->m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmf/l;->x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "/inactive"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isContactResponse()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "/NOresponse"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "/NOspace"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->mass()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " mass=%s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, " loc[%s]"

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Lmf/l;->q0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/m;->Z(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmf/m;->Y(J)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf/m;->h0(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/String;)V

    return-void
.end method

.method public k0(Lcom/jme3/bullet/objects/PhysicsCharacter;Ljava/lang/String;)V
    .locals 5

    const-string v0, "character"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "%n%sCharacter"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/l;->m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmf/l;->x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, " loc[%s]"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljf/h;->n(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, " walk[%s]"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, " v[%s]"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, " angV[%s]"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lmf/m;->Z(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmf/m;->Y(J)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, " grav[%s]"

    invoke-virtual {v3, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Ljf/h;->n(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, " up[%s]"

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " jumpSp="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getJumpSpeed()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getAngularDamping()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getLinearDamping()F

    move-result v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, "] damp[l="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "] max[fallSp="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getFallSpeed()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " pen="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getMaxPenetrationDepth()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " slope="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getMaxSlope()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " stepHt="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getStepHeight()F

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->isUsingGhostSweepTest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "gsTest"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmf/l;->q0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/m;->h0(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->countIgnored()I

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    const-string v3, "s"

    :goto_0
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " with %d ignore%s"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v1, p0, Lmf/m;->s:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lmf/m;->r0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public l0(Lcom/jme3/bullet/objects/PhysicsGhostObject;Ljava/lang/String;)V
    .locals 7

    const-string v0, "ghost"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "%n%sGhost"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/l;->m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmf/l;->x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " loc[%s]"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-static {v3}, Ljf/g;->j(Lcom/jme3/math/Quaternion;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljf/g;->f(Lcom/jme3/math/Quaternion;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, " orient[%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    invoke-virtual {p0, p1}, Lmf/m;->Z(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmf/m;->Y(J)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmf/m;->h0(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v4, v2, v3, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljme3utilities/debug/c;->g(Lcom/jme3/bounding/BoundingBox;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " aabb[%s]"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_2
    invoke-virtual {v0, p1}, Lmf/l;->q0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->countIgnored()I

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const-string v3, ""

    goto :goto_0

    :cond_3
    const-string v3, "s"

    :goto_0
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " with %d ignore%s"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v1, p0, Lmf/m;->s:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lmf/m;->r0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public m0(Lcom/jme3/bullet/objects/PhysicsRigidBody;Ljava/lang/String;)V
    .locals 8

    const-string v0, "body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "Vehicle "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "Rigid "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lmf/i;->a(Lcom/jme3/bullet/objects/PhysicsRigidBody;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/l;->m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmf/l;->x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " msLoc[%s]"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " loc[%s]"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_1
    invoke-virtual {p1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-static {v1}, Ljf/g;->j(Lcom/jme3/math/Quaternion;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Ljf/g;->f(Lcom/jme3/math/Quaternion;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, " orient[%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_2
    invoke-virtual {p0, p1}, Lmf/m;->Z(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmf/m;->Y(J)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/m;->V(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    invoke-virtual {p0, p1}, Lmf/m;->W(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1, p2}, Lmf/m;->X(Lcom/jme3/bullet/objects/PhysicsRigidBody;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmf/m;->h0(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v4, v3, v1, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljme3utilities/debug/c;->g(Lcom/jme3/bounding/BoundingBox;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " aabb[%s]"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_5
    invoke-virtual {v0, p1}, Lmf/l;->q0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " with"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    const-string v1, "s"

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getNumWheels()I

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ne v4, v3, :cond_6

    move-object v7, v2

    goto :goto_1

    :cond_6
    move-object v7, v1

    :goto_1
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, " %d wheel%s"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    if-lez v4, :cond_7

    invoke-virtual {p0, v0, p2, v4}, Lmf/m;->y0(Lcom/jme3/bullet/objects/PhysicsVehicle;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(C)V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->countIgnored()I

    move-result v0

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v0, v3, :cond_9

    move-object v6, v2

    goto :goto_3

    :cond_9
    move-object v6, v1

    :goto_3
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, " %d ignore%s"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v4, p0, Lmf/m;->s:Z

    if-eqz v4, :cond_a

    if-lez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lmf/m;->r0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsBody;->countJoints()I

    move-result v0

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v0, v3, :cond_b

    move-object v1, v2

    :cond_b
    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " and %d joint%s"

    invoke-virtual {v4, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v1, p0, Lmf/m;->t:Z

    if-eqz v1, :cond_c

    if-lez v0, :cond_c

    invoke-virtual {p0, p1, p2}, Lmf/m;->s0(Lcom/jme3/bullet/objects/PhysicsBody;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public n0(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "body"

    invoke-static {v1, v3}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v3, "indent"

    invoke-static {v2, v3}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v3, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, "%n%sSoft "

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->boundingBox(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljme3utilities/debug/c;->g(Lcom/jme3/bounding/BoundingBox;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, " mass="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getMass()F

    move-result v5

    invoke-static {v5}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, " marg="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->margin()F

    move-result v5

    invoke-static {v5}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lmf/m;->Z(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lmf/m;->Y(J)V

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, "%n%s  vol="

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->volume()F

    move-result v5

    invoke-static {v5}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, " wind["

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->windVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-static {v5}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {v3, v1}, Lmf/l;->m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lmf/l;->x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countTetras()I

    move-result v7

    iget-object v8, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v15, "s"

    const-string v16, ""

    const/4 v14, 0x1

    if-ne v5, v14, :cond_0

    move-object/from16 v10, v16

    goto :goto_0

    :cond_0
    move-object v10, v15

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-ne v6, v14, :cond_1

    move-object/from16 v12, v16

    goto :goto_1

    :cond_1
    move-object v12, v15

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-ne v7, v14, :cond_2

    move-object/from16 v5, v16

    goto :goto_2

    :cond_2
    move-object v5, v15

    :goto_2
    move v6, v14

    move-object v14, v5

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, " with %d link%s, %d face%s, %d tetra%s"

    invoke-virtual {v8, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-static {v4}, Ljf/g;->j(Lcom/jme3/math/Quaternion;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljf/g;->f(Lcom/jme3/math/Quaternion;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v7, " orient[%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftConfig()Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/l;->h0(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%n%s %s"

    invoke-virtual {v7, v8, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Lmf/l;->j0(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getSoftMaterial()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/l;->g0(Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/l;->Y(Lcom/jme3/bullet/SoftBodyWorldInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v8, "%n%s %s "

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v7, "NOT"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v7, "protected"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmf/m;->Y(J)V

    invoke-virtual {v3, v1}, Lmf/l;->q0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "%n%s%s"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsBody;->countJoints()I

    move-result v3

    iget-object v4, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v3, v6, :cond_5

    move-object/from16 v7, v16

    goto :goto_3

    :cond_5
    move-object v7, v15

    :goto_3
    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, " with %d joint%s"

    invoke-virtual {v4, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v4, v0, Lmf/m;->t:Z

    const/16 v5, 0x2c

    if-eqz v4, :cond_6

    if-lez v3, :cond_6

    invoke-virtual/range {p0 .. p2}, Lmf/m;->s0(Lcom/jme3/bullet/objects/PhysicsBody;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v3, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(C)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v3

    iget-object v4, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v3, v6, :cond_7

    move-object/from16 v8, v16

    goto :goto_5

    :cond_7
    move-object v8, v15

    :goto_5
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, " %d cluster%s"

    invoke-virtual {v4, v8, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v4, v0, Lmf/m;->r:Z

    if-eqz v4, :cond_8

    if-lez v3, :cond_8

    invoke-virtual/range {p0 .. p2}, Lmf/m;->q0(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iget-object v3, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(C)V

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v3

    iget-object v4, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v3, v6, :cond_9

    move-object/from16 v15, v16

    :cond_9
    filled-new-array {v5, v15}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, " %d node%s"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countPinnedNodes()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v5, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, " (%d pinned)"

    invoke-virtual {v5, v6, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_a
    iget-boolean v4, v0, Lmf/m;->y:Z

    if-eqz v4, :cond_b

    if-lez v3, :cond_b

    invoke-virtual/range {p0 .. p2}, Lmf/m;->w0(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public o0(Lcom/jme3/bullet/BulletAppState;Ljava/lang/String;)V
    .locals 3

    const-string v0, "indent"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, " enabled "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/BulletAppState;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "debug "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/BulletAppState;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, "speed=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/bullet/BulletAppState;->getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v2, " bphase=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/bullet/BulletAppState;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/m;->g0(Lcom/jme3/bullet/PhysicsSpace;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string p2, " disabled"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final p0(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmf/l;->Z(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-static {v6}, Ljf/h;->E(Lcom/jme3/math/Vector3f;)Z

    move-result v7

    const/16 v8, 0x5d

    if-nez v7, :cond_0

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v9, " offset["

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v6}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->print(C)V

    :cond_0
    invoke-virtual {v3, v5}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-static {v3}, Ljf/g;->j(Lcom/jme3/math/Quaternion;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v7, " rot["

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v3}, Ljf/g;->f(Lcom/jme3/math/Quaternion;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->print(C)V

    :cond_1
    invoke-virtual {v4, v5}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljme3utilities/debug/c;->J(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljme3utilities/debug/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmf/m;->Y(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q0(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyClusterCenters(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyClusterMasses(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p2, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%n%s  [%d] com["

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-static {v1, v3}, Lmf/m;->d0(Ljava/nio/FloatBuffer;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "] mass="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " damp[ang="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->AngularDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {p1, v4, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " lin="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->LinearDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {p1, v4, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " node="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->NodeDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {p1, v4, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "] match="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->Matching:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {p1, v4, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " scif="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->SelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {p1, v4, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " maxSci="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->MaxSelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {p1, v4, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodesInCluster(I)I

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    const-string v4, "s"

    :goto_1
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "  %d node%s"

    invoke-virtual {v5, v6, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-boolean v4, p0, Lmf/m;->v:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v3}, Lmf/m;->x0(Lcom/jme3/bullet/objects/PhysicsSoftBody;I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final r0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->listIgnoredPcos()[Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v0}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v4

    iget-boolean v5, p0, Lmf/m;->w:Z

    invoke-virtual {v4, v3, v5}, Lmf/l;->v0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final s0(Lcom/jme3/bullet/objects/PhysicsBody;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsBody;->listJoints()[Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v0

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lmf/m;->w:Z

    invoke-virtual {v1, v4, p1, v5}, Lmf/l;->s0(Lcom/jme3/bullet/joints/PhysicsJoint;Lcom/jme3/bullet/objects/PhysicsBody;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v6, "%n%s%s"

    filled-new-array {p2, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t0(Ljava/util/Collection;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/joints/PhysicsJoint;

    if-eqz p3, :cond_1

    invoke-interface {p3, v0}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lmf/m;->i0(Lcom/jme3/bullet/joints/PhysicsJoint;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final u0(Lcom/jme3/bullet/MultiBodyLink;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 3

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->jointType()Lcom/jme3/bullet/MultiBodyJointType;

    move-result-object v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Link[%d] %s->"

    invoke-virtual {v2, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->getParentLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmf/m;->Y(J)V

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->getCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf/m;->j0(Lcom/jme3/bullet/objects/MultiBodyCollider;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final v0(Lcom/jme3/bullet/MultiBody;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 8

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "MultiBody"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/l;->p0(Lcom/jme3/bullet/MultiBody;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->hasFixedBase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "/fixed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->isUsingGyroTerm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "/NOgyro"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->canSleep()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "/NOsleep"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->isUsingRK4()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v1, "/RK4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->listColliders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->countConfiguredLinks()I

    move-result v1

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "s"

    const-string v5, ""

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v0, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v1, v6, :cond_5

    move-object v4, v5

    :cond_5
    filled-new-array {v3, v0, v7, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, " with %d collider%s, %d link%s"

    invoke-virtual {v2, v3, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmf/m;->Y(J)V

    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->angularDamping()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->linearDamping()F

    move-result v2

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, " damp[l="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->maxAppliedImpulse()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->maxCoordinateVelocity()F

    move-result v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " max[imp="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v4, " v="

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->getBaseCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    invoke-interface {p3, v0}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p0, v0, p2}, Lmf/m;->j0(Lcom/jme3/bullet/objects/MultiBodyCollider;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/MultiBody;->getLink(I)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lmf/m;->u0(Lcom/jme3/bullet/MultiBodyLink;Ljava/lang/String;Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final w0(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLocations(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyMasses(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLinks(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    mul-int/lit8 v9, v1, 0x2

    invoke-static {v2, v7, v9, v8}, Ljf/d;->f(Ljava/nio/IntBuffer;III)I

    move-result v9

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    invoke-static {v3, v8}, Lmf/m;->d0(Ljava/nio/FloatBuffer;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v8}, Lmf/m;->d0(Ljava/nio/FloatBuffer;I)Ljava/lang/String;

    move-result-object v16

    iget-object v14, v0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v11, p2

    move-object v10, v14

    move-object v14, v9

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v9

    const-string v11, "%n%s  [%d] deg=%d mass=%s loc[%s] v[%s]"

    invoke-virtual {v10, v11, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic x()Ljme3utilities/debug/c;
    .locals 1

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    return-object v0
.end method

.method public final x0(Lcom/jme3/bullet/objects/PhysicsSoftBody;I)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->listNodesInCluster(ILjava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string p2, "(all)"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(C)V

    move p2, v2

    :goto_1
    if-ge v2, p1, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(C)V

    goto :goto_2

    :cond_2
    move p2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d"

    invoke-virtual {v0, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    :cond_3
    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%d-%d"

    invoke-virtual {v4, v5, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v2, v0

    :cond_4
    :goto_3
    add-int/2addr v2, v3

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(C)V

    return-void
.end method

.method public final y0(Lcom/jme3/bullet/objects/PhysicsVehicle;Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    invoke-virtual {p0}, Lmf/m;->z0()Lmf/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljme3utilities/debug/d;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    iget-object v3, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%n%s[%d] "

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getWheel(I)Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/l;->f0(Lcom/jme3/bullet/objects/VehicleWheel;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, "%n%s "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Lmf/l;->i0(Lcom/jme3/bullet/objects/VehicleWheel;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " raycast="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/objects/PhysicsVehicle;->castRay(I)F

    move-result v4

    iget-object v5, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    const-string v5, " skid="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/VehicleWheel;->getSkidInfo()F

    move-result v3

    iget-object v4, p0, Ljme3utilities/debug/d;->m:Ljava/io/PrintStream;

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Ljme3utilities/debug/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public z0()Lmf/l;
    .locals 1

    invoke-super {p0}, Ljme3utilities/debug/d;->x()Ljme3utilities/debug/c;

    move-result-object v0

    check-cast v0, Lmf/l;

    return-object v0
.end method
