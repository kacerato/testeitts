.class public final Lcom/jme3/math/Vector2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final NAN:Lcom/jme3/math/Vector2f;

.field public static final NEGATIVE_INFINITY:Lcom/jme3/math/Vector2f;

.field public static final POSITIVE_INFINITY:Lcom/jme3/math/Vector2f;

.field public static final UNIT_X:Lcom/jme3/math/Vector2f;

.field public static final UNIT_XY:Lcom/jme3/math/Vector2f;

.field public static final UNIT_Y:Lcom/jme3/math/Vector2f;

.field public static final ZERO:Lcom/jme3/math/Vector2f;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jme3/math/Vector2f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector2f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->NAN:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->UNIT_X:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->UNIT_Y:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->UNIT_XY:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector2f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 3
    iput p2, p0, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector2f;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 8
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method public static isValidVector(Lcom/jme3/math/Vector2f;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget p0, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector2f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public add(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Provided vector is null, null returned."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 4
    new-instance p2, Lcom/jme3/math/Vector2f;

    invoke-direct {p2}, Lcom/jme3/math/Vector2f;-><init>()V

    .line 5
    :cond_1
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector2f;->x:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    add-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector2f;->y:F

    return-object p2
.end method

.method public addLocal(FF)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 5
    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public addLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public angleBetween(Lcom/jme3/math/Vector2f;)F
    .locals 2

    iget v0, p1, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v0, p1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result p1

    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v0, v1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v0

    sub-float/2addr p1, v0

    return p1
.end method

.method public clone()Lcom/jme3/math/Vector2f;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

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
    invoke-virtual {p0}, Lcom/jme3/math/Vector2f;->clone()Lcom/jme3/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;
    .locals 2

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector2f;->determinant(Lcom/jme3/math/Vector2f;)F

    move-result p1

    invoke-direct {v0, v1, v1, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public determinant(Lcom/jme3/math/Vector2f;)F
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public distance(Lcom/jme3/math/Vector2f;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector2f;->distanceSquared(Lcom/jme3/math/Vector2f;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public distanceSquared(FF)F
    .locals 2

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 4
    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method public distanceSquared(Lcom/jme3/math/Vector2f;)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public divide(F)Lcom/jme3/math/Vector2f;
    .locals 3

    .line 1
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public divide(FF)Lcom/jme3/math/Vector2f;
    .locals 2

    .line 2
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    div-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    div-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 2
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public divideLocal(FF)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 4
    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public dot(Lcom/jme3/math/Vector2f;)F
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, 0 returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/jme3/math/Vector2f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/math/Vector2f;

    iget v2, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v3, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getAngle()F
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v0, v1}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x57e

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public interpolateLocal(Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector2f;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 2
    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public interpolateLocal(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector2f;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 3
    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 4
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iget p1, p2, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public isSimilar(Lcom/jme3/math/Vector2f;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public length()F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/math/Vector2f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public mult(F)Lcom/jme3/math/Vector2f;
    .locals 3

    .line 1
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public mult(FF)Lcom/jme3/math/Vector2f;
    .locals 2

    .line 5
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public mult(FLcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 1

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector2f;

    invoke-direct {p2}, Lcom/jme3/math/Vector2f;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector2f;->x:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector2f;->y:F

    return-object p2
.end method

.method public multLocal(F)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 2
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public multLocal(FF)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 7
    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public negate()Lcom/jme3/math/Vector2f;
    .locals 3

    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public negateLocal()Lcom/jme3/math/Vector2f;
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public normalize()Lcom/jme3/math/Vector2f;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/math/Vector2f;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector2f;->divide(F)Lcom/jme3/math/Vector2f;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector2f;->divide(F)Lcom/jme3/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public normalizeLocal()Lcom/jme3/math/Vector2f;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/math/Vector2f;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector2f;->divideLocal(F)Lcom/jme3/math/Vector2f;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector2f;->divideLocal(F)Lcom/jme3/math/Vector2f;

    move-result-object v0

    return-object v0
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

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    const-string v0, "y"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method public rotateAroundOrigin(FZ)V
    .locals 4

    if-eqz p2, :cond_0

    neg-float p1, p1

    :cond_0
    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p2

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float v1, p2, v0

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float v3, p1, v2

    sub-float/2addr v1, v3

    mul-float/2addr p1, v0

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    iput v1, p0, Lcom/jme3/math/Vector2f;->x:F

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method public set(FF)Lcom/jme3/math/Vector2f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 2
    iput p2, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 3
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 4
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public setX(F)Lcom/jme3/math/Vector2f;
    .locals 0

    iput p1, p0, Lcom/jme3/math/Vector2f;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/jme3/math/Vector2f;
    .locals 0

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public smallestAngleBetween(Lcom/jme3/math/Vector2f;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector2f;->dot(Lcom/jme3/math/Vector2f;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result p1

    return p1
.end method

.method public subtract(FF)Lcom/jme3/math/Vector2f;
    .locals 2

    .line 5
    new-instance v0, Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public subtract(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Vector2f;->subtract(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector2f;

    invoke-direct {p2}, Lcom/jme3/math/Vector2f;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector2f;->x:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector2f;->y:F

    return-object p2
.end method

.method public subtractLocal(FF)Lcom/jme3/math/Vector2f;
    .locals 1

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 5
    iget p1, p0, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public subtractLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return-object p0
.end method

.method public toArray([F)[F
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    aput v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    const-string v1, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    return-void
.end method

.method public zero()Lcom/jme3/math/Vector2f;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    return-object p0
.end method
