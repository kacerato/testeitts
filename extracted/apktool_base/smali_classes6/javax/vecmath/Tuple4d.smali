.class public abstract Ljavax/vecmath/Tuple4d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x41e7ac386c94bf4cL


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 23
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 24
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 25
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 3
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 4
    iput-wide p5, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 5
    iput-wide p7, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 18
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 19
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 20
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    const/4 v0, 0x1

    .line 8
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    const/4 v0, 0x2

    .line 9
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    const/4 v0, 0x3

    .line 10
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method


# virtual methods
.method public final absolute()V
    .locals 2

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final absolute(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple4d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple4d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple4d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final clamp(DD)V
    .locals 3

    .line 19
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    .line 20
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->x:D

    goto :goto_0

    :cond_0
    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    .line 21
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 22
    :cond_1
    :goto_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_2

    .line 23
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->y:D

    goto :goto_1

    :cond_2
    cmpg-double v0, v0, p1

    if-gez v0, :cond_3

    .line 24
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 25
    :cond_3
    :goto_1
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_4

    .line 26
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_2

    :cond_4
    cmpg-double v0, v0, p1

    if-gez v0, :cond_5

    .line 27
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 28
    :cond_5
    :goto_2
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_6

    .line 29
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_3

    :cond_6
    cmpg-double p3, v0, p1

    if-gez p3, :cond_7

    .line 30
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    :cond_7
    :goto_3
    return-void
.end method

.method public final clamp(DDLjavax/vecmath/Tuple4d;)V
    .locals 3

    .line 2
    iget-wide v0, p5, Ljavax/vecmath/Tuple4d;->x:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    .line 3
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->x:D

    goto :goto_0

    :cond_0
    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    .line 4
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    goto :goto_0

    .line 5
    :cond_1
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    :goto_0
    iget-wide v0, p5, Ljavax/vecmath/Tuple4d;->y:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_2

    .line 7
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->y:D

    goto :goto_1

    :cond_2
    cmpg-double v2, v0, p1

    if-gez v2, :cond_3

    .line 8
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    goto :goto_1

    .line 9
    :cond_3
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 10
    :goto_1
    iget-wide v0, p5, Ljavax/vecmath/Tuple4d;->z:D

    cmpl-double v2, v0, p3

    if-lez v2, :cond_4

    .line 11
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_2

    :cond_4
    cmpg-double v2, v0, p1

    if-gez v2, :cond_5

    .line 12
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_2

    .line 13
    :cond_5
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 14
    :goto_2
    iget-wide v0, p5, Ljavax/vecmath/Tuple4d;->w:D

    cmpl-double p5, v0, p3

    if-lez p5, :cond_6

    .line 15
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_3

    :cond_6
    cmpg-double p3, v0, p1

    if-gez p3, :cond_7

    .line 16
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_3

    .line 17
    :cond_7
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    :goto_3
    return-void
.end method

.method public final clamp(FF)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    .line 18
    invoke-virtual {p0, v0, v1, p1, p2}, Ljavax/vecmath/Tuple4d;->clamp(DD)V

    return-void
.end method

.method public final clamp(FFLjavax/vecmath/Tuple4d;)V
    .locals 6

    float-to-double v1, p1

    float-to-double v3, p2

    move-object v0, p0

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljavax/vecmath/Tuple4d;->clamp(DDLjavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public final clampMax(D)V
    .locals 2

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 16
    :cond_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_1

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 17
    :cond_1
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_2

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 18
    :cond_2
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_3

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    :cond_3
    return-void
.end method

.method public final clampMax(DLjavax/vecmath/Tuple4d;)V
    .locals 3

    .line 2
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->x:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    .line 3
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    goto :goto_0

    .line 4
    :cond_0
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 5
    :goto_0
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->y:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    .line 6
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    goto :goto_1

    .line 7
    :cond_1
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 8
    :goto_1
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->z:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_2

    .line 9
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_2

    .line 10
    :cond_2
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 11
    :goto_2
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->w:D

    cmpl-double v0, v0, p1

    if-lez v0, :cond_3

    .line 12
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_3

    .line 13
    :cond_3
    iget-wide p1, p3, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    :goto_3
    return-void
.end method

.method public final clampMax(F)V
    .locals 2

    float-to-double v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Ljavax/vecmath/Tuple4d;->clampMax(D)V

    return-void
.end method

.method public final clampMax(FLjavax/vecmath/Tuple4d;)V
    .locals 2

    float-to-double v0, p1

    .line 1
    invoke-virtual {p0, v0, v1, p2}, Ljavax/vecmath/Tuple4d;->clampMax(DLjavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public final clampMin(D)V
    .locals 2

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 16
    :cond_0
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 17
    :cond_1
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_2

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 18
    :cond_2
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_3

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    :cond_3
    return-void
.end method

.method public final clampMin(DLjavax/vecmath/Tuple4d;)V
    .locals 3

    .line 2
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->x:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    .line 3
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    goto :goto_0

    .line 4
    :cond_0
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 5
    :goto_0
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->y:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    .line 6
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    goto :goto_1

    .line 7
    :cond_1
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 8
    :goto_1
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->z:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_2

    .line 9
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    goto :goto_2

    .line 10
    :cond_2
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 11
    :goto_2
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->w:D

    cmpg-double p3, v0, p1

    if-gez p3, :cond_3

    .line 12
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    goto :goto_3

    .line 13
    :cond_3
    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    :goto_3
    return-void
.end method

.method public final clampMin(F)V
    .locals 2

    float-to-double v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Ljavax/vecmath/Tuple4d;->clampMin(D)V

    return-void
.end method

.method public final clampMin(FLjavax/vecmath/Tuple4d;)V
    .locals 2

    float-to-double v0, p1

    .line 1
    invoke-virtual {p0, v0, v1, p2}, Ljavax/vecmath/Tuple4d;->clampMin(DLjavax/vecmath/Tuple4d;)V

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

.method public epsilonEquals(Ljavax/vecmath/Tuple4d;D)Z
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

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
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    cmpg-double v2, v0, v4

    if-gez v2, :cond_4

    neg-double v0, v0

    :cond_4
    cmpl-double v0, v0, p2

    if-lez v0, :cond_5

    return v3

    :cond_5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_6
    cmpg-double v2, v0, v4

    if-gez v2, :cond_7

    neg-double v0, v0

    :cond_7
    cmpl-double v0, v0, p2

    if-lez v0, :cond_8

    return v3

    :cond_8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    :cond_9
    cmpg-double p1, v0, v4

    if-gez p1, :cond_a

    neg-double v0, v0

    :cond_a
    cmpl-double p1, v0, p2

    if-lez p1, :cond_b

    return v3

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Tuple4d;

    .line 3
    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->x:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->y:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->z:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->w:D
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

.method public equals(Ljavax/vecmath/Tuple4d;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->x:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->y:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->z:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple4d;->w:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final get([D)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->x:D

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    .line 2
    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->y:D

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    .line 3
    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->z:D

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    .line 4
    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->w:D

    aput-wide v1, p1, v0

    return-void
.end method

.method public final getW()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-wide v0
.end method

.method public final getX()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    return-wide v0
.end method

.method public final getZ()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    invoke-static {v0, v1}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->y:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Tuple4d;->z:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    invoke-static {v2, v3}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public interpolate(Ljavax/vecmath/Tuple4d;D)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 7
    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v2, v0

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 8
    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v0

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 9
    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v0

    iget-wide v4, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 10
    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr p2, v2

    add-double/2addr v0, p2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public interpolate(Ljavax/vecmath/Tuple4d;F)V
    .locals 2

    float-to-double v0, p2

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Ljavax/vecmath/Tuple4d;->interpolate(Ljavax/vecmath/Tuple4d;D)V

    return-void
.end method

.method public interpolate(Ljavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;D)V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p3

    .line 2
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v2, v0

    iget-wide v4, p2, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 3
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v2, v0

    iget-wide v4, p2, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 4
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v2, v0

    iget-wide v4, p2, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    iput-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 5
    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, v2

    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr p3, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public interpolate(Ljavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;F)V
    .locals 2

    float-to-double v0, p3

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ljavax/vecmath/Tuple4d;->interpolate(Ljavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;D)V

    return-void
.end method

.method public final negate()V
    .locals 2

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final negate(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final scale(D)V
    .locals 2

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final scale(DLjavax/vecmath/Tuple4d;)V
    .locals 2

    .line 1
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final scaleAdd(DLjavax/vecmath/Tuple4d;)V
    .locals 4

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p3, Ljavax/vecmath/Tuple4d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, p1

    iget-wide v2, p3, Ljavax/vecmath/Tuple4d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, p1

    iget-wide v2, p3, Ljavax/vecmath/Tuple4d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr p1, v0

    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->w:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final scaleAdd(DLjavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 1
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->x:D

    mul-double/2addr v0, p1

    iget-wide v2, p4, Ljavax/vecmath/Tuple4d;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->y:D

    mul-double/2addr v0, p1

    iget-wide v2, p4, Ljavax/vecmath/Tuple4d;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->z:D

    mul-double/2addr v0, p1

    iget-wide v2, p4, Ljavax/vecmath/Tuple4d;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p3, Ljavax/vecmath/Tuple4d;->w:D

    mul-double/2addr p1, v0

    iget-wide p3, p4, Ljavax/vecmath/Tuple4d;->w:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final scaleAdd(FLjavax/vecmath/Tuple4d;)V
    .locals 2

    float-to-double v0, p1

    .line 5
    invoke-virtual {p0, v0, v1, p2}, Ljavax/vecmath/Tuple4d;->scaleAdd(DLjavax/vecmath/Tuple4d;)V

    return-void
.end method

.method public final set(DDDD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iput-wide p3, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iput-wide p5, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iput-wide p7, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 9
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 10
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 11
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 13
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 14
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 15
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 16
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final set([D)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    const/4 v0, 0x1

    .line 6
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    const/4 v0, 0x2

    .line 7
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    const/4 v0, 0x3

    .line 8
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final setW(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final setX(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->y:D

    return-void
.end method

.method public final setZ(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Tuple4d;->z:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple4d;Ljavax/vecmath/Tuple4d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple4d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->x:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple4d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->y:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    iget-wide v2, p2, Ljavax/vecmath/Tuple4d;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->z:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    iget-wide p1, p2, Ljavax/vecmath/Tuple4d;->w:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Tuple4d;->w:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Tuple4d;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljavax/vecmath/Tuple4d;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
