.class public Ljavax/vecmath/Point2f;
.super Ljavax/vecmath/Tuple2f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x42a1d08023cd66c3L


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

.method public constructor <init>(Ljavax/vecmath/Point2d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point2f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2f;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 0

    .line 6
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
.method public final distance(Ljavax/vecmath/Point2f;)F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final distanceL1(Ljavax/vecmath/Point2f;)F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public final distanceLinf(Ljavax/vecmath/Point2f;)F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final distanceSquared(Ljavax/vecmath/Point2f;)F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr v1, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method
