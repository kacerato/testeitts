.class public final Ljf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D = 1.5707963267948966

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:Ljava/util/logging/Logger;

.field public static final synthetic f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Ljf/f;->b:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    sput v0, Ljf/f;->c:F

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    sput v0, Ljf/f;->d:F

    const-class v0, Ljf/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/f;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I)I
    .locals 1

    const-string v0, "input value"

    invoke-static {p0, v0}, Lif/E;->F(ILjava/lang/String;)Z

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static varargs B([F)F
    .locals 5

    array-length v0, p0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs C([D)D
    .locals 7

    array-length v0, p0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-wide v4, p0, v3

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static varargs D([I)I
    .locals 4

    array-length v0, p0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static E(DDD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_2

    cmpl-double v0, p2, p4

    if-ltz v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-ltz p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    cmpl-double v0, p0, p4

    if-ltz v0, :cond_3

    return-wide p0

    :cond_3
    cmpl-double p0, p2, p4

    if-ltz p0, :cond_4

    return-wide p4

    :cond_4
    return-wide p2
.end method

.method public static F(FFF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_2

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-ltz p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_3

    return p0

    :cond_3
    cmpl-float p0, p1, p2

    if-ltz p0, :cond_4

    return p2

    :cond_4
    return p1
.end method

.method public static varargs G([F)F
    .locals 5

    array-length v0, p0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs H([D)D
    .locals 7

    array-length v0, p0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-wide v4, p0, v3

    cmpg-double v6, v4, v1

    if-gez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static I(DD)D
    .locals 4

    rem-double v0, p0, p2

    const-wide/16 v2, 0x0

    cmpl-double p0, p0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-double/2addr v0, p2

    rem-double/2addr v0, p2

    :goto_0
    return-wide v0
.end method

.method public static J(FF)F
    .locals 2

    rem-float v0, p0, p1

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    :goto_0
    return v0
.end method

.method public static K(II)I
    .locals 1

    rem-int v0, p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    rem-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public static L(FLcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 3

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Transform;

    invoke-direct {p3}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Ljf/g;->t(FLcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p3
.end method

.method public static M(D)D
    .locals 3

    mul-double v0, p0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Overflow from squaring %g."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljf/f;->e:Ljava/util/logging/Logger;

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public static N(F)F
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public static O(F)F
    .locals 2

    const-string v0, "angle"

    invoke-static {p0, v0}, Lif/E;->c(FLjava/lang/String;)Z

    const v0, 0x40c90fdb

    invoke-static {p0, v0}, Ljf/f;->J(FF)F

    move-result p0

    const v1, 0x40490fdb    # (float)Math.PI

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    sub-float/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static varargs P([F)D
    .locals 6

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p0, v3

    float-to-double v4, v4

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static Q(F)F
    .locals 1

    const v0, 0x42652ee0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static R(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    return p0
.end method

.method public static S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    if-ne v0, p2, :cond_1

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-static {p0, p2, p2}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public static T(Lcom/jme3/math/Transform;Lcom/jme3/math/Triangle;Lcom/jme3/math/Triangle;)Lcom/jme3/math/Triangle;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Triangle;

    invoke-direct {p2}, Lcom/jme3/math/Triangle;-><init>()V

    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Triangle;->get(I)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {p0, v2, v0}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1, v0}, Lcom/jme3/math/Triangle;->set(ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    if-ne v0, p2, :cond_1

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-static {p0, p2, p2}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public static a(FFF)Z
    .locals 3

    const-string v0, "relative tolerance"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr p2, v0

    sub-float/2addr p0, p1

    invoke-static {p0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/jme3/math/Triangle;)D
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static c(D)D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p0, p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(F)F
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static e(DD)D
    .locals 3

    neg-double v0, p2

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    return-wide p2

    :cond_1
    return-wide p0
.end method

.method public static f(DDD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    move-wide p0, p4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static g(FF)F
    .locals 1

    neg-float v0, p1

    invoke-static {p0, v0, p1}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public static h(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 7

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-static {v2}, Ljf/g;->p(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v5, v1, v1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p2, v1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {p2, v2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    invoke-virtual {p2, v3}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p2
.end method

.method public static j(F)F
    .locals 2

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Overflow from cubing %g."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljf/f;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static k(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static l(DDD)D
    .locals 2

    mul-double/2addr p2, p2

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr p0, v0

    mul-double/2addr p0, p4

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public static m(FFFF)F
    .locals 0

    div-float/2addr p0, p3

    mul-float/2addr p0, p0

    mul-float/2addr p0, p0

    invoke-static {p0, p1, p2}, Ljf/f;->y(FFF)F

    move-result p0

    return p0
.end method

.method public static n(FFFF)F
    .locals 0

    div-float/2addr p0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float/2addr p0, p0

    mul-float/2addr p0, p0

    sub-float/2addr p3, p0

    invoke-static {p3, p1, p2}, Ljf/f;->y(FFF)F

    move-result p0

    return p0
.end method

.method public static o(F)F
    .locals 8

    float-to-double v0, p0

    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, v0

    const-wide/high16 v6, -0x3fd2000000000000L    # -15.0

    add-double/2addr v4, v6

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v0, v4

    mul-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static p(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static q(FFFLcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 9

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Matrix3f;

    invoke-direct {p3}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    invoke-static {p2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    invoke-static {p0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    invoke-static {p2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p2

    invoke-static {p0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p0

    mul-float v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {p3, v4, v4, v3}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    mul-float v3, p1, p0

    mul-float v5, v0, v2

    mul-float v6, v5, p2

    sub-float/2addr v3, v6

    const/4 v6, 0x1

    invoke-virtual {p3, v4, v6, v3}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    mul-float v3, v2, p1

    mul-float v7, v0, p2

    mul-float/2addr v7, p0

    add-float/2addr v7, v3

    const/4 v8, 0x2

    invoke-virtual {p3, v4, v8, v7}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    invoke-virtual {p3, v6, v4, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    mul-float/2addr v2, v1

    invoke-virtual {p3, v6, v6, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    neg-float v1, v1

    mul-float v2, v1, p0

    invoke-virtual {p3, v6, v8, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    mul-float/2addr v1, p1

    invoke-virtual {p3, v8, v4, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    mul-float/2addr v0, p0

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    invoke-virtual {p3, v8, v6, v0}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    mul-float/2addr p1, p2

    mul-float/2addr p1, p0

    sub-float/2addr v5, p1

    invoke-virtual {p3, v8, v8, v5}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    return-object p3
.end method

.method public static varargs r([F)F
    .locals 6

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p0, v3

    float-to-double v4, v4

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static varargs s([D)D
    .locals 6

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static t(DDD)Z
    .locals 4

    cmpl-double v0, p0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_0

    cmpl-double p0, p2, p4

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-double v3, p0, p4

    if-gez v3, :cond_3

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_2

    cmpg-double p0, p2, p4

    if-gtz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_5

    cmpl-double p0, p0, p2

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "a = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " c = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(FFF)Z
    .locals 4

    cmpl-float v0, p0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    cmpl-float p0, p1, p2

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-float v3, p0, p2

    if-gez v3, :cond_3

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_5

    cmpl-float p0, p0, p1

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "a = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " c = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(III)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p0, p2, :cond_1

    if-lt p0, p1, :cond_0

    if-lt p1, p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-ge p0, p2, :cond_3

    if-gt p0, p1, :cond_2

    if-gt p1, p2, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    if-ne p0, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public static w(Lcom/jme3/math/Transform;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-static {v0}, Ljf/h;->E(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-static {v0}, Ljf/g;->j(Lcom/jme3/math/Quaternion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {p0}, Ljf/h;->C(Lcom/jme3/math/Vector3f;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(I)Z
    .locals 0

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(FFF)F
    .locals 1

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float p1, v0, p0

    :goto_0
    return p1
.end method

.method public static z(FFFFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    sub-float/2addr v0, p1

    mul-float/2addr v0, p2

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    mul-float/2addr p1, p4

    add-float/2addr v0, p1

    return v0
.end method
