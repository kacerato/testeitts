.class final Lcom/jme3/export/binary/BinaryOutputCapsule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/OutputCapsule;


# static fields
.field public static DEFAULT_BYTES:[B = null

.field public static final DEFAULT_OBJECT:I = -0x2

.field public static NULL_BYTES:[B = null

.field public static final NULL_OBJECT:I = -0x1


# instance fields
.field protected baos:Ljava/io/ByteArrayOutputStream;

.field protected bytes:[B

.field protected cObj:Lcom/jme3/export/binary/BinaryClassObject;

.field protected exporter:Lcom/jme3/export/binary/BinaryExporter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/jme3/export/binary/BinaryOutputCapsule;->NULL_BYTES:[B

    new-array v0, v0, [B

    const/4 v1, -0x2

    aput-byte v1, v0, v3

    sput-object v0, Lcom/jme3/export/binary/BinaryOutputCapsule;->DEFAULT_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lcom/jme3/export/binary/BinaryExporter;Lcom/jme3/export/binary/BinaryClassObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->exporter:Lcom/jme3/export/binary/BinaryExporter;

    iput-object p2, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    return-void
.end method

.method public static deflate([B)[B
    .locals 6

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->NULL_BYTES:[B

    return-object p0

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    sget-object p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->DEFAULT_BYTES:[B

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

    instance-of v0, p1, Lcom/jme3/export/binary/BinaryOutputCapsule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/jme3/export/binary/BinaryOutputCapsule;

    iget-object p1, p1, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

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

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public generateAlias(Ljava/lang/String;B)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    new-instance v2, Lcom/jme3/export/binary/BinaryClassField;

    invoke-direct {v2, p1, v0, p2}, Lcom/jme3/export/binary/BinaryClassField;-><init>(Ljava/lang/String;BB)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0xa1

    add-int/2addr v1, v0

    return v1
.end method

.method public write(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(B)V

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
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(D)[B

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
    invoke-virtual {p0, p3, p4}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(D)V

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
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(F)[B

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(F)V

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
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->deflate([B)[B

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

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
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p2}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(J)[B

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->deflate([B)[B

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
    invoke-virtual {p0, p3, p4}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(J)V

    return-void
.end method

.method public write(Lcom/jme3/export/Savable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->exporter:Lcom/jme3/export/binary/BinaryExporter;

    invoke-virtual {v0, p1}, Lcom/jme3/export/binary/BinaryExporter;->processBinarySavable(Lcom/jme3/export/Savable;)I

    move-result p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void
.end method

.method public write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V
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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Lcom/jme3/export/Savable;)V

    return-void
.end method

.method public write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 129
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 130
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 167
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeForBuffer(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public write(Ljava/nio/FloatBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeForBuffer(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public write(Ljava/nio/IntBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 163
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeForBuffer(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public write(Ljava/nio/ShortBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 173
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 175
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeForBuffer(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/nio/ShortBuffer;)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 142
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Z)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/util/BitSet;)V

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
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(S)[B

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(S)V

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
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(Z)[B

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Z)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 68
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 69
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([B)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 94
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 96
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(D)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([D)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 85
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 86
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 87
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(F)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([F)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 76
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 77
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 78
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([I)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 103
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 104
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 105
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(J)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([J)V

    return-void
.end method

.method public write([Lcom/jme3/export/Savable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 148
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 149
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 150
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Lcom/jme3/export/Savable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V
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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Lcom/jme3/export/Savable;)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 133
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 135
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/lang/String;)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 112
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 113
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 114
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(S)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([S)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 121
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 122
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 123
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Z)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Z)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 71
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 72
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 73
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([B)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[B)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 98
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 100
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([D)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[D)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 89
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 90
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 91
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([F)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[F)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 80
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 81
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 82
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([I)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[I)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 107
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 108
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 109
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([J)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[J)V

    return-void
.end method

.method public write([[Lcom/jme3/export/Savable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 151
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 152
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 153
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 154
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Lcom/jme3/export/Savable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write([[Lcom/jme3/export/Savable;Ljava/lang/String;[[Lcom/jme3/export/Savable;)V
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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[Lcom/jme3/export/Savable;)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 137
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 138
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 139
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 116
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 118
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([S)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[S)V

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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 125
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    const/4 v0, 0x0

    .line 126
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 127
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Z)V

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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([[Z)V

    return-void
.end method

.method public writeAlias(Ljava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->generateAlias(Ljava/lang/String;B)V

    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object p2, p2, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(B)V

    return-void
.end method

.method public writeByteBufferArrayList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
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

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeByteBufferArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeByteBufferArrayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public writeFloatBufferArrayList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
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

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeFloatBufferArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeFloatBufferArrayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public writeForBuffer(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public writeForBuffer(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeForBuffer(I)V

    return-void
.end method

.method public writeForBuffer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

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

    aput-byte p1, v3, v0

    .line 3
    iget-object p1, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeForBuffer(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    .line 7
    iget-object p1, p0, Lcom/jme3/export/binary/BinaryOutputCapsule;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeIntSavableMap(Lcom/jme3/util/IntMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/IntMap<",
            "+",
            "Lcom/jme3/export/Savable;",
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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-virtual {p1}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 6
    new-array v0, v0, [Lcom/jme3/export/Savable;

    .line 7
    invoke-virtual {p1}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/IntMap$Entry;

    .line 8
    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v4

    aput v4, v1, v2

    .line 9
    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/export/Savable;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Lcom/jme3/export/Savable;)V

    return-void
.end method

.method public writeIntSavableMap(Lcom/jme3/util/IntMap;Ljava/lang/String;Lcom/jme3/util/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/IntMap<",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/jme3/util/IntMap<",
            "+",
            "Lcom/jme3/export/Savable;",
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
    const/16 p3, 0x6b

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeIntSavableMap(Lcom/jme3/util/IntMap;)V

    return-void
.end method

.method public writeSavableArrayList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/jme3/export/Savable;

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(Lcom/jme3/export/Savable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x64

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public writeSavableArrayListArray([Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableArrayListArray([Ljava/util/ArrayList;Ljava/lang/String;[Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x65

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeSavableArrayListArray([Ljava/util/ArrayList;)V

    return-void
.end method

.method public writeSavableArrayListArray2D([[Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {p0, v2}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeSavableArrayListArray([Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeSavableArrayListArray2D([[Ljava/util/ArrayList;Ljava/lang/String;[[Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x66

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeSavableArrayListArray2D([[Ljava/util/ArrayList;)V

    return-void
.end method

.method public writeSavableMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/jme3/export/Savable;",
            "+",
            "Lcom/jme3/export/Savable;",
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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/export/Savable;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/export/Savable;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/jme3/export/Savable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {p0, v3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Lcom/jme3/export/Savable;)V

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
            "Lcom/jme3/export/Savable;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Lcom/jme3/export/Savable;",
            "+",
            "Lcom/jme3/export/Savable;",
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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeSavableMap(Ljava/util/Map;)V

    return-void
.end method

.method public writeStringSavableMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/jme3/export/Savable;",
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
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lcom/jme3/export/Savable;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/export/Savable;

    .line 8
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->write([Lcom/jme3/export/Savable;)V

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
            "Lcom/jme3/export/Savable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/jme3/export/Savable;",
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
    invoke-virtual {p0, p2, p3}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeAlias(Ljava/lang/String;B)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->writeStringSavableMap(Ljava/util/Map;)V

    return-void
.end method
