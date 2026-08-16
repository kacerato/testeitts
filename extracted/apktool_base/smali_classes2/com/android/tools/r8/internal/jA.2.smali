.class public abstract Lcom/android/tools/r8/internal/jA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)I
    .locals 1

    .line 1
    const v0, -0x61c88647

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static a(IF)I
    .locals 4

    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/jA;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too large ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " expected elements with load factor "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(J)J
    .locals 2

    .line 2
    const-wide v0, -0x61c8864680b583ebL

    mul-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static b(IF)I
    .locals 2

    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static b(J)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sub-long/2addr p0, v1

    const/4 v0, 0x1

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    const/4 v0, 0x2

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    const/4 v0, 0x4

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    const/16 v0, 0x8

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    const/16 v0, 0x10

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    const/16 v0, 0x20

    shr-long v3, p0, v0

    or-long/2addr p0, v3

    add-long/2addr p0, v1

    return-wide p0
.end method
