.class public Ljavax/vecmath/Point2d;
.super Ljavax/vecmath/Tuple2d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0xfbbe284dd717332L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple2d;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/vecmath/Tuple2d;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point2d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point2f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>(Ljavax/vecmath/Tuple2f;)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple2d;-><init>([D)V

    return-void
.end method


# virtual methods
.method public final distance(Ljavax/vecmath/Point2d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceL1(Ljavax/vecmath/Point2d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final distanceLinf(Ljavax/vecmath/Point2d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceSquared(Ljavax/vecmath/Point2d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method
