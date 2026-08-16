.class public Ljavax/vecmath/Vector3d;
.super Ljavax/vecmath/Tuple3d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x343533bc7f4d2f2aL


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

.method public constructor <init>(Ljavax/vecmath/Vector3d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3d;-><init>(Ljavax/vecmath/Tuple3d;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Vector3f;)V
    .locals 0

    .line 4
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
.method public final angle(Ljavax/vecmath/Vector3d;)D
    .locals 6

    invoke-virtual {p0, p1}, Ljavax/vecmath/Vector3d;->dot(Ljavax/vecmath/Vector3d;)D

    move-result-wide v0

    invoke-virtual {p0}, Ljavax/vecmath/Vector3d;->length()D

    move-result-wide v2

    invoke-virtual {p1}, Ljavax/vecmath/Vector3d;->length()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

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

    return-wide v0
.end method

.method public final cross(Ljavax/vecmath/Vector3d;Ljavax/vecmath/Vector3d;)V
    .locals 12

    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple3d;->z:D

    mul-double v4, v0, v2

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->z:D

    iget-wide v8, p2, Ljavax/vecmath/Tuple3d;->y:D

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    iget-wide v10, p2, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v6, v10

    iget-wide p1, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v2, p1

    sub-double/2addr v6, v2

    mul-double/2addr p1, v8

    mul-double/2addr v0, v10

    sub-double/2addr p1, v0

    iput-wide p1, p0, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide v4, p0, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v6, p0, Ljavax/vecmath/Tuple3d;->y:D

    return-void
.end method

.method public final dot(Ljavax/vecmath/Vector3d;)D
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->z:D

    iget-wide v4, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final length()D
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lengthSquared()D
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final normalize()V
    .locals 4

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->y:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->z:D

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Vector3d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->x:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->y:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple3d;->z:D

    return-void
.end method
