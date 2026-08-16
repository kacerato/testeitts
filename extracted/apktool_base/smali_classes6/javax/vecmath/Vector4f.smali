.class public Ljavax/vecmath/Vector4f;
.super Ljavax/vecmath/Tuple4f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x796bd41865b19413L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljavax/vecmath/Tuple4f;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/vecmath/Tuple4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3f;)V
    .locals 3

    .line 7
    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Ljavax/vecmath/Tuple4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector4d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>(Ljavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector4f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>(Ljavax/vecmath/Tuple4f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4f;-><init>([F)V

    return-void
.end method


# virtual methods
.method public final angle(Ljavax/vecmath/Vector4f;)F
    .locals 4

    invoke-virtual {p0, p1}, Ljavax/vecmath/Vector4f;->dot(Ljavax/vecmath/Vector4f;)F

    move-result v0

    invoke-virtual {p0}, Ljavax/vecmath/Vector4f;->length()F

    move-result v1

    invoke-virtual {p1}, Ljavax/vecmath/Vector4f;->length()F

    move-result p1

    mul-float/2addr v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final dot(Ljavax/vecmath/Vector4f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final length()F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final lengthSquared()F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final normalize()V
    .locals 4

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 7
    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 8
    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 9
    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 10
    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Vector4f;)V
    .locals 4

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 2
    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 3
    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 4
    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 5
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple3f;)V
    .locals 1

    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    const/4 p1, 0x0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method
