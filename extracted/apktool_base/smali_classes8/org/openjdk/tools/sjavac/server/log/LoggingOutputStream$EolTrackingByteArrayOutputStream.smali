.class Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EolTrackingByteArrayOutputStream"
.end annotation


# static fields
.field private static final EOL:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;->EOL:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;)Z
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;->isLineComplete()Z

    move-result p0

    return p0
.end method

.method private isLineComplete()Z
    .locals 6

    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sget-object v1, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;->EOL:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    sget-object v1, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;->EOL:[B

    array-length v3, v1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    array-length v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
