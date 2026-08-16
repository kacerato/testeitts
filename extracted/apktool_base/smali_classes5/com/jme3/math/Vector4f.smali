.class public final Lcom/jme3/math/Vector4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final NAN:Lcom/jme3/math/Vector4f;

.field public static final NEGATIVE_INFINITY:Lcom/jme3/math/Vector4f;

.field public static final POSITIVE_INFINITY:Lcom/jme3/math/Vector4f;

.field public static final UNIT_W:Lcom/jme3/math/Vector4f;

.field public static final UNIT_X:Lcom/jme3/math/Vector4f;

.field public static final UNIT_XYZW:Lcom/jme3/math/Vector4f;

.field public static final UNIT_Y:Lcom/jme3/math/Vector4f;

.field public static final UNIT_Z:Lcom/jme3/math/Vector4f;

.field public static final ZERO:Lcom/jme3/math/Vector4f;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jme3/math/Vector4f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector4f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->ZERO:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->NAN:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_X:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_Y:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_Z:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_W:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->UNIT_XYZW:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector4f;

    new-instance v0, Lcom/jme3/math/Vector4f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Vector4f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 5
    iput p2, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 6
    iput p3, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 7
    iput p4, p0, Lcom/jme3/math/Vector4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector4f;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector4f;->set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    return-void
.end method

