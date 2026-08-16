.class public final Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
    }
.end annotation


# static fields
.field private static final MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->MAGIC:[B

    const-string v0, "native-terrain-data"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x49t
        0x54t
        0x54t
        0x44t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasBinaryHeader([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->MAGIC:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->MAGIC:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method private static native nativeReadBytes([B)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation
.end method

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method private static native nativeWriteFile(Ljava/lang/String;J[Ljava/lang/String;[J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "heightPointer",
            "layerGuids",
            "layerPointers"
        }
    .end annotation
.end method

.method public static read(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->read([B)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "inputStream can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read([B)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->nativeReadBytes([B)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "bytes can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static write(Ljava/io/File;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[Ljava/lang/String;[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "heightBuffer",
            "layerGuids",
            "layerBuffers"
        }
    .end annotation

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/String;

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v0, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_1
    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_5

    array-length v1, p3

    new-array v1, v1, [J

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_3

    aget-object v2, p3, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "layerBuffers["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] can\'t be null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v2

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {p0, v2, v3, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;->nativeWriteFile(Ljava/lang/String;J[Ljava/lang/String;[J)Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layerGuids length must match layerBuffers length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
