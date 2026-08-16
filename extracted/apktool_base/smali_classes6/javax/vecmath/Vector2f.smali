.class public Ljavax/vecmath/Vector2f;
.super Ljavax/vecmath/Tuple2f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x1e16f940b1e8b000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple2f;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljavax/vecmath/Tuple2f;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector2d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector2f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>([F)V

    return-void
.end method


# virtual methods
.method public final angle(Ljavax/vecmath/Vector2f;)F
    .locals 4

    invoke-virtual {p0, p1}, Ljavax/vecmath/Vector2f;->dot(Ljavax/vecmath/Vector2f;)F

    move-result v0

    invoke-virtual {p0}, Ljavax/vecmath/Vector2f;->length()F

    move-result v1

    invoke-virtual {p1}, Ljavax/vecmath/Vector2f;->length()F

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

.method public final dot(Ljavax/vecmath/Vector2f;)F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final length()F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

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

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final normalize()V
    .locals 4

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 6
    iget v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 7
    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Vector2f;)V
    .locals 4

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 2
    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 3
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method