.method public static isValidVector(Lcom/jme3/math/Vector4f;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget p0, p0, Lcom/jme3/math/Vector4f;->w:F

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
.method public add(FFFF)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 7
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr p3, p4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public add(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public add(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector4f;->x:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector4f;->y:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector4f;->z:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2
.end method

.method public addLocal(FFFF)Lcom/jme3/math/Vector4f;
    .locals 1

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 7
    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 8
    iget p1, p0, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 9
    iget p1, p0, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr p1, p4

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public addLocal(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public angleBetween(Lcom/jme3/math/Vector4f;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector4f;->dot(Lcom/jme3/math/Vector4f;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result p1

    return p1
.end method

.method public clone()Lcom/jme3/math/Vector4f;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector4f;
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
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->clone()Lcom/jme3/math/Vector4f;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/jme3/math/Vector4f;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector4f;->distanceSquared(Lcom/jme3/math/Vector4f;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public distanceSquared(Lcom/jme3/math/Vector4f;)F
    .locals 8

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v5, p1, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr v6, p1

    float-to-double v6, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    mul-double/2addr v6, v6

    add-double/2addr v0, v6

    double-to-float p1, v0

    return p1
.end method

.method public divide(F)Lcom/jme3/math/Vector4f;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 1
    new-instance p1, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object p1
.end method

.method public divide(FFFF)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 3
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    div-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    div-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/math/Vector4f;->z:F

    div-float/2addr p2, p3

    iget p3, p0, Lcom/jme3/math/Vector4f;->w:F

    div-float/2addr p3, p4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public divide(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5

    .line 2
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->x:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->y:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector4f;->z:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/jme3/math/Vector4f;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 1
    iget p1, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 2
    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 3
    iget p1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 4
    iget p1, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public divideLocal(FFFF)Lcom/jme3/math/Vector4f;
    .locals 1

    .line 9
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 10
    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 11
    iget p1, p0, Lcom/jme3/math/Vector4f;->z:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 12
    iget p1, p0, Lcom/jme3/math/Vector4f;->w:F

    div-float/2addr p1, p4

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public divideLocal(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 7
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 8
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public dot(Lcom/jme3/math/Vector4f;)F
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, 0 returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/jme3/math/Vector4f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/math/Vector4f;

    iget v2, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->z:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public get(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be either 0, 1, 2 or 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Lcom/jme3/math/Vector4f;->z:F

    return p1

    :cond_2
    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    return p1

    :cond_3
    iget p1, p0, Lcom/jme3/math/Vector4f;->x:F

    return p1
.end method

.method public getW()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x57e

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector4f;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector4f;->w:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public interpolateLocal(Lcom/jme3/math/Vector4f;F)Lcom/jme3/math/Vector4f;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 2
    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 3
    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 4
    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public interpolateLocal(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;F)Lcom/jme3/math/Vector4f;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 5
    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 6
    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 7
    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 8
    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iget p1, p2, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public isSimilar(Lcom/jme3/math/Vector4f;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v2, p0, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public isUnitVector()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->length()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const v1, 0x3f8147ae    # 1.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()F
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 2

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public maxLocal(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 3

    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move p1, v0

    :goto_3
    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public minLocal(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 3

    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move p1, v0

    :goto_3
    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public mult(F)Lcom/jme3/math/Vector4f;
    .locals 5

    .line 1
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public mult(FFFF)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 7
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr p3, p4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public mult(FLcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 1

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector4f;->x:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector4f;->y:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector4f;->z:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Vector4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 4

    if-nez p1, :cond_0

    .line 10
    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Provided vector is null, null returned."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 11
    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    .line 12
    :cond_1
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    move-result-object p1

    return-object p1
.end method

.method public multLocal(F)Lcom/jme3/math/Vector4f;
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 2
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public multLocal(FFFF)Lcom/jme3/math/Vector4f;
    .locals 1

    .line 10
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 11
    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 12
    iget p1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 13
    iget p1, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 7
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 8
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 9
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public negate()Lcom/jme3/math/Vector4f;
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    neg-float v3, v3

    iget v4, p0, Lcom/jme3/math/Vector4f;->w:F

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public negateLocal()Lcom/jme3/math/Vector4f;
    .locals 1

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public normalize()Lcom/jme3/math/Vector4f;
    .locals 6

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v2, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->clone()Lcom/jme3/math/Vector4f;

    move-result-object v0

    return-object v0
.end method

.method public normalizeLocal()Lcom/jme3/math/Vector4f;
    .locals 3

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    :cond_0
    return-object p0
.end method

.method public project(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector4f;->dot(Lcom/jme3/math/Vector4f;)F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/math/Vector4f;->lengthSquared()F

    move-result v1

    new-instance v2, Lcom/jme3/math/Vector4f;

    invoke-direct {v2, p1}, Lcom/jme3/math/Vector4f;-><init>(Lcom/jme3/math/Vector4f;)V

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector4f;->multLocal(F)Lcom/jme3/math/Vector4f;

    move-result-object p1

    return-object p1
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

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    const-string v0, "y"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    const-string v0, "z"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    const-string v0, "w"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-void
.end method

.method public scaleAdd(FLcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 1
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 2
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iget p1, p2, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public scaleAdd(FLcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 5
    iget v0, p2, Lcom/jme3/math/Vector4f;->x:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/jme3/math/Vector4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 6
    iget v0, p2, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/jme3/math/Vector4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 7
    iget v0, p2, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v0, p1

    iget v1, p3, Lcom/jme3/math/Vector4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 8
    iget p2, p2, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr p2, p1

    iget p1, p3, Lcom/jme3/math/Vector4f;->w:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public set(FFFF)Lcom/jme3/math/Vector4f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 2
    iput p2, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 3
    iput p3, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 4
    iput p4, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public set(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 1

    .line 5
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 6
    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 7
    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 8
    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public set(IF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 9
    iput p2, p0, Lcom/jme3/math/Vector4f;->w:F

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be either 0, 1, 2 or 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    iput p2, p0, Lcom/jme3/math/Vector4f;->z:F

    return-void

    .line 12
    :cond_2
    iput p2, p0, Lcom/jme3/math/Vector4f;->y:F

    return-void

    .line 13
    :cond_3
    iput p2, p0, Lcom/jme3/math/Vector4f;->x:F

    return-void
.end method

.method public setW(F)Lcom/jme3/math/Vector4f;
    .locals 0

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public setX(F)Lcom/jme3/math/Vector4f;
    .locals 0

    iput p1, p0, Lcom/jme3/math/Vector4f;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/jme3/math/Vector4f;
    .locals 0

    iput p1, p0, Lcom/jme3/math/Vector4f;->y:F

    return-object p0
.end method

.method public setZ(F)Lcom/jme3/math/Vector4f;
    .locals 0

    iput p1, p0, Lcom/jme3/math/Vector4f;->z:F

    return-object p0
.end method

.method public subtract(FFFF)Lcom/jme3/math/Vector4f;
    .locals 2

    .line 7
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr p3, p4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public subtract(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5

    .line 1
    new-instance v0, Lcom/jme3/math/Vector4f;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;-><init>(FFFF)V

    return-object v0
.end method

.method public subtract(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector4f;->x:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector4f;->y:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector4f;->z:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2
.end method

.method public subtractLocal(FFFF)Lcom/jme3/math/Vector4f;
    .locals 1

    .line 6
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 7
    iget p1, p0, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 8
    iget p1, p0, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 9
    iget p1, p0, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr p1, p4

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public subtractLocal(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/jme3/math/Vector4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Provided vector is null, null returned."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    return-object p0
.end method

.method public toArray([F)[F
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/jme3/math/Vector4f;->y:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

    aput v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/Vector4f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/Vector4f;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Vector4f;->w:F

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

    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Vector4f;->y:F

    const-string v1, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Vector4f;->z:F

    const-string v1, "z"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Vector4f;->w:F

    const-string v1, "w"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public zero()Lcom/jme3/math/Vector4f;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Vector4f;->w:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    return-object p0
.end method
