.class public Lfl/n$e;
.super Lfl/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Lfl/n;-><init>()V

    iput p1, p0, Lfl/n$e;->d:I

    iput p2, p0, Lfl/n;->b:I

    iput p3, p0, Lfl/n;->c:I

    iput p4, p0, Lfl/n$e;->e:I

    iput-wide p5, p0, Lfl/n;->a:J

    sub-int/2addr p2, p1

    iput p2, p0, Lfl/n$e;->f:I

    return-void
.end method


# virtual methods
.method public a([JI[J)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lfl/n;->b:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x6

    aget-wide v5, p3, v5

    iget v7, v0, Lfl/n;->c:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x7

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0x8

    aget-wide v10, p3, v10

    shl-long v12, v10, v7

    xor-long/2addr v8, v12

    ushr-long/2addr v10, v4

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    shl-long v14, v12, v7

    xor-long/2addr v10, v14

    ushr-long/2addr v12, v4

    const/16 v14, 0xa

    aget-wide v14, p3, v14

    shl-long v16, v14, v7

    xor-long v12, v12, v16

    ushr-long/2addr v14, v4

    const/16 v4, 0xb

    aget-wide v16, p3, v4

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    iget v4, v0, Lfl/n$e;->f:I

    ushr-long v16, v14, v4

    xor-long v16, v2, v16

    const/4 v4, 0x0

    aget-wide v18, p3, v4

    xor-long v18, v18, v16

    iget v4, v0, Lfl/n$e;->d:I

    shl-long v16, v16, v4

    xor-long v16, v18, v16

    aput-wide v16, p1, p2

    add-int/lit8 v7, p2, 0x1

    const/16 v16, 0x1

    aget-wide v16, p3, v16

    xor-long v16, v16, v5

    iget v1, v0, Lfl/n$e;->e:I

    ushr-long/2addr v2, v1

    xor-long v2, v16, v2

    shl-long v16, v5, v4

    xor-long v2, v2, v16

    aput-wide v2, p1, v7

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    aget-wide v16, p3, v3

    xor-long v16, v16, v8

    ushr-long/2addr v5, v1

    xor-long v5, v16, v5

    shl-long v16, v8, v4

    xor-long v5, v5, v16

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x3

    const/4 v3, 0x3

    aget-wide v5, p3, v3

    xor-long/2addr v5, v10

    ushr-long v7, v8, v1

    xor-long/2addr v5, v7

    shl-long v7, v10, v4

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    aget-wide v5, p3, v3

    xor-long/2addr v5, v12

    ushr-long v7, v10, v1

    xor-long/2addr v5, v7

    shl-long v7, v12, v4

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-wide v5, p3, v2

    xor-long/2addr v5, v14

    ushr-long v1, v12, v1

    xor-long/2addr v1, v5

    shl-long v4, v14, v4

    xor-long/2addr v1, v4

    iget-wide v4, v0, Lfl/n;->a:J

    and-long/2addr v1, v4

    aput-wide v1, p1, v3

    return-void
.end method

.method public b([JI[J)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lfl/n;->b:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x6

    aget-wide v5, p3, v5

    iget v7, v0, Lfl/n;->c:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x7

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0x8

    aget-wide v10, p3, v10

    shl-long v12, v10, v7

    xor-long/2addr v8, v12

    ushr-long/2addr v10, v4

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    shl-long v14, v12, v7

    xor-long/2addr v10, v14

    ushr-long/2addr v12, v4

    const/16 v14, 0xa

    aget-wide v14, p3, v14

    shl-long v16, v14, v7

    xor-long v12, v12, v16

    ushr-long/2addr v14, v4

    const/16 v4, 0xb

    aget-wide v16, p3, v4

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    iget v4, v0, Lfl/n$e;->f:I

    ushr-long v16, v14, v4

    xor-long v16, v2, v16

    aget-wide v18, p1, p2

    const/4 v4, 0x0

    aget-wide v20, p3, v4

    xor-long v20, v20, v16

    iget v4, v0, Lfl/n$e;->d:I

    shl-long v16, v16, v4

    xor-long v16, v20, v16

    xor-long v16, v18, v16

    aput-wide v16, p1, p2

    add-int/lit8 v7, p2, 0x1

    aget-wide v16, p1, v7

    const/16 v18, 0x1

    aget-wide v18, p3, v18

    xor-long v18, v18, v5

    iget v1, v0, Lfl/n$e;->e:I

    ushr-long/2addr v2, v1

    xor-long v2, v18, v2

    shl-long v18, v5, v4

    xor-long v2, v2, v18

    xor-long v2, v16, v2

    aput-wide v2, p1, v7

    add-int/lit8 v2, p2, 0x2

    aget-wide v16, p1, v2

    const/4 v3, 0x2

    aget-wide v18, p3, v3

    xor-long v18, v18, v8

    ushr-long/2addr v5, v1

    xor-long v5, v18, v5

    shl-long v18, v8, v4

    xor-long v5, v5, v18

    xor-long v5, v16, v5

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x3

    aget-wide v5, p1, v2

    const/4 v3, 0x3

    aget-wide v16, p3, v3

    xor-long v16, v16, v10

    ushr-long v7, v8, v1

    xor-long v7, v16, v7

    shl-long v16, v10, v4

    xor-long v7, v7, v16

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x4

    aget-wide v5, p1, v2

    const/4 v3, 0x4

    aget-wide v7, p3, v3

    xor-long/2addr v7, v12

    ushr-long v9, v10, v1

    xor-long/2addr v7, v9

    shl-long v9, v12, v4

    xor-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-wide v5, p1, v3

    aget-wide v7, p3, v2

    xor-long/2addr v7, v14

    ushr-long v1, v12, v1

    xor-long/2addr v1, v7

    shl-long v7, v14, v4

    xor-long/2addr v1, v7

    iget-wide v7, v0, Lfl/n;->a:J

    and-long/2addr v1, v7

    xor-long/2addr v1, v5

    aput-wide v1, p1, v3

    return-void
.end method
