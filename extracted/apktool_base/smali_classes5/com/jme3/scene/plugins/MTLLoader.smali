.class public Lcom/jme3/scene/plugins/MTLLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected alpha:F

.field protected alphaMap:Lcom/jme3/texture/Texture;

.field protected ambient:Lcom/jme3/math/ColorRGBA;

.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected diffuse:Lcom/jme3/math/ColorRGBA;

.field protected diffuseMap:Lcom/jme3/texture/Texture;

.field protected disallowAmbient:Z

.field protected disallowSpecular:Z

.field protected folderName:Ljava/lang/String;

.field protected key:Lcom/jme3/asset/AssetKey;

.field protected matList:Lcom/jme3/material/MaterialList;

.field protected matName:Ljava/lang/String;

.field protected normalMap:Lcom/jme3/texture/Texture;

.field protected scan:Ljava/util/Scanner;

.field protected shadeless:Z

.field protected shininess:F

.field protected specular:Lcom/jme3/math/ColorRGBA;

.field protected specularMap:Lcom/jme3/texture/Texture;

.field protected transparent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/plugins/MTLLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/MTLLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowAmbient:Z

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowSpecular:Z

    return-void
.end method


# virtual methods
.method public createMaterial()V
    .locals 4

    iget v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    iput v0, v1, Lcom/jme3/math/ColorRGBA;->a:F

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shadeless:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v3, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v2, v3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    const-string v3, "Color"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string v2, "ColorMap"

    iget-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v3, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v0, v2, v3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v2, "UseMaterialColors"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    const-string v3, "Ambient"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    const-string v3, "Diffuse"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    const-string v3, "Specular"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string v2, "Shininess"

    iget v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    if-eqz v2, :cond_2

    const-string v3, "DiffuseMap"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_2
    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    if-eqz v2, :cond_3

    const-string v3, "SpecularMap"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_3
    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    if-eqz v2, :cond_4

    const-string v3, "NormalMap"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_4
    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    if-eqz v2, :cond_5

    const-string v3, "AlphaMap"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_5
    :goto_0
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->setTransparent(Z)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    const-string v1, "AlphaDiscardThreshold"

    const v2, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    :cond_6
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->reset()V

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->folderName:Ljava/lang/String;

    new-instance v0, Lcom/jme3/material/MaterialList;

    invoke-direct {v0}, Lcom/jme3/material/MaterialList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readLine()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    iget-object p1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->createMaterial()V

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->resetMaterial()V

    :cond_2
    iget-object p1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0
.end method

.method public loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/jme3/asset/TextureKey;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object p1

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/jme3/scene/plugins/MTLLoader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->key:Lcom/jme3/asset/AssetKey;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Cannot locate {0} for material {1}"

    invoke-virtual {p1, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-static {v1}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage(Lcom/jme3/asset/AssetManager;)Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setKey(Lcom/jme3/asset/AssetKey;)V

    :goto_0
    return-object p1
.end method

.method public nextStatement()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    const-string v2, "\\p{javaWhitespace}+"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    return-object v0
.end method

.method public readColor()Lcom/jme3/math/ColorRGBA;
    .locals 5

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextFloat()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public readLine()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v0

    return v0

    :cond_1
    const-string v1, "newmtl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/MTLLoader;->startMaterial(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_3

    :cond_3
    const-string v1, "kd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_3

    :cond_4
    const-string v1, "ks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_3

    :cond_5
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextFloat()F

    move-result v0

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_15

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_3

    :cond_6
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string v1, "map_ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v0

    return v0

    :cond_8
    const-string v1, "map_kd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->nextStatement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    goto/16 :goto_3

    :cond_9
    const-string v1, "map_bump"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "bump"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_1

    :cond_a
    const-string v1, "map_ks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->nextStatement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_3

    :cond_b
    const-string v1, "map_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    goto/16 :goto_3

    :cond_c
    const-string v1, "illum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    goto :goto_3

    :cond_d
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    goto :goto_3

    :cond_e
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowSpecular:Z

    goto :goto_3

    :cond_f
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->shadeless:Z

    goto :goto_3

    :cond_10
    const-string v1, "ke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "ni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_0

    :cond_11
    sget-object v1, Lcom/jme3/scene/plugins/MTLLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unknown statement in MTL! {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v0

    return v0

    :cond_12
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v0

    return v0

    :cond_13
    :goto_1
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->nextStatement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    goto :goto_3

    :cond_14
    :goto_2
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextFloat()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_15

    cmpg-float v1, v0, v3

    if-gez v1, :cond_15

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    :cond_15
    :goto_3
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->resetMaterial()V

    return-void
.end method

.method public resetMaterial()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->LightGray:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowAmbient:Z

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowSpecular:Z

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shadeless:Z

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    return-void
.end method

.method public skipLine()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    const-string v1, ".*\r{0,1}\n"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->skip(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public startMaterial(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->createMaterial()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->resetMaterial()V

    iput-object p1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    return-void
.end method
