.class public Lcom/jme3/asset/plugins/UrlAssetInfo;
.super Lcom/jme3/asset/AssetInfo;
.source "SourceFile"


# instance fields
.field private in:Ljava/io/InputStream;

.field private final url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    iput-object p3, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->url:Ljava/net/URL;

    iput-object p4, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    return-void
.end method

.method public static create(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;)Lcom/jme3/asset/plugins/UrlAssetInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/jme3/asset/plugins/UrlAssetInfo;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/jme3/asset/plugins/UrlAssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public hasInitialConnection()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jme3/asset/AssetLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->url:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
