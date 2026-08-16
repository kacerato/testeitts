.class public Lcom/jme3/asset/DesktopAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetManager;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final classLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/jme3/asset/AssetEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lcom/jme3/asset/ImplHandler;

.field private shaderGenerator:Lcom/jme3/shader/ShaderGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/asset/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/asset/ImplHandler;

    invoke-direct {v0, p0}, Lcom/jme3/asset/ImplHandler;-><init>(Lcom/jme3/asset/AssetManager;)V

    iput-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->classLoaders:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadConfigFile(Ljava/net/URL;)V

    .line 9
    :cond_0
    sget-object p1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    const-string v0, "DesktopAssetManager created."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/jme3/system/JmeSystem;->getPlatformAssetConfigURL()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method private loadConfigFile(Ljava/net/URL;)V
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/jme3/asset/AssetConfig;->loadText(Lcom/jme3/asset/AssetManager;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed to load asset config"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addAssetEventListener(Lcom/jme3/asset/AssetEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->classLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getCacheType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/asset/ImplHandler;->getCache(Ljava/lang/Class;)Lcom/jme3/asset/cache/AssetCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/jme3/asset/cache/AssetCache;->addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/jme3/asset/cache/AssetCache;->notifyNoAssetClone()V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " specifies no cache."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clearAssetEventListeners()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public clearCache()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0}, Lcom/jme3/asset/ImplHandler;->clearCache()V

    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "All asset caches cleared."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteFromCache(Lcom/jme3/asset/AssetKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getCacheType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/asset/ImplHandler;->getCache(Ljava/lang/Class;)Lcom/jme3/asset/cache/AssetCache;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jme3/asset/cache/AssetCache;->deleteFromCache(Lcom/jme3/asset/AssetKey;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " specifies no cache."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClassLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->classLoaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getCacheType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/asset/ImplHandler;->getCache(Ljava/lang/Class;)Lcom/jme3/asset/cache/AssetCache;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/jme3/asset/cache/AssetCache;->getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/jme3/asset/cache/AssetCache;->notifyNoAssetClone()V

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " specifies no cache."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShaderGenerator(Ljava/util/EnumSet;)Lcom/jme3/shader/ShaderGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;)",
            "Lcom/jme3/shader/ShaderGenerator;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->shaderGenerator:Lcom/jme3/shader/ShaderGenerator;

    if-nez v0, :cond_2

    sget-object v0, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/renderer/Caps;->GLSL300:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/jme3/shader/Glsl300ShaderGenerator;

    invoke-direct {p1, p0}, Lcom/jme3/shader/Glsl300ShaderGenerator;-><init>(Lcom/jme3/asset/AssetManager;)V

    iput-object p1, p0, Lcom/jme3/asset/DesktopAssetManager;->shaderGenerator:Lcom/jme3/shader/ShaderGenerator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/renderer/Caps;->GLSL150:Lcom/jme3/renderer/Caps;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/jme3/shader/Glsl150ShaderGenerator;

    invoke-direct {p1, p0}, Lcom/jme3/shader/Glsl150ShaderGenerator;-><init>(Lcom/jme3/asset/AssetManager;)V

    iput-object p1, p0, Lcom/jme3/asset/DesktopAssetManager;->shaderGenerator:Lcom/jme3/shader/ShaderGenerator;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/jme3/shader/Glsl100ShaderGenerator;

    invoke-direct {p1, p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;-><init>(Lcom/jme3/asset/AssetManager;)V

    iput-object p1, p0, Lcom/jme3/asset/DesktopAssetManager;->shaderGenerator:Lcom/jme3/shader/ShaderGenerator;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jme3/asset/DesktopAssetManager;->shaderGenerator:Lcom/jme3/shader/ShaderGenerator;

    return-object p1
.end method

.method public loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/AssetEventListener;

    .line 2
    invoke-interface {v1, p1}, Lcom/jme3/asset/AssetEventListener;->assetRequested(Lcom/jme3/asset/AssetKey;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getCacheType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/asset/ImplHandler;->getCache(Ljava/lang/Class;)Lcom/jme3/asset/cache/AssetCache;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getProcessorType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/asset/ImplHandler;->getProcessor(Ljava/lang/Class;)Lcom/jme3/asset/AssetProcessor;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/jme3/asset/cache/AssetCache;->getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v2, p1}, Lcom/jme3/asset/ImplHandler;->tryLocate(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0}, Lcom/jme3/asset/ImplHandler;->getParentKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/AssetEventListener;

    .line 9
    iget-object v2, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v2}, Lcom/jme3/asset/ImplHandler;->getParentKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/jme3/asset/AssetEventListener;->assetDependencyNotFound(Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/AssetKey;)V

    goto :goto_2

    .line 10
    :cond_2
    new-instance v0, Lcom/jme3/asset/AssetNotFoundException;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/asset/AssetNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadLocatedAsset(Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/AssetInfo;Lcom/jme3/asset/AssetProcessor;Lcom/jme3/asset/cache/AssetCache;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    :cond_4
    instance-of v3, v2, Lcom/jme3/asset/CloneableSmartAsset;

    if-eqz v3, :cond_5

    .line 13
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/jme3/asset/DesktopAssetManager;->registerAndCloneSmartAsset(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;Lcom/jme3/asset/AssetProcessor;Lcom/jme3/asset/cache/AssetCache;)Ljava/lang/Object;

    move-result-object v2

    :cond_5
    return-object v2

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadAsset(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 15
    new-instance v0, Lcom/jme3/asset/AssetKey;

    invoke-direct {v0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadAssetFromStream(Lcom/jme3/asset/AssetKey;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/AssetEventListener;

    invoke-interface {v1, p1}, Lcom/jme3/asset/AssetEventListener;->assetRequested(Lcom/jme3/asset/AssetKey;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getProcessorType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/asset/ImplHandler;->getProcessor(Ljava/lang/Class;)Lcom/jme3/asset/AssetProcessor;

    move-result-object v0

    new-instance v1, Lcom/jme3/asset/StreamAssetInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/jme3/asset/StreamAssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/io/InputStream;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/jme3/asset/DesktopAssetManager;->loadLocatedAsset(Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/AssetInfo;Lcom/jme3/asset/AssetProcessor;Lcom/jme3/asset/cache/AssetCache;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadAudio(Lcom/jme3/audio/AudioKey;)Lcom/jme3/audio/AudioData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/audio/AudioData;

    return-object p1
.end method

.method public loadAudio(Ljava/lang/String;)Lcom/jme3/audio/AudioData;
    .locals 2

    .line 2
    new-instance v0, Lcom/jme3/audio/AudioKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jme3/audio/AudioKey;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadAudio(Lcom/jme3/audio/AudioKey;)Lcom/jme3/audio/AudioData;

    move-result-object p1

    return-object p1
.end method

.method public loadFilter(Lcom/jme3/asset/FilterKey;)Lcom/jme3/post/FilterPostProcessor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/post/FilterPostProcessor;

    return-object p1
.end method

.method public loadFilter(Ljava/lang/String;)Lcom/jme3/post/FilterPostProcessor;
    .locals 1

    .line 2
    new-instance v0, Lcom/jme3/asset/FilterKey;

    invoke-direct {v0, p1}, Lcom/jme3/asset/FilterKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadFilter(Lcom/jme3/asset/FilterKey;)Lcom/jme3/post/FilterPostProcessor;

    move-result-object p1

    return-object p1
.end method

.method public loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;
    .locals 1

    new-instance v0, Lcom/jme3/asset/AssetKey;

    invoke-direct {v0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/font/BitmapFont;

    return-object p1
.end method

.method public loadLocatedAsset(Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/AssetInfo;Lcom/jme3/asset/AssetProcessor;Lcom/jme3/asset/cache/AssetCache;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;",
            "Lcom/jme3/asset/AssetInfo;",
            "Lcom/jme3/asset/AssetProcessor;",
            "Lcom/jme3/asset/cache/AssetCache;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p1}, Lcom/jme3/asset/ImplHandler;->aquireLoader(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetLoader;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v1, p1}, Lcom/jme3/asset/ImplHandler;->establishParentKey(Lcom/jme3/asset/AssetKey;)V

    invoke-interface {v0, p2}, Lcom/jme3/asset/AssetLoader;->load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v1, p1}, Lcom/jme3/asset/ImplHandler;->releaseParentKey(Lcom/jme3/asset/AssetKey;)V

    if-eqz p2, :cond_4

    sget-object v1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Loaded {0} with {1}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lcom/jme3/asset/AssetProcessor;->postProcess(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4, p1, p2}, Lcom/jme3/asset/cache/AssetCache;->addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V

    :cond_2
    iget-object p3, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/asset/AssetEventListener;

    invoke-interface {p4, p1}, Lcom/jme3/asset/AssetEventListener;->assetLoaded(Lcom/jme3/asset/AssetKey;)V

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    new-instance p2, Lcom/jme3/asset/AssetLoadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error occurred while loading asset \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" using "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    new-instance p3, Lcom/jme3/asset/AssetLoadException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An exception has occurred while loading asset: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p3, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {p3, p1}, Lcom/jme3/asset/ImplHandler;->releaseParentKey(Lcom/jme3/asset/AssetKey;)V

    throw p2
.end method

.method public loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;
    .locals 1

    new-instance v0, Lcom/jme3/asset/MaterialKey;

    invoke-direct {v0, p1}, Lcom/jme3/asset/MaterialKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/Material;

    return-object p1
.end method

.method public loadModel(Lcom/jme3/asset/ModelKey;)Lcom/jme3/scene/Spatial;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    return-object p1
.end method

.method public loadModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 2
    new-instance v0, Lcom/jme3/asset/ModelKey;

    invoke-direct {v0, p1}, Lcom/jme3/asset/ModelKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadModel(Lcom/jme3/asset/ModelKey;)Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1
.end method

.method public loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture;

    return-object p1
.end method

.method public loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;
    .locals 2

    .line 2
    new-instance v0, Lcom/jme3/asset/TextureKey;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object p1

    return-object p1
.end method

.method public locateAsset(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetKey<",
            "*>;)",
            "Lcom/jme3/asset/AssetInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p1}, Lcom/jme3/asset/ImplHandler;->tryLocate(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot locate resource: {0}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public registerAndCloneSmartAsset(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;Lcom/jme3/asset/AssetProcessor;Lcom/jme3/asset/cache/AssetCache;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;",
            "Lcom/jme3/asset/AssetProcessor;",
            "Lcom/jme3/asset/cache/AssetCache;",
            ")TT;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Lcom/jme3/asset/AssetProcessor;->createClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p4, :cond_0

    if-eq p3, p2, :cond_0

    invoke-interface {p4, p1, p3}, Lcom/jme3/asset/cache/AssetCache;->registerAssetClone(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V

    return-object p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Asset implements CloneableSmartAsset but doesn\'t have cache or was not cloned"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Asset implements CloneableSmartAsset but doesn\'t have processor to handle cloning"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLoader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/asset/ImplHandler;->addLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    const-string p2, "Registered loader: {0} for extensions {1}"

    invoke-virtual {v0, v1, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs registerLoader(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    :goto_0
    sget-object v1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/jme3/asset/DesktopAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerLocator(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLocator;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p2, p1}, Lcom/jme3/asset/ImplHandler;->addLocator(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string v1, "Registered locator: {0}"

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    sget-object v1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find locator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/jme3/asset/DesktopAssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public removeAssetEventListener(Lcom/jme3/asset/AssetEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->classLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAssetEventListener(Lcom/jme3/asset/AssetEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShaderGenerator(Lcom/jme3/shader/ShaderGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/asset/DesktopAssetManager;->shaderGenerator:Lcom/jme3/shader/ShaderGenerator;

    return-void
.end method

.method public unregisterLoader(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLoader;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p1}, Lcom/jme3/asset/ImplHandler;->removeLoader(Ljava/lang/Class;)V

    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unregistered loader: {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregisterLocator(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLocator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p2, p1}, Lcom/jme3/asset/ImplHandler;->removeLocator(Ljava/lang/Class;Ljava/lang/String;)V

    sget-object p1, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Unregistered locator: {0}"

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
