.class public Lcom/ardor3d/util/export/binary/BinaryExporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Ardor3dExporter;


# static fields
.field public static DEFAULT_COMPRESSION:I

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _aliasCount:I

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

.field protected final _compression:I

.field protected final _contentKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field protected final _contentTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/util/export/Savable;",
            "Lcom/ardor3d/util/export/binary/BinaryIdContentPair;",
            ">;"
        }
    .end annotation
.end field

.field protected final _debug:Z

.field protected _idCount:I

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

    const-class v0, Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/export/binary/BinaryExporter;->logger:Ljava/util/logging/Logger;

    const/16 v0, 0x9

    sput v0, Lcom/ardor3d/util/export/binary/BinaryExporter;->DEFAULT_COMPRESSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->DEFAULT_COMPRESSION:I

    invoke-direct {p0, v0, v1}, Lcom/ardor3d/util/export/binary/BinaryExporter;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_aliasCount:I

    .line 4
    iput v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_idCount:I

    .line 5
    invoke-static {}, Lcom/google/common/collect/Q1;->b0()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    .line 6
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcom/google/common/collect/Q1;->Y()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    .line 8
    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentKeys:Ljava/util/List;

    .line 9
    iput-boolean p1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_debug:Z

    .line 10
    iput p2, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_compression:I

    return-void
.end method

.method public static getInstance()Lcom/ardor3d/util/export/binary/BinaryExporter;
    .locals 1

    .line 1
    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-direct {v0}, Lcom/ardor3d/util/export/binary/BinaryExporter;-><init>()V

    return-object v0
.end method

.method public static getInstance(ZI)Lcom/ardor3d/util/export/binary/BinaryExporter;
    .locals 1

    .line 2
    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-direct {v0, p0, p1}, Lcom/ardor3d/util/export/binary/BinaryExporter;-><init>(ZI)V

    return-object v0
.end method


