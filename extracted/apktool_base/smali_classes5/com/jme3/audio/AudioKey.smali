.class public Lcom/jme3/audio/AudioKey;
.super Lcom/jme3/asset/AssetKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey<",
        "Lcom/jme3/audio/AudioData;",
        ">;"
    }
.end annotation


# instance fields
.field private stream:Z

.field private streamCache:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 4
    iput-boolean p2, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jme3/audio/AudioKey;-><init>(Ljava/lang/String;Z)V

    .line 2
    iput-boolean p3, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/audio/AudioKey;

    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    iget-boolean v2, p1, Lcom/jme3/audio/AudioKey;->stream:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    iget-boolean p1, p1, Lcom/jme3/audio/AudioKey;->streamCache:Z

    if-eq v1, p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getCacheType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/cache/AssetCache;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const-class v0, Lcom/jme3/asset/cache/WeakRefAssetCache;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessorType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetProcessor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x1d5

    invoke-super {p0}, Lcom/jme3/asset/AssetKey;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x43

    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x43

    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "do_stream"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    const-string v0, "use_stream_cache"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    if-eqz v1, :cond_0

    const-string v1, " (Stream/Cache)"

    goto :goto_0

    :cond_0
    const-string v1, " (Stream)"

    goto :goto_0

    :cond_1
    const-string v1, " (Buffer)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useStreamCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    const-string v1, "do_stream"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    const-string v1, "use_stream_cache"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
