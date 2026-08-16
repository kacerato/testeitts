.class public Lfl/n$d;
.super Lfl/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Lfl/n;-><init>()V

    iput p1, p0, Lfl/n$d;->d:I

    iput p2, p0, Lfl/n;->b:I

    iput p3, p0, Lfl/n;->c:I

    iput p4, p0, Lfl/n$d;->e:I

    iput-wide p5, p0, Lfl/n;->a:J

    add-int/2addr p4, p2

    iput p4, p0, Lfl/n$d;->f:I

    sub-int/2addr p1, p2

    iput p1, p0, Lfl/n$d;->g:I

    return-void
.end method


# virtual methods
.method public a([JI[J)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x7

    aget-wide v1, p3, v1

    iget v3, v0, Lfl/n;->b:I

    ushr-long v4, v1, v3

    const/16 v6, 0x8

    aget-wide v6, p3, v6

    iget v8, v0, Lfl/n;->c:I

    shl-long v9, v6, v8

    xor-long/2addr v4, v9

    ushr-long/2addr v6, v3

    const/16 v9, 0x9

    aget-wide v9, p3, v9

    shl-long v11, v9, v8

    xor-long/2addr v6, v11

    ushr-long/2addr v9, v3

    const/16 v11, 0xa

    aget-wide v11, p3, v11

    shl-long v13, v11, v8

    xor-long/2addr v9, v13

    ushr-long/2addr v11, v3

    const/16 v13, 0xb

    aget-wide v13, p3, v13

    shl-long/2addr v13, v8

    xor-long/2addr v11, v13

    const/4 v13, 0x5

    aget-wide v14, p3, v13

    ushr-long/2addr v14, v3

    const/16 v16, 0x6

    aget-wide v16, p3, v16

    shl-long v18, v16, v8

    xor-long v14, v14, v18

    iget v13, v0, Lfl/n$d;->f:I

    ushr-long v19, v6, v13

    xor-long v14, v14, v19

    move-wide/from16 v19, v6

    iget v6, v0, Lfl/n$d;->g:I

    shl-long v21, v9, v6

    xor-long v14, v14, v21

    ushr-long v16, v16, v3

    shl-long/2addr v1, v8

    xor-long v1, v16, v1

    ushr-long v7, v9, v13

    xor-long/2addr v1, v7

    shl-long v6, v11, v6

    xor-long/2addr v1, v6

    const/4 v3, 0x0

    aget-wide v6, p3, v3

    xor-long/2addr v6, v14

    aput-wide v6, p1, p2

    add-int/lit8 v3, p2, 0x1

    const/4 v6, 0x1

    aget-wide v6, p3, v6

    xor-long/2addr v6, v1

    iget v8, v0, Lfl/n$d;->d:I

    shl-long v16, v14, v8

    xor-long v6, v6, v16

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x2

    const/4 v6, 0x2

    aget-wide v6, p3, v6

    xor-long/2addr v6, v4

    iget v13, v0, Lfl/n$d;->e:I

    ushr-long/2addr v14, v13

    xor-long/2addr v6, v14

    shl-long v14, v1, v8

    xor-long/2addr v6, v14

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x3

    const/4 v6, 0x3

    aget-wide v6, p3, v6

    xor-long v6, v6, v19

    ushr-long/2addr v1, v13

    xor-long/2addr v1, v6

    shl-long v6, v4, v8

    xor-long/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    aget-wide v2, p3, v2

    xor-long/2addr v2, v9

    ushr-long/2addr v4, v13

    xor-long/2addr v2, v4

    shl-long v4, v19, v8

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    const/4 v1, 0x5

    add-int/lit8 v2, p2, 0x5

    aget-wide v3, p3, v1

    xor-long/2addr v3, v11

    ushr-long v5, v19, v13

    xor-long/2addr v3, v5

    iget-wide v5, v0, Lfl/n;->a:J

    and-long/2addr v3, v5

    aput-wide v3, p1, v2

    return-void
.end method

.method public b([JI[J)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x7

    aget-wide v1, p3, v1

    iget v3, v0, Lfl/n;->b:I

    ushr-long v4, v1, v3

    const/16 v6, 0x8

    aget-wide v6, p3, v6

    iget v8, v0, Lfl/n;->c:I

    shl-long v9, v6, v8

    xor-long/2addr v4, v9

    ushr-long/2addr v6, v3

    const/16 v9, 0x9

    aget-wide v9, p3, v9

    shl-long v11, v9, v8

    xor-long/2addr v6, v11

    ushr-long/2addr v9, v3

    const/16 v11, 0xa

    aget-wide v11, p3, v11

    shl-long v13, v11, v8

    xor-long/2addr v9, v13

    ushr-long/2addr v11, v3

    const/16 v13, 0xb

    aget-wide v13, p3, v13

    shl-long/2addr v13, v8

    xor-long/2addr v11, v13

    const/4 v13, 0x5

    aget-wide v14, p3, v13

    ushr-long/2addr v14, v3

    const/16 v16, 0x6

    aget-wide v16, p3, v16

    shl-long v18, v16, v8

    xor-long v14, v14, v18

    iget v13, v0, Lfl/n$d;->f:I

    ushr-long v19, v6, v13

    xor-long v14, v14, v19

    move-wide/from16 v19, v6

    iget v6, v0, Lfl/n$d;->g:I

    shl-long v21, v9, v6

    xor-long v14, v14, v21

    ushr-long v16, v16, v3

    shl-long/2addr v1, v8

    xor-long v1, v16, v1

    ushr-long v7, v9, v13

    xor-long/2addr v1, v7

    shl-long v6, v11, v6

    xor-long/2addr v1, v6

    aget-wide v6, p1, p2

    const/4 v3, 0x0

    aget-wide v16, p3, v3

    xor-long v16, v16, v14

    xor-long v6, v6, v16

    aput-wide v6, p1, p2

    add-int/lit8 v3, p2, 0x1

    aget-wide v6, p1, v3

    const/4 v8, 0x1

    aget-wide v16, p3, v8

    xor-long v16, v16, v1

    iget v8, v0, Lfl/n$d;->d:I

    shl-long v21, v14, v8

    xor-long v16, v16, v21

    xor-long v6, v6, v16

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x2

    aget-wide v6, p1, v3

    const/4 v13, 0x2

    aget-wide v16, p3, v13

    xor-long v16, v16, v4

    iget v13, v0, Lfl/n$d;->e:I

    ushr-long/2addr v14, v13

    xor-long v14, v16, v14

    shl-long v16, v1, v8

    xor-long v14, v14, v16

    xor-long/2addr v6, v14

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x3

    aget-wide v6, p1, v3

    const/4 v14, 0x3

    aget-wide v14, p3, v14

    xor-long v14, v14, v19

    ushr-long/2addr v1, v13

    xor-long/2addr v1, v14

    shl-long v14, v4, v8

    xor-long/2addr v1, v14

    xor-long/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v1, p2, 0x4

    aget-wide v2, p1, v1

    const/4 v6, 0x4

    aget-wide v6, p3, v6

    xor-long/2addr v6, v9

    ushr-long/2addr v4, v13

    xor-long/2addr v4, v6

    shl-long v6, v19, v8

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    const/4 v1, 0x5

    add-int/lit8 v2, p2, 0x5

    aget-wide v3, p1, v2

    aget-wide v5, p3, v1

    xor-long/2addr v5, v11

    ushr-long v7, v19, v13

    xor-long/2addr v5, v7

    iget-wide v7, v0, Lfl/n;->a:J

    and-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    return-void
.end method
