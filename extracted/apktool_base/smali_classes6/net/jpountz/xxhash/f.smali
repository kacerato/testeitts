.class public final Lnet/jpountz/xxhash/f;
.super Lnet/jpountz/xxhash/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/xxhash/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/jpountz/xxhash/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 6

    iget-wide v0, p0, Lnet/jpountz/xxhash/a;->h:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    const v1, 0x165667b1

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/jpountz/xxhash/a;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget v2, p0, Lnet/jpountz/xxhash/a;->d:I

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lnet/jpountz/xxhash/a;->e:I

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lnet/jpountz/xxhash/a;->f:I

    const/16 v3, 0x12

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/jpountz/xxhash/c;->b:I

    add-int/2addr v0, v1

    :goto_0
    int-to-long v2, v0

    iget-wide v4, p0, Lnet/jpountz/xxhash/a;->h:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lnet/jpountz/xxhash/a;->g:I

    add-int/lit8 v3, v3, -0x4

    const v4, -0x3d4d51c3

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lnet/jpountz/xxhash/a;->i:[B

    invoke-static {v3, v2}, Lnet/jpountz/util/d;->h([BI)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    const/16 v3, 0x11

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v3, 0x27d4eb2f

    mul-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_1
    :goto_2
    iget v3, p0, Lnet/jpountz/xxhash/a;->g:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lnet/jpountz/xxhash/a;->i:[B

    invoke-static {v3, v2}, Lnet/jpountz/util/d;->d([BI)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    const/16 v3, 0xb

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v3, -0x61c8864f

    mul-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    const v1, -0x7a143589

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    mul-int/2addr v0, v4

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method public f([BII)V
    .locals 10

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/c;->c([BII)V

    iget-wide v0, p0, Lnet/jpountz/xxhash/a;->h:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/xxhash/a;->h:J

    iget v0, p0, Lnet/jpountz/xxhash/a;->g:I

    add-int v1, v0, p3

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lnet/jpountz/xxhash/a;->i:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lnet/jpountz/xxhash/a;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/jpountz/xxhash/a;->g:I

    return-void

    :cond_0
    add-int/2addr p3, p2

    const/4 v1, 0x0

    const v3, -0x61c8864f

    const/16 v4, 0xd

    const v5, -0x7a143589

    if-lez v0, :cond_1

    iget-object v6, p0, Lnet/jpountz/xxhash/a;->i:[B

    rsub-int/lit8 v7, v0, 0x10

    invoke-static {p1, p2, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/jpountz/xxhash/a;->c:I

    iget-object v6, p0, Lnet/jpountz/xxhash/a;->i:[B

    invoke-static {v6, v1}, Lnet/jpountz/util/d;->h([BI)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/a;->c:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/2addr v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/a;->c:I

    iget v0, p0, Lnet/jpountz/xxhash/a;->d:I

    iget-object v6, p0, Lnet/jpountz/xxhash/a;->i:[B

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lnet/jpountz/util/d;->h([BI)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/a;->d:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/2addr v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/a;->d:I

    iget v0, p0, Lnet/jpountz/xxhash/a;->e:I

    iget-object v6, p0, Lnet/jpountz/xxhash/a;->i:[B

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lnet/jpountz/util/d;->h([BI)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/a;->e:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/2addr v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/a;->e:I

    iget v0, p0, Lnet/jpountz/xxhash/a;->f:I

    iget-object v6, p0, Lnet/jpountz/xxhash/a;->i:[B

    const/16 v7, 0xc

    invoke-static {v6, v7}, Lnet/jpountz/util/d;->h([BI)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/a;->f:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/2addr v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/a;->f:I

    iget v0, p0, Lnet/jpountz/xxhash/a;->g:I

    sub-int/2addr v2, v0

    add-int/2addr p2, v2

    iput v1, p0, Lnet/jpountz/xxhash/a;->g:I

    :cond_1
    add-int/lit8 v0, p3, -0x10

    iget v2, p0, Lnet/jpountz/xxhash/a;->c:I

    iget v6, p0, Lnet/jpountz/xxhash/a;->d:I

    iget v7, p0, Lnet/jpountz/xxhash/a;->e:I

    iget v8, p0, Lnet/jpountz/xxhash/a;->f:I

    :goto_0
    if-gt p2, v0, :cond_2

    invoke-static {p1, p2}, Lnet/jpountz/util/d;->h([BI)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v2, v9

    invoke-static {v2, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    mul-int/2addr v2, v3

    add-int/lit8 v9, p2, 0x4

    invoke-static {p1, v9}, Lnet/jpountz/util/d;->h([BI)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v6, v9

    invoke-static {v6, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/lit8 v9, p2, 0x8

    invoke-static {p1, v9}, Lnet/jpountz/util/d;->h([BI)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v7, v9

    invoke-static {v7, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    mul-int/2addr v7, v3

    add-int/lit8 v9, p2, 0xc

    invoke-static {p1, v9}, Lnet/jpountz/util/d;->h([BI)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    mul-int/2addr v8, v3

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_2
    iput v2, p0, Lnet/jpountz/xxhash/a;->c:I

    iput v6, p0, Lnet/jpountz/xxhash/a;->d:I

    iput v7, p0, Lnet/jpountz/xxhash/a;->e:I

    iput v8, p0, Lnet/jpountz/xxhash/a;->f:I

    if-ge p2, p3, :cond_3

    iget-object v0, p0, Lnet/jpountz/xxhash/a;->i:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lnet/jpountz/xxhash/a;->g:I

    :cond_3
    return-void
.end method
