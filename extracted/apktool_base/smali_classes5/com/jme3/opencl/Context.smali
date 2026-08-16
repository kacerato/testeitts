.class public abstract Lcom/jme3/opencl/Context;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/opencl/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/Context;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    return-void
.end method

.method private buildSourcesRec(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;Lcom/jme3/asset/AssetManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " --\n"

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#import "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Lcom/jme3/asset/AssetKey;

    invoke-direct {v3, v1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v3}, Lcom/jme3/asset/AssetManager;->locateAsset(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    const-string v3, "//-- begin import "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, p2, p3}, Lcom/jme3/opencl/Context;->buildSourcesRec(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;Lcom/jme3/asset/AssetManager;)V

    const-string v3, "//-- end import "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_2
    new-instance p1, Lcom/jme3/asset/AssetNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to load source file \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/asset/AssetNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public abstract bindImage(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;ILcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;
.end method

.method public bindImage(Lcom/jme3/texture/Texture;ILcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jme3/opencl/Context;->bindImage(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;ILcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;

    move-result-object p1

    return-object p1
.end method

.method public bindImage(Lcom/jme3/texture/Texture;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/opencl/Context;->bindImage(Lcom/jme3/texture/Texture;ILcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;

    move-result-object p1

    return-object p1
.end method

.method public abstract bindPureRenderBuffer(Lcom/jme3/texture/FrameBuffer$RenderBuffer;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;
.end method

.method public bindRenderBuffer(Lcom/jme3/texture/FrameBuffer$RenderBuffer;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Context;->bindPureRenderBuffer(Lcom/jme3/texture/FrameBuffer$RenderBuffer;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getTexture()Lcom/jme3/texture/Texture;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Context;->bindImage(Lcom/jme3/texture/Texture;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Image;

    move-result-object p1

    return-object p1
.end method

.method public abstract bindVertexBuffer(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Buffer;
.end method

.method public createBuffer(J)Lcom/jme3/opencl/Buffer;
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/opencl/MemoryAccess;->READ_WRITE:Lcom/jme3/opencl/MemoryAccess;

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/opencl/Context;->createBuffer(JLcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract createBuffer(JLcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Buffer;
.end method

.method public createBufferFromHost(Ljava/nio/ByteBuffer;)Lcom/jme3/opencl/Buffer;
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/opencl/MemoryAccess;->READ_WRITE:Lcom/jme3/opencl/MemoryAccess;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/opencl/Context;->createBufferFromHost(Ljava/nio/ByteBuffer;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract createBufferFromHost(Ljava/nio/ByteBuffer;Lcom/jme3/opencl/MemoryAccess;)Lcom/jme3/opencl/Buffer;
.end method

.method public abstract createImage(Lcom/jme3/opencl/MemoryAccess;Lcom/jme3/opencl/Image$ImageFormat;Lcom/jme3/opencl/Image$ImageDescriptor;)Lcom/jme3/opencl/Image;
.end method

.method public abstract createProgramFromBinary(Ljava/nio/ByteBuffer;Lcom/jme3/opencl/Device;)Lcom/jme3/opencl/Program;
.end method

.method public abstract createProgramFromSourceCode(Ljava/lang/String;)Lcom/jme3/opencl/Program;
.end method

.method public createProgramFromSourceCodeWithDependencies(Ljava/lang/String;Lcom/jme3/asset/AssetManager;)Lcom/jme3/opencl/Program;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-direct {p0, v1, v0, p2}, Lcom/jme3/opencl/Context;->buildSourcesRec(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;Lcom/jme3/asset/AssetManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Context;->createProgramFromSourceCode(Ljava/lang/String;)Lcom/jme3/opencl/Program;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/jme3/asset/AssetNotFoundException;

    const-string v0, "Unable to read a dependency file"

    invoke-direct {p2, v0, p1}, Lcom/jme3/asset/AssetNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public createProgramFromSourceFiles(Lcom/jme3/asset/AssetManager;Ljava/util/List;)Lcom/jme3/opencl/Program;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jme3/opencl/Program;"
        }
    .end annotation

    .line 2
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/opencl/Context;->createProgramFromSourceFilesWithInclude(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/util/List;)Lcom/jme3/opencl/Program;

    move-result-object p1

    return-object p1
.end method

.method public varargs createProgramFromSourceFiles(Lcom/jme3/asset/AssetManager;[Ljava/lang/String;)Lcom/jme3/opencl/Program;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/opencl/Context;->createProgramFromSourceFilesWithInclude(Lcom/jme3/asset/AssetManager;Ljava/lang/String;[Ljava/lang/String;)Lcom/jme3/opencl/Program;

    move-result-object p1

    return-object p1
.end method

.method public createProgramFromSourceFilesWithInclude(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/util/List;)Lcom/jme3/opencl/Program;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jme3/opencl/Program;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/jme3/asset/AssetKey;

    invoke-direct {v1, p3}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/jme3/asset/AssetManager;->locateAsset(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    .line 9
    :cond_0
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 10
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 11
    :goto_3
    sget-object v2, Lcom/jme3/opencl/Context;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to load source file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lcom/jme3/asset/AssetNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load source file \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/asset/AssetNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/jme3/opencl/Context;->createProgramFromSourceCodeWithDependencies(Ljava/lang/String;Lcom/jme3/asset/AssetManager;)Lcom/jme3/opencl/Program;

    move-result-object p1

    return-object p1
.end method

.method public varargs createProgramFromSourceFilesWithInclude(Lcom/jme3/asset/AssetManager;Ljava/lang/String;[Ljava/lang/String;)Lcom/jme3/opencl/Program;
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/opencl/Context;->createProgramFromSourceFilesWithInclude(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/util/List;)Lcom/jme3/opencl/Program;

    move-result-object p1

    return-object p1
.end method

.method public createQueue()Lcom/jme3/opencl/CommandQueue;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Context;->getDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/opencl/Device;

    invoke-virtual {p0, v0}, Lcom/jme3/opencl/Context;->createQueue(Lcom/jme3/opencl/Device;)Lcom/jme3/opencl/CommandQueue;

    move-result-object v0

    return-object v0
.end method

.method public abstract createQueue(Lcom/jme3/opencl/Device;)Lcom/jme3/opencl/CommandQueue;
.end method

.method public abstract getDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/jme3/opencl/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySupportedFormats(Lcom/jme3/opencl/MemoryAccess;Lcom/jme3/opencl/Image$ImageType;)[Lcom/jme3/opencl/Image$ImageFormat;
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Context;->register()Lcom/jme3/opencl/Context;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/Context;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Context;->register()Lcom/jme3/opencl/Context;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Context;->getDevices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
