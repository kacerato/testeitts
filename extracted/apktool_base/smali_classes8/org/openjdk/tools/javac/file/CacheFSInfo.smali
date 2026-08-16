.class public Lorg/openjdk/tools/javac/file/CacheFSInfo;
.super Lorg/openjdk/tools/javac/file/FSInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/FSInfo;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/file/FSInfo;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->lambda$preRegister$0(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object p0

    return-object p0
.end method

.method private getEntry(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;-><init>(Lorg/openjdk/tools/javac/file/CacheFSInfo$1;)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->canonicalFile:Ljava/nio/file/Path;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->exists(Ljava/nio/file/Path;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->exists:Z

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->isDirectory(Ljava/nio/file/Path;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->isDirectory:Z

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->isFile(Ljava/nio/file/Path;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->isFile:Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$preRegister$0(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/file/FSInfo;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/CacheFSInfo;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/file/CacheFSInfo;-><init>()V

    const-class v1, Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static preRegister(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/a;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/file/a;-><init>()V

    const-class v1, Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Lorg/openjdk/tools/javac/util/Context$Factory;)V

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/CacheFSInfo;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public exists(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->getEntry(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    move-result-object p1

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->exists:Z

    return p1
.end method

.method public getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->getEntry(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->canonicalFile:Ljava/nio/file/Path;

    return-object p1
.end method

.method public getJarClassPath(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->getEntry(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->jarClassPath:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarClassPath(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->jarClassPath:Ljava/util/List;

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->jarClassPath:Ljava/util/List;

    return-object p1
.end method

.method public isDirectory(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->getEntry(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    move-result-object p1

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->isDirectory:Z

    return p1
.end method

.method public isFile(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/CacheFSInfo;->getEntry(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;

    move-result-object p1

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;->isFile:Z

    return p1
.end method
