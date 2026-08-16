.class public Lcom/jme3/terrain/heightmap/RawHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field public static final FORMAT_16BITBE:I = 0x2

.field public static final FORMAT_16BITLE:I = 0x1

.field public static final FORMAT_8BIT:I

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private format:I

.field private stream:Ljava/io/InputStream;

.field private swapXy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/RawHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/RawHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/terrain/heightmap/RawHeightMap;->setup(Ljava/io/InputStream;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/jme3/terrain/heightmap/RawHeightMap;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/terrain/heightmap/RawHeightMap;->setup(Ljava/io/InputStream;IIZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "height file not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Must supply valid filename and size (> 0)"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/jme3/terrain/heightmap/RawHeightMap;->setup(Ljava/io/InputStream;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :catch_0
    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to open height url: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Must supply valid resource and size (> 0)"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    .line 4
    array-length p1, p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->format:I

    return-void
.end method

.method private setup(Ljava/io/InputStream;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    iput-object p1, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->stream:Ljava/io/InputStream;

    iput p2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    iput p3, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->format:I

    iput-boolean p4, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->swapXy:Z

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/RawHeightMap;->load()Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Must supply valid stream and size (> 0)"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load()Z
    .locals 9

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->unloadHeightMap()V

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->stream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget v2, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->format:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/jme3/util/LittleEndien;

    invoke-direct {v2, v1}, Lcom/jme3/util/LittleEndien;-><init>(Ljava/io/InputStream;)V

    move v4, v0

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_3

    move v5, v0

    :goto_1
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_2

    iget-boolean v7, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->swapXy:Z

    if-eqz v7, :cond_1

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    goto :goto_2

    :cond_1
    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    :goto_2
    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    invoke-virtual {v2}, Lcom/jme3/util/LittleEndien;->readUnsignedShort()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/jme3/util/LittleEndien;->close()V

    goto :goto_7

    :cond_4
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move v4, v0

    :goto_3
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_8

    move v5, v0

    :goto_4
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_7

    iget-boolean v7, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->swapXy:Z

    if-eqz v7, :cond_5

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    goto :goto_5

    :cond_5
    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    :goto_5
    iget v7, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->format:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    goto :goto_6

    :cond_6
    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    sget-object v1, Lcom/jme3/terrain/heightmap/RawHeightMap;->logger:Ljava/util/logging/Logger;

    const-string v2, "Error reading height data from stream."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must supply valid stream and size (> 0)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height file not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Must supply valid filename."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeightStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/terrain/heightmap/RawHeightMap;->stream:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Must supply valid stream."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
