.class public final LUc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LUc/a$a;
    }
.end annotation


# static fields
.field public static final a:LUc/a$a;

.field public static final b:LUc/a$a;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x9

.field public static final g:I = 0xa

.field public static final h:I = 0xb

.field public static final i:I = 0x10

.field public static final j:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LUc/a$a;

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, LUc/a$a;-><init>(IIII)V

    sput-object v0, LUc/a;->a:LUc/a$a;

    new-instance v0, LUc/a$a;

    invoke-direct {v0, v3, v2, v1, v4}, LUc/a$a;-><init>(IIII)V

    sput-object v0, LUc/a;->b:LUc/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III[BI[BIILUc/a$a;)[I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth",
            "bytes",
            "offset",
            "palette",
            "colormapOrigin",
            "descriptor",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p8

    iget v5, v4, LUc/a$a;->a:I

    iget v6, v4, LUc/a$a;->b:I

    iget v7, v4, LUc/a$a;->c:I

    iget v4, v4, LUc/a$a;->d:I

    const/16 v8, 0x18

    const/16 v9, 0x20

    const/16 v12, 0xff

    if-eq v2, v8, :cond_c

    if-ne v2, v9, :cond_b

    mul-int v2, v0, v1

    new-array v2, v2, [I

    and-int/lit8 v8, p7, 0x10

    if-eqz v8, :cond_5

    and-int/lit8 v8, p7, 0x20

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_1

    mul-int v13, v0, v8

    add-int v14, p4, v13

    add-int/2addr v14, v9

    aget-byte v14, p3, v14

    rsub-int v15, v3, 0xff

    and-int/2addr v14, v15

    if-ltz v14, :cond_0

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v15, v14, 0x12

    aget-byte v15, p5, v15

    and-int/2addr v15, v12

    add-int/lit8 v16, v14, 0x13

    aget-byte v10, p5, v16

    and-int/2addr v10, v12

    add-int/lit8 v16, v14, 0x14

    aget-byte v11, p5, v16

    and-int/2addr v11, v12

    add-int/lit8 v14, v14, 0x15

    aget-byte v14, p5, v14

    and-int/2addr v14, v12

    shl-int/2addr v11, v5

    shl-int/2addr v10, v6

    or-int/2addr v10, v11

    shl-int v11, v15, v7

    or-int/2addr v10, v11

    shl-int v11, v14, v4

    or-int/2addr v10, v11

    goto :goto_2

    :cond_0
    const/4 v10, -0x1

    :goto_2
    sub-int v11, v0, v9

    add-int/lit8 v11, v11, -0x1

    add-int/2addr v13, v11

    aput v10, v2, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_4

    mul-int v10, v0, v8

    add-int v10, p4, v10

    add-int/2addr v10, v9

    aget-byte v10, p3, v10

    rsub-int v11, v3, 0xff

    and-int/2addr v10, v11

    if-ltz v10, :cond_3

    mul-int/lit8 v10, v10, 0x4

    add-int/lit8 v11, v10, 0x12

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x13

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v14, v10, 0x14

    aget-byte v14, p5, v14

    and-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x15

    aget-byte v10, p5, v10

    and-int/2addr v10, v12

    shl-int/2addr v14, v5

    shl-int/2addr v13, v6

    or-int/2addr v13, v14

    shl-int/2addr v11, v7

    or-int/2addr v11, v13

    shl-int/2addr v10, v4

    or-int/2addr v10, v11

    goto :goto_5

    :cond_3
    const/4 v10, -0x1

    :goto_5
    sub-int v11, v1, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v0

    sub-int v13, v0, v9

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v11, v13

    aput v10, v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    and-int/lit8 v8, p7, 0x20

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v0, :cond_7

    mul-int v10, v0, v8

    add-int v11, p4, v10

    add-int/2addr v11, v9

    aget-byte v11, p3, v11

    rsub-int v13, v3, 0xff

    and-int/2addr v11, v13

    if-ltz v11, :cond_6

    mul-int/lit8 v11, v11, 0x4

    add-int/lit8 v13, v11, 0x12

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v14, v11, 0x13

    aget-byte v14, p5, v14

    and-int/2addr v14, v12

    add-int/lit8 v15, v11, 0x14

    aget-byte v15, p5, v15

    and-int/2addr v15, v12

    add-int/lit8 v11, v11, 0x15

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    shl-int/2addr v15, v5

    shl-int/2addr v14, v6

    or-int/2addr v14, v15

    shl-int/2addr v13, v7

    or-int/2addr v13, v14

    shl-int/2addr v11, v4

    or-int/2addr v11, v13

    goto :goto_8

    :cond_6
    const/4 v11, -0x1

    :goto_8
    add-int/2addr v10, v9

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_9
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v0, :cond_a

    mul-int v10, v0, v8

    add-int v10, p4, v10

    add-int/2addr v10, v9

    aget-byte v10, p3, v10

    rsub-int v11, v3, 0xff

    and-int/2addr v10, v11

    if-ltz v10, :cond_9

    mul-int/lit8 v10, v10, 0x4

    add-int/lit8 v11, v10, 0x12

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x13

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v14, v10, 0x14

    aget-byte v14, p5, v14

    and-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x15

    aget-byte v10, p5, v10

    and-int/2addr v10, v12

    shl-int/2addr v14, v5

    shl-int/2addr v13, v6

    or-int/2addr v13, v14

    shl-int/2addr v11, v7

    or-int/2addr v11, v13

    shl-int/2addr v10, v4

    or-int/2addr v10, v11

    goto :goto_b

    :cond_9
    const/4 v10, -0x1

    :goto_b
    sub-int v11, v1, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v0

    add-int/2addr v11, v9

    aput v10, v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported depth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    mul-int v2, v0, v1

    new-array v2, v2, [I

    and-int/lit8 v8, p7, 0x10

    if-eqz v8, :cond_12

    and-int/lit8 v8, p7, 0x20

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v0, :cond_e

    mul-int v10, v0, v8

    add-int v11, p4, v10

    add-int/2addr v11, v9

    aget-byte v11, p3, v11

    rsub-int v13, v3, 0xff

    and-int/2addr v11, v13

    if-ltz v11, :cond_d

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v13, v11, 0x12

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v14, v11, 0x13

    aget-byte v14, p5, v14

    and-int/2addr v14, v12

    add-int/lit8 v11, v11, 0x14

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    shl-int/2addr v11, v5

    shl-int/2addr v14, v6

    or-int/2addr v11, v14

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    shl-int v13, v12, v4

    or-int/2addr v11, v13

    goto :goto_e

    :cond_d
    const/4 v11, -0x1

    :goto_e
    sub-int v13, v0, v9

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v10, v13

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_f
    const/4 v8, 0x0

    :goto_f
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v0, :cond_11

    mul-int v10, v0, v8

    add-int v10, p4, v10

    add-int/2addr v10, v9

    aget-byte v10, p3, v10

    rsub-int v11, v3, 0xff

    and-int/2addr v10, v11

    if-ltz v10, :cond_10

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v11, v10, 0x12

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x13

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v10, v10, 0x14

    aget-byte v10, p5, v10

    and-int/2addr v10, v12

    shl-int/2addr v10, v5

    shl-int/2addr v13, v6

    or-int/2addr v10, v13

    shl-int/2addr v11, v7

    or-int/2addr v10, v11

    shl-int v11, v12, v4

    or-int/2addr v10, v11

    goto :goto_11

    :cond_10
    const/4 v10, -0x1

    :goto_11
    sub-int v11, v1, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v0

    sub-int v13, v0, v9

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v11, v13

    aput v10, v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_12
    and-int/lit8 v8, p7, 0x20

    if-eqz v8, :cond_15

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v0, :cond_14

    mul-int v10, v0, v8

    add-int v11, p4, v10

    add-int/2addr v11, v9

    aget-byte v11, p3, v11

    rsub-int v13, v3, 0xff

    and-int/2addr v11, v13

    if-ltz v11, :cond_13

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v13, v11, 0x12

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v14, v11, 0x13

    aget-byte v14, p5, v14

    and-int/2addr v14, v12

    add-int/lit8 v11, v11, 0x14

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    shl-int/2addr v11, v5

    shl-int/2addr v14, v6

    or-int/2addr v11, v14

    shl-int/2addr v13, v7

    or-int/2addr v11, v13

    shl-int v13, v12, v4

    or-int/2addr v11, v13

    goto :goto_14

    :cond_13
    const/4 v11, -0x1

    :goto_14
    add-int/2addr v10, v9

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_15
    const/4 v8, 0x0

    :goto_15
    if-ge v8, v1, :cond_18

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v0, :cond_17

    mul-int v10, v0, v8

    add-int v10, p4, v10

    add-int/2addr v10, v9

    aget-byte v10, p3, v10

    rsub-int v11, v3, 0xff

    and-int/2addr v10, v11

    if-ltz v10, :cond_16

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v11, v10, 0x12

    aget-byte v11, p5, v11

    and-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x13

    aget-byte v13, p5, v13

    and-int/2addr v13, v12

    add-int/lit8 v10, v10, 0x14

    aget-byte v10, p5, v10

    and-int/2addr v10, v12

    shl-int/2addr v10, v5

    shl-int/2addr v13, v6

    or-int/2addr v10, v13

    shl-int/2addr v11, v7

    or-int/2addr v10, v11

    shl-int v11, v12, v4

    or-int/2addr v10, v11

    goto :goto_17

    :cond_16
    const/4 v10, -0x1

    :goto_17
    sub-int v11, v1, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v0

    add-int/2addr v11, v9

    aput v10, v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_18
    return-object v2
.end method

.method public static b(III[BIILUc/a$a;)[I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth",
            "bytes",
            "offset",
            "descriptor",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    iget v4, v3, LUc/a$a;->a:I

    iget v5, v3, LUc/a$a;->b:I

    iget v6, v3, LUc/a$a;->c:I

    iget v3, v3, LUc/a$a;->d:I

    const/16 v7, 0x8

    const/16 v8, 0xff

    const/4 v9, 0x0

    if-eq v2, v7, :cond_8

    const/16 v7, 0x10

    if-ne v2, v7, :cond_7

    mul-int v2, v0, v1

    new-array v2, v2, [I

    and-int/lit8 v7, p5, 0x10

    if-eqz v7, :cond_3

    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_1

    move v7, v9

    :goto_0
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_1
    if-ge v10, v0, :cond_0

    mul-int/lit8 v11, v0, 0x2

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p3, v11

    and-int/2addr v11, v8

    mul-int v13, v0, v7

    sub-int v14, v0, v10

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v13, v14

    shl-int v14, v12, v4

    shl-int v15, v12, v5

    or-int/2addr v14, v15

    shl-int/2addr v12, v6

    or-int/2addr v12, v14

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_2
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_3
    if-ge v10, v0, :cond_2

    mul-int/lit8 v11, v0, 0x2

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p3, v11

    and-int/2addr v11, v8

    sub-int v13, v1, v7

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v13, v0

    sub-int v14, v0, v10

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v13, v14

    shl-int v14, v12, v4

    shl-int v15, v12, v5

    or-int/2addr v14, v15

    shl-int/2addr v12, v6

    or-int/2addr v12, v14

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_5

    move v7, v9

    :goto_4
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_5
    if-ge v10, v0, :cond_4

    mul-int/lit8 v11, v0, 0x2

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p3, v11

    and-int/2addr v11, v8

    mul-int v13, v0, v7

    add-int/2addr v13, v10

    shl-int v14, v12, v4

    shl-int v15, v12, v5

    or-int/2addr v14, v15

    shl-int/2addr v12, v6

    or-int/2addr v12, v14

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    move v7, v9

    :goto_6
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_7
    if-ge v10, v0, :cond_6

    mul-int/lit8 v11, v0, 0x2

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p3, v11

    and-int/2addr v11, v8

    sub-int v13, v1, v7

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v13, v0

    add-int/2addr v13, v10

    shl-int v14, v12, v4

    shl-int v15, v12, v5

    or-int/2addr v14, v15

    shl-int/2addr v12, v6

    or-int/2addr v12, v14

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported depth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    mul-int v2, v0, v1

    new-array v2, v2, [I

    and-int/lit8 v7, p5, 0x10

    if-eqz v7, :cond_c

    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_a

    move v7, v9

    :goto_8
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_9
    if-ge v10, v0, :cond_9

    mul-int v11, v0, v7

    add-int v12, p4, v11

    add-int/2addr v12, v10

    aget-byte v12, p3, v12

    and-int/2addr v12, v8

    sub-int v13, v0, v10

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v11, v13

    shl-int v13, v12, v4

    shl-int v14, v12, v5

    or-int/2addr v13, v14

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    shl-int v13, v8, v3

    or-int/2addr v12, v13

    aput v12, v2, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    move v7, v9

    :goto_a
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_b
    if-ge v10, v0, :cond_b

    mul-int v11, v0, v7

    add-int v11, p4, v11

    add-int/2addr v11, v10

    aget-byte v11, p3, v11

    and-int/2addr v11, v8

    sub-int v12, v1, v7

    add-int/lit8 v12, v12, -0x1

    mul-int/2addr v12, v0

    sub-int v13, v0, v10

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v12, v13

    shl-int v13, v11, v4

    shl-int v14, v11, v5

    or-int/2addr v13, v14

    shl-int/2addr v11, v6

    or-int/2addr v11, v13

    shl-int v13, v8, v3

    or-int/2addr v11, v13

    aput v11, v2, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_c
    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_e

    move v7, v9

    :goto_c
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_d
    if-ge v10, v0, :cond_d

    mul-int v11, v0, v7

    add-int v12, p4, v11

    add-int/2addr v12, v10

    aget-byte v12, p3, v12

    and-int/2addr v12, v8

    add-int/2addr v11, v10

    shl-int v13, v12, v4

    shl-int v14, v12, v5

    or-int/2addr v13, v14

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    shl-int v13, v8, v3

    or-int/2addr v12, v13

    aput v12, v2, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_e
    move v7, v9

    :goto_e
    if-ge v7, v1, :cond_10

    move v10, v9

    :goto_f
    if-ge v10, v0, :cond_f

    mul-int v11, v0, v7

    add-int v11, p4, v11

    add-int/2addr v11, v10

    aget-byte v11, p3, v11

    and-int/2addr v11, v8

    sub-int v12, v1, v7

    add-int/lit8 v12, v12, -0x1

    mul-int/2addr v12, v0

    add-int/2addr v12, v10

    shl-int v13, v11, v4

    shl-int v14, v11, v5

    or-int/2addr v13, v14

    shl-int/2addr v11, v6

    or-int/2addr v11, v13

    shl-int v13, v8, v3

    or-int/2addr v11, v13

    aput v11, v2, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_10
    return-object v2
.end method

.method public static c(III[BIILUc/a$a;)[I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth",
            "bytes",
            "offset",
            "descriptor",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    iget v4, v3, LUc/a$a;->a:I

    iget v5, v3, LUc/a$a;->b:I

    iget v6, v3, LUc/a$a;->c:I

    iget v3, v3, LUc/a$a;->d:I

    const/16 v7, 0x18

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/16 v10, 0xff

    if-eq v2, v7, :cond_8

    if-ne v2, v8, :cond_7

    mul-int v2, v0, v1

    new-array v2, v2, [I

    and-int/lit8 v7, p5, 0x10

    if-eqz v7, :cond_3

    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_1

    move v7, v9

    :goto_0
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_1
    if-ge v8, v0, :cond_0

    mul-int/lit8 v11, v0, 0x4

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p3, v14

    and-int/2addr v14, v10

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    mul-int v15, v0, v7

    sub-int v16, v0, v8

    add-int/lit8 v16, v16, -0x1

    add-int v15, v15, v16

    shl-int/2addr v14, v4

    shl-int/2addr v13, v5

    or-int/2addr v13, v14

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_2
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_3
    if-ge v8, v0, :cond_2

    mul-int/lit8 v11, v0, 0x4

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p3, v14

    and-int/2addr v14, v10

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    sub-int v15, v1, v7

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v0

    sub-int v16, v0, v8

    add-int/lit8 v16, v16, -0x1

    add-int v15, v15, v16

    shl-int/2addr v14, v4

    shl-int/2addr v13, v5

    or-int/2addr v13, v14

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_5

    move v7, v9

    :goto_4
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_5
    if-ge v8, v0, :cond_4

    mul-int/lit8 v11, v0, 0x4

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p3, v14

    and-int/2addr v14, v10

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    mul-int v15, v0, v7

    add-int/2addr v15, v8

    shl-int/2addr v14, v4

    shl-int/2addr v13, v5

    or-int/2addr v13, v14

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    move v7, v9

    :goto_6
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_7
    if-ge v8, v0, :cond_6

    mul-int/lit8 v11, v0, 0x4

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p3, v14

    and-int/2addr v14, v10

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    sub-int v15, v1, v7

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v15, v0

    add-int/2addr v15, v8

    shl-int/2addr v14, v4

    shl-int/2addr v13, v5

    or-int/2addr v13, v14

    shl-int/2addr v12, v6

    or-int/2addr v12, v13

    shl-int/2addr v11, v3

    or-int/2addr v11, v12

    aput v11, v2, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported depth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    mul-int v2, v0, v1

    new-array v2, v2, [I

    and-int/lit8 v7, p5, 0x10

    if-eqz v7, :cond_c

    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_a

    move v7, v9

    :goto_8
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_9
    if-ge v8, v0, :cond_9

    mul-int/lit8 v11, v0, 0x3

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x3

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    mul-int v14, v0, v7

    sub-int v15, v0, v8

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v14, v15

    shl-int/2addr v11, v4

    shl-int/2addr v13, v5

    or-int/2addr v11, v13

    shl-int/2addr v12, v6

    or-int/2addr v11, v12

    shl-int v12, v10, v3

    or-int/2addr v11, v12

    aput v11, v2, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    move v7, v9

    :goto_a
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_b
    if-ge v8, v0, :cond_b

    mul-int/lit8 v11, v0, 0x3

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x3

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    sub-int v14, v1, v7

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v0

    sub-int v15, v0, v8

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v14, v15

    shl-int/2addr v11, v4

    shl-int/2addr v13, v5

    or-int/2addr v11, v13

    shl-int/2addr v12, v6

    or-int/2addr v11, v12

    shl-int v12, v10, v3

    or-int/2addr v11, v12

    aput v11, v2, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_c
    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_e

    move v7, v9

    :goto_c
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_d
    if-ge v8, v0, :cond_d

    mul-int/lit8 v11, v0, 0x3

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x3

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    mul-int v14, v0, v7

    add-int/2addr v14, v8

    shl-int/2addr v11, v4

    shl-int/2addr v13, v5

    or-int/2addr v11, v13

    shl-int/2addr v12, v6

    or-int/2addr v11, v12

    shl-int v12, v10, v3

    or-int/2addr v11, v12

    aput v11, v2, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_e
    move v7, v9

    :goto_e
    if-ge v7, v1, :cond_10

    move v8, v9

    :goto_f
    if-ge v8, v0, :cond_f

    mul-int/lit8 v11, v0, 0x3

    mul-int/2addr v11, v7

    add-int v11, p4, v11

    mul-int/lit8 v12, v8, 0x3

    add-int/2addr v11, v12

    aget-byte v12, p3, v11

    and-int/2addr v12, v10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, p3, v13

    and-int/2addr v13, v10

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p3, v11

    and-int/2addr v11, v10

    sub-int v14, v1, v7

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v0

    add-int/2addr v14, v8

    shl-int/2addr v11, v4

    shl-int/2addr v13, v5

    or-int/2addr v11, v13

    shl-int/2addr v12, v6

    or-int/2addr v11, v12

    shl-int v12, v10, v3

    or-int/2addr v11, v12

    aput v11, v2, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_10
    return-object v2
.end method

.method public static d(III[BI)[B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth",
            "buffer",
            "offset"
        }
    .end annotation

    div-int/lit8 p2, p2, 0x8

    new-array v0, p2, [B

    mul-int/2addr p0, p2

    mul-int/2addr p0, p1

    new-array p1, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_4

    add-int/lit8 v3, p4, 0x1

    aget-byte p4, p3, p4

    and-int/lit16 v4, p4, 0xff

    and-int/lit16 v5, p4, 0x80

    if-eqz v5, :cond_3

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p3, v3

    aput-byte v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    and-int/lit8 p4, p4, 0x7f

    add-int/lit8 p4, p4, 0x1

    move v4, v1

    :goto_2
    if-ge v4, p4, :cond_2

    move v5, v1

    :goto_3
    if-ge v5, p2, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-byte v7, v0, v5

    aput-byte v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move p4, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, p2

    move p4, v1

    :goto_4
    if-ge p4, v4, :cond_2

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p3, v3

    aput-byte v3, p1, v2

    add-int/lit8 p4, p4, 0x1

    move v2, v5

    move v3, v6

    goto :goto_4

    :cond_4
    return-object p1
.end method

.method public static e([B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/16 v0, 0xe

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static f([B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/16 v0, 0xc

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xd

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static g([BLUc/a$a;)[I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v6, v3, v4

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x7

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {p0}, LUc/a;->f([B)I

    move-result v7

    invoke-static {p0}, LUc/a;->e([B)I

    move-result v8

    const/16 v9, 0x10

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x11

    aget-byte v10, p0, v10

    and-int/lit16 v12, v10, 0xff

    const/4 v10, 0x1

    const/16 v11, 0x12

    if-eq v1, v10, :cond_2

    if-eq v1, v0, :cond_1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported image type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v7, v8, v9, p0, v11}, LUc/a;->d(III[BI)[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v13, p1

    invoke-static/range {v7 .. v13}, LUc/a;->b(III[BIILUc/a$a;)[I

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v7, v8, v9, p0, v11}, LUc/a;->d(III[BI)[B

    move-result-object v10

    const/4 v11, 0x0

    move-object v13, p1

    invoke-static/range {v7 .. v13}, LUc/a;->c(III[BIILUc/a$a;)[I

    move-result-object v0

    goto :goto_0

    :pswitch_2
    div-int/lit8 v0, v4, 0x8

    mul-int/2addr v0, v3

    add-int/2addr v0, v11

    invoke-static {v7, v8, v9, p0, v0}, LUc/a;->d(III[BI)[B

    move-result-object v3

    const/4 v9, 0x0

    move v0, v7

    move v1, v8

    move v2, v4

    move v4, v9

    move-object v5, p0

    move v7, v12

    move-object v8, p1

    invoke-static/range {v0 .. v8}, LUc/a;->a(III[BI[BIILUc/a$a;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v4, 0x12

    move v0, v7

    move v1, v8

    move v2, v9

    move-object v3, p0

    move v5, v12

    move-object v6, p1

    invoke-static/range {v0 .. v6}, LUc/a;->b(III[BIILUc/a$a;)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x12

    move v0, v7

    move v1, v8

    move v2, v9

    move-object v3, p0

    move v5, v12

    move-object v6, p1

    invoke-static/range {v0 .. v6}, LUc/a;->c(III[BIILUc/a$a;)[I

    move-result-object v0

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v4, 0x8

    mul-int/2addr v0, v3

    add-int/lit8 v9, v0, 0x12

    move v0, v7

    move v1, v8

    move v2, v4

    move-object v3, p0

    move v4, v9

    move-object v5, p0

    move v7, v12

    move-object v8, p1

    invoke-static/range {v0 .. v8}, LUc/a;->a(III[BI[BIILUc/a$a;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
