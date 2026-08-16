.class public Ljpct/ae/wrapper/JTextureManager;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctTextureManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/TextureManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final TEXTURE_NOTFOUND()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JTextureManager;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public addTexture(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    return-void
.end method

.method public addTexture2(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public compress()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->compress()V

    return-void
.end method

.method public containsTexture(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->flush()V

    return-void
.end method

.method public getDummyTexture()Lcom/threed/jpct/Texture;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getDummyTexture()Lcom/threed/jpct/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryUsage()J
    .locals 2

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getMemoryUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNameByID(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getNameByID(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNames()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getNames()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getState()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p1

    return-object p1
.end method

.method public getTextureByID(I)Lcom/threed/jpct/Texture;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object p1

    return-object p1
.end method

.method public getTextureCount()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getTextureCount()I

    move-result v0

    return v0
.end method

.method public getTextureID(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getVirtualizer()Lcom/threed/jpct/Virtualizer;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0}, Lcom/threed/jpct/TextureManager;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v0

    return-object v0
.end method

.method public preWarm(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->preWarm(Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public removeAndUnload(Ljava/lang/String;Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/TextureManager;->removeAndUnload(Ljava/lang/String;Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public removeTexture(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->removeTexture(Ljava/lang/String;)V

    return-void
.end method

.method public replaceTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/TextureManager;->replaceTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public setDummyTexture(Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->setDummyTexture(Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public setState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->setState(Ljava/util/List;)V

    return-void
.end method

.method public setVirtualizer(Lcom/threed/jpct/Virtualizer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->setVirtualizer(Lcom/threed/jpct/Virtualizer;)V

    return-void
.end method

.method public unloadTexture(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/TextureManager;->unloadTexture(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public virtualize(Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JTextureManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/TextureManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->virtualize(Lcom/threed/jpct/Texture;)V

    return-void
.end method
