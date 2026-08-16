.class public final Lrd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[J

.field public final b:[J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>([J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrd/a;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrd/a;->d:J

    invoke-virtual {p0, p1}, Lrd/a;->o([J)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lrd/a;->a:[J

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lrd/a;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 8

    iget-object v0, p0, Lrd/a;->a:[J

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    sub-int v4, v0, v3

    shr-int/2addr v4, v1

    add-int/2addr v4, v3

    iget-object v5, p0, Lrd/a;->a:[J

    aget-wide v6, v5, v4

    cmp-long v5, v6, p1

    if-gez v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lrd/a;->a:[J

    aget-wide v4, v3, v0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_2

    iget-object v2, p0, Lrd/a;->b:[J

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    invoke-virtual {p0, p1, p2}, Lrd/a;->n(J)V

    return v1

    :cond_2
    return v2
.end method

.method public b(Lrd/a;)V
    .locals 9

    iget-object v0, p0, Lrd/a;->a:[J

    array-length v1, v0

    iget-object v2, p1, Lrd/a;->a:[J

    array-length v2, v2

    const-string v3, "Histograms must have matching intervals"

    if-ne v1, v2, :cond_3

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lrd/a;->a:[J

    aget-wide v5, v4, v2

    iget-object v4, p1, Lrd/a;->a:[J

    aget-wide v7, v4, v2

    cmp-long v4, v5, v7

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lrd/a;->b:[J

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lrd/a;->b:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lrd/a;->b:[J

    aget-wide v6, v5, v1

    add-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, p1, Lrd/a;->c:J

    invoke-virtual {p0, v0, v1}, Lrd/a;->n(J)V

    iget-wide v0, p1, Lrd/a;->d:J

    invoke-virtual {p0, v0, v1}, Lrd/a;->n(J)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrd/a;->d:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lrd/a;->c:J

    iget-object v2, p0, Lrd/a;->b:[J

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lrd/a;->b:[J

    aput-wide v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()J
    .locals 7

    iget-object v0, p0, Lrd/a;->b:[J

    array-length v0, v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lrd/a;->b:[J

    aget-wide v5, v4, v3

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public e(I)J
    .locals 3

    iget-object v0, p0, Lrd/a;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public f()J
    .locals 2

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    invoke-virtual {p0, v0, v1}, Lrd/a;->m(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lrd/a;->d:J

    return-wide v0
.end method

.method public h()Ljava/math/BigDecimal;
    .locals 12

    invoke-virtual {p0}, Lrd/a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    :cond_0
    iget-object v0, p0, Lrd/a;->b:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    iget-wide v4, p0, Lrd/a;->c:J

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iget-object v6, p0, Lrd/a;->a:[J

    array-length v6, v6

    :goto_1
    if-ge v1, v6, :cond_3

    iget-object v7, p0, Lrd/a;->b:[J

    aget-wide v8, v7, v1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_2

    iget-object v7, p0, Lrd/a;->a:[J

    aget-wide v8, v7, v1

    iget-wide v10, p0, Lrd/a;->d:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    add-long/2addr v4, v7

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v5, p0, Lrd/a;->b:[J

    aget-wide v8, v5, v1

    invoke-direct {v4, v8, v9}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v7, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_2
    iget-object v4, p0, Lrd/a;->a:[J

    aget-wide v7, v4, v1

    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    iget-wide v4, p0, Lrd/a;->c:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lrd/a;->d()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v2, 0x2

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lrd/a;->c:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lrd/a;->a:[J

    array-length v0, v0

    return v0
.end method

.method public k()J
    .locals 2

    const-wide v0, 0x3fefae147ae147aeL    # 0.99

    invoke-virtual {p0, v0, v1}, Lrd/a;->m(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(I)J
    .locals 3

    iget-object v0, p0, Lrd/a;->a:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public m(D)J
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v0, v0, p1

    if-gez v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lrd/a;->d()J

    move-result-wide v0

    long-to-double v2, v0

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    sub-long/2addr v0, p1

    iget-object p1, p0, Lrd/a;->b:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lrd/a;->b:[J

    aget-wide v6, p2, p1

    cmp-long p2, v2, v6

    if-eqz p2, :cond_0

    add-long/2addr v4, v6

    cmp-long p2, v4, v0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lrd/a;->a:[J

    aget-wide p1, p2, p1

    return-wide p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "factor must be >= 0.0 and <= 1.0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(J)V
    .locals 2

    iget-wide v0, p0, Lrd/a;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lrd/a;->c:J

    :cond_0
    iget-wide v0, p0, Lrd/a;->d:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iput-wide p1, p0, Lrd/a;->d:J

    :cond_1
    return-void
.end method

.method public final o([J)V
    .locals 8

    array-length v0, p1

    if-lez v0, :cond_3

    array-length v0, p1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    move-wide v1, v4

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bound "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is not greater than "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bounds must be positive values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide at least one interval"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Histogram{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrd/a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrd/a;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mean="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrd/a;->h()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "99%="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrd/a;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "99.99%="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrd/a;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrd/a;->b:[J

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lrd/a;->a:[J

    aget-wide v5, v4, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lrd/a;->b:[J

    aget-wide v5, v4, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lrd/a;->b:[J

    array-length v1, v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
