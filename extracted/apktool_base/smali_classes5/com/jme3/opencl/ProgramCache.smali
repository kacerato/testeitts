.class public Lcom/jme3/opencl/ProgramCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILE_EXTENSION:Ljava/lang/String; = ".clbin"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final context:Lcom/jme3/opencl/Context;

.field private final device:Lcom/jme3/opencl/Device;

.field private final tmpFolder:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/opencl/ProgramCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/opencl/ProgramCache;->context:Lcom/jme3/opencl/Context;

    .line 3
    iput-object v0, p0, Lcom/jme3/opencl/ProgramCache;->device:Lcom/jme3/opencl/Device;

    .line 4
    iput-object v0, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/opencl/Context;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/jme3/opencl/Context;->getDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/opencl/Device;

    invoke-direct {p0, p1, v0}, Lcom/jme3/opencl/ProgramCache;-><init>(Lcom/jme3/opencl/Context;Lcom/jme3/opencl/Device;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/opencl/Context;Lcom/jme3/opencl/Device;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/jme3/opencl/ProgramCache;->context:Lcom/jme3/opencl/Context;

    .line 7
    iput-object p2, p0, Lcom/jme3/opencl/ProgramCache;->device:Lcom/jme3/opencl/Device;

    .line 8
    invoke-static {}, Lcom/jme3/system/JmeSystem;->isLowPermissions()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/jme3/system/JmeSystem;->getStorageFolder()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    :goto_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".clbin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCleanFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[^a-zA-Z0-9.-]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".clbin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Ljava/lang/String;)Lcom/jme3/opencl/Program;
    .locals 1

    .line 13
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/jme3/opencl/ProgramCache;->loadFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/jme3/opencl/Program;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/jme3/opencl/Program;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/ProgramCache;->getCleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    sget-object p1, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    const-string v2, "Cache file {0} does not exist"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v1

    .line 6
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/jme3/opencl/ProgramCache;->context:Lcom/jme3/opencl/Context;

    iget-object v2, p0, Lcom/jme3/opencl/ProgramCache;->device:Lcom/jme3/opencl/Device;

    invoke-virtual {v0, p1, v2}, Lcom/jme3/opencl/Context;->createProgramFromBinary(Ljava/nio/ByteBuffer;Lcom/jme3/opencl/Device;)Lcom/jme3/opencl/Program;

    move-result-object p1
    :try_end_1
    .catch Lcom/jme3/opencl/OpenCLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :try_start_2
    iget-object v0, p0, Lcom/jme3/opencl/ProgramCache;->device:Lcom/jme3/opencl/Device;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jme3/opencl/Device;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, p2, v2}, Lcom/jme3/opencl/Program;->build(Ljava/lang/String;[Lcom/jme3/opencl/Device;)V
    :try_end_2
    .catch Lcom/jme3/opencl/OpenCLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    sget-object p2, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Unable to build program"

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p1

    .line 11
    sget-object p2, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Unable to create program from binary"

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_2
    move-exception p1

    .line 12
    sget-object p2, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Unable to read cache file"

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public saveToCache(Ljava/lang/String;Lcom/jme3/opencl/Program;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jme3/opencl/ProgramCache;->tmpFolder:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/ProgramCache;->getCleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/jme3/opencl/ProgramCache;->device:Lcom/jme3/opencl/Device;

    invoke-virtual {p2, p1}, Lcom/jme3/opencl/Program;->getBinary(Lcom/jme3/opencl/Device;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jme3/opencl/OpenCLException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Unable to save program binaries to the cache"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    sget-object p2, Lcom/jme3/opencl/ProgramCache;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Unable to retrieve the program binaries"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
