.class public final Lcom/threed/jpct/TextureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DUMMY_NAME:Ljava/lang/String; = "--dummy--"

.field public static final TEXTURE_NOTFOUND:I = -0x1

.field private static myInstance:Lcom/threed/jpct/TextureManager;


# instance fields
.field private dummy:Lcom/threed/jpct/Texture;

.field private lastID:I

.field private lastName:Ljava/lang/String;

.field private textureCount:I

.field private textureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textureVirtualizer:Lcom/threed/jpct/Virtualizer;

.field textures:[Lcom/threed/jpct/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/TextureManager;->lastID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->lastName:Ljava/lang/String;

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->flush()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/threed/jpct/TextureManager;
    .locals 2

    const-class v0, Lcom/threed/jpct/TextureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/threed/jpct/TextureManager;

    invoke-direct {v1}, Lcom/threed/jpct/TextureManager;-><init>()V

    sput-object v1, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/threed/jpct/TextureManager;->myInstance:Lcom/threed/jpct/TextureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addTexture(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 3
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/threed/jpct/Texture;

    .line 4
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    iget v1, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    invoke-static {v1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    iget v0, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 9
    iput v0, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "A texture with the name \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been declared twice!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public compress()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/threed/jpct/Texture;->compress()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsTexture(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    sget v0, Lcom/threed/jpct/Config;->maxTextures:I

    new-array v0, v0, [Lcom/threed/jpct/Texture;

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    new-instance v0, Lcom/threed/jpct/Texture;

    invoke-direct {v0}, Lcom/threed/jpct/Texture;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    const/4 v1, 0x0

    iput v1, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    const-string v1, "--dummy--"

    invoke-virtual {p0, v1, v0}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public flushOpenGLIDs(I)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/threed/jpct/Texture;->clearIDs(I)V

    goto :goto_0
.end method

.method public getDummyTexture()Lcom/threed/jpct/Texture;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    return-object v0
.end method

.method public getMemoryUsage()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    if-lt v2, v3, :cond_0

    return-wide v0

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/threed/jpct/Texture;->texels:[I

    if-eqz v4, :cond_1

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v0, v4

    :cond_1
    iget-object v3, v3, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-eqz v3, :cond_2

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getNameByID(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1
.end method

.method public getNames()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getState()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Lcom/threed/jpct/TextureManager;->getNameByID(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const-string p1, "Requested texture not found!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextureByID(I)Lcom/threed/jpct/Texture;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getNameByID(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p1

    return-object p1
.end method

.method public getTextureCount()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getTextureID(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/threed/jpct/TextureManager;->lastID:I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/TextureManager;->lastID:I

    iput-object p1, p0, Lcom/threed/jpct/TextureManager;->lastName:Ljava/lang/String;

    return v0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getTextures()[Lcom/threed/jpct/Texture;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    return-object v0
.end method

.method public getVirtualizer()Lcom/threed/jpct/Virtualizer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    return-object v0
.end method

.method public preWarm(Lcom/threed/jpct/FrameBuffer;)V
    .locals 4

    iget-object p1, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/threed/jpct/Texture;->texels:[I

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/threed/jpct/Texture;->zippedTexels:[B

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/threed/jpct/Virtualizer;->isVirtual(Lcom/threed/jpct/Texture;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/threed/jpct/GLRenderer;->upload(Lcom/threed/jpct/Texture;)V

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const-string p1, "Pre-warming done!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public removeAndUnload(Ljava/lang/String;Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/threed/jpct/TextureManager;->unloadTexture(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;)V

    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->removeTexture(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized removeTexture(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aget-object v2, v2, v1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textureList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    iget-object v3, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    aput-object v3, v2, v1

    iget v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/threed/jpct/TextureManager;->textureCount:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public replaceTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textures:[Lcom/threed/jpct/Texture;

    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Texture \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setDummyTexture(Lcom/threed/jpct/Texture;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/threed/jpct/TextureManager;->dummy:Lcom/threed/jpct/Texture;

    const-string v0, "--dummy--"

    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/TextureManager;->replaceTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    goto :goto_0

    :cond_0
    const-string p1, "Texture can\'t be null!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setState(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/threed/jpct/TextureManager;->flush()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    check-cast v2, Lcom/threed/jpct/Texture;

    const-string v4, "--dummy--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3, v2}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "Not a valid dump!"

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public setVirtualizer(Lcom/threed/jpct/Virtualizer;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    return-void
.end method

.method public unloadTexture(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;)V
    .locals 0

    iget-object p1, p1, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/threed/jpct/GLRenderer;->addForUnload(Lcom/threed/jpct/Texture;)V

    :cond_0
    return-void
.end method

.method public virtualize(Lcom/threed/jpct/Texture;)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/TextureManager;->textureVirtualizer:Lcom/threed/jpct/Virtualizer;

    if-nez v0, :cond_0

    const-string p1, "No Virtualizer set!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/threed/jpct/Texture;->myEffect:Lcom/threed/jpct/ITextureEffect;

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/Texture;)Z

    :cond_1
    return-void
.end method
