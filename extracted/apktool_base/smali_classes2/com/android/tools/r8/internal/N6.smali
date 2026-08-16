.class public abstract Lcom/android/tools/r8/internal/N6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "kotlin.jvm.serialization.use8to7"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/tools/r8/internal/N6;->a:Z

    return-void
.end method

.method public static synthetic a(I)V
    .locals 19

    move/from16 v0, p0

    const/16 v1, 0xe

    const/16 v2, 0xc

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 1
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v9, 0x2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/metadata/internal/metadata/jvm/deserialization/BitEncoding"

    const/4 v12, 0x0

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    const-string v13, "data"

    aput-object v13, v10, v12

    goto :goto_2

    :cond_2
    aput-object v11, v10, v12

    :goto_2
    const-string v12, "encodeBytes"

    const-string v13, "encode8to7"

    const-string v14, "splitBytesToStringArray"

    const-string v15, "decodeBytes"

    const-string v16, "dropMarker"

    const-string v17, "combineStringArrayIntoBytes"

    const-string v18, "decode7to8"

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    aput-object v11, v10, v7

    goto :goto_3

    :cond_3
    aput-object v18, v10, v7

    goto :goto_3

    :cond_4
    aput-object v17, v10, v7

    goto :goto_3

    :cond_5
    aput-object v16, v10, v7

    goto :goto_3

    :cond_6
    aput-object v15, v10, v7

    goto :goto_3

    :cond_7
    aput-object v14, v10, v7

    goto :goto_3

    :cond_8
    aput-object v13, v10, v7

    goto :goto_3

    :cond_9
    aput-object v12, v10, v7

    :goto_3
    packed-switch v0, :pswitch_data_0

    aput-object v12, v10, v9

    goto :goto_4

    :pswitch_0
    aput-object v18, v10, v9

    goto :goto_4

    :pswitch_1
    aput-object v17, v10, v9

    goto :goto_4

    :pswitch_2
    aput-object v16, v10, v9

    goto :goto_4

    :pswitch_3
    aput-object v15, v10, v9

    goto :goto_4

    :pswitch_4
    aput-object v14, v10, v9

    goto :goto_4

    :pswitch_5
    const-string v11, "addModuloByte"

    aput-object v11, v10, v9

    goto :goto_4

    :pswitch_6
    aput-object v13, v10, v9

    :goto_4
    :pswitch_7
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static a([Ljava/lang/String;)[B
    .locals 12

    .line 2
    array-length v0, p0

    const v1, 0xffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_7

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    aget-object v0, p0, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_6

    .line 4
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 5
    aget-object v0, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 6
    array-length v0, p0

    move v1, v3

    move v4, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array v0, v4, [B

    .line 8
    array-length v1, p0

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v1, :cond_2

    aget-object v7, p0, v5

    .line 9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    add-int/lit8 v10, v6, 0x1

    .line 10
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 11
    :goto_3
    sget-boolean p0, Lcom/android/tools/r8/internal/gy0;->a:Z

    if-eqz p0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Should have reached the end"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5
    :goto_4
    return-object v0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 12
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 13
    aget-object v0, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 14
    :cond_7
    array-length v0, p0

    move v4, v3

    move v5, v4

    :goto_5
    if-ge v4, v0, :cond_a

    aget-object v6, p0, v4

    .line 15
    sget-boolean v7, Lcom/android/tools/r8/internal/N6;->b:Z

    if-nez v7, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v1, :cond_8

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String is too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 16
    :cond_9
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 17
    :cond_a
    new-array v0, v5, [B

    .line 18
    array-length v1, p0

    move v4, v3

    move v6, v4

    :goto_7
    if-ge v4, v1, :cond_c

    aget-object v7, p0, v4

    .line 19
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v3

    :goto_8
    if-ge v9, v8, :cond_b

    add-int/lit8 v10, v6, 0x1

    .line 20
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_8

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    move p0, v3

    :goto_9
    if-ge p0, v5, :cond_d

    .line 21
    aget-byte v1, v0, p0

    add-int/lit8 v1, v1, 0x7f

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_d
    mul-int/lit8 v5, v5, 0x7

    .line 22
    div-int/lit8 v5, v5, 0x8

    .line 23
    new-array p0, v5, [B

    move v1, v3

    move v4, v1

    move v6, v4

    :goto_a
    if-ge v1, v5, :cond_f

    .line 24
    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v4

    add-int/lit8 v8, v6, 0x1

    .line 25
    aget-byte v9, v0, v8

    add-int/lit8 v10, v4, 0x1

    shl-int v11, v2, v10

    sub-int/2addr v11, v2

    and-int/2addr v9, v11

    rsub-int/lit8 v11, v4, 0x7

    shl-int/2addr v9, v11

    add-int/2addr v7, v9

    int-to-byte v7, v7

    .line 26
    aput-byte v7, p0, v1

    const/4 v7, 0x6

    if-ne v4, v7, :cond_e

    add-int/lit8 v6, v6, 0x2

    move v4, v3

    goto :goto_b

    :cond_e
    move v6, v8

    move v4, v10

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    return-object p0
.end method
