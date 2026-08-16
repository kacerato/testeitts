.class public Lmf/l;
.super Ljme3utilities/debug/c;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmf/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmf/l;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljme3utilities/debug/c;-><init>()V

    return-void
.end method

.method public static U(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/jme3/material/Material;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/jme3/material/Material;

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/jme3/bullet/animation/PhysicsLink;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/jme3/scene/Spatial;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "String"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public static r0(FF)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, " h=%s r=%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public R(Lcom/jme3/scene/control/Control;)Z
    .locals 1

    const-string v0, "control"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p1}, Lmf/h;->b(Lcom/jme3/scene/control/Control;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmf/h;->h(Lcom/jme3/scene/control/Control;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V
    .locals 3

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getApplicationData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Body"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Control"

    const-string v2, "C"

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Physics"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Object"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lmf/l;->m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lmf/l;->x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x5d

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "_NOT_IN_WORLD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public W()Lmf/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljme3utilities/debug/c;->a()Ljme3utilities/debug/c;

    move-result-object v0

    check-cast v0, Lmf/l;

    return-object v0
.end method

.method public X(Lcom/jme3/bullet/CollisionConfiguration;)Ljava/lang/String;
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/CollisionConfiguration;->penetrationDepthSolver()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "epa"

    goto :goto_0

    :cond_1
    const-string v0, "minkowski"

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/CollisionConfiguration;->maxManifolds()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s maxM=%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lcom/jme3/bullet/SoftBodyWorldInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SbwInfo grav["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->waterOffset()F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " norm["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyWaterNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] water="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->waterDensity()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " air="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->airDensity()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " maxDisp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->maxDisplacement()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Z(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;
    .locals 9

    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1}, Lmf/j;->a(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/Box2dShape;

    const/16 v2, 0x20

    const-string v3, "UN"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/Box2dShape;

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljme3utilities/debug/c;->D(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljme3utilities/debug/c;->D(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getAxis()I

    move-result v4

    invoke-static {v4}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getHeight()F

    move-result v4

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getRadius()F

    move-result v1

    invoke-static {v4, v1}, Lmf/l;->r0(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    const-string v5, "[%d]"

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->countChildren()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getAxis()I

    move-result v4

    invoke-static {v4}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getHeight()F

    move-result v4

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getRadius()F

    move-result v1

    invoke-static {v4, v1}, Lmf/l;->r0(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_4
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;

    const-string v4, " a="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->aRadius()F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " b="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->bRadius()F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " h="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/ConicalFrustum;->height()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/Convex2dShape;

    const/16 v6, 0x5d

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/Convex2dShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->getBaseShape()Lcom/jme3/bullet/collision/shapes/ConvexShape;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/l;->Z(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->getAxis()I

    move-result v5

    invoke-static {v5}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljme3utilities/debug/c;->D(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->countSubmeshes()I

    move-result v4

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->countMeshTriangles()I

    move-result v5

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;->countMeshVertices()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "[numS=%s numT=%d numV=%d]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->countRows()I

    move-result v4

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->countColumns()I

    move-result v5

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;->upAxis()I

    move-result v1

    invoke-static {v1}, Lif/t;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "[%dx%d %sup]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->countHullVertices()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-eqz v1, :cond_c

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->countSubmeshes()I

    move-result v4

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->countMeshTriangles()I

    move-result v5

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->countMeshVertices()I

    move-result v6

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->getBvh()Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ""

    goto :goto_0

    :cond_b
    move-object v1, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "[numS=%s numT=%d numV=%d %scompressed]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_c
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;

    if-eqz v1, :cond_d

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->getShapeA()Lcom/jme3/bullet/collision/shapes/ConvexShape;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/l;->Z(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]+["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->getShapeB()Lcom/jme3/bullet/collision/shapes/ConvexShape;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/l;->Z(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    const-string v4, " r["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->countSpheres()I

    move-result v4

    invoke-virtual {p0}, Ljme3utilities/debug/c;->S()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_f

    if-lez v7, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v1, v7}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->getRadius(I)F

    move-result v8

    invoke-static {v8}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_10
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    if-eqz v1, :cond_11

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->getPlane()Lcom/jme3/math/Plane;

    move-result-object v1

    const-string v4, " normal["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-static {v4}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] constant="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_11
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    if-eqz v1, :cond_12

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->countMeshVertices()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_12
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    const-string v4, " r="

    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->getRadius()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_13
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/SphericalSegment;

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Lcom/jme3/bullet/collision/shapes/SphericalSegment;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->sphereRadius()F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " y["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->yMin()F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/SphericalSegment;->yMax()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_14
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/CustomConvexShape;

    if-nez v1, :cond_15

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    :goto_2
    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v1, :cond_16

    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-nez v1, :cond_16

    instance-of v1, p1, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-eqz v1, :cond_18

    :cond_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isContactFilterEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "filtered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string v1, " marg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    const-string v3, " userIndex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex2()I

    move-result p1

    if-eq p1, v2, :cond_1a

    const-string v1, " userIndex2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a()Ljme3utilities/debug/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/l;->W()Lmf/l;

    move-result-object v0

    return-object v0
.end method

.method public c0(Lcom/jme3/bullet/joints/PhysicsJoint;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Joint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lif/t;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, " DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/l;->W()Lmf/l;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->isEnableMotor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLowerLimit()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getUpperLimit()F

    move-result v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    const-string v3, " unlimited"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, " lo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, " tgtV="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getTargetVelocity()F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cfm="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getNormalCFM()F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " damp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getDamping()F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " maxMF="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxMotorForce()F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    const-string v1, " lim[cfm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getStopCFM()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " erp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getERP()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxLimitForce()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getRestitution()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " soft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLimitSoftness()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p1, " DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;I)Ljava/lang/String;
    .locals 5

    const-string v0, "axis index"

    invoke-static {p2, v0}, Lif/E;->a(ILjava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    const-string v4, " unlimited"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, " lo="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hi="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v4, " tgtV="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getTargetVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cfm="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getNormalCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " damp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getDamping()F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " maxMF="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getMaxMotorForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v4

    invoke-static {v4}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_2

    const-string v2, " lim[cfm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getStopCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " erp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getERP(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result p2

    invoke-static {p2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " rest="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getRestitution()F

    move-result p2

    invoke-static {p2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " soft="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLimitSoftness()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p1, " DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f0(Lcom/jme3/bullet/objects/VehicleWheel;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->isFrontWheel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "frnt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "rear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRadius()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] axleDir["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getAxle(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fSlip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getFrictionSlip()F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rollInf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRollInfluence()F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sus[damp[co="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelsDampingCompression()F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " re="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelsDampingRelaxation()F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] down["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] maxF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getMaxSuspensionForce()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] maxTrav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getMaxSuspensionTravelCm()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRestLength()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionStiffness()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->angularStiffness()F

    move-result v0

    invoke-static {v0}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->linearStiffness()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;->volumeStiffness()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Material stiffness[ang=%s lin=%s vol=%s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h0(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Config aero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->aerodynamics()Lcom/jme3/bullet/objects/infos/Aero;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->collisionFlags()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/bullet/objects/infos/ConfigFlag;->describe(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->MaxVolumeRatio:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jme3/bullet/objects/infos/Sbcp;->TimeScale:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jme3/bullet/objects/infos/Sbcp;->VelocityCorrection:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " maxVolRatio=%s timeScale=%s velCorr=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->Damping:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->Drag:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->DynamicFriction:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->Lift:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->PoseMatching:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->Pressure:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->VolumeConservation:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "  coef[damp=%s drag=%s fric=%s lift=%s pose=%s pres=%s volCons=%s]"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/jme3/bullet/objects/VehicleWheel;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " brake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getBrake()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " engF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getEngineForce()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " steer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getSteerAngle()F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " susLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionLength()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j0(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->AnchorHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->KineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->RigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->SoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " hardness[a=%s clk=%s clr=%s cls=%s k=%s r=%s s=%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v2

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->get(Lcom/jme3/bullet/objects/infos/Sbcp;)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  impSplit[clk=%s clr=%s cls=%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->clusterIterations()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->driftIterations()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->positionIterations()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->velocityIterations()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "  iters[cl=%d drift=%d pos=%d vel=%d]"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Lcom/jme3/bullet/joints/Anchor;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/l;->c0(Lcom/jme3/bullet/joints/PhysicsJoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Anchor;->getSoftBody()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Anchor;->nodeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " b="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Anchor;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    const-string p2, " piv["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/Anchor;->copyPivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-static {p2}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " infl="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Anchor;->influence()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l0(Lcom/jme3/bullet/joints/SixDofJoint;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "angles["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getAngles(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] lo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getAngularLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] hi["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getAngularUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getApplicationData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " aData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lmf/l;->U(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final n0(Lcom/jme3/bullet/joints/Constraint;Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/l;->c0(Lcom/jme3/bullet/joints/PhysicsJoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->isCollisionBetweenLinkedBodies()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " collide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " NOcollide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getOverrideIterations()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, " iters="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, " a:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, " b:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v2, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    const-string v1, " NO_DYNAMIC_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->isFeedback()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getAppliedImpulse()F

    move-result v1

    const-string v2, " impulse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getBreakingImpulseThreshold()F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_7

    const-string v2, " bit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz p2, :cond_8

    const-string p2, " #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o0(Lcom/jme3/bullet/joints/New6Dof;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "DOF index"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v1

    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v2, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v2

    cmpg-float v3, v2, v1

    const/16 v4, 0x5d

    if-gez v3, :cond_0

    const-string v3, " free"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    cmpl-float v3, v2, v1

    if-nez v3, :cond_1

    const-string v3, " lock["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, " lims["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, " motor["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->isMotorEnabled(I)Z

    move-result v3

    const-string v5, "off"

    const-string v6, " erp="

    const-string v7, " cfm="

    if-eqz v3, :cond_3

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->isServoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "servo target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jme3/bullet/joints/motors/MotorParam;->ServoTarget:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v3, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "tgtV="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jme3/bullet/joints/motors/MotorParam;->TargetVelocity:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v3, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jme3/bullet/joints/motors/MotorParam;->MotorCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v3, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jme3/bullet/joints/motors/MotorParam;->MotorErp:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v3, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " maxF="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jme3/bullet/joints/motors/MotorParam;->MaxMotorForce:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v3, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v3

    invoke-static {v3}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_4

    const-string v1, " lim[bounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->Bounce:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->StopCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->StopErp:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " spring["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->isSpringEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "eq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->Equilibrium:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->Stiffness:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result v1

    invoke-static {v1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " damp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->Damping:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p0(Lcom/jme3/bullet/MultiBody;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->collisionGroup()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v3, " group=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBody;->collideWithGroups()I

    move-result p1

    if-eq p1, v2, :cond_1

    const-string v1, " gMask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v3, " group=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollideWithGroups()I

    move-result p1

    if-eq p1, v2, :cond_1

    const-string v1, " gMask=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lcom/jme3/bullet/joints/PhysicsJoint;Lcom/jme3/bullet/objects/PhysicsBody;Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/l;->c0(Lcom/jme3/bullet/joints/PhysicsJoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string p3, " single-ended"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->findOtherBody(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->findEnd(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/joints/JointEnd;

    move-result-object p2

    instance-of p3, p1, Lcom/jme3/bullet/joints/Constraint;

    const/16 v1, 0x5d

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lcom/jme3/bullet/joints/Constraint;

    const-string v3, " piv["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2, v2}, Lcom/jme3/bullet/joints/Constraint;->getPivot(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-static {p3}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    instance-of p3, p1, Lcom/jme3/bullet/joints/New6Dof;

    if-eqz p3, :cond_2

    check-cast p1, Lcom/jme3/bullet/joints/New6Dof;

    const-string p3, " rot["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, v2}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMatrix(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    invoke-static {p1}, Lif/t;->h(Lcom/jme3/math/Matrix3f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lcom/jme3/bullet/joints/SoftAngularJoint;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/jme3/bullet/joints/SoftAngularJoint;

    const-string p2, " axis["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/SoftAngularJoint;->copyAxis(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/jme3/bullet/joints/SoftLinearJoint;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/jme3/bullet/joints/SoftLinearJoint;

    const-string p2, " loc["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/SoftLinearJoint;->copyLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t0(Lcom/jme3/bullet/joints/PhysicsJoint;Z)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/jme3/bullet/joints/Anchor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/joints/Anchor;

    invoke-virtual {p0, p1, p2}, Lmf/l;->k0(Lcom/jme3/bullet/joints/Anchor;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/joints/Constraint;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {p0, p1, p2}, Lmf/l;->n0(Lcom/jme3/bullet/joints/Constraint;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {p0, p1, p2}, Lmf/l;->w0(Lcom/jme3/bullet/joints/SoftPhysicsJoint;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public u(Lcom/jme3/scene/control/Control;)Ljava/lang/String;
    .locals 1

    const-string v0, "control"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p1}, Lmf/h;->c(Lcom/jme3/scene/control/Control;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/jme3/bullet/joints/SixDofJoint;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "offset["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getPivotOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] lo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getLinearLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] hi["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getLinearUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1}, Ljf/h;->m(Lcom/jme3/math/Vector3f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final w0(Lcom/jme3/bullet/joints/SoftPhysicsJoint;Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/l;->c0(Lcom/jme3/bullet/joints/PhysicsJoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSoftBodyA()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-result-object v1

    const-string v2, " a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBody(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v3

    const-string v4, " b="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v3, p2}, Lmf/l;->V(Ljava/lang/StringBuilder;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Z)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->isSoftSoft()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, " cfm="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getCFM()F

    move-result p2

    invoke-static {p2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " erp="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getERP()F

    move-result p2

    invoke-static {p2}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " split="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSplit()F

    move-result p1

    invoke-static {p1}, Lif/t;->e(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public x0(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lmf/l;->U(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
