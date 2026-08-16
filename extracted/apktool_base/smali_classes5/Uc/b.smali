.class public LUc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LUc/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LUc/b;->e:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x54t
        0x52t
        0x55t
        0x45t
        0x56t
        0x49t
        0x53t
        0x49t
        0x4ft
        0x4et
        0x2dt
        0x58t
        0x46t
        0x49t
        0x4ct
        0x45t
        0x2et
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BIIIILUc/a$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "color",
            "count",
            "elementCount",
            "order"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 p3, p3, -0x1

    or-int/lit16 p3, p3, 0x80

    int-to-byte p3, p3

    aput-byte p3, p0, p1

    add-int/lit8 p3, p1, 0x2

    iget v1, p5, LUc/a$a;->c:I

    shr-int v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    iget v1, p5, LUc/a$a;->b:I

    shr-int v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    add-int/lit8 p3, p1, 0x4

    iget v1, p5, LUc/a$a;->a:I

    shr-int v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    add-int/lit8 p1, p1, 0x5

    iget p4, p5, LUc/a$a;->d:I

    shr-int/2addr p2, p4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p3

    move p3, p1

    :cond_0
    return p3
.end method

.method public static b([BI[IIIILUc/a$a;)I
    .locals 5
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
            "buffer",
            "index",
            "pixels",
            "start",
            "count",
            "elementCount",
            "order"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p4, -0x1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_1

    add-int v1, p3, p1

    aget v1, p2, v1

    add-int/lit8 v2, v0, 0x1

    iget v3, p6, LUc/a$a;->c:I

    shr-int v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v3, v0, 0x2

    iget v4, p6, LUc/a$a;->b:I

    shr-int v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v2, v0, 0x3

    iget v4, p6, LUc/a$a;->a:I

    shr-int v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    const/4 v3, 0x4

    if-ne p5, v3, :cond_0

    add-int/lit8 v0, v0, 0x4

    iget v3, p6, LUc/a$a;->d:I

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static c([IIILUc/a$a;[BI)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "width",
            "elementCount",
            "order",
            "buffer",
            "index"
        }
    .end annotation

    move-object v7, p0

    const/4 v8, 0x0

    move/from16 v1, p5

    move v0, v8

    move v9, v0

    move v10, v9

    move v11, v10

    :goto_0
    array-length v2, v7

    if-ge v11, v2, :cond_9

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v0, :cond_0

    aget v9, v7, v11

    move v2, v1

    :goto_1
    move v3, v9

    move v10, v11

    move v0, v13

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v13, :cond_2

    aget v0, v7, v11

    if-ne v9, v0, :cond_1

    move v2, v12

    :cond_1
    move v3, v0

    move v0, v2

    move v2, v1

    goto/16 :goto_4

    :cond_2
    const/16 v3, 0x7f

    if-ne v0, v12, :cond_4

    aget v2, v7, v11

    if-eq v9, v2, :cond_3

    sub-int v3, v11, v10

    move-object/from16 v0, p4

    move v2, v9

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, LUc/b;->a([BIIIILUc/a$a;)I

    move-result v0

    aget v9, v7, v11

    move v2, v0

    goto :goto_1

    :cond_3
    sub-int v2, v11, v10

    if-lt v2, v3, :cond_6

    const/16 v3, 0x80

    move-object/from16 v0, p4

    move v2, v9

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, LUc/b;->a([BIIIILUc/a$a;)I

    move-result v0

    :goto_2
    move v2, v0

    move v0, v8

    :goto_3
    move v3, v9

    goto :goto_4

    :cond_4
    if-ne v0, v2, :cond_6

    aget v2, v7, v11

    if-ne v9, v2, :cond_5

    add-int/lit8 v9, v11, -0x1

    sub-int v4, v9, v10

    move-object/from16 v0, p4

    move-object v2, p0

    move v3, v10

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, LUc/b;->b([BI[IIIILUc/a$a;)I

    move-result v0

    aget v1, v7, v11

    move v2, v0

    move v3, v1

    move v10, v9

    move v0, v12

    goto :goto_4

    :cond_5
    sub-int v2, v11, v10

    if-lt v2, v3, :cond_6

    const/16 v4, 0x80

    move-object/from16 v0, p4

    move-object v2, p0

    move v3, v10

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, LUc/b;->b([BI[IIIILUc/a$a;)I

    move-result v0

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :goto_4
    add-int/lit8 v9, v11, 0x1

    rem-int v1, v9, p1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    if-ne v0, v12, :cond_7

    sub-int v0, v11, v10

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v1, p4

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, LUc/b;->a([BIIIILUc/a$a;)I

    move-result v0

    goto :goto_5

    :cond_7
    sub-int v0, v11, v10

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p4

    move v1, v2

    move-object v2, p0

    move v3, v10

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, LUc/b;->b([BI[IIIILUc/a$a;)I

    move-result v0

    :goto_5
    move v1, v0

    move v0, v8

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    aget v2, v7, v11

    move v11, v9

    move v9, v2

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    return v1
.end method

.method public static d([III)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "width",
            "elementCount"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_9

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_0

    aget v2, p0, v1

    :goto_1
    move v5, v1

    move v2, v7

    goto :goto_4

    :cond_0
    const/4 v8, 0x3

    if-ne v2, v7, :cond_2

    aget v2, p0, v1

    if-ne v4, v2, :cond_1

    goto :goto_3

    :cond_1
    move v2, v8

    goto :goto_4

    :cond_2
    const/16 v9, 0x7f

    if-ne v2, v6, :cond_4

    aget v8, p0, v1

    if-eq v4, v8, :cond_3

    add-int/lit8 v2, p2, 0x1

    add-int/2addr v3, v2

    goto :goto_1

    :cond_3
    sub-int v4, v1, v5

    if-lt v4, v9, :cond_6

    add-int/lit8 v2, p2, 0x1

    :goto_2
    add-int/2addr v3, v2

    move v2, v0

    goto :goto_4

    :cond_4
    if-ne v2, v8, :cond_6

    aget v8, p0, v1

    if-ne v4, v8, :cond_5

    add-int/lit8 v2, v1, -0x1

    sub-int v4, v2, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move v5, v2

    :goto_3
    move v2, v6

    goto :goto_4

    :cond_5
    sub-int v4, v1, v5

    if-lt v4, v9, :cond_6

    mul-int/lit16 v2, p2, 0x80

    add-int/2addr v2, v7

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v4, v1, 0x1

    rem-int v8, v4, p1

    if-nez v8, :cond_8

    if-eqz v2, :cond_8

    if-ne v2, v6, :cond_7

    add-int/lit8 v2, p2, 0x1

    :goto_5
    add-int/2addr v3, v2

    goto :goto_6

    :cond_7
    sub-int v2, v1, v5

    add-int/2addr v2, v7

    mul-int/2addr v2, p2

    add-int/2addr v2, v7

    goto :goto_5

    :goto_6
    move v2, v0

    :cond_8
    aget v1, p0, v1

    move v10, v4

    move v4, v1

    move v1, v10

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Error!"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    return v3
.end method

.method public static e([ILUc/a$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pixels",
            "order"
        }
    .end annotation

    iget p1, p1, LUc/a$a;->d:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    shr-int/2addr v2, p1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static f([IIILUc/a$a;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "width",
            "height",
            "order"
        }
    .end annotation

    sget-object v0, LUc/b$a;->AUTO:LUc/b$a;

    invoke-static {p0, p1, p2, p3, v0}, LUc/b;->g([IIILUc/a$a;LUc/b$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static g([IIILUc/a$a;LUc/b$a;)[B
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "width",
            "height",
            "order",
            "encodeType"
        }
    .end annotation

    invoke-static {p0, p3}, LUc/b;->e([ILUc/a$a;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    array-length v0, p0

    mul-int/2addr v0, v5

    invoke-static {p0, p1, v5}, LUc/b;->d([III)I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eq p4, v6, :cond_3

    if-eq p4, v4, :cond_1

    move p4, v9

    goto :goto_2

    :cond_1
    if-ge v3, v0, :cond_2

    move p4, v6

    goto :goto_1

    :cond_2
    move p4, v9

    :goto_1
    if-eqz p4, :cond_4

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v3

    move p4, v6

    :cond_4
    :goto_2
    sget-object v3, LUc/b;->e:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x12

    add-int/2addr v3, v0

    new-array v0, v3, [B

    aput-byte v9, v0, v9

    aput-byte v9, v0, v6

    const/16 v3, 0xa

    if-eqz p4, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    int-to-byte v6, v6

    aput-byte v6, v0, v4

    aput-byte v9, v0, v1

    aput-byte v9, v0, v2

    const/4 v1, 0x5

    aput-byte v9, v0, v1

    const/4 v1, 0x6

    aput-byte v9, v0, v1

    const/4 v1, 0x7

    aput-byte v9, v0, v1

    const/16 v1, 0x8

    aput-byte v9, v0, v1

    const/16 v2, 0x9

    aput-byte v9, v0, v2

    aput-byte v9, v0, v3

    const/16 v2, 0xb

    aput-byte v9, v0, v2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    shr-int/2addr p2, v1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/16 v1, 0xf

    aput-byte p2, v0, v1

    mul-int/lit8 p2, v5, 0x8

    int-to-byte p2, p2

    const/16 v1, 0x10

    aput-byte p2, v0, v1

    const/16 p2, 0x20

    const/16 v1, 0x11

    aput-byte p2, v0, v1

    const/16 v8, 0x12

    if-eqz p4, :cond_6

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move-object v7, v0

    invoke-static/range {v3 .. v8}, LUc/b;->c([IIILUc/a$a;[BI)I

    move-result p0

    goto :goto_4

    :cond_6
    invoke-static {p0, v0, v8, v5, p3}, LUc/b;->h([I[BIILUc/a$a;)I

    move-result p0

    :goto_4
    sget-object p1, LUc/b;->e:[B

    array-length p2, p1

    if-ge v9, p2, :cond_7

    add-int/lit8 p2, p0, 0x1

    aget-byte p1, p1, v9

    aput-byte p1, v0, p0

    add-int/lit8 v9, v9, 0x1

    move p0, p2

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method public static h([I[BIILUc/a$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "buffer",
            "index",
            "elementCount",
            "order"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    :goto_0
    array-length p3, p0

    if-ge v1, p3, :cond_1

    add-int/lit8 p3, p2, 0x1

    aget v0, p0, v1

    iget v2, p4, LUc/a$a;->c:I

    shr-int v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, p2, 0x2

    iget v3, p4, LUc/a$a;->b:I

    shr-int v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p3

    add-int/lit8 p2, p2, 0x3

    iget p3, p4, LUc/a$a;->a:I

    shr-int p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length p3, p0

    if-ge v1, p3, :cond_1

    add-int/lit8 p3, p2, 0x1

    aget v0, p0, v1

    iget v2, p4, LUc/a$a;->c:I

    shr-int v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, p2, 0x2

    iget v3, p4, LUc/a$a;->b:I

    shr-int v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p3

    add-int/lit8 p3, p2, 0x3

    iget v3, p4, LUc/a$a;->a:I

    shr-int v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 p2, p2, 0x4

    iget v2, p4, LUc/a$a;->d:I

    shr-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p2
.end method
