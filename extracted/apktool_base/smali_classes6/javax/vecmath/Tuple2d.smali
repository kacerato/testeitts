.class public abstract Ljavax/vecmath/Tuple2d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x561f4c19391f878eL


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 15
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 3
    iput-wide p3, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2d;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 9
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 12
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    const/4 v0, 0x1

    .line 6
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method


# virtual methods
.method public final absolute()V
    .locals 2

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final absolute(Ljavax/vecmath/Tuple2d;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple2d;)V
    .locals 4

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple2d;Ljavax/vecmath/Tuple2d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple2d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide p1, p2, Ljavax/vecmath/Tuple2d;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final clamp(DD)V
    .locals 3

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    .line 10
    iput-wide p3, p0, Ljavax/vecmath/Tuple2d;->x:D

    goto :goto_0

    :cond_0
    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    .line 11
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 12
    :cond_1
    :goto_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_2

    .line 13
    iput-wide p3, p0, Ljavax/vecmath/Tuple2d;->y:D

    goto :goto_1

    :cond_2
    cmpg-double p3, v0, p1

    if-gez p3, :cond_3

    .line 14
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    :cond_3
    :goto_1
    return-void
.end method

.method public final clamp(DDLjavax/vecmath/Tuple2d;)V
    .locals 3

    .line 1
    iget-wide v0, p5, Ljavax/vecmath/Tuple2d;->x:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    .line 2
    iput-wide p3, p0, Ljavax/vecmath/Tuple2d;->x:D

    goto :goto_0

    :cond_0
    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    .line 3
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    goto :goto_0

    .line 4
    :cond_1
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 5
    :goto_0
    iget-wide v0, p5, Ljavax/vecmath/Tuple2d;->y:D

    cmpl-double p5, v0, p3

    if-lez p5, :cond_2

    .line 6
    iput-wide p3, p0, Ljavax/vecmath/Tuple2d;->y:D

    goto :goto_1

    :cond_2
    cmpg-double p3, v0, p1

    if-gez p3, :cond_3

    .line 7
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    goto :goto_1

    .line 8
    :cond_3
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    :goto_1
    return-void
.end method

.method public final clampMax(D)V
    .locals 2

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_0

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 8
    :cond_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_1

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    :cond_1
    return-void
.end method

.method public final clampMax(DLjavax/vecmath/Tuple2d;)V
    .locals 3

    .line 1
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->x:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    .line 2
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    goto :goto_0

    .line 3
    :cond_0
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    :goto_0
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->y:D

    cmpl-double p3, v0, p1

    if-lez p3, :cond_1

    .line 5
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    goto :goto_1

    .line 6
    :cond_1
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    :goto_1
    return-void
.end method

.method public final clampMin(D)V
    .locals 2

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 8
    :cond_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    :cond_1
    return-void
.end method

.method public final clampMin(DLjavax/vecmath/Tuple2d;)V
    .locals 3

    .line 1
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->x:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    .line 2
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    goto :goto_0

    .line 3
    :cond_0
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    :goto_0
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->y:D

    cmpg-double p3, v0, p1

    if-gez p3, :cond_1

    .line 5
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    goto :goto_1

    .line 6
    :cond_1
    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    :goto_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public epsilonEquals(Ljavax/vecmath/Tuple2d;D)Z
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    neg-double v0, v0

    :cond_1
    cmpl-double v0, v0, p2

    if-lez v0, :cond_2

    return v3

    :cond_2
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    cmpg-double p1, v0, v4

    if-gez p1, :cond_4

    neg-double v0, v0

    :cond_4
    cmpl-double p1, v0, p2

    if-lez p1, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Tuple2d;

    .line 3
    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple2d;->x:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple2d;->y:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Tuple2d;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple2d;->x:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple2d;->y:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get([D)V
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->x:D

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->y:D

    aput-wide v1, p1, v0

    return-void
.end method

.method public final getX()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    invoke-static {v0, v1}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    invoke-static {v2, v3}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final interpolate(Ljavax/vecmath/Tuple2d;D)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 3
    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v2, v0

    iget-wide v4, p1, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v2, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr p2, v2

    add-double/2addr v0, p2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/Tuple2d;Ljavax/vecmath/Tuple2d;D)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p3

    .line 1
    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v2, v0

    iget-wide v4, p2, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v0, v2

    iget-wide p1, p2, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr p3, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final negate()V
    .locals 2

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final negate(Ljavax/vecmath/Tuple2d;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final scale(D)V
    .locals 2

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final scale(DLjavax/vecmath/Tuple2d;)V
    .locals 2

    .line 1
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final scaleAdd(DLjavax/vecmath/Tuple2d;)V
    .locals 4

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p3, Ljavax/vecmath/Tuple2d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr p1, v0

    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->y:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final scaleAdd(DLjavax/vecmath/Tuple2d;Ljavax/vecmath/Tuple2d;)V
    .locals 4

    .line 1
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p4, Ljavax/vecmath/Tuple2d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v0, p3, Ljavax/vecmath/Tuple2d;->y:D

    mul-double/2addr p1, v0

    iget-wide p3, p4, Ljavax/vecmath/Tuple2d;->y:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final set(DD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iput-wide p3, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple2d;)V
    .locals 2

    .line 5
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 6
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 7
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 8
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final set([D)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    const/4 v0, 0x1

    .line 4
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final setX(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple2d;)V
    .locals 4

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple2d;Ljavax/vecmath/Tuple2d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple2d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    iget-wide p1, p2, Ljavax/vecmath/Tuple2d;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple2d;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljavax/vecmath/Tuple2d;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
