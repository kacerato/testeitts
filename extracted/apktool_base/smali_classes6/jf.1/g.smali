.class public final Ljf/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:[Lcom/jme3/math/Vector3f;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Ljf/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/g;->a:Ljava/util/logging/Logger;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v2, v0, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v2, v2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v0, v5, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v2, v5, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7, v2, v2, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v1 .. v6}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    sput-object v0, Ljf/g;->b:[Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static b(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)F
    .locals 2

    invoke-static {p0, p1}, Ljf/g;->g(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static c(Lcom/jme3/math/Quaternion;)V
    .locals 14

    invoke-static {p0}, Ljf/g;->p(Lcom/jme3/math/Quaternion;)V

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    sget-object v3, Ljf/g;->b:[Lcom/jme3/math/Vector3f;

    array-length v4, v3

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v8, v3, v7

    sget-object v9, Ljf/g;->b:[Lcom/jme3/math/Vector3f;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    invoke-virtual {v8, v12, v2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->isUnitVector()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v0, v8, v12, v2}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p0}, Lcom/jme3/math/Quaternion;->dot(Lcom/jme3/math/Quaternion;)F

    move-result v12

    invoke-static {v12}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v12

    cmpl-float v13, v12, v6

    if-lez v13, :cond_0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move v6, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static d(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p0

    neg-float v0, v0

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-object p1
.end method

.method public static e([Lcom/jme3/math/Quaternion;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljf/g;->x(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public static f(Lcom/jme3/math/Quaternion;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v1

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p0

    invoke-static {p0}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static g(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)D
    .locals 14

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    float-to-double v12, p0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr v0, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    mul-double/2addr v12, p0

    add-double/2addr v0, v12

    return-wide v0
.end method

.method public static h(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    float-to-double v4, p0

    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 v6, 0x0

    aput-wide v0, p0, v6

    const/4 v6, 0x1

    aput-wide v2, p0, v6

    const/4 v6, 0x2

    aput-wide v4, p0, v6

    invoke-static {p0}, Ljf/f;->s([D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double p0, v6, v8

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    goto :goto_0

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float p0, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    mul-double/2addr v0, v8

    double-to-float v0, v0

    mul-double/2addr v2, v8

    double-to-float v1, v2

    mul-double/2addr v8, v4

    double-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    :goto_0
    return-object p1
.end method

.method public static i(Lcom/jme3/math/Quaternion;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Lcom/jme3/math/Quaternion;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Lcom/jme3/math/Quaternion;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lcom/jme3/math/Quaternion;)D
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p0

    float-to-double v6, p0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    mul-double/2addr v6, v6

    add-double/2addr v0, v6

    return-wide v0
.end method

.method public static m(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 14

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    float-to-double v5, p0

    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 v7, 0x0

    aput-wide v0, p0, v7

    const/4 v7, 0x1

    aput-wide v3, p0, v7

    const/4 v7, 0x2

    aput-wide v5, p0, v7

    invoke-static {p0}, Ljf/f;->s([D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v8 .. v13}, Ljf/f;->f(DDD)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double p0, v7, v9

    if-nez p0, :cond_2

    invoke-virtual {p1, v2, v2, v2, v2}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    goto :goto_1

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    mul-double/2addr v0, v9

    double-to-float p0, v0

    mul-double/2addr v3, v9

    double-to-float v0, v3

    mul-double/2addr v9, v5

    double-to-float v1, v9

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, v2, v2, v2, v2}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    :goto_1
    return-object p1
.end method

.method public static n(Lcom/jme3/math/Quaternion;ILcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Quaternion;

    invoke-direct {p2}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    neg-float v0, v0

    neg-float v1, v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "axisIndex = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    neg-float v0, v0

    :goto_0
    neg-float v2, v2

    goto :goto_1

    :cond_3
    neg-float v1, v1

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v0, v1, v2, p0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-object p2
.end method

.method public static o(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static p(Lcom/jme3/math/Quaternion;)V
    .locals 4

    invoke-static {p0}, Ljf/g;->l(Lcom/jme3/math/Quaternion;)D

    move-result-wide v0

    const-wide v2, 0x3fefffff94a03595L    # 0.9999998

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x3ff0000035afe535L    # 1.0000002

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/math/Quaternion;->multLocal(F)Lcom/jme3/math/Quaternion;

    :cond_1
    return-void
.end method

.method public static q(Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 13

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Quaternion;

    invoke-direct {p2}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    float-to-double v4, p0

    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 v6, 0x0

    aput-wide v0, p0, v6

    const/4 v6, 0x1

    aput-wide v2, p0, v6

    const/4 v6, 0x2

    aput-wide v4, p0, v6

    invoke-static {p0}, Ljf/f;->s([D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v7 .. v12}, Ljf/f;->f(DDD)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double p0, v6, v8

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    goto :goto_1

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    float-to-double p0, p1

    mul-double/2addr p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    div-double/2addr p0, v6

    mul-double/2addr v0, p0

    double-to-float v0, v0

    mul-double/2addr v2, p0

    double-to-float v1, v2

    mul-double/2addr p0, v4

    double-to-float p0, p0

    invoke-virtual {p2, v0, v1, p0, v8}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    :goto_1
    return-object p2
.end method

.method public static r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "rotation"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    const-string v1, "input vector"

    invoke-static {v0, v1}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v6

    invoke-static/range {p0 .. p0}, Ljf/g;->l(Lcom/jme3/math/Quaternion;)D

    move-result-wide v7

    const-wide v9, 0x3fefffff94a03595L    # 0.9999998

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_1

    const-wide v9, 0x3ff0000035afe535L    # 1.0000002

    cmpl-double v2, v7, v9

    if-lez v2, :cond_2

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    float-to-double v2, v3

    div-double/2addr v2, v7

    double-to-float v3, v2

    float-to-double v9, v4

    div-double/2addr v9, v7

    double-to-float v4, v9

    float-to-double v9, v5

    div-double/2addr v9, v7

    double-to-float v5, v9

    float-to-double v9, v6

    div-double/2addr v9, v7

    double-to-float v6, v9

    :cond_2
    mul-float v2, v3, v3

    mul-float v7, v4, v4

    mul-float v8, v5, v5

    mul-float v9, v6, v6

    iget v10, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v11, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float v12, v2, v7

    sub-float/2addr v12, v8

    add-float/2addr v12, v9

    mul-float/2addr v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v4, v13

    mul-float v15, v3, v11

    mul-float v16, v6, v0

    add-float v15, v15, v16

    mul-float/2addr v15, v14

    add-float/2addr v12, v15

    mul-float v15, v5, v13

    mul-float v17, v3, v0

    mul-float v18, v6, v11

    sub-float v17, v17, v18

    mul-float v17, v17, v15

    add-float v12, v12, v17

    iput v12, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float v12, v7, v8

    sub-float/2addr v12, v2

    add-float/2addr v12, v9

    mul-float/2addr v12, v11

    mul-float v17, v4, v0

    mul-float/2addr v6, v10

    add-float v17, v17, v6

    mul-float v15, v15, v17

    add-float/2addr v12, v15

    mul-float/2addr v3, v13

    mul-float/2addr v4, v10

    sub-float v4, v4, v16

    mul-float/2addr v4, v3

    add-float/2addr v12, v4

    iput v12, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v8, v2

    sub-float/2addr v8, v7

    add-float/2addr v8, v9

    mul-float/2addr v0, v8

    mul-float/2addr v10, v5

    add-float v10, v10, v18

    mul-float/2addr v3, v10

    add-float/2addr v0, v3

    mul-float/2addr v5, v11

    sub-float/2addr v5, v6

    mul-float/2addr v14, v5

    add-float/2addr v0, v14

    iput v0, v1, Lcom/jme3/math/Vector3f;->z:F

    return-object v1
.end method

.method public static s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "rotation"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    const-string v1, "input vector"

    invoke-static {v0, v1}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v6

    invoke-static/range {p0 .. p0}, Ljf/g;->l(Lcom/jme3/math/Quaternion;)D

    move-result-wide v7

    const-wide v9, 0x3fefffff94a03595L    # 0.9999998

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_1

    const-wide v9, 0x3ff0000035afe535L    # 1.0000002

    cmpl-double v2, v7, v9

    if-lez v2, :cond_2

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    float-to-double v2, v3

    div-double/2addr v2, v7

    double-to-float v3, v2

    float-to-double v9, v4

    div-double/2addr v9, v7

    double-to-float v4, v9

    float-to-double v9, v5

    div-double/2addr v9, v7

    double-to-float v5, v9

    float-to-double v9, v6

    div-double/2addr v9, v7

    double-to-float v6, v9

    :cond_2
    mul-float v2, v3, v3

    mul-float v7, v4, v4

    mul-float v8, v5, v5

    mul-float v9, v6, v6

    iget v10, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v11, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float v12, v2, v7

    sub-float/2addr v12, v8

    add-float/2addr v12, v9

    mul-float/2addr v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v4, v13

    mul-float v15, v3, v11

    mul-float v16, v6, v0

    sub-float v15, v15, v16

    mul-float/2addr v15, v14

    add-float/2addr v12, v15

    mul-float v15, v5, v13

    mul-float v17, v3, v0

    mul-float v18, v6, v11

    add-float v17, v17, v18

    mul-float v17, v17, v15

    add-float v12, v12, v17

    iput v12, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float v12, v7, v8

    sub-float/2addr v12, v2

    add-float/2addr v12, v9

    mul-float/2addr v12, v11

    mul-float v17, v4, v0

    mul-float/2addr v6, v10

    sub-float v17, v17, v6

    mul-float v15, v15, v17

    add-float/2addr v12, v15

    mul-float/2addr v3, v13

    mul-float/2addr v4, v10

    add-float v4, v4, v16

    mul-float/2addr v4, v3

    add-float/2addr v12, v4

    iput v12, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v8, v2

    sub-float/2addr v8, v7

    add-float/2addr v8, v9

    mul-float/2addr v0, v8

    mul-float/2addr v10, v5

    sub-float v10, v10, v18

    mul-float/2addr v3, v10

    add-float/2addr v0, v3

    mul-float/2addr v5, v11

    add-float/2addr v5, v6

    mul-float/2addr v14, v5

    add-float/2addr v0, v14

    iput v0, v1, Lcom/jme3/math/Vector3f;->z:F

    return-object v1
.end method

.method public static t(FLcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Quaternion;

    invoke-direct {p3}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljf/g;->d(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-static {p2, p0, p2}, Ljf/g;->q(Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p3, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p0}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-object p3
.end method

.method public static u(Lcom/jme3/math/Quaternion;I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/jme3/math/Quaternion;->toAngles([F)[F

    aget v1, v0, p1

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/math/Quaternion;->fromAngles([F)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static v(FLcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p5, :cond_0

    new-instance p5, Lcom/jme3/math/Quaternion;

    invoke-direct {p5}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p4, v0}, Ljf/g;->t(FLcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-static {p0, p2, p3, v0}, Ljf/g;->t(FLcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p0

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p0

    mul-float/2addr p3, p4

    invoke-static {p3, p1, p2, p5}, Ljf/g;->t(FLcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-object p5
.end method

.method public static w(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Quaternion;

    invoke-direct {p3}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljf/g;->d(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-static {p0, p0}, Ljf/g;->m(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {v0, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-static {p2, p2}, Ljf/g;->m(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/jme3/math/Quaternion;->addLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    const/high16 p2, -0x41800000    # -0.25f

    invoke-virtual {p0, p2}, Lcom/jme3/math/Quaternion;->multLocal(F)Lcom/jme3/math/Quaternion;

    invoke-static {p0, p0}, Ljf/g;->h(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p3, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p0}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-object p3
.end method

.method public static x(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p0

    invoke-static {v0}, Ljf/f;->N(F)F

    move-result v0

    invoke-static {v1}, Ljf/f;->N(F)F

    move-result v1

    invoke-static {v2}, Ljf/f;->N(F)F

    move-result v2

    invoke-static {p0}, Ljf/f;->N(F)F

    move-result p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-object p1
.end method

.method public static y(Lcom/jme3/math/Quaternion;Ljava/lang/String;F)Z
    .locals 6

    invoke-static {p0}, Ljf/g;->l(Lcom/jme3/math/Quaternion;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p0, v2, v4

    if-lez p0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "quaternion argument"

    :cond_0
    sget-object p0, Ljf/g;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "norm({0})={1}"

    invoke-virtual {p0, v2, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "norm(%s) must be within %f of 1."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
