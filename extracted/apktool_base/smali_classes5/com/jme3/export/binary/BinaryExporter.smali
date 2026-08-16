.class public Lcom/jme3/export/binary/BinaryExporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/JmeExporter;


# static fields
.field public static debug:Z

.field private static final logger:Ljava/util/logging/Logger;

.field public static useFastBufs:Z


# instance fields
.field protected aliasCount:I

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

.field private final contentKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field private final contentTable:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/jme3/export/Savable;",
            "Lcom/jme3/export/binary/BinaryIdContentPair;",
            ">;"
        }
    .end annotation
.end field

.field protected idCount:I

.field protected locationTable:Ljava/util/HashMap;
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
    .locals 1

    const-class v0, Lcom/jme3/export/binary/BinaryExporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/export/binary/BinaryExporter;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/export/binary/BinaryExporter;->debug:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jme3/export/binary/BinaryExporter;->useFastBufs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/export/binary/BinaryExporter;->aliasCount:I

    iput v0, p0, Lcom/jme3/export/binary/BinaryExporter;->idCount:I

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->contentKeys:Ljava/util/ArrayList;

    return-void
.end method

.method private createClassObject(Ljava/lang/Class;)Lcom/jme3/export/binary/BinaryClassObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;)",
            "Lcom/jme3/export/binary/BinaryClassObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jme3/export/binary/BinaryClassObject;

    invoke-direct {v0}, Lcom/jme3/export/binary/BinaryClassObject;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/export/binary/BinaryExporter;->generateTag()[B

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/export/binary/BinaryClassObject;->alias:[B

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/jme3/export/SavableClassUtil;->getSavableVersions(Ljava/lang/Class;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private findPrevMatch(Lcom/jme3/export/binary/BinaryIdContentPair;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/export/binary/BinaryIdContentPair;",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/export/binary/BinaryIdContentPair;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/export/binary/BinaryIdContentPair;

    invoke-virtual {v2}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/export/binary/BinaryOutputCapsule;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/jme3/export/binary/BinaryIdContentPair;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method private generateIdContentPair(Lcom/jme3/export/binary/BinaryClassObject;)Lcom/jme3/export/binary/BinaryIdContentPair;
    .locals 3

    new-instance v0, Lcom/jme3/export/binary/BinaryIdContentPair;

    iget v1, p0, Lcom/jme3/export/binary/BinaryExporter;->idCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/export/binary/BinaryExporter;->idCount:I

    new-instance v2, Lcom/jme3/export/binary/BinaryOutputCapsule;

    invoke-direct {v2, p0, p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;-><init>(Lcom/jme3/export/binary/BinaryExporter;Lcom/jme3/export/binary/BinaryClassObject;)V

    invoke-direct {v0, v1, v2}, Lcom/jme3/export/binary/BinaryIdContentPair;-><init>(ILcom/jme3/export/binary/BinaryOutputCapsule;)V

    return-object v0
.end method

.method private getChunk(Lcom/jme3/export/binary/BinaryIdContentPair;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object v1

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    invoke-virtual {p1}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object p1

    iget-object p1, p1, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    array-length p1, p1

    const/16 v2, 0x40

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static getInstance()Lcom/jme3/export/binary/BinaryExporter;
    .locals 1

    new-instance v0, Lcom/jme3/export/binary/BinaryExporter;

    invoke-direct {v0}, Lcom/jme3/export/binary/BinaryExporter;-><init>()V

    return-object v0
.end method

.method public static saveAndLoad(Lcom/jme3/asset/AssetManager;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/export/Savable;",
            ">(",
            "Lcom/jme3/asset/AssetManager;",
            "TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Lcom/jme3/export/binary/BinaryExporter;

    invoke-direct {v1}, Lcom/jme3/export/binary/BinaryExporter;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/jme3/export/binary/BinaryExporter;->save(Lcom/jme3/export/Savable;Ljava/io/OutputStream;)V

    new-instance p1, Lcom/jme3/export/binary/BinaryImporter;

    invoke-direct {p1}, Lcom/jme3/export/binary/BinaryImporter;-><init>()V

    invoke-virtual {p1, p0}, Lcom/jme3/export/binary/BinaryImporter;->setAssetManager(Lcom/jme3/asset/AssetManager;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/export/binary/BinaryImporter;->load([B)Lcom/jme3/export/Savable;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
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

.method public generateTag()[B
    .locals 8

    iget v0, p0, Lcom/jme3/export/binary/BinaryExporter;->aliasCount:I

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    invoke-static {v0, v1}, Lcom/jme3/math/FastMath;->log(FF)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/jme3/export/binary/BinaryExporter;->aliasCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jme3/export/binary/BinaryExporter;->aliasCount:I

    new-array v4, v2, [B

    :goto_0
    if-ltz v0, :cond_0

    int-to-float v5, v0

    invoke-static {v1, v5}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v5

    float-to-int v5, v5

    div-int v6, v3, v5

    sub-int v7, v2, v0

    add-int/lit8 v7, v7, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    rem-int/2addr v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;
    .locals 1

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryIdContentPair;

    invoke-virtual {p1}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object p1

    return-object p1
.end method

.method public processBinarySavable(Lcom/jme3/export/Savable;)I
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/export/binary/BinaryClassObject;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryExporter;->createClassObject(Ljava/lang/Class;)Lcom/jme3/export/binary/BinaryClassObject;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryIdContentPair;

    invoke-virtual {p1}, Lcom/jme3/export/binary/BinaryIdContentPair;->getId()I

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, v1}, Lcom/jme3/export/binary/BinaryExporter;->generateIdContentPair(Lcom/jme3/export/binary/BinaryClassObject;)Lcom/jme3/export/binary/BinaryIdContentPair;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/export/binary/BinaryIdContentPair;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryExporter;->contentKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1, p0}, Lcom/jme3/export/Savable;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-virtual {v0}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/export/binary/BinaryOutputCapsule;->finish()V

    invoke-virtual {v0}, Lcom/jme3/export/binary/BinaryIdContentPair;->getId()I

    move-result p1

    return p1
.end method

.method public save(Lcom/jme3/export/Savable;Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_0
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    :try_start_0
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryExporter;->save(Lcom/jme3/export/Savable;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 71
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public save(Lcom/jme3/export/Savable;Ljava/io/OutputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    .line 1
    iput v2, v0, Lcom/jme3/export/binary/BinaryExporter;->aliasCount:I

    .line 2
    iput v2, v0, Lcom/jme3/export/binary/BinaryExporter;->idCount:I

    .line 3
    iget-object v3, v0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v3, v0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 5
    iget-object v3, v0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object v3, v0, Lcom/jme3/export/binary/BinaryExporter;->contentKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const v3, 0x4a4d4533    # 3363148.8f

    .line 7
    invoke-static {v3}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x3

    .line 8
    invoke-static {v3}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/jme3/export/binary/BinaryExporter;->processBinarySavable(Lcom/jme3/export/Savable;)I

    move-result v3

    .line 10
    iget-object v4, v0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    int-to-float v5, v4

    const/high16 v6, 0x43800000    # 256.0f

    .line 11
    invoke-static {v5, v6}, Lcom/jme3/math/FastMath;->log(FF)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v2

    .line 12
    invoke-static {v4}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 13
    iget-object v6, v0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 14
    iget-object v10, v0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/export/binary/BinaryClassObject;

    .line 15
    iget-object v11, v10, Lcom/jme3/export/binary/BinaryClassObject;->alias:[B

    invoke-virtual {v0, v11, v5}, Lcom/jme3/export/binary/BinaryExporter;->fixClassAlias([BI)[B

    move-result-object v11

    .line 16
    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v8, v5

    .line 17
    iget-object v11, v10, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    array-length v11, v11

    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 18
    iget-object v11, v10, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_1

    aget v14, v11, v13

    .line 19
    invoke-static {v14}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v11, v10, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v2

    add-int/2addr v8, v11

    .line 21
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 22
    array-length v11, v9

    invoke-static {v11}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write([B)V

    .line 23
    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 24
    array-length v9, v9

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    .line 25
    iget-object v9, v10, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 26
    iget-object v9, v10, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 27
    iget-object v12, v10, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/export/binary/BinaryClassField;

    .line 28
    iget-byte v13, v12, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-virtual {v1, v13}, Ljava/io/OutputStream;->write(I)V

    .line 29
    iget-byte v12, v12, Lcom/jme3/export/binary/BinaryClassField;->type:B

    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 30
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 31
    array-length v12, v11

    invoke-static {v12}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write([B)V

    .line 32
    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write([B)V

    .line 33
    array-length v11, v11

    add-int/lit8 v11, v11, 0x6

    add-int/2addr v8, v11

    goto :goto_1

    .line 34
    :cond_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    new-instance v9, Ljava/util/HashMap;

    iget-object v10, v0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v10}, Ljava/util/IdentityHashMap;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    iget-object v10, v0, Lcom/jme3/export/binary/BinaryExporter;->contentKeys:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/export/Savable;

    .line 37
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    .line 38
    iget-object v14, v0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v14, v12}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jme3/export/binary/BinaryIdContentPair;

    .line 39
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Lcom/jme3/export/binary/BinaryExporter;->getChunk(Lcom/jme3/export/binary/BinaryIdContentPair;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0, v14, v7}, Lcom/jme3/export/binary/BinaryExporter;->findPrevMatch(Lcom/jme3/export/binary/BinaryIdContentPair;Ljava/util/ArrayList;)I

    move-result v15

    const/4 v2, -0x1

    if-eq v15, v2, :cond_3

    .line 41
    iget-object v2, v0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/jme3/export/binary/BinaryIdContentPair;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 42
    :cond_3
    iget-object v2, v0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/jme3/export/binary/BinaryIdContentPair;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_4

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Lcom/jme3/export/binary/BinaryExporter;->getChunk(Lcom/jme3/export/binary/BinaryIdContentPair;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_4
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, v0, Lcom/jme3/export/binary/BinaryExporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v2, v2, Lcom/jme3/export/binary/BinaryClassObject;->alias:[B

    invoke-virtual {v0, v2, v5}, Lcom/jme3/export/binary/BinaryExporter;->fixClassAlias([BI)[B

    move-result-object v2

    .line 47
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/2addr v11, v5

    .line 48
    iget-object v2, v0, Lcom/jme3/export/binary/BinaryExporter;->contentTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v12}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/export/binary/BinaryIdContentPair;

    invoke-virtual {v2}, Lcom/jme3/export/binary/BinaryIdContentPair;->getContent()Lcom/jme3/export/binary/BinaryOutputCapsule;

    move-result-object v2

    .line 49
    iget-object v7, v2, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    array-length v7, v7

    invoke-static {v7}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v11, v11, 0x4

    .line 50
    iget-object v7, v2, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 51
    iget-object v2, v2, Lcom/jme3/export/binary/BinaryOutputCapsule;->bytes:[B

    array-length v2, v2

    add-int/2addr v11, v2

    move-object/from16 v10, v16

    goto :goto_3

    .line 52
    :cond_5
    iget-object v2, v0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 53
    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 54
    iget-object v5, v0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write([B)V

    .line 56
    iget-object v10, v0, Lcom/jme3/export/binary/BinaryExporter;->locationTable:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x8

    goto :goto_4

    :cond_6
    const/4 v9, 0x1

    .line 57
    invoke-static {v9}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-static {v3}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 60
    sget-boolean v1, Lcom/jme3/export/binary/BinaryExporter;->debug:Z

    if-eqz v1, :cond_7

    .line 61
    sget-object v1, Lcom/jme3/export/binary/BinaryExporter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v2, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 63
    const-string v4, "BinaryExporter Stats:\n * Classes: {0}\n * Class Table: {1} bytes\n * Objects: {2}\n * Location Table: {3} bytes\n * Data: {4} bytes"

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
