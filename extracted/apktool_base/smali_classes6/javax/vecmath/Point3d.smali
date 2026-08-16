.class public Ljavax/vecmath/Point3d;
.super Ljavax/vecmath/Tuple3d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x4f5aa35a84b40eefL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljavax/vecmath/Tuple3d;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ljavax/vecmath/Tuple3d;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point3d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3d;-><init>(Ljavax/vecmath/Tuple3d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Point3f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3d;-><init>(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3d;-><init>(Ljavax/vecmath/Tuple3d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3d;-><init>(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3d;-><init>([D)V

    return-void
.end method


# virtual methods
.method public final distance(Ljavax/vecmath/Point3d;)D
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Ljavax/vecmath/Tuple3d;->z:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->z:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceL1(Ljavax/vecmath/Point3d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->z:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final distanceLinf(Ljavax/vecmath/Point3d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->z:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceSquared(Ljavax/vecmath/Point3d;)D
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Ljavax/vecmath/Tuple3d;->z:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->z:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public final project(Ljavax/vecmath/Point4d;)V
    .locals 4

    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->z:D

    return-void
.end method
