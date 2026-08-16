.class public Lcom/ardor3d/util/export/binary/BinaryImporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Ardor3dImporter;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _aliasWidth:I

.field protected final _capsuleTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/util/export/Savable;",
            "Lcom/ardor3d/util/export/binary/BinaryInputCapsule;",
            ">;"
        }
    .end annotation
.end field

.field protected final _classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ardor3d/util/export/binary/BinaryClassObject;",
            ">;"
        }
    .end annotation
.end field

.field protected final _contentTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ardor3d/util/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field protected _dataArray:[B

.field protected final _debug:Z

.field protected final _locationTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/export/binary/BinaryImporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_classes:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_contentTable:Ljava/util/Map;

    .line 5
    invoke-static {}, Lcom/google/common/collect/Q1;->b0()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_capsuleTable:Ljava/util/Map;

    .line 6
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_locationTable:Ljava/util/Map;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    .line 9
    iput-boolean p1, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_debug:Z

    return-void
.end method

.method public static getInstance()Lcom/ardor3d/util/export/binary/BinaryImporter;
    .locals 1

    .line 1
    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryImporter;

    invoke-direct {v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;-><init>()V

    return-object v0
.end method

.method public static getInstance(Z)Lcom/ardor3d/util/export/binary/BinaryImporter;
    .locals 1

    .line 2
    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryImporter;

    invoke-direct {v0, p0}, Lcom/ardor3d/util/export/binary/BinaryImporter;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public load(Ljava/io/File;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/File;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 64
    invoke-virtual {p0, v0, p2}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1
.end method

.method public load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/ardor3d/util/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/ardor3d/util/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Lcom/ardor3d/util/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/ardor3d/util/export/Savable;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v4

    int-to-double v6, v4

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    .line 6
    invoke-static {v6, v7, v8, v9}, Lcom/ardor3d/math/MathUtils;->log(DD)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    move v7, v3

    const/4 v8, 0x4

    :goto_0
    if-ge v7, v4, :cond_1

    .line 7
    iget v9, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    invoke-virtual {v1, v5, v9}, Lcom/ardor3d/util/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v10

    .line 9
    invoke-virtual {v1, v5, v10}, Lcom/ardor3d/util/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v11

    .line 10
    new-instance v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;

    invoke-direct {v12}, Lcom/ardor3d/util/export/binary/BinaryClassObject;-><init>()V

    .line 11
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    iput-object v13, v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_alias:[B

    .line 12
    iput-object v11, v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_className:Ljava/lang/String;

    .line 13
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v11

    .line 14
    iget v13, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    add-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    .line 15
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    .line 16
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_aliasFields:Ljava/util/HashMap;

    move v10, v3

    :goto_1
    if-ge v10, v11, :cond_0

    .line 17
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v13

    int-to-byte v13, v13

    .line 18
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v14

    int-to-byte v14, v14

    .line 19
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v15

    .line 20
    invoke-virtual {v1, v5, v15}, Lcom/ardor3d/util/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 21
    new-instance v2, Lcom/ardor3d/util/export/binary/BinaryClassField;

    invoke-direct {v2, v6, v13, v14}, Lcom/ardor3d/util/export/binary/BinaryClassField;-><init>(Ljava/lang/String;BB)V

    .line 22
    iget-object v14, v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v6, v12, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_aliasFields:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v6, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x6

    add-int/2addr v8, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 24
    :cond_0
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_classes:Ljava/util/Map;

    invoke-interface {v2, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 25
    invoke-interface {v0, v8}, Lcom/ardor3d/util/export/ReadListener;->readBytes(I)V

    .line 26
    :cond_2
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v2

    move v7, v3

    const/4 v6, 0x4

    :goto_2
    if-ge v7, v2, :cond_3

    .line 27
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v8

    .line 28
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v9

    .line 29
    iget-object v10, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_locationTable:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 30
    :cond_3
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    .line 31
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v7

    add-int/lit8 v6, v6, 0x8

    if-eqz v0, :cond_4

    .line 32
    invoke-interface {v0, v6}, Lcom/ardor3d/util/export/ReadListener;->readBytes(I)V

    :cond_4
    if-nez p3, :cond_5

    .line 33
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_3

    .line 34
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object/from16 v8, p3

    :goto_3
    const/16 v6, 0x1000

    .line 35
    new-array v6, v6, [B

    .line 36
    :cond_6
    :goto_4
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 37
    invoke-virtual {v8, v6, v3, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v0, :cond_6

    .line 38
    invoke-interface {v0, v9}, Lcom/ardor3d/util/export/ReadListener;->readBytes(I)V

    goto :goto_4

    .line 39
    :cond_7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    .line 40
    invoke-virtual {v1, v7}, Lcom/ardor3d/util/export/binary/BinaryImporter;->readObject(I)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    .line 41
    iget-boolean v5, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_debug:Z

    if-eqz v5, :cond_8

    .line 42
    sget-object v5, Lcom/ardor3d/util/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    const-string v6, "Importer Stats: "

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Objects: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_8
    iput v3, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    .line 47
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 48
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_classes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 49
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_capsuleTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 51
    iput-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    return-object v0

    .line 52
    :goto_5
    iput v3, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    .line 53
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 54
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_classes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 55
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_capsuleTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 57
    iput-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    throw v0
.end method

.method public load(Ljava/net/URL;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/net/URL;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/ardor3d/util/export/ReadListener;)Lcom/ardor3d/util/export/Savable;

    move-result-object p2

    .line 61
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p2
.end method

.method public load([B)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object p1
.end method

.method public readObject(I)Lcom/ardor3d/util/export/Savable;
    .locals 10

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_contentTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_contentTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/export/Savable;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_locationTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    invoke-virtual {p0, v2, v1}, Lcom/ardor3d/util/export/binary/BinaryImporter;->readString(II)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_aliasWidth:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_classes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/export/binary/BinaryClassObject;

    if-nez v3, :cond_1

    sget-object p1, Lcom/ardor3d/util/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "readObject(int id)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NULL class object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v4, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    move-object v6, p1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    invoke-static {v2, v1}, Lcom/ardor3d/util/export/ByteUtils;->convertIntFromBytes([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    new-instance v4, Lcom/ardor3d/util/export/binary/BinaryInputCapsule;

    invoke-direct {v4, p0, v3}, Lcom/ardor3d/util/export/binary/BinaryInputCapsule;-><init>(Lcom/ardor3d/util/export/binary/BinaryImporter;Lcom/ardor3d/util/export/binary/BinaryClassObject;)V

    iget-object v5, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    add-int/2addr v2, v1

    invoke-virtual {v4, v5, v1, v2}, Lcom/ardor3d/util/export/binary/BinaryInputCapsule;->setContent([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v3, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/ardor3d/annotation/SavableFactory;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/annotation/SavableFactory;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/export/Savable;

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lcom/ardor3d/annotation/SavableFactory;->factoryMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/export/Savable;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_capsuleTable:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_contentTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_capsuleTable:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/export/InputCapsule;

    invoke-interface {v1, p1}, Lcom/ardor3d/util/export/Savable;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    iget-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_capsuleTable:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :goto_1
    sget-object v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "readObject(int)"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Method specified in annotation does not appear to exist or has an invalid method signature."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ardor3d/util/Ardor3dException;

    invoke-direct {v1, p1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    sget-object v4, Lcom/ardor3d/util/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "readObject(int)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access constructor of class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Some types may require the annotation SavableFactory.  Please double check."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ardor3d/util/Ardor3dException;

    invoke-direct {v1, p1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sget-object v1, Lcom/ardor3d/util/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "readObject(int)"

    const-string v5, "Exception"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public readString(II)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/ardor3d/util/export/binary/BinaryImporter;->_dataArray:[B

    add-int v3, v1, p2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method
