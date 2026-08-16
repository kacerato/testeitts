.class public Lcom/jme3/util/res/Resources;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_IMPL:Ljava/lang/String; = "com.jme3.util.res.DefaultResourceLoader"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final PROPERTY_RESOURCE_LOADER_IMPLEMENTATION:Ljava/lang/String; = "com.jme3.ResourceLoaderImplementation"

.field private static impl:Lcom/jme3/util/res/ResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/res/Resources;->LOGGER:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-object v0, Lcom/jme3/util/res/Resources;->impl:Lcom/jme3/util/res/ResourceLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findResourceLoaderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/util/res/ResourceLoader;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v1, Lcom/jme3/util/res/Resources;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to access {0}"

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const-class v2, Lcom/jme3/util/res/ResourceLoader;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/jme3/util/res/Resources;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "{0} does not implement {1}"

    invoke-virtual {v1, v3, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1
    invoke-static {}, Lcom/jme3/util/res/Resources;->getResourceLoader()Lcom/jme3/util/res/ResourceLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/jme3/util/res/ResourceLoader;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/jme3/util/res/Resources;->getResourceLoader()Lcom/jme3/util/res/ResourceLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/jme3/util/res/ResourceLoader;->getResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-static {}, Lcom/jme3/util/res/Resources;->getResourceLoader()Lcom/jme3/util/res/ResourceLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/jme3/util/res/ResourceLoader;->getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/jme3/util/res/Resources;->getResourceLoader()Lcom/jme3/util/res/ResourceLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/jme3/util/res/ResourceLoader;->getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static getResourceLoader()Lcom/jme3/util/res/ResourceLoader;
    .locals 5

    sget-object v0, Lcom/jme3/util/res/Resources;->impl:Lcom/jme3/util/res/ResourceLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.jme3.ResourceLoaderImplementation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/jme3/util/res/Resources;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Loading user defined ResourceLoader implementation {0}"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/jme3/util/res/Resources;->findResourceLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lcom/jme3/util/res/Resources;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "No usable user defined ResourceLoader implementation found, using default implementation {0}"

    const-string v4, "com.jme3.util.res.DefaultResourceLoader"

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/jme3/util/res/Resources;->findResourceLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/res/ResourceLoader;

    sput-object v1, Lcom/jme3/util/res/Resources;->impl:Lcom/jme3/util/res/ResourceLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate ResourceLoader class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No ResourceLoader implementation found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/jme3/util/res/Resources;->getResourceLoader()Lcom/jme3/util/res/ResourceLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/jme3/util/res/ResourceLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static setResourceLoader(Lcom/jme3/util/res/ResourceLoader;)V
    .locals 0

    sput-object p0, Lcom/jme3/util/res/Resources;->impl:Lcom/jme3/util/res/ResourceLoader;

    return-void
.end method