# virtual methods
.method public findPrevMatch(Lcom/ardor3d/util/export/binary/BinaryIdContentPair;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/util/export/binary/BinaryIdContentPair;",
            "Ljava/util/List<",
            "Lcom/ardor3d/util/export/binary/BinaryIdContentPair;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    invoke-virtual {v2}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public fixClassAlias([BI)[B
    .locals 3

    array-length v0, p1

    if-eq v0, p2, :cond_1

    new-array v0, p2, [B

    array-length v1, p1

    sub-int v1, p2, v1

    :goto_0
    if-ge v1, p2, :cond_0

    array-length v2, p1

    sub-int v2, v1, v2

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public generateIdContentPair(Lcom/ardor3d/util/export/binary/BinaryClassObject;)Lcom/ardor3d/util/export/binary/BinaryIdContentPair;
    .locals 3

    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    iget v1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_idCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_idCount:I

    new-instance v2, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    invoke-direct {v2, p0, p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;-><init>(Lcom/ardor3d/util/export/binary/BinaryExporter;Lcom/ardor3d/util/export/binary/BinaryClassObject;)V

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;-><init>(ILcom/ardor3d/util/export/binary/BinaryOutputCapsule;)V

    return-object v0
.end method

.method public generateTag()[B
    .locals 9

    iget v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_aliasCount:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    invoke-static {v0, v1, v2, v3}, Lcom/ardor3d/math/MathUtils;->log(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    iget v4, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_aliasCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_aliasCount:I

    new-array v5, v1, [B

    :goto_0
    if-ltz v0, :cond_0

    int-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    div-int v7, v4, v6

    sub-int v8, v1, v0

    add-int/lit8 v8, v8, -0x1

    int-to-byte v7, v7

    aput-byte v7, v5, v8

    rem-int/2addr v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public getChunk(Lcom/ardor3d/util/export/binary/BinaryIdContentPair;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object v1

    iget-object v1, v1, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    invoke-virtual {p1}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object p1

    iget-object p1, p1, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    array-length p1, p1

    const/16 v2, 0x40

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public processBinarySavable(Lcom/ardor3d/util/export/Savable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;

    invoke-direct {v0}, Lcom/ardor3d/util/export/binary/BinaryClassObject;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/util/export/binary/BinaryExporter;->generateTag()[B

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_alias:[B

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {p1}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    invoke-virtual {p1}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getId()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/binary/BinaryExporter;->generateIdContentPair(Lcom/ardor3d/util/export/binary/BinaryClassObject;)Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    invoke-virtual {v1}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ardor3d/util/export/Savable;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    invoke-virtual {v0}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->finish()V

    invoke-virtual {v0}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getId()I

    move-result p1

    return p1
.end method

.method public save(Lcom/ardor3d/util/export/Savable;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 72
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/util/export/binary/BinaryExporter;->save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-string v0, " bytes"

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/ardor3d/util/export/binary/BinaryExporter$1;

    move-object/from16 v4, p2

    invoke-direct {v3, v1, v4}, Lcom/ardor3d/util/export/binary/BinaryExporter$1;-><init>(Lcom/ardor3d/util/export/binary/BinaryExporter;Ljava/io/OutputStream;)V

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/ardor3d/util/export/binary/BinaryExporter;->processBinarySavable(Lcom/ardor3d/util/export/Savable;)I

    move-result v4

    .line 3
    iget-object v5, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    .line 4
    invoke-static {v6, v7, v8, v9}, Lcom/ardor3d/math/MathUtils;->log(DD)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v2

    .line 5
    invoke-static {v5}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    .line 6
    iget-object v7, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_1

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 7
    iget-object v11, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ardor3d/util/export/binary/BinaryClassObject;

    .line 8
    iget-object v12, v11, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_alias:[B

    invoke-virtual {v1, v12, v6}, Lcom/ardor3d/util/export/binary/BinaryExporter;->fixClassAlias([BI)[B

    move-result-object v12

    .line 9
    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v9, v6

    .line 10
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 11
    array-length v12, v10

    invoke-static {v12}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    .line 12
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 13
    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    .line 14
    iget-object v10, v11, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 15
    iget-object v10, v11, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 16
    iget-object v13, v11, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_nameFields:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ardor3d/util/export/binary/BinaryClassField;

    .line 17
    iget-byte v14, v13, Lcom/ardor3d/util/export/binary/BinaryClassField;->_alias:B

    invoke-virtual {v3, v14}, Ljava/io/OutputStream;->write(I)V

    .line 18
    iget-byte v13, v13, Lcom/ardor3d/util/export/binary/BinaryClassField;->_type:B

    invoke-virtual {v3, v13}, Ljava/io/OutputStream;->write(I)V

    .line 19
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 20
    array-length v13, v12

    invoke-static {v13}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    .line 22
    array-length v12, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v12, v12, 0x6

    add-int/2addr v9, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 23
    :cond_1
    :try_start_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 24
    new-instance v10, Ljava/util/HashMap;

    iget-object v11, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    iget-object v11, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentKeys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ardor3d/util/export/Savable;

    .line 26
    invoke-interface {v13}, Lcom/ardor3d/util/export/Savable;->getClassTag()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 27
    iget-object v15, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Lcom/ardor3d/util/export/binary/BinaryExporter;->getChunk(Lcom/ardor3d/util/export/binary/BinaryIdContentPair;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 29
    invoke-virtual {v1, v15, v2}, Lcom/ardor3d/util/export/binary/BinaryExporter;->findPrevMatch(Lcom/ardor3d/util/export/binary/BinaryIdContentPair;Ljava/util/List;)I

    move-result v8

    move-object/from16 p2, v11

    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    .line 30
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, p2

    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 31
    :cond_2
    iget-object v8, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v16, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Lcom/ardor3d/util/export/binary/BinaryExporter;->getChunk(Lcom/ardor3d/util/export/binary/BinaryIdContentPair;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_3
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/ardor3d/util/export/binary/BinaryClassObject;->_alias:[B

    invoke-virtual {v1, v0, v6}, Lcom/ardor3d/util/export/binary/BinaryExporter;->fixClassAlias([BI)[B

    move-result-object v0

    .line 36
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v12, v6

    .line 37
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;

    invoke-virtual {v0}, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    move-result-object v0

    .line 38
    iget-object v2, v0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    array-length v2, v2

    invoke-static {v2}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v12, v12, 0x4

    .line 39
    iget-object v2, v0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    .line 40
    iget-object v0, v0, Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;->_bytes:[B

    array-length v0, v0

    add-int/2addr v12, v0

    move-object/from16 v11, p2

    move-object/from16 v0, v16

    goto :goto_2

    :cond_4
    move-object/from16 v16, v0

    .line 41
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 42
    invoke-static {v0}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 45
    iget-object v10, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v8, v8, 0x8

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    .line 46
    invoke-static {v2}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 47
    invoke-static {v4}, Lcom/ardor3d/util/export/ByteUtils;->convertToBytes(I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 48
    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 49
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 50
    iget-boolean v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_debug:Z

    if-eqz v2, :cond_6

    .line 51
    sget-object v2, Lcom/ardor3d/util/export/binary/BinaryExporter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Stats:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "objects: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location table: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    const/4 v2, 0x1

    .line 57
    iput v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_aliasCount:I

    .line 58
    iput v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_idCount:I

    .line 59
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    iget-object v0, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 63
    :goto_4
    iput v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_aliasCount:I

    .line 64
    iput v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_idCount:I

    .line 65
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 66
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_locationTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 67
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_classes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v2, v1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_contentKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v0
.end method
