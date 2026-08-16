.class public Lcom/jme3/bullet/animation/RangeOfMotion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field public static final logger:Ljava/util/logging/Logger;

.field private static final maxMotorForces:Lcom/jme3/math/Vector3f;

.field private static final tagMaxX:Ljava/lang/String; = "maxX"

.field private static final tagMaxY:Ljava/lang/String; = "maxY"

.field private static final tagMaxZ:Ljava/lang/String; = "maxZ"

.field private static final tagMinX:Ljava/lang/String; = "minX"

.field private static final tagMinY:Ljava/lang/String; = "minY"

.field private static final tagMinZ:Ljava/lang/String; = "minZ"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private maxX:F

.field private maxY:F

.field private maxZ:F

.field private minX:F

.field private minY:F

.field private minZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/animation/RangeOfMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/RangeOfMotion;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/animation/RangeOfMotion;->translateIdentity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, 0x4cbebc20    # 1.0E8f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxMotorForces:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 3
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 4
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 5
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 6
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 7
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 62
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 63
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 64
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 65
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 66
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    .line 67
    const-string v1, "max rotation"

    const v2, 0x40490fdb    # (float)Math.PI

    invoke-static {v0, v1, v0, v2}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 68
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    neg-float v0, p1

    .line 69
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 70
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 71
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 72
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 73
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 46
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 47
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 48
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 49
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 50
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    .line 51
    const-string v1, "max X rotation"

    const v2, 0x40490fdb    # (float)Math.PI

    invoke-static {p1, v1, v0, v2}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 52
    const-string v1, "max Y rotation"

    invoke-static {p2, v1, v0, v2}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 53
    const-string v1, "max Z rotation"

    invoke-static {p3, v1, v0, v2}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 54
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    neg-float p1, p1

    .line 55
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 56
    iput p2, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    neg-float p1, p2

    .line 57
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 58
    iput p3, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    neg-float p1, p3

    .line 59
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 27
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 28
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 29
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 30
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 31
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    .line 32
    const-string v0, "max X rotation"

    const v1, 0x40490fdb    # (float)Math.PI

    invoke-static {p1, v0, p2, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 33
    const-string v0, "min X rotation"

    const v2, -0x3fb6f025

    invoke-static {p2, v0, v2, p1}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 34
    const-string v0, "max Y rotation"

    invoke-static {p3, v0, p4, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 35
    const-string v0, "min Y rotation"

    invoke-static {p4, v0, v2, p3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 36
    const-string v0, "max Z rotation"

    invoke-static {p5, v0, p6, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 37
    const-string v0, "min Z rotation"

    invoke-static {p6, v0, v2, p5}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 38
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 39
    iput p2, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 40
    iput p3, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 41
    iput p4, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 42
    iput p5, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 43
    iput p6, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 76
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 77
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 78
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 79
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 80
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 81
    iput v1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 82
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "axisIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput v1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 85
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    goto :goto_0

    .line 86
    :cond_2
    iput v1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 87
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 10
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 11
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 12
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 13
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 14
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    .line 15
    const-string v0, "angles"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 16
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    const-string v1, "X rotation"

    const v2, -0x3fb6f025

    const v3, 0x40490fdb    # (float)Math.PI

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 17
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    const-string v1, "Y rotation"

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 18
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    const-string v1, "Z rotation"

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 19
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    .line 20
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    .line 21
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    .line 22
    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    .line 23
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    .line 24
    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    return-void
.end method


# virtual methods
.method public getMaxRotation(I)F
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "axisIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    :goto_0
    return p1
.end method

.method public getMinRotation(I)F
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "axisIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    :goto_0
    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "maxX"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    const-string v0, "minX"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    const-string v0, "maxY"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    const-string v0, "minY"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    const-string v0, "maxZ"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    const-string v0, "minZ"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    return-void
.end method

.method public setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/bullet/joints/New6Dof;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/joints/New6Dof;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/animation/RangeOfMotion;->setupNew6Dof(Lcom/jme3/bullet/joints/New6Dof;ZZZ)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/jme3/bullet/joints/SixDofJoint;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/animation/RangeOfMotion;->setupJoint(Lcom/jme3/bullet/joints/SixDofJoint;ZZZ)V

    :goto_0
    return-void
.end method

.method public setupJoint(Lcom/jme3/bullet/joints/SixDofJoint;ZZZ)V
    .locals 5

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    iget v2, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    iget v3, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    iget v3, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    iget v4, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    invoke-direct {v1, v2, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAngle()F

    move-result p2

    iput p2, v0, Lcom/jme3/math/Vector3f;->x:F

    iput p2, v1, Lcom/jme3/math/Vector3f;->x:F

    :cond_0
    iget p2, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLowerLimit(F)V

    iget p2, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v3, p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setUpperLimit(F)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object p2

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAngle()F

    move-result p3

    iput p3, v0, Lcom/jme3/math/Vector3f;->y:F

    iput p3, v1, Lcom/jme3/math/Vector3f;->y:F

    :cond_1
    iget p3, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, p3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLowerLimit(F)V

    iget p3, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, p3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setUpperLimit(F)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object p2

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAngle()F

    move-result p3

    iput p3, v0, Lcom/jme3/math/Vector3f;->z:F

    iput p3, v1, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    iget p3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, p3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLowerLimit(F)V

    iget p3, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, p3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setUpperLimit(F)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularLowerLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularUpperLimit(Lcom/jme3/math/Vector3f;)V

    :goto_0
    const/4 p2, 0x3

    if-ge v2, p2, :cond_3

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object p2

    sget-object p3, Lcom/jme3/bullet/animation/RangeOfMotion;->maxMotorForces:Lcom/jme3/math/Vector3f;

    iget p4, p3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, p4}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxMotorForce(F)V

    const/high16 p4, 0x41200000    # 10.0f

    iget p3, p3, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr p3, p4

    invoke-virtual {p2, p3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxLimitForce(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/jme3/bullet/animation/RangeOfMotion;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearLowerLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearUpperLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/SixDofJoint;->getTranslationalLimitMotor()Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLowerLimit(Lcom/jme3/math/Vector3f;)V

    sget-object p3, Lcom/jme3/bullet/animation/RangeOfMotion;->maxMotorForces:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setMaxMotorForce(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setUpperLimit(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setupNew6Dof(Lcom/jme3/bullet/joints/New6Dof;ZZZ)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/joints/New6Dof;->getAngles(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    iget v3, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    iget v4, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    invoke-direct {v1, v2, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v2, Lcom/jme3/math/Vector3f;

    iget v3, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    iget v4, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    iget v5, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    invoke-direct {v2, v3, v4, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-eqz p2, :cond_0

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    iput v3, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    iput v3, v2, Lcom/jme3/math/Vector3f;->x:F

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v4

    sget-object v5, Lcom/jme3/bullet/joints/motors/MotorParam;->Equilibrium:Lcom/jme3/bullet/joints/motors/MotorParam;

    iget v6, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    sget-object v6, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    iget v8, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v4, v6, v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    sget-object v8, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v4, v8, v9}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    invoke-virtual {v4, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(Z)V

    if-eqz p3, :cond_1

    iget p2, v0, Lcom/jme3/math/Vector3f;->y:F

    iput p2, v1, Lcom/jme3/math/Vector3f;->y:F

    iget p2, v0, Lcom/jme3/math/Vector3f;->y:F

    iput p2, v2, Lcom/jme3/math/Vector3f;->y:F

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p2

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v2, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v4, v9

    mul-float/2addr v4, v7

    invoke-virtual {p2, v5, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v6, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v8, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    invoke-virtual {p2, p3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(Z)V

    if-eqz p4, :cond_2

    iget p2, v0, Lcom/jme3/math/Vector3f;->z:F

    iput p2, v1, Lcom/jme3/math/Vector3f;->z:F

    iget p2, v0, Lcom/jme3/math/Vector3f;->z:F

    iput p2, v2, Lcom/jme3/math/Vector3f;->z:F

    :cond_2
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p2

    iget p3, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v0, v2, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr p3, v0

    mul-float/2addr p3, v7

    invoke-virtual {p2, v5, p3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    iget p3, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v6, p3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    iget p3, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v8, p3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    invoke-virtual {p2, p4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(Z)V

    :goto_0
    const/4 p2, 0x3

    if-ge v3, p2, :cond_3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p2

    sget-object p3, Lcom/jme3/bullet/joints/motors/MotorParam;->MaxMotorForce:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object p4, Lcom/jme3/bullet/animation/RangeOfMotion;->maxMotorForces:Lcom/jme3/math/Vector3f;

    iget p4, p4, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, p3, p4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object p1

    sget-object p2, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object p3, Lcom/jme3/bullet/animation/RangeOfMotion;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    sget-object p2, Lcom/jme3/bullet/joints/motors/MotorParam;->MaxMotorForce:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object p4, Lcom/jme3/bullet/animation/RangeOfMotion;->maxMotorForces:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p4}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    sget-object p2, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxX:F

    const-string v1, "maxX"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minX:F

    const-string v1, "minX"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxY:F

    const-string v1, "maxY"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minY:F

    const-string v1, "minY"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->maxZ:F

    const-string v1, "maxZ"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/RangeOfMotion;->minZ:F

    const-string v1, "minZ"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
