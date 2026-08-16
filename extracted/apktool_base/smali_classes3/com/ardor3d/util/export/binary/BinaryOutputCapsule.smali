.class public Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/OutputCapsule;


# static fields
.field public static DEFAULT_BYTES:[B = null

.field public static final DEFAULT_OBJECT:I = -0x2

.field public static NULL_BYTES:[B = null

.field public static final NULL_OBJECT:I = -0x1


# instance fields
.field protected _baos:Ljava/io/ByteArrayOutputStream;

.field protected _bytes:[B

.field protected _cObj:Lcom/ardor3d/util/export/binary/BinaryClassObject;

.field protected _exporter:Lcom/ardor3d/util/export/binary/BinaryExporter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->NULL_BYTES:[B

    new-array v0, v0, [B

    const/4 v1, -0x2

    aput-byte v1, v0, v3

    sput-object v0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->DEFAULT_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/export/binary/BinaryExporter;Lcom/ardor3d/util/export/binary/BinaryClassObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_exporter:Lcom/ardor3d/util/export/binary/BinaryExporter;

    iput-object p2, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_cObj:Lcom/ardor3d/util/export/binary/BinaryClassObject;

    return-void
.end method

.method public static deflate([B)[B
    .locals 6

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/ardor3d/util/export/ByteUtils;->convertIntFromBytes([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->NULL_BYTES:[B

    return-object p0

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    sget-object p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->DEFAULT_BYTES:[B

    return-object p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-byte v3, p0, v2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    if-nez v0, :cond_4

    new-array p0, v2, [B

    return-object p0

    :cond_4
    add-int/lit8 v3, v0, 0x1

    new-array v4, v3, [B

    int-to-byte v5, v0

    aput-byte v5, v4, v1

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_5

    array-length v5, p0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    add-int/2addr v5, v1

    aget-byte v5, p0, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    iget-object p1, p1, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public generateAlias(Ljava/lang/String;B)V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_cObj:Lcom/ardor3d/util/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_cObj:Lcom/ardor3d/util/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    new-instance v2, Lcom/ardor3d/util/export/binary/BinaryClassField;

    invoke-direct {v2, p1, v0, p2}, Lcom/ardor3d/util/export/binary/BinaryClassField;-><init>(Ljava/lang/String;BB)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public write(BLjava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(B)V

    return-void
.end method

.method public write(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(D)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(DLjava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmpl-double p4, p1, p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/16 p4, 0x1e

    .line 19
    invoke-virtual {p0, p3, p4}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(D)V

    return-void
.end method

.method public write(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(F)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(FLjava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmpl-float p3, p1, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x14

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(F)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->deflate([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0xa

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void
.end method

.method public write(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(J)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->deflate([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(JLjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmp-long p4, p1, p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/16 p4, 0x28

    .line 25
    invoke-virtual {p0, p3, p4}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(J)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/Savable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_exporter:Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/export/binary/BinaryExporter;->processBinarySavable(Lcom/ardor3d/util/export/Savable;)I

    move-result p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x5a

    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method

.method public write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 200
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 129
    :cond_0
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 130
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p3, :cond_1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 p3, 0x46

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 191
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    .line 196
    new-array v0, v0, [B

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 198
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 199
    iget-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x7a

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public write(Ljava/nio/FloatBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 159
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    mul-int/lit8 v0, v0, 0x4

    .line 160
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    new-array p1, p1, [B

    .line 165
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x78

    .line 58
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public write(Ljava/nio/IntBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 167
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 171
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    mul-int/lit8 v0, v0, 0x4

    .line 172
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    new-array p1, p1, [B

    .line 177
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/nio/IntBuffer;Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x79

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public write(Ljava/nio/ShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->duplicate()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 182
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 183
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    mul-int/lit8 v0, v0, 0x2

    .line 184
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 187
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 188
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    new-array p1, p1, [B

    .line 189
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/nio/ShortBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x7b

    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/nio/ShortBuffer;)V

    return-void
.end method

.method public write(Ljava/util/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 142
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Ljava/util/BitSet;Ljava/lang/String;Ljava/util/BitSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x50

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/util/BitSet;)V

    return-void
.end method

.method public write(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(S)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(SLjava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x32

    .line 31
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(S)V

    return-void
.end method

.method public write(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(Z)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(ZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x3c

    .line 37
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 68
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 69
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BLjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([B)V

    return-void
.end method

.method public write([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 94
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 96
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([DLjava/lang/String;[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x1f

    .line 21
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([D)V

    return-void
.end method

.method public write([F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 85
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 86
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 87
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([FLjava/lang/String;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x15

    .line 15
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([F)V

    return-void
.end method

.method public write([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 76
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 77
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 78
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([ILjava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0xb

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([I)V

    return-void
.end method

.method public write([J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 103
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 104
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 105
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([JLjava/lang/String;[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x29

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([J)V

    return-void
.end method

.method public write([Lcom/ardor3d/util/export/Savable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 148
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 149
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 150
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[Lcom/ardor3d/util/export/Savable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x5b

    .line 54
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method

.method public write([Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 202
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    goto :goto_1

    .line 203
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 205
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 206
    invoke-virtual {p0, v0, p2, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public write([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 132
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 133
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 135
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x47

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;)V

    return-void
.end method

.method public write([S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 111
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 112
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 113
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 114
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([SLjava/lang/String;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x33

    .line 33
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([S)V

    return-void
.end method

.method public write([Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 120
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 121
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 122
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 123
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([ZLjava/lang/String;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x3d

    .line 39
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Z)V

    return-void
.end method

.method public write([[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 71
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 72
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 73
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[BLjava/lang/String;[[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x2

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[B)V

    return-void
.end method

.method public write([[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 98
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 100
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[DLjava/lang/String;[[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x20

    .line 23
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[D)V

    return-void
.end method

.method public write([[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 89
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 90
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 91
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[FLjava/lang/String;[[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x16

    .line 17
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[F)V

    return-void
.end method

.method public write([[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 80
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 81
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 82
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[ILjava/lang/String;[[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0xc

    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[I)V

    return-void
.end method

.method public write([[J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 107
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 108
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 109
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[JLjava/lang/String;[[J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x2a

    .line 29
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[J)V

    return-void
.end method

.method public write([[Lcom/ardor3d/util/export/Savable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 151
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 152
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 153
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 154
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Lcom/ardor3d/util/export/Savable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[Lcom/ardor3d/util/export/Savable;Ljava/lang/String;[[Lcom/ardor3d/util/export/Savable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x5c

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method

.method public write([[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 137
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 138
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 139
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x48

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[Ljava/lang/String;)V

    return-void
.end method

.method public write([[S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 115
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 116
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 118
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[SLjava/lang/String;[[S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x34

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[S)V

    return-void
.end method

.method public write([[Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 124
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 125
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 126
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 127
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[ZLjava/lang/String;[[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x3e

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([[Z)V

    return-void
.end method

.method public writeAlias(Ljava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_cObj:Lcom/ardor3d/util/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->generateAlias(Ljava/lang/String;B)V

    :cond_0
    iget-object p2, p0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_cObj:Lcom/ardor3d/util/export/binary/BinaryClassObject;

    iget-object p2, p2, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/export/binary/BinaryClassField;

    iget-byte p1, p1, Lcom/ardor3d/util/export/binary/BinaryClassField;->_alias:B

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(B)V

    return-void
.end method

.method public writeByteBufferArrayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeByteBufferList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x6f

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeByteBufferArrayList(Ljava/util/List;)V

    return-void
.end method

.method public writeFloatBufferArrayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeFloatBufferList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x6e

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeFloatBufferArrayList(Ljava/util/List;)V

    return-void
.end method

.method public writeSavableArrayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableArrayListArray([Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeSavableArrayList(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableArrayListArray2D([[Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeSavableArrayListArray([Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x64

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeSavableArrayList(Ljava/util/List;)V

    return-void
.end method

.method public writeSavableListArray([Ljava/util/List;Ljava/lang/String;[Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x65

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeSavableArrayListArray([Ljava/util/List;)V

    return-void
.end method

.method public writeSavableListArray2D([[Ljava/util/List;Ljava/lang/String;[[Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "[[",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x66

    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeSavableArrayListArray2D([[Ljava/util/List;)V

    return-void
.end method

.method public writeSavableMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/export/Savable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/Savable;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/ardor3d/util/export/Savable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Lcom/ardor3d/util/export/Savable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x69

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeSavableMap(Ljava/util/Map;)V

    return-void
.end method

.method public writeStringSavableMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/ardor3d/util/export/Savable;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ardor3d/util/export/Savable;

    .line 8
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->write([Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method

.method public writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/ardor3d/util/export/Savable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x6a

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->writeStringSavableMap(Ljava/util/Map;)V

    return-void
.end method
