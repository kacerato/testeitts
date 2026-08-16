.class public LYl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[J

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, LYl/f;->a:[J

    return-void
.end method

.method public constructor <init>(LYl/e;)V
    .locals 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LYl/e;->a:[I

    array-length v0, v0

    iput v0, p0, LYl/f;->b:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, LYl/f;->a:[J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LYl/f;->b:I

    if-ge v0, v2, :cond_3

    iget-object v2, p1, LYl/e;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v0

    :goto_1
    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x800

    goto :goto_1

    :cond_0
    iget v4, p0, LYl/f;->b:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_1

    iget-object v4, p1, LYl/e;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v3, v4, v3

    int-to-long v3, v3

    goto :goto_2

    :cond_1
    move v0, v3

    move-wide v3, v5

    :goto_2
    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    const-wide/16 v7, 0x800

    add-long/2addr v3, v7

    goto :goto_2

    :cond_2
    iget-object v5, p0, LYl/f;->a:[J

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long v2, v3, v2

    add-long/2addr v6, v2

    aput-wide v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYl/f;->a:[J

    return-void
.end method


# virtual methods
.method public final a(LYl/f;)V
    .locals 7

    iget-object v0, p1, LYl/f;->a:[J

    array-length v1, v0

    iget-object v2, p0, LYl/f;->a:[J

    array-length v3, v2

    if-le v1, v3, :cond_0

    array-length v0, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/a;->T([JI)[J

    move-result-object v0

    iput-object v0, p0, LYl/f;->a:[J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, LYl/f;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LYl/f;->a:[J

    aget-wide v3, v2, v0

    aget-wide v5, v1, v0

    add-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(LYl/f;)LYl/f;
    .locals 13

    iget-object v0, p0, LYl/f;->a:[J

    array-length v0, v0

    iget-object v1, p1, LYl/f;->a:[J

    array-length v1, v1

    if-ne v1, v0, :cond_4

    iget v1, p0, LYl/f;->b:I

    iget v2, p1, LYl/f;->b:I

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1}, LYl/f;->d(LYl/f;)LYl/f;

    move-result-object p1

    iget-object v1, p1, LYl/f;->a:[J

    array-length v1, v1

    if-le v1, v0, :cond_3

    iget v1, p0, LYl/f;->b:I

    rem-int/lit8 v1, v1, 0x2

    const-wide v2, 0x7ff0007ffL

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v4, p1, LYl/f;->a:[J

    array-length v5, v4

    if-ge v1, v5, :cond_0

    sub-int v5, v1, v0

    aget-wide v6, v4, v5

    aget-wide v8, v4, v1

    add-long/2addr v6, v8

    and-long/2addr v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v0}, Lorg/bouncycastle/util/a;->T([JI)[J

    move-result-object v0

    iput-object v0, p1, LYl/f;->a:[J

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_1
    iget-object v4, p1, LYl/f;->a:[J

    array-length v5, v4

    const-wide/16 v6, 0x7ff

    if-ge v1, v5, :cond_2

    sub-int v5, v1, v0

    aget-wide v8, v4, v5

    add-int/lit8 v10, v1, -0x1

    aget-wide v10, v4, v10

    const/16 v12, 0x18

    shr-long/2addr v10, v12

    add-long/2addr v8, v10

    aput-wide v8, v4, v5

    aget-wide v10, v4, v1

    and-long/2addr v6, v10

    shl-long/2addr v6, v12

    add-long/2addr v8, v6

    aput-wide v8, v4, v5

    and-long v6, v8, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4, v0}, Lorg/bouncycastle/util/a;->T([JI)[J

    move-result-object v0

    iput-object v0, p1, LYl/f;->a:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    and-long/2addr v2, v6

    aput-wide v2, v0, v1

    :cond_3
    :goto_2
    new-instance v0, LYl/f;

    iget-object p1, p1, LYl/f;->a:[J

    invoke-direct {v0, p1}, LYl/f;-><init>([J)V

    iget p1, p0, LYl/f;->b:I

    iput p1, v0, LYl/f;->b:I

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of coefficients must be the same"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)V
    .locals 6

    int-to-long v0, p1

    const/16 p1, 0x18

    shl-long v2, v0, p1

    add-long/2addr v2, v0

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LYl/f;->a:[J

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-wide v4, v0, p1

    const/4 v1, 0x1

    shl-long/2addr v4, v1

    and-long/2addr v4, v2

    aput-wide v4, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, LYl/f;

    iget-object v1, p0, LYl/f;->a:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, LYl/f;-><init>([J)V

    iget v1, p0, LYl/f;->b:I

    iput v1, v0, LYl/f;->b:I

    return-object v0
.end method

.method public final d(LYl/f;)LYl/f;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LYl/f;->a:[J

    move-object/from16 v2, p1

    iget-object v2, v2, LYl/f;->a:[J

    array-length v3, v2

    const/16 v4, 0x20

    const-wide v5, 0x7ff0007ffL

    const/4 v7, 0x0

    if-gt v3, v4, :cond_2

    mul-int/lit8 v4, v3, 0x2

    new-instance v8, LYl/f;

    new-array v9, v4, [J

    invoke-direct {v8, v9}, LYl/f;-><init>([J)V

    move v9, v7

    :goto_0
    if-ge v9, v4, :cond_1

    sub-int v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_1
    add-int/lit8 v11, v3, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-gt v10, v11, :cond_0

    sub-int v11, v9, v10

    aget-wide v11, v1, v11

    aget-wide v13, v2, v10

    mul-long/2addr v11, v13

    const-wide v13, 0x7ff000000L

    const-wide/16 v15, 0x7ff

    and-long v17, v11, v15

    add-long v17, v17, v13

    and-long v13, v11, v17

    const/16 v17, 0x30

    ushr-long v11, v11, v17

    and-long/2addr v11, v15

    iget-object v15, v8, LYl/f;->a:[J

    aget-wide v16, v15, v9

    add-long v16, v16, v13

    and-long v13, v16, v5

    aput-wide v13, v15, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v16, v15, v13

    add-long v16, v16, v11

    and-long v11, v16, v5

    aput-wide v11, v15, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-object v8

    :cond_2
    div-int/lit8 v4, v3, 0x2

    new-instance v8, LYl/f;

    invoke-static {v1, v4}, Lorg/bouncycastle/util/a;->T([JI)[J

    move-result-object v9

    invoke-direct {v8, v9}, LYl/f;-><init>([J)V

    new-instance v9, LYl/f;

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/util/a;->a0([JII)[J

    move-result-object v1

    invoke-direct {v9, v1}, LYl/f;-><init>([J)V

    new-instance v1, LYl/f;

    invoke-static {v2, v4}, Lorg/bouncycastle/util/a;->T([JI)[J

    move-result-object v10

    invoke-direct {v1, v10}, LYl/f;-><init>([J)V

    new-instance v10, LYl/f;

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/util/a;->a0([JII)[J

    move-result-object v2

    invoke-direct {v10, v2}, LYl/f;-><init>([J)V

    invoke-virtual {v8}, LYl/f;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LYl/f;

    invoke-virtual {v2, v9}, LYl/f;->a(LYl/f;)V

    invoke-virtual {v1}, LYl/f;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LYl/f;

    invoke-virtual {v11, v10}, LYl/f;->a(LYl/f;)V

    invoke-virtual {v8, v1}, LYl/f;->d(LYl/f;)LYl/f;

    move-result-object v1

    invoke-virtual {v9, v10}, LYl/f;->d(LYl/f;)LYl/f;

    move-result-object v8

    invoke-virtual {v2, v11}, LYl/f;->d(LYl/f;)LYl/f;

    move-result-object v2

    invoke-virtual {v2, v1}, LYl/f;->e(LYl/f;)V

    invoke-virtual {v2, v8}, LYl/f;->e(LYl/f;)V

    new-instance v9, LYl/f;

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v9, v3}, LYl/f;-><init>(I)V

    move v3, v7

    :goto_2
    iget-object v10, v1, LYl/f;->a:[J

    array-length v11, v10

    if-ge v3, v11, :cond_3

    iget-object v11, v9, LYl/f;->a:[J

    aget-wide v12, v10, v3

    and-long/2addr v12, v5

    aput-wide v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v1, v7

    :goto_3
    iget-object v3, v2, LYl/f;->a:[J

    array-length v10, v3

    if-ge v1, v10, :cond_4

    iget-object v10, v9, LYl/f;->a:[J

    add-int v11, v4, v1

    aget-wide v12, v10, v11

    aget-wide v14, v3, v1

    add-long/2addr v12, v14

    and-long/2addr v12, v5

    aput-wide v12, v10, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v1, v8, LYl/f;->a:[J

    array-length v2, v1

    if-ge v7, v2, :cond_5

    iget-object v2, v9, LYl/f;->a:[J

    mul-int/lit8 v3, v4, 0x2

    add-int/2addr v3, v7

    aget-wide v10, v2, v3

    aget-wide v12, v1, v7

    add-long/2addr v10, v12

    and-long/2addr v10, v5

    aput-wide v10, v2, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    return-object v9
.end method

.method public final e(LYl/f;)V
    .locals 7

    iget-object v0, p1, LYl/f;->a:[J

    array-length v1, v0

    iget-object v2, p0, LYl/f;->a:[J

    array-length v3, v2

    if-le v1, v3, :cond_0

    array-length v0, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/a;->T([JI)[J

    move-result-object v0

    iput-object v0, p0, LYl/f;->a:[J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, LYl/f;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LYl/f;->a:[J

    const-wide v3, 0x800000800000L

    aget-wide v5, v2, v0

    add-long/2addr v5, v3

    aget-wide v3, v1, v0

    sub-long/2addr v5, v3

    const-wide v3, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LYl/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, LYl/f;->a:[J

    check-cast p1, LYl/f;

    iget-object p1, p1, LYl/f;->a:[J

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->j([J[J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(LYl/f;I)V
    .locals 8

    int-to-long v0, p2

    const/16 p2, 0x18

    shl-long v2, v0, p2

    add-long/2addr v2, v0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p1, LYl/f;->a:[J

    array-length v1, v0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, LYl/f;->a:[J

    const-wide v4, 0x800000800000L

    aget-wide v6, v1, p2

    add-long/2addr v6, v4

    aget-wide v4, v0, p2

    sub-long/2addr v6, v4

    and-long v4, v6, v2

    aput-wide v4, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()LYl/e;
    .locals 11

    iget v0, p0, LYl/f;->b:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LYl/f;->a:[J

    array-length v4, v3

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-wide v5, v3, v1

    const-wide/16 v7, 0x7ff

    and-long v9, v5, v7

    long-to-int v3, v9

    aput v3, v0, v2

    iget v3, p0, LYl/f;->b:I

    if-ge v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x18

    shr-long/2addr v5, v3

    and-long/2addr v5, v7

    long-to-int v3, v5

    aput v3, v0, v4

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, LYl/e;

    invoke-direct {v1, v0}, LYl/e;-><init>([I)V

    return-object v1
.end method
