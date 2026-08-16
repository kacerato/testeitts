.class public Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;
.super Lorg/eclipse/jdt/internal/core/index/IndexLocation;
.source "SourceFile"


# instance fields
.field indexFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;-><init>(Ljava/io/File;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->participantIndex:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/io/File;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;-><init>(Ljava/net/URL;)V

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createNewFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    return v0
.end method

.method public delete()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    check-cast p1, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFilePath()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public startsWith(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lorg/eclipse/core/runtime/Path;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;->indexFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
