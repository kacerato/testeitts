.class public final Lmf/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmf/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmf/j;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Shape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lif/t;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "Collision"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lif/t;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static b(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    const-string v1, "axisIndex = "

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getRadius()F

    move-result v5

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getAxis()I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_3

    if-ne p0, v2, :cond_2

    invoke-virtual {p1, v5, v5, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto/16 :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1, v5, v0, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1, v0, v5, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getRadius()F

    move-result v5

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getAxis()I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v4, :cond_7

    if-ne p0, v2, :cond_6

    invoke-virtual {p1, v5, v5, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p1, v5, v0, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v0, v5, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->countSpheres()I

    move-result v0

    if-ne v0, v4, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->getRadius(I)F

    move-result p0

    invoke-virtual {p1, p0, p0, p0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/SimplexCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->getRadius()F

    move-result p0

    invoke-virtual {p1, p0, p0, p0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :cond_e
    :goto_0
    return-object p1

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lacks half extents."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F
    .locals 4

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getHeight()F

    move-result p0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getHeight()F

    move-result p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->getAxis()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result p0

    :goto_0
    mul-float/2addr p0, v1

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->countSpheres()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->getRadius(I)F

    move-result p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->getRadius()F

    move-result p0

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_1
    return p0
.end method

.method public static d(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)[F
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v3

    invoke-static {v3}, Lmf/j;->k(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I
    .locals 1

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getAxis()I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getAxis()I

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->getAxis()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;)J
    .locals 3

    const-string v0, "string"

    invoke-static {p0, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    aget-object p0, v0, p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F
    .locals 3

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;->getRadius()F

    move-result p0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->getRadius()F

    move-result p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    const/4 v1, 0x1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmf/j;->b(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    iget p0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "axisIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget p0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_4
    iget p0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->countSpheres()I

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->getRadius(I)F

    move-result p0

    goto :goto_1

    :cond_6
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->getRadius()F

    move-result p0

    goto :goto_1

    :cond_7
    move p0, v2

    :goto_1
    return p0
.end method

.method public static h(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 5

    const-string v0, "old shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "new half extents"

    invoke-static {p1, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_5

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    instance-of v2, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v0

    new-instance v1, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-direct {v1, p1, v0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;-><init>(Lcom/jme3/math/Vector3f;I)V

    :cond_2
    :goto_0
    move-object v0, v1

    goto :goto_5

    :cond_3
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    new-instance v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    iget p1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    goto :goto_5

    :cond_5
    :goto_2
    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "axisIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_3

    :cond_8
    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    :goto_3
    cmpl-float p1, v4, p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/high16 p1, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    new-instance p1, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-direct {p1, v4, v3, v2}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;-><init>(FFI)V

    :goto_4
    move-object v0, p1

    goto :goto_5

    :cond_a
    mul-float/2addr v3, p1

    new-instance p1, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-direct {p1, v4, v3, v2}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;-><init>(FFI)V

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isContactFilterEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    instance-of p1, v0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-nez p1, :cond_b

    instance-of p1, v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    :cond_b
    return-object v0
.end method

.method public static i(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 3

    const-string v0, "old shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "new height"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    div-float/2addr p1, v1

    invoke-static {p0, p1}, Lmf/j;->j(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lmf/j;->g(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v0

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v1

    new-instance v2, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-direct {v2, v0, p1, v1}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;-><init>(FFI)V

    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lmf/j;->g(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v0

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v1

    new-instance v2, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-direct {v2, v0, p1, v1}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;-><init>(FFI)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmf/j;->g(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v0

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v1

    new-instance v2, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-direct {v2, v0, p1, v1}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;-><init>(FFI)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_4

    div-float/2addr p1, v1

    invoke-static {p0, p1}, Lmf/j;->j(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isContactFilterEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    :cond_5
    return-object p1
.end method

.method public static j(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 3

    const-string v0, "old shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "new radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(F)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v0

    invoke-static {p0}, Lmf/j;->c(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v1

    new-instance v2, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-direct {v2, p1, v1, v0}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;-><init>(FFI)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v0

    invoke-static {p0}, Lmf/j;->c(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v1

    new-instance v2, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-direct {v2, p1, v1, v0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;-><init>(FFI)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmf/j;->e(Lcom/jme3/bullet/collision/shapes/CollisionShape;)I

    move-result v0

    invoke-static {p0}, Lmf/j;->c(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v1

    new-instance v2, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-direct {v2, p1, v1, v0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;-><init>(FFI)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isContactFilterEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    instance-of p1, v0, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    :cond_5
    return-object v0
.end method

.method public static k(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scaledVolume()F

    move-result p0

    return p0
.end method
