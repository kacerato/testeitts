.class public interface abstract Lcom/android/tools/r8/retrace/ProguardMapProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static synthetic a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static a([[B)Ljava/io/InputStream;
    .locals 8

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p0, v3

    .line 4
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-array v1, v4, [B

    .line 6
    array-length v3, p0

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v6, p0, v4

    .line 7
    array-length v7, v6

    invoke-static {v6, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static synthetic b([[B)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->a([[B)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromBytes([[B)Lcom/android/tools/r8/retrace/ProguardMapProducer;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/x;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/x;-><init>([[B)V

    return-object v0
.end method

.method public static fromPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/retrace/ProguardMapProducer;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/e;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/e;-><init>(Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/tools/r8/retrace/ProguardMapProducer;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/w;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/w;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFileBacked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
