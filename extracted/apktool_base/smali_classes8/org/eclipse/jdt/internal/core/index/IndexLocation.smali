.class public abstract Lorg/eclipse/jdt/internal/core/index/IndexLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected participantIndex:Z

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->url:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->url:Ljava/net/URL;

    return-void
.end method

.method public static createIndexLocation(Ljava/net/URL;)Lorg/eclipse/jdt/internal/core/index/IndexLocation;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lorg/eclipse/core/runtime/FileLocator;->resolve(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    invoke-direct {v0, p0, v2}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/net/URL;Ljava/io/File;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/index/JarIndexLocation;-><init>(Ljava/net/URL;Ljava/net/URL;)V

    return-object v1

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public abstract createNewFile()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public abstract fileName()Ljava/lang/String;
.end method

.method public abstract getCanonicalFilePath()Ljava/lang/String;
.end method

.method public abstract getIndexFile()Ljava/io/File;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    return v0
.end method

.method public isParticipantIndex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->participantIndex:Z

    return v0
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract startsWith(Lorg/eclipse/core/runtime/IPath;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
