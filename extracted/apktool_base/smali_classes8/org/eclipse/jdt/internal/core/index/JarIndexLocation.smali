.class public Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;
.super Lorg/eclipse/jdt/internal/core/index/IndexLocation;
.source "SourceFile"


# instance fields
.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private localUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarEntry:Ljava/util/jar/JarEntry;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->localUrl:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    :cond_0
    return-void
.end method

.method public createNewFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public delete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->localUrl:Ljava/net/URL;

    check-cast p1, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->localUrl:Ljava/net/URL;

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->localUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonicalFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->localUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarEntry:Ljava/util/jar/JarEntry;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarFile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startsWith(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;->localUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    return p1
.end method
