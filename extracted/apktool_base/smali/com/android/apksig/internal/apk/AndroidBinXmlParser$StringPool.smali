.class Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringPool"
.end annotation


# static fields
.field private static final FLAG_UTF8:I = 0x100


# instance fields
.field private final mCachedStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChunkContents:Ljava/nio/ByteBuffer;

.field private final mStringCount:I

.field private final mStringsSection:Ljava/nio/ByteBuffer;

.field private final mUtf8Encoded:Z


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_6

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_5

    long-to-int v3, v3

    iput v3, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-gtz v4, :cond_4

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v6, 0x0

    const-wide/16 v13, 0x0

    if-lez v3, :cond_2

    int-to-long v2, v2

    move-wide v15, v4

    sub-long v4, v9, v2

    long-to-int v4, v4

    cmp-long v5, v7, v13

    if-lez v5, :cond_1

    cmp-long v5, v11, v9

    if-ltz v5, :cond_0

    sub-long/2addr v11, v2

    long-to-int v2, v11

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Styles offset ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") < strings offset ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    :goto_0
    invoke-static {v1, v4, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$300(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    move-wide v15, v4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    :goto_1
    const-wide/16 v2, 0x100

    and-long/2addr v2, v15

    cmp-long v2, v2, v13

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    :cond_3
    iput-boolean v6, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mUtf8Encoded:Z

    iput-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mChunkContents:Ljava/nio/ByteBuffer;

    return-void

    :cond_4
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many styles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many strings: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML chunk\'s header too short. Required at least 20 bytes. Available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getLengthPrefixedUtf16EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    if-gt v0, v1, :cond_3

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_0
    add-int p0, v2, v0

    aget-byte v3, v1, p0

    if-nez v3, :cond_2

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, v1, p0

    if-nez p0, :cond_2

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {p0, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-16LE character encoding not supported"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v0, "UTF-16 encoded form of string not NULL terminated"

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uint16s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getLengthPrefixedUtf8EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    :cond_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x8

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_0
    add-int p0, v2, v0

    aget-byte p0, v1, p0

    if-nez p0, :cond_3

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {p0, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 character encoding not supported"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v0, "UTF-8 encoded form of string not NULL terminated"

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString(J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-string v1, "Unsuported string index: "

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    const-string v2, ", max: "

    if-gez v0, :cond_3

    long-to-int p1, p1

    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mChunkContents:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, p1, 0x4

    invoke-static {p2, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$500(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    int-to-long v3, p2

    cmp-long p2, v0, v3

    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mUtf8Encoded:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getLengthPrefixedUtf8EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getLengthPrefixedUtf16EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_2
    new-instance p2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset of string idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of bounds: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
