.class public final LJAVARuntime/Material;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Material"
    }
.end annotation


# instance fields
.field public transient material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    iput-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->isEngineThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o0()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method

.method public static loadFile(LJAVARuntime/MaterialFile;)LJAVARuntime/Material;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialFile"
        }
    .end annotation

    if-eqz p0, :cond_3

    iget-object v0, p0, LJAVARuntime/MaterialFile;->cache:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k0()LJAVARuntime/Material;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lda/h;->i(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, LJAVARuntime/MaterialFile;->cache:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k0()LJAVARuntime/Material;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lda/h;->l(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, LJAVARuntime/MaterialFile;->cache:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k0()LJAVARuntime/Material;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "MaterialFile can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public findBoolean(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public findColor(Ljava/lang/String;)LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFloat(Ljava/lang/String;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public findInt(Ljava/lang/String;)I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the specified material entry."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int da entrada de material especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->s(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findTexture(Ljava/lang/String;)LJAVARuntime/Texture;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->v(Ljava/lang/String;)Lub/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findVector2(Ljava/lang/String;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Material;->findBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getColor(Ljava/lang/String;)LJAVARuntime/Color;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Material;->findColor(Ljava/lang/String;)LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Material;->findFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the specified material entry."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int da entrada de material especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Material;->findInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getShader()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;)LJAVARuntime/Texture;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Material;->findTexture(Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object p1

    return-object p1
.end method

.method public getVector2(Ljava/lang/String;)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/Material;->findVector2(Ljava/lang/String;)LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public reloadEntries()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o0()V

    return-void
.end method

.method public setAlbedo(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "albedo"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setAlbedo(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "albedo"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setAlphaCutout(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "alphaCutout"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setAlphaMap(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "alpha"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setAlphaMap(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "alpha"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setAoMap(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "ao"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setAoMap(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "ao"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setColor(Ljava/lang/String;LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "color"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object p2, p2, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public setDiffuse(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const-string v0, "diffuse"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setColor(Ljava/lang/String;LJAVARuntime/Color;)V

    return-void
.end method

.method public setEmissiveMap(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "emissive"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setEmissiveMap(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "emissive"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setHeightIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "heightIntensity"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setHeightMap(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setHeightMap(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int value of the specified material entry."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor int da entrada de material especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMatcap(LJAVARuntime/Matcap;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "matcap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcap"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-virtual {p1}, LJAVARuntime/Matcap;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p1}, LJAVARuntime/Matcap;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LJAVARuntime/Matcap;->getTexture()LJAVARuntime/Texture;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->l(Ljava/lang/String;Lub/p;)V

    :cond_0
    return-void
.end method

.method public setMetallic(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "metallic"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setMetallic(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "metallic"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setMinimalAlphaIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "minimalAlphaIntensity"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setNormalMap(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "normal"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setNormalMap(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "normal"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setReceiveLight(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "receiveLight"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRoughness(LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    const-string v0, "roughness"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V

    return-void
.end method

.method public setRoughness(LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .line 2
    const-string v0, "roughness"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V

    return-void
.end method

.method public setShader(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "shaderName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public setSpecular(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "specular"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setTexture(Ljava/lang/String;LJAVARuntime/Texture;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "texture"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object p2, p2, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->h0(Ljava/lang/String;Lub/p;)V

    return-void
.end method

.method public setTextureFile(Ljava/lang/String;LJAVARuntime/TextureFile;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "textureFile"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p2}, Ljb/a;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUvSize(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "uvSize"

    invoke-virtual {p0, v0, p1}, LJAVARuntime/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setVector2(Ljava/lang/String;LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "entryName",
            "vector2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "vector2"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object p2, p2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    sget-object v0, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Material;->material:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
