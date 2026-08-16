.class public final Lcom/jme3/export/binary/BinaryImporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/JmeImporter;


# static fields
.field public static debug:Z

.field private static final fastRead:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private aliasWidth:I

.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private final capsuleTable:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/jme3/export/Savable;",
            "Lcom/jme3/export/binary/BinaryInputCapsule;",
            ">;"
        }
    .end annotation
.end field

.field private classFilter:Lcom/jme3/export/SavableClassFilter;

.field private final classes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/export/binary/BinaryClassObject;",
            ">;"
        }
    .end annotation
.end field

.field private final contentTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field private dataArray:[B

.field private formatVersion:I

.field private final locationTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jme3/export/binary/BinaryImporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/export/binary/BinaryImporter;->debug:Z

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/jme3/export/binary/BinaryImporter;->fastRead:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/jme3/export/SavableClassFilter;->ACCEPT_ALL:Lcom/jme3/export/SavableClassFilter;

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->classFilter:Lcom/jme3/export/SavableClassFilter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    return-void
.end method

.method public static canUseFastBuffers()Z
    .locals 1

    sget-boolean v0, Lcom/jme3/export/binary/BinaryImporter;->fastRead:Z

    return v0
.end method

.method private checkLength(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid negative J3O length/count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/jme3/export/binary/BinaryImporter;
    .locals 1

    new-instance v0, Lcom/jme3/export/binary/BinaryImporter;

    invoke-direct {v0}, Lcom/jme3/export/binary/BinaryImporter;-><init>()V

    return-object v0
.end method

.method private readUnsignedByte(Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of J3O while reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    return-object v0
.end method

.method public getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;
    .locals 1

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/InputCapsule;

    return-object p1
.end method

.method public getClassFilter()Lcom/jme3/export/SavableClassFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->classFilter:Lcom/jme3/export/SavableClassFilter;

    return-object v0
.end method

.method public getFormatVersion()I
    .locals 1

    iget v0, p0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    return v0
.end method

.method public load(Ljava/io/File;)Lcom/jme3/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/File;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 83
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 85
    throw p1
.end method

.method public load(Ljava/io/InputStream;)Lcom/jme3/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v0}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/jme3/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/jme3/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/jme3/export/Savable;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 10
    iget-object v2, v0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 11
    new-instance v2, Ljava/io/BufferedInputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v3

    const v4, 0x4a4d4533    # 3363148.8f

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 13
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    .line 14
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 15
    iget v4, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    if-ltz v4, :cond_1

    const/4 v6, 0x3

    if-gt v4, v6, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The binary file is of newer version than expected! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid J3O format version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_2
    iput v5, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    :goto_0
    if-lez v3, :cond_10

    int-to-float v4, v3

    const/high16 v6, 0x43800000    # 256.0f

    .line 19
    invoke-static {v4, v6}, Lcom/jme3/math/FastMath;->log(FF)F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    .line 20
    iget-object v4, v0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move v7, v5

    const/4 v8, 0x4

    :goto_1
    if-ge v7, v3, :cond_7

    .line 21
    iget v9, v0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    invoke-virtual {v0, v2, v9}, Lcom/jme3/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v9

    .line 22
    iget v10, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    if-lt v10, v6, :cond_3

    .line 23
    const-string v10, "class hierarchy size"

    invoke-direct {v0, v2, v10}, Lcom/jme3/export/binary/BinaryImporter;->readUnsignedByte(Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 24
    new-array v11, v10, [I

    move v12, v5

    :goto_2
    if-ge v12, v10, :cond_4

    .line 25
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v13

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 26
    :cond_3
    new-array v11, v6, [I

    aput v5, v11, v5

    .line 27
    :cond_4
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v10

    .line 28
    invoke-direct {v0, v10}, Lcom/jme3/export/binary/BinaryImporter;->checkLength(I)V

    .line 29
    invoke-virtual {v0, v2, v10}, Lcom/jme3/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v12

    .line 30
    iget-object v13, v0, Lcom/jme3/export/binary/BinaryImporter;->classFilter:Lcom/jme3/export/SavableClassFilter;

    invoke-static {v12}, Lcom/jme3/export/SavableClassUtil;->remapClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/jme3/export/SavableClassFilter;->isAllowed(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 31
    new-instance v13, Lcom/jme3/export/binary/BinaryClassObject;

    invoke-direct {v13}, Lcom/jme3/export/binary/BinaryClassObject;-><init>()V

    .line 32
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    iput-object v14, v13, Lcom/jme3/export/binary/BinaryClassObject;->alias:[B

    .line 33
    iput-object v12, v13, Lcom/jme3/export/binary/BinaryClassObject;->className:Ljava/lang/String;

    .line 34
    iput-object v11, v13, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    .line 35
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v11

    .line 36
    invoke-direct {v0, v11}, Lcom/jme3/export/binary/BinaryImporter;->checkLength(I)V

    .line 37
    iget v12, v0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    add-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v10

    add-int/2addr v8, v12

    .line 38
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v13, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    .line 39
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v13, Lcom/jme3/export/binary/BinaryClassObject;->aliasFields:Ljava/util/HashMap;

    move v10, v5

    :goto_3
    if-ge v10, v11, :cond_5

    .line 40
    const-string v12, "field alias"

    invoke-direct {v0, v2, v12}, Lcom/jme3/export/binary/BinaryImporter;->readUnsignedByte(Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    int-to-byte v12, v12

    .line 41
    const-string v14, "field type"

    invoke-direct {v0, v2, v14}, Lcom/jme3/export/binary/BinaryImporter;->readUnsignedByte(Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    int-to-byte v14, v14

    .line 42
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v15

    .line 43
    invoke-direct {v0, v15}, Lcom/jme3/export/binary/BinaryImporter;->checkLength(I)V

    .line 44
    invoke-virtual {v0, v2, v15}, Lcom/jme3/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    .line 45
    new-instance v6, Lcom/jme3/export/binary/BinaryClassField;

    invoke-direct {v6, v4, v12, v14}, Lcom/jme3/export/binary/BinaryClassField;-><init>(Ljava/lang/String;BB)V

    .line 46
    iget-object v14, v13, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v4, v13, Lcom/jme3/export/binary/BinaryClassObject;->aliasFields:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v4, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x6

    add-int/2addr v8, v15

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 48
    :cond_5
    iget-object v4, v0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v4, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 49
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "J3O class rejected by filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-eqz v1, :cond_8

    .line 50
    invoke-interface {v1, v8}, Lcom/jme3/export/ReadListener;->readBytes(I)V

    .line 51
    :cond_8
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v4

    .line 52
    invoke-direct {v0, v4}, Lcom/jme3/export/binary/BinaryImporter;->checkLength(I)V

    .line 53
    iget-object v6, v0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 54
    iget-object v6, v0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v7, v5

    const/4 v6, 0x4

    :goto_4
    if-ge v7, v4, :cond_a

    .line 55
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v8

    .line 56
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v9

    if-ltz v9, :cond_9

    .line 57
    iget-object v10, v0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 58
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid negative J3O object location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_a
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    .line 60
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v7

    add-int/lit8 v6, v6, 0x8

    if-eqz v1, :cond_b

    .line 61
    invoke-interface {v1, v6}, Lcom/jme3/export/ReadListener;->readBytes(I)V

    :cond_b
    if-nez p3, :cond_c

    .line 62
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_5

    .line 63
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object/from16 v8, p3

    :goto_5
    const/16 v6, 0x1000

    .line 64
    new-array v6, v6, [B

    .line 65
    :cond_d
    :goto_6
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    .line 66
    invoke-virtual {v8, v6, v5, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v1, :cond_d

    .line 67
    invoke-interface {v1, v9}, Lcom/jme3/export/ReadListener;->readBytes(I)V

    goto :goto_6

    .line 68
    :cond_e
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    .line 69
    invoke-virtual {v0, v7}, Lcom/jme3/export/binary/BinaryImporter;->readObject(I)Lcom/jme3/export/Savable;

    move-result-object v1

    .line 70
    sget-boolean v2, Lcom/jme3/export/binary/BinaryImporter;->debug:Z

    if-eqz v2, :cond_f

    .line 71
    sget-object v2, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Importer Stats: "

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 72
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "Tags: {0}"

    invoke-virtual {v2, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Objects: {0}"

    invoke-virtual {v2, v5, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v3, v0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Data Size: {0}"

    invoke-virtual {v2, v5, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    const/4 v2, 0x0

    .line 75
    iput-object v2, v0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    return-object v1

    .line 76
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid J3O class count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public load(Ljava/net/URL;)Lcom/jme3/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/net/URL;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;)Lcom/jme3/export/Savable;

    move-result-object p2

    .line 80
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p2
.end method

.method public load([B)Lcom/jme3/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/jme3/export/Savable;

    move-result-object p1

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object p1
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/jme3/export/Savable;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_1

    :catch_2
    move-exception v1

    move-object p1, v0

    .line 5
    :goto_0
    :try_start_3
    sget-object v2, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "An error occurred while loading jME binary object"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v0

    :goto_1
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 7
    :catch_4
    :cond_2
    throw v0
.end method

.method public readObject(I)Lcom/jme3/export/Savable;
    .locals 8

    const-class v0, Lcom/jme3/export/binary/BinaryImporter;

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/Savable;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    invoke-virtual {p0, v3, v2}, Lcom/jme3/export/binary/BinaryImporter;->readString(II)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/export/binary/BinaryClassObject;

    if-nez v4, :cond_1

    sget-object p1, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "readObject(int id)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NULL class object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v4, v5, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p1

    move-object v7, p1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x4

    iget-object v5, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    array-length v6, v5

    if-gt v3, v6, :cond_3

    invoke-static {v5, v2}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([BI)I

    move-result v2

    if-ltz v2, :cond_2

    add-int v5, v3, v2

    if-lt v5, v3, :cond_2

    iget-object v6, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    array-length v6, v6

    if-gt v5, v6, :cond_2

    iget-object v2, v4, Lcom/jme3/export/binary/BinaryClassObject;->className:Ljava/lang/String;

    iget-object v6, p0, Lcom/jme3/export/binary/BinaryImporter;->classFilter:Lcom/jme3/export/SavableClassFilter;

    invoke-static {v2, v6}, Lcom/jme3/export/SavableClassUtil;->fromName(Ljava/lang/String;Lcom/jme3/export/SavableClassFilter;)Lcom/jme3/export/Savable;

    move-result-object v2

    new-instance v6, Lcom/jme3/export/binary/BinaryInputCapsule;

    invoke-direct {v6, p0, v2, v4}, Lcom/jme3/export/binary/BinaryInputCapsule;-><init>(Lcom/jme3/export/binary/BinaryImporter;Lcom/jme3/export/Savable;Lcom/jme3/export/binary/BinaryClassObject;)V

    iget-object v4, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    invoke-virtual {v6, v4, v3, v5}, Lcom/jme3/export/binary/BinaryInputCapsule;->setContent([BII)V

    iget-object v3, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p0}, Lcom/jme3/export/Savable;->read(Lcom/jme3/export/JmeImporter;)V

    iget-object p1, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid J3O object data length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated J3O object length at payload offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "J3O object location outside payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing J3O object location for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "readObject(int id)"

    const-string v6, "Exception"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public readString(II)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/jme3/export/binary/BinaryImporter;->checkLength(I)V

    if-ltz p2, :cond_1

    add-int v0, p2, p1

    if-lt v0, p2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 7
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    add-int v3, v1, p2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String outside J3O payload: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/jme3/export/binary/BinaryImporter;->checkLength(I)V

    .line 2
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 3
    const-string v2, "string"

    invoke-direct {p0, p1, v2}, Lcom/jme3/export/binary/BinaryImporter;->readUnsignedByte(Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public setAssetManager(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public setClassFilter(Lcom/jme3/export/SavableClassFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/export/binary/BinaryImporter;->classFilter:Lcom/jme3/export/SavableClassFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "classFilter"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
