.class public Lcom/ardor3d/util/resource/URLResourceSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/resource/ResourceSource;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private _type:Ljava/lang/String;

.field private _url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/resource/URLResourceSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/resource/URLResourceSource;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x2e

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "-unknown-"

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    .line 10
    iput-object p2, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/ardor3d/util/resource/URLResourceSource;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/ardor3d/util/resource/URLResourceSource;

    iget-object v2, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    if-nez v2, :cond_5

    iget-object p1, p1, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    if-eqz p1, :cond_6

    return v1

    :cond_5
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/ardor3d/util/resource/URLResourceSource;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeSource(Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ardor3d/util/UrlUtils;->resolveRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Lcom/ardor3d/util/resource/URLResourceSource;

    invoke-direct {v1, v0}, Lcom/ardor3d/util/resource/URLResourceSource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    sget-object v2, Lcom/ardor3d/util/resource/URLResourceSource;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v5, "getRelativeSource(String)"

    const-string v6, "Unable to find relative file {0} from {1}."

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "protocol"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "host"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "texture"

    invoke-static {v5, v4}, Lcom/ardor3d/util/resource/ResourceLocatorTool;->locateResource(Ljava/lang/String;Ljava/lang/String;)Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object v4

    instance-of v5, v4, Lcom/ardor3d/util/resource/URLResourceSource;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/ardor3d/util/resource/URLResourceSource;

    iget-object p1, v4, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    iget-object p1, v4, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v4, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    :cond_1
    const-string v0, "type"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLResourceSource [url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocol"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "host"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ardor3d/util/resource/URLResourceSource;->_type:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
