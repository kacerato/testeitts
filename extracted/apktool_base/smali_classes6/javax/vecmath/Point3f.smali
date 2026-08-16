.class public Ljavax/vecmath/Point3f;
.super Ljavax/vecmath/Tuple3f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x7896bab4b7c5e53fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple3f;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljavax/vecmath/Tuple3f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point3d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point3f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3f;-><init>([F)V

    return-void
.end method


# virtual methods
.method public final distance(Ljavax/vecmath/Point3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    sub-float/2addr v2, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final distanceL1(Ljavax/vecmath/Point3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public final distanceLinf(Ljavax/vecmath/Point3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final distanceSquared(Ljavax/vecmath/Point3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    sub-float/2addr v2, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    return v0
.end method

.method public final project(Ljavax/vecmath/Point4f;)V
    .locals 2

    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr p1, v1

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method
