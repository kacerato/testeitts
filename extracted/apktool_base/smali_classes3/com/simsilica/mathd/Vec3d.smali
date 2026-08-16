.class public Lcom/simsilica/mathd/Vec3d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final UNIT_X:Lcom/simsilica/mathd/Vec3d;

.field public static final UNIT_Y:Lcom/simsilica/mathd/Vec3d;

.field public static final UNIT_Z:Lcom/simsilica/mathd/Vec3d;

.field public static final ZERO:Lcom/simsilica/mathd/Vec3d;

.field static final serialVersionUID:J = 0x2aL


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    sput-object v7, Lcom/simsilica/mathd/Vec3d;->UNIT_X:Lcom/simsilica/mathd/Vec3d;

    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    const-wide/16 v9, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    sput-object v0, Lcom/simsilica/mathd/Vec3d;->UNIT_Y:Lcom/simsilica/mathd/Vec3d;

    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    sput-object v0, Lcom/simsilica/mathd/Vec3d;->UNIT_Z:Lcom/simsilica/mathd/Vec3d;

    new-instance v0, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v0}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    sput-object v0, Lcom/simsilica/mathd/Vec3d;->ZERO:Lcom/simsilica/mathd/Vec3d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 4
    iput-wide p3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 5
    iput-wide p5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 8

    .line 8
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v2, v0

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v4, v0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v6, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3d;)V
    .locals 7

    .line 6
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(Lcom/simsilica/mathd/Vec3i;)V
    .locals 8

    .line 7
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v0

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v4, v0

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v6, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public final add(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 8

    .line 3
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double v1, v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double v3, p1, p3

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double v5, p1, p5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final add(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 1
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v8, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final add(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 2
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v5, v0

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v8, p1

    add-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final addLocal(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 8
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 9
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final addLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final addLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 6
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final addScaledVectorLocal(Lcom/simsilica/mathd/Vec3d;D)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final ceil()Lcom/simsilica/mathd/Vec3i;
    .locals 5

    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public final clone()Lcom/simsilica/mathd/Vec3d;
    .locals 8

    .line 2
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec3d;->clone()Lcom/simsilica/mathd/Vec3d;

    move-result-object v0

    return-object v0
.end method

.method public final cross(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 16

    move-object/from16 v0, p0

    .line 4
    iget-wide v1, v0, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double v3, v1, p5

    iget-wide v5, v0, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double v7, v5, p3

    sub-double v10, v3, v7

    mul-double v5, v5, p1

    .line 5
    iget-wide v3, v0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double v7, v3, p5

    sub-double v12, v5, v7

    mul-double v3, v3, p3

    mul-double v1, v1, p1

    sub-double v14, v3, v1

    .line 6
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v1
.end method

.method public final cross(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v4, v1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v10, v1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double v12, v8, v10

    sub-double v15, v6, v12

    .line 2
    iget-wide v6, v1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v8, v6

    iget-wide v12, v0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v4, v12

    sub-double v17, v8, v4

    mul-double/2addr v12, v10

    mul-double/2addr v2, v6

    sub-double v19, v12, v2

    .line 3
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v1
.end method

.method public final crossLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 14

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double v4, v0, v2

    iget-wide v6, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v8, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    iget-wide v10, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v6, v10

    iget-wide v12, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v2, v12

    sub-double/2addr v6, v2

    mul-double/2addr v12, v8

    mul-double/2addr v0, v10

    sub-double/2addr v12, v0

    iput-wide v4, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iput-wide v6, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v12, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final distance(DDD)D
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/simsilica/mathd/Vec3d;->distanceSq(DDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final distance(Lcom/simsilica/mathd/Vec3d;)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/simsilica/mathd/Vec3d;->distanceSq(Lcom/simsilica/mathd/Vec3d;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final distanceSq(DDD)D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double/2addr p1, v0

    .line 8
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr p3, v0

    .line 9
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr p5, v0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    return-wide p1
.end method

.method public final distanceSq(Lcom/simsilica/mathd/Vec3d;)D
    .locals 8

    .line 1
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double/2addr v0, v2

    .line 2
    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr v2, v4

    .line 3
    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v6, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public final distanceSq(Lcom/simsilica/mathd/Vec3i;)D
    .locals 8

    .line 4
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double/2addr v0, v2

    .line 5
    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr v2, v4

    .line 6
    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v4, p1

    iget-wide v6, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public final divide(D)Lcom/simsilica/mathd/Vec3d;
    .locals 8

    .line 1
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    div-double v1, v0, p1

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    div-double/2addr v3, p1

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    div-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final divide(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 2
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    div-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    div-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v8, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    div-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final divide(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 3
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    div-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v8, p1

    div-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final divideLocal(D)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final divideLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 6
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final dot(DDD)D
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr p1, p5

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public final dot(Lcom/simsilica/mathd/Vec3d;)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final dot(Lcom/simsilica/mathd/Vec3i;)D
    .locals 6

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v4, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/simsilica/mathd/Vec3d;

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v4, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final floor()Lcom/simsilica/mathd/Vec3i;
    .locals 5

    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public get(I)D
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    return-wide v0

    :cond_2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public final interpolateLocal(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;D)Lcom/simsilica/mathd/Vec3d;
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p3

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v2, v0

    iget-wide v4, p2, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v2, v0

    iget-wide v4, p2, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v0, v2

    iget-wide p1, p2, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr p3, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public isFinite()Z
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSimilar(Lcom/simsilica/mathd/Vec3d;D)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget-wide v1, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final length()D
    .locals 2

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec3d;->lengthSq()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final lengthSq()D
    .locals 4

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final maxLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 5

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final minLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 5

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final mult(D)Lcom/simsilica/mathd/Vec3d;
    .locals 8

    .line 1
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final mult(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 2
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v8, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final mult(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 3
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    mul-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v8, p1

    mul-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final multLocal(D)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final multLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 6
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final multLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 7
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 8
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 9
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final normalize()Lcom/simsilica/mathd/Vec3d;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec3d;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/simsilica/mathd/Vec3d;->mult(D)Lcom/simsilica/mathd/Vec3d;

    move-result-object v0

    return-object v0
.end method

.method public final normalizeLocal()Lcom/simsilica/mathd/Vec3d;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/simsilica/mathd/Vec3d;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/simsilica/mathd/Vec3d;->multLocal(D)Lcom/simsilica/mathd/Vec3d;

    move-result-object v0

    return-object v0
.end method

.method public final set(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 2
    iput-wide p3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 3
    iput-wide p5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public set(ID)Lcom/simsilica/mathd/Vec3d;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 13
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_1
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    goto :goto_0

    .line 16
    :cond_2
    iput-wide p2, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    :goto_0
    return-object p0
.end method

.method public final set(Lcom/jme3/math/Vector3f;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 10
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 11
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 12
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final set(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 4
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 5
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 6
    iget-wide v0, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final set(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 7
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 8
    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 9
    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final subtract(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 8

    .line 3
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double v1, v0, p1

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double v3, p1, p3

    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double v5, p1, p5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final subtract(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 1
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v5, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v8, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final subtract(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 10

    .line 2
    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v0, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v5, v0

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v8, p1

    sub-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final subtractLocal(DDD)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 8
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr p1, p3

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 9
    iget-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr p1, p5

    iput-wide p1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final subtractLocal(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 2
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 3
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v2, p1, Lcom/simsilica/mathd/Vec3d;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public final subtractLocal(Lcom/simsilica/mathd/Vec3i;)Lcom/simsilica/mathd/Vec3d;
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->x:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    .line 5
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    iget v2, p1, Lcom/simsilica/mathd/Vec3i;->y:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    .line 6
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget p1, p1, Lcom/simsilica/mathd/Vec3i;->z:I

    int-to-double v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vec3d["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toVec3i()Lcom/simsilica/mathd/Vec3i;
    .locals 5

    new-instance v0, Lcom/simsilica/mathd/Vec3i;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    double-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/simsilica/mathd/Vec3i;-><init>(III)V

    return-object v0
.end method

.method public toVector3f()Lcom/jme3/math/Vector3f;
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    double-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public final xzy()Lcom/simsilica/mathd/Vec3d;
    .locals 8

    new-instance v7, Lcom/simsilica/mathd/Vec3d;

    iget-wide v1, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    iget-wide v3, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    iget-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/simsilica/mathd/Vec3d;-><init>(DDD)V

    return-object v7
.end method

.method public final zeroEpsilon(D)Lcom/simsilica/mathd/Vec3d;
    .locals 7

    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    neg-double v2, p1

    cmpl-double v4, v0, v2

    const-wide/16 v5, 0x0

    if-lez v4, :cond_0

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->x:D

    :cond_0
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->y:D

    :cond_1
    iget-wide v0, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    cmpg-double p1, v0, p1

    if-gez p1, :cond_2

    iput-wide v5, p0, Lcom/simsilica/mathd/Vec3d;->z:D

    :cond_2
    return-object p0
.end method
