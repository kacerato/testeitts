.class public final Lcom/android/tools/r8/internal/rw0;
.super Lcom/android/tools/r8/internal/ow0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ow0;-><init>()V

    return-void
.end method

.method public static a([BIJI)I
    .locals 5

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1
    sget-object p4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v0, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long v2, v0, p2

    invoke-virtual {p4, p0, v2, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    const-wide/16 v3, 0x1

    add-long/2addr p2, v3

    add-long/2addr p2, v0

    invoke-virtual {p4, p0, p2, p3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result p0

    .line 2
    invoke-static {p1, v2, p0}, Lcom/android/tools/r8/internal/tw0;->a(III)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1
    sget-object p4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v0, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v0, p2

    invoke-virtual {p4, p0, v0, v1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result p0

    .line 5
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/tw0;->a(II)I

    move-result p0

    return p0

    .line 6
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    const/16 p0, -0xc

    if-le p1, p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return p1
.end method

.method public static a([BJI)I
    .locals 6

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    add-int/lit8 v0, v1, 0x8

    if-gt v0, p3, :cond_2

    .line 61
    sget-wide v2, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v2, p1

    .line 62
    sget-object v4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/tools/r8/internal/aw0;->c(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x8

    add-long/2addr p1, v1

    move v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v1, p3, :cond_4

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    .line 63
    sget-object v0, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v4, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v4, p1

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result p1

    if-gez p1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v2

    goto :goto_1

    :cond_4
    return p3
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BII)I
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 39
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 41
    sget-object v13, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v14, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v14, v4

    invoke-virtual {v13, v1, v14, v15, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 43
    sget-object v3, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v16, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long v4, v16, v4

    invoke-virtual {v3, v1, v4, v5, v13}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    move-object v12, v9

    move-object/from16 v22, v10

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x800

    const-wide/16 v14, 0x2

    if-ge v13, v3, :cond_3

    sub-long v16, v6, v14

    cmp-long v3, v4, v16

    if-gtz v3, :cond_3

    add-long v16, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 44
    sget-object v11, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v20, Lcom/android/tools/r8/internal/bw0;->f:J

    move-object v12, v9

    move-object/from16 v22, v10

    add-long v9, v20, v4

    invoke-virtual {v11, v1, v9, v10, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    add-long/2addr v4, v14

    and-int/lit8 v3, v13, 0x3f

    const/16 v9, 0x80

    or-int/2addr v3, v9

    int-to-byte v3, v3

    add-long v9, v20, v16

    .line 45
    invoke-virtual {v11, v1, v9, v10, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    :goto_2
    const/16 v3, 0x80

    const-wide/16 v16, 0x1

    goto/16 :goto_4

    :cond_3
    move-object v12, v9

    move-object/from16 v22, v10

    const v3, 0xdfff

    const v9, 0xd800

    const-wide/16 v10, 0x3

    if-lt v13, v9, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    sub-long v16, v6, v10

    cmp-long v16, v4, v16

    if-gtz v16, :cond_5

    const-wide/16 v16, 0x1

    add-long v20, v4, v16

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 46
    sget-object v9, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v16, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long v10, v16, v4

    invoke-virtual {v9, v1, v10, v11, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    add-long/2addr v14, v4

    ushr-int/lit8 v3, v13, 0x6

    and-int/lit8 v3, v3, 0x3f

    const/16 v10, 0x80

    or-int/2addr v3, v10

    int-to-byte v3, v3

    add-long v10, v16, v20

    .line 47
    invoke-virtual {v9, v1, v10, v11, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    const-wide/16 v10, 0x3

    add-long v3, v4, v10

    and-int/lit8 v5, v13, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    add-long v10, v16, v14

    .line 48
    invoke-virtual {v9, v1, v10, v11, v5}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    move-wide v14, v3

    :goto_3
    move-wide v4, v14

    goto :goto_2

    :cond_5
    const-wide/16 v10, 0x4

    sub-long v16, v6, v10

    cmp-long v16, v4, v16

    if-gtz v16, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 50
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v16, 0x1

    add-long v18, v4, v16

    ushr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 51
    sget-object v13, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v20, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long v10, v20, v4

    invoke-virtual {v13, v1, v10, v11, v9}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    add-long/2addr v14, v4

    ushr-int/lit8 v9, v2, 0xc

    and-int/lit8 v9, v9, 0x3f

    const/16 v10, 0x80

    or-int/2addr v9, v10

    int-to-byte v9, v9

    add-long v10, v20, v18

    .line 52
    invoke-virtual {v13, v1, v10, v11, v9}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    const-wide/16 v9, 0x3

    add-long v10, v4, v9

    ushr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x3f

    move/from16 p4, v3

    const/16 v3, 0x80

    or-int/2addr v9, v3

    int-to-byte v9, v9

    add-long v14, v20, v14

    .line 53
    invoke-virtual {v13, v1, v14, v15, v9}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    const-wide/16 v14, 0x4

    add-long/2addr v4, v14

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    add-long v9, v20, v10

    .line 54
    invoke-virtual {v13, v1, v9, v10, v2}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    move/from16 v2, p4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v9, v12

    move-wide/from16 v11, v16

    move-object/from16 v10, v22

    goto/16 :goto_1

    :cond_6
    move/from16 p4, v3

    move/from16 v2, p4

    .line 55
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/qw0;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/android/tools/r8/internal/qw0;-><init>(II)V

    throw v0

    :cond_8
    if-gt v9, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 57
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/qw0;

    invoke-direct {v0, v2, v8}, Lcom/android/tools/r8/internal/qw0;-><init>(II)V

    throw v0

    .line 58
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v12

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    move-object v7, v9

    move-object v6, v10

    .line 59
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    .line 60
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a([BII)Ljava/lang/String;
    .locals 12

    or-int v0, p2, p3

    .line 7
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_d

    int-to-long v0, p2

    .line 8
    invoke-static {p1, v0, v1, p3}, Lcom/android/tools/r8/internal/rw0;->a([BJI)I

    move-result v0

    add-int/2addr v0, p2

    add-int v1, p2, p3

    :goto_0
    if-ge v0, v1, :cond_1

    int-to-long v2, v0

    .line 9
    sget-object v4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v5, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v5, v2

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v0, v1, :cond_2

    .line 10
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 11
    :cond_2
    new-array p3, p3, [C

    const/4 v8, 0x0

    move v2, v8

    :goto_2
    if-ge p2, v0, :cond_3

    int-to-long v3, p2

    .line 12
    sget-object v5, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v6, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v6, v3

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v3

    add-int/lit8 v4, v2, 0x1

    int-to-char v3, v3

    .line 13
    aput-char v3, p3, v2

    add-int/lit8 p2, p2, 0x1

    move v2, v4

    goto :goto_2

    :cond_3
    move p2, v2

    :cond_4
    :goto_3
    if-ge v0, v1, :cond_c

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v0

    .line 14
    sget-object v5, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v6, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v3, v6

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v3

    .line 15
    invoke-static {v3}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v0, p2, 0x1

    int-to-char v3, v3

    .line 16
    aput-char v3, p3, p2

    move p2, v0

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_4

    int-to-long v2, v0

    .line 17
    sget-object v4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v5, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v5, v2

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    .line 18
    invoke-static {v2}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, p2, 0x1

    int-to-char v2, v2

    .line 19
    aput-char v2, p3, p2

    move p2, v3

    goto :goto_4

    :cond_6
    const/16 v4, -0x20

    const-string v9, "Protocol message had invalid UTF-8."

    if-ge v3, v4, :cond_8

    if-ge v2, v1, :cond_7

    add-int/lit8 v0, v0, 0x2

    int-to-long v9, v2

    add-long/2addr v6, v9

    .line 20
    invoke-virtual {v5, p1, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    add-int/lit8 v4, p2, 0x1

    .line 21
    invoke-static {v3, v2, p3, p2}, Lcom/android/tools/r8/internal/nw0;->a(BB[CI)V

    move p2, v4

    goto :goto_3

    .line 22
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v9}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    :cond_8
    const/16 v4, -0x10

    if-ge v3, v4, :cond_a

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_9

    add-int/lit8 v4, v0, 0x2

    int-to-long v9, v2

    add-long/2addr v9, v6

    .line 24
    invoke-virtual {v5, p1, v9, v10}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    add-int/lit8 v0, v0, 0x3

    int-to-long v9, v4

    add-long/2addr v6, v9

    .line 25
    invoke-virtual {v5, p1, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v4

    add-int/lit8 v5, p2, 0x1

    .line 26
    invoke-static {v3, v2, v4, p3, p2}, Lcom/android/tools/r8/internal/nw0;->a(BBB[CI)V

    move p2, v5

    goto :goto_3

    .line 27
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v9}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    :cond_a
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_b

    add-int/lit8 v4, v0, 0x2

    int-to-long v9, v2

    add-long/2addr v9, v6

    .line 29
    invoke-virtual {v5, p1, v9, v10}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v9

    add-int/lit8 v2, v0, 0x3

    int-to-long v10, v4

    add-long/2addr v10, v6

    .line 30
    invoke-virtual {v5, p1, v10, v11}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v4

    add-int/lit8 v0, v0, 0x4

    int-to-long v10, v2

    add-long/2addr v6, v10

    .line 31
    invoke-virtual {v5, p1, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v5

    move v2, v3

    move v3, v9

    move-object v6, p3

    move v7, p2

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/nw0;->a(BBBB[CI)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 33
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p1, v9}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v8, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 36
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([BII)I
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    or-int v3, v1, v2

    .line 1
    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    if-ltz v3, :cond_f

    int-to-long v3, v1

    int-to-long v1, v2

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 2
    invoke-static {v0, v3, v4, v1}, Lcom/android/tools/r8/internal/rw0;->a([BJI)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v5, v2

    add-long/2addr v3, v5

    :cond_0
    :goto_0
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    const-wide/16 v6, 0x1

    if-lez v1, :cond_2

    add-long v8, v3, v6

    .line 3
    sget-object v5, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v10, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v10, v3

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v5

    if-ltz v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    move-wide v3, v8

    goto :goto_1

    :cond_1
    move-wide v3, v8

    :cond_2
    if-nez v1, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v1, -0x1

    const/16 v8, -0x20

    const/4 v9, -0x1

    const/16 v10, -0x41

    if-ge v5, v8, :cond_7

    if-nez v2, :cond_4

    return v5

    :cond_4
    add-int/lit8 v1, v1, -0x2

    const/16 v2, -0x3e

    if-lt v5, v2, :cond_6

    add-long v5, v3, v6

    .line 4
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v7, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v7, v3

    invoke-virtual {v2, v0, v7, v8}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    if-le v2, v10, :cond_5

    goto :goto_2

    :cond_5
    move-wide v3, v5

    goto :goto_0

    :cond_6
    :goto_2
    return v9

    :cond_7
    const/16 v11, -0x10

    if-ge v5, v11, :cond_c

    const/4 v11, 0x2

    if-ge v2, v11, :cond_8

    .line 5
    invoke-static {v0, v5, v3, v4, v2}, Lcom/android/tools/r8/internal/rw0;->a([BIJI)I

    move-result v0

    return v0

    :cond_8
    add-int/lit8 v1, v1, -0x3

    add-long/2addr v6, v3

    .line 6
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v14, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long v12, v14, v3

    invoke-virtual {v2, v0, v12, v13}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v11

    if-gt v11, v10, :cond_b

    const/16 v12, -0x60

    if-ne v5, v8, :cond_9

    if-lt v11, v12, :cond_b

    :cond_9
    const/16 v8, -0x13

    if-ne v5, v8, :cond_a

    if-ge v11, v12, :cond_b

    :cond_a
    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    add-long/2addr v14, v6

    .line 7
    invoke-virtual {v2, v0, v14, v15}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    if-le v2, v10, :cond_0

    :cond_b
    return v9

    :cond_c
    const/4 v8, 0x3

    if-ge v2, v8, :cond_d

    .line 8
    invoke-static {v0, v5, v3, v4, v2}, Lcom/android/tools/r8/internal/rw0;->a([BIJI)I

    move-result v0

    return v0

    :cond_d
    add-int/lit8 v1, v1, -0x4

    add-long/2addr v6, v3

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v11, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long v13, v11, v3

    invoke-virtual {v2, v0, v13, v14}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v8

    if-gt v8, v10, :cond_e

    shl-int/lit8 v5, v5, 0x1c

    add-int/lit8 v8, v8, 0x70

    add-int/2addr v8, v5

    shr-int/lit8 v5, v8, 0x1e

    if-nez v5, :cond_e

    const-wide/16 v13, 0x2

    add-long/2addr v13, v3

    add-long/2addr v6, v11

    .line 10
    invoke-virtual {v2, v0, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v5

    if-gt v5, v10, :cond_e

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    add-long/2addr v11, v13

    .line 11
    invoke-virtual {v2, v0, v11, v12}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;J)B

    move-result v2

    if-le v2, v10, :cond_0

    :cond_e
    return v9

    .line 12
    :cond_f
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v0, v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 21

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_b

    .line 15
    sget-object v2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v3, Lcom/android/tools/r8/internal/bw0;->g:J

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/tools/r8/internal/aw0;->c(Ljava/lang/Object;J)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 16
    new-array v0, v1, [C

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    cmp-long v7, v2, v4

    const-wide/16 v12, 0x1

    if-gez v7, :cond_1

    .line 17
    sget-object v7, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v7, v2, v3}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    .line 18
    invoke-static {v7}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    add-long/2addr v2, v12

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    .line 19
    aput-char v7, v0, v6

    move v6, v8

    goto :goto_0

    :cond_1
    :goto_1
    move v14, v6

    :cond_2
    :goto_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    add-long v6, v2, v12

    .line 20
    sget-object v8, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v8, v2, v3}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v9

    .line 21
    invoke-static {v9}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v2, v14, 0x1

    int-to-char v3, v9

    .line 22
    aput-char v3, v0, v14

    move v14, v2

    move-wide v2, v6

    :goto_3
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 23
    sget-object v6, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    invoke-virtual {v6, v2, v3}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    .line 24
    invoke-static {v6}, Lcom/android/tools/r8/internal/nw0;->a(B)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v2, v12

    add-int/lit8 v7, v14, 0x1

    int-to-char v6, v6

    .line 25
    aput-char v6, v0, v14

    move v14, v7

    goto :goto_3

    :cond_4
    const/16 v10, -0x20

    const-string v11, "Protocol message had invalid UTF-8."

    const-wide/16 v15, 0x2

    if-ge v9, v10, :cond_6

    cmp-long v10, v6, v4

    if-gez v10, :cond_5

    add-long/2addr v2, v15

    .line 26
    invoke-virtual {v8, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    add-int/lit8 v7, v14, 0x1

    .line 27
    invoke-static {v9, v6, v0, v14}, Lcom/android/tools/r8/internal/nw0;->a(BB[CI)V

    move v14, v7

    goto :goto_2

    .line 28
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {v0, v11}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    :cond_6
    const/16 v10, -0x10

    const-wide/16 v17, 0x3

    if-ge v9, v10, :cond_8

    sub-long v19, v4, v12

    cmp-long v10, v6, v19

    if-gez v10, :cond_7

    add-long v10, v2, v15

    .line 30
    invoke-virtual {v8, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v6

    add-long v2, v2, v17

    .line 31
    invoke-virtual {v8, v10, v11}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    add-int/lit8 v8, v14, 0x1

    .line 32
    invoke-static {v9, v6, v7, v0, v14}, Lcom/android/tools/r8/internal/nw0;->a(BBB[CI)V

    move v14, v8

    goto :goto_2

    .line 33
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {v0, v11}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    :cond_8
    sub-long v19, v4, v15

    cmp-long v10, v6, v19

    if-gez v10, :cond_9

    add-long v10, v2, v15

    .line 35
    invoke-virtual {v8, v6, v7}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v7

    add-long v12, v2, v17

    .line 36
    invoke-virtual {v8, v10, v11}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v10

    const-wide/16 v15, 0x4

    add-long/2addr v2, v15

    .line 37
    invoke-virtual {v8, v12, v13}, Lcom/android/tools/r8/internal/aw0;->a(J)B

    move-result v11

    move v6, v9

    move v8, v10

    move v9, v11

    move-object v10, v0

    move v11, v14

    .line 38
    invoke-static/range {v6 .. v11}, Lcom/android/tools/r8/internal/nw0;->a(BBBB[CI)V

    add-int/lit8 v14, v14, 0x2

    const-wide/16 v12, 0x1

    goto/16 :goto_2

    .line 39
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {v0, v11}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_b
    move-object/from16 v5, p1

    .line 42
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
