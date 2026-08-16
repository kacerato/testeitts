.class public abstract Lcom/ardor3d/image/util/ImageLoaderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultLoader:Lcom/ardor3d/image/util/ImageLoader;

.field private static loaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ardor3d/image/util/ImageLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/image/util/ImageLoaderUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/util/ImageLoaderUtil;->loaders:Ljava/util/Map;

    new-instance v0, Lcom/ardor3d/image/util/dds/DdsLoader;

    invoke-direct {v0}, Lcom/ardor3d/image/util/dds/DdsLoader;-><init>()V

    const-string v1, ".DDS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ardor3d/image/util/ImageLoaderUtil;->registerHandler(Lcom/ardor3d/image/util/ImageLoader;[Ljava/lang/String;)V

    new-instance v0, Lcom/ardor3d/image/util/TgaLoader;

    invoke-direct {v0}, Lcom/ardor3d/image/util/TgaLoader;-><init>()V

    const-string v1, ".TGA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ardor3d/image/util/ImageLoaderUtil;->registerHandler(Lcom/ardor3d/image/util/ImageLoader;[Ljava/lang/String;)V

    new-instance v0, Lcom/ardor3d/image/util/AbiLoader;

    invoke-direct {v0}, Lcom/ardor3d/image/util/AbiLoader;-><init>()V

    const-string v1, ".ABI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ardor3d/image/util/ImageLoaderUtil;->registerHandler(Lcom/ardor3d/image/util/ImageLoader;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImage(Lcom/ardor3d/util/resource/ResourceSource;Z)Lcom/ardor3d/image/Image;
    .locals 5

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    const-string p1, "loadImage(ResourceSource, boolean): file is null, defaultTexture used."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTextureImage()Lcom/ardor3d/image/Image;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/util/resource/ResourceSource;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    const-string p1, "loadImage(ResourceSource, boolean): type is null, defaultTexture used."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTextureImage()Lcom/ardor3d/image/Image;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {p0}, Lcom/ardor3d/util/resource/ResourceSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "loadImage(ResourceSource, boolean) opened stream: {0}"

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {v0, v1, p1}, Lcom/ardor3d/image/util/ImageLoaderUtil;->loadImage(Ljava/lang/String;Ljava/io/InputStream;Z)Lcom/ardor3d/image/Image;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 10
    :try_start_2
    sget-object p1, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "loadImage(ResourceSource, boolean): defaultTexture used"

    invoke-virtual {p1, v0, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTextureImage()Lcom/ardor3d/image/Image;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 12
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_3
    return-object p0

    :goto_0
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 13
    :catch_3
    :cond_4
    throw p0
.end method

.method public static loadImage(Ljava/lang/String;Ljava/io/InputStream;Z)Lcom/ardor3d/image/Image;
    .locals 2

    .line 14
    :try_start_0
    sget-object v0, Lcom/ardor3d/image/util/ImageLoaderUtil;->loaders:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/util/ImageLoader;

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/ardor3d/image/util/ImageLoaderUtil;->defaultLoader:Lcom/ardor3d/image/util/ImageLoader;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0, p1, p2}, Lcom/ardor3d/image/util/ImageLoader;->load(Ljava/io/InputStream;Z)Lcom/ardor3d/image/Image;

    move-result-object p0

    goto :goto_1

    .line 17
    :cond_1
    sget-object p1, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Unable to read image of type: {0}"

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    .line 18
    sget-object p0, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    const-string p1, "loadImage(String, InputStream, boolean): no imageData found.  defaultTexture used."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTextureImage()Lcom/ardor3d/image/Image;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 20
    :goto_2
    sget-object p1, Lcom/ardor3d/image/util/ImageLoaderUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Could not load Image."

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-static {}, Lcom/ardor3d/renderer/state/TextureState;->getDefaultTextureImage()Lcom/ardor3d/image/Image;

    move-result-object p0

    :cond_2
    :goto_3
    return-object p0
.end method

.method public static registerDefaultHandler(Lcom/ardor3d/image/util/ImageLoader;)V
    .locals 0

    sput-object p0, Lcom/ardor3d/image/util/ImageLoaderUtil;->defaultLoader:Lcom/ardor3d/image/util/ImageLoader;

    return-void
.end method

.method public static varargs registerHandler(Lcom/ardor3d/image/util/ImageLoader;[Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v3, Lcom/ardor3d/image/util/ImageLoaderUtil;->loaders:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs unregisterHandler([Ljava/lang/String;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    sget-object v3, Lcom/ardor3d/image/util/ImageLoaderUtil;->loaders:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
