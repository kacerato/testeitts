.class public abstract Lcom/ardor3d/util/export/ByteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBooleanFromBytes([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/export/ByteUtils;->convertBooleanFromBytes([BI)Z

    move-result p0

    return p0
.end method

.method public static convertBooleanFromBytes([BI)Z
    .locals 0

    .line 2
    aget-byte p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static convertDoubleFromBytes([B)D
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/export/ByteUtils;->convertDoubleFromBytes([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static convertDoubleFromBytes([BI)D
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/ardor3d/util/export/ByteUtils;->convertLongFromBytes([BI)J

    move-result-wide p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static convertFloatFromBytes([B)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/export/ByteUtils;->convertFloatFromBytes([BI)F

    move-result p0

    return p0
.end method

.method public static convertFloatFromBytes([BI)F
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/ardor3d/util/export/ByteUtils;->convertIntFromBytes([BI)I

    move-result p0

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static convertIntFromBytes([B)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/export/ByteUtils;->convertIntFromBytes([BI)I

    move-result p0

    return p0
.end method

.method public static convertIntFromBytes([BI)I
    .locals 2

    .line 2
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static convertLongFromBytes([B)J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/export/ByteUtils;->convertLongFromBytes([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertLongFromBytes([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x7

    .line 2
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static convertShortFromBytes([B)S
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ardor3d/util/export/ByteUtils;->convertShortFromBytes([BI)S

    move-result p0

    return p0
.end method

.method public static convertShortFromBytes([BI)S
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public static convertToBytes(D)[B
    .locals 0

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 13
    invoke-static {p0, p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToBytes(F)[B
    .locals 0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 15
    invoke-static {p0}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToBytes(I)[B
    .locals 5

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 2
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static convertToBytes(J)[B
    .locals 4

    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [B

    long-to-int v2, p0

    int-to-byte v2, v2

    const/4 v3, 0x7

    .line 4
    aput-byte v2, v1, v3

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    .line 5
    aput-byte v0, v1, v2

    const/16 v0, 0x10

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    .line 6
    aput-byte v0, v1, v2

    const/16 v0, 0x18

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    .line 7
    aput-byte v0, v1, v2

    const/16 v0, 0x20

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    .line 8
    aput-byte v0, v1, v2

    const/16 v0, 0x28

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    .line 9
    aput-byte v0, v1, v2

    const/16 v0, 0x30

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    .line 10
    aput-byte v0, v1, v2

    const/16 v0, 0x38

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x0

    .line 11
    aput-byte p0, v1, p1

    return-object v1
.end method

.method public static convertToBytes(S)[B
    .locals 3

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 1
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public static convertToBytes(Z)[B
    .locals 2

    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getByteContent(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method public static readBoolean(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertBooleanFromBytes([B)Z

    move-result p0

    return p0
.end method

.method public static readDouble(Ljava/io/InputStream;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertDoubleFromBytes([B)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readFloat(Ljava/io/InputStream;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertFloatFromBytes([B)F

    move-result p0

    return p0
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertIntFromBytes([B)I

    move-result p0

    return p0
.end method

.method public static readLong(Ljava/io/InputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertLongFromBytes([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readShort(Ljava/io/InputStream;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertShortFromBytes([B)S

    move-result p0

    return p0
.end method

.method public static rightAlignBytes([BI)[B
    .locals 3

    array-length v0, p0

    if-eq v0, p1, :cond_1

    new-array v0, p1, [B

    array-length v1, p0

    sub-int v1, p1, v1

    :goto_0
    if-ge v1, p1, :cond_0

    array-length v2, p0

    sub-int v2, p1, v2

    sub-int v2, v1, v2

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public static writeBoolean(Ljava/io/OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeDouble(Ljava/io/OutputStream;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(D)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeFloat(Ljava/io/OutputStream;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(F)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeLong(Ljava/io/OutputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(J)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeShort(Ljava/io/OutputStream;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(S)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
