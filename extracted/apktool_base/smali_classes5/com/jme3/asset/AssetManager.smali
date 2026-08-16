.class public interface abstract Lcom/jme3/asset/AssetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAssetEventListener(Lcom/jme3/asset/AssetEventListener;)V
.end method

.method public addClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract clearAssetEventListeners()V
.end method

.method public abstract clearCache()V
.end method

.method public abstract deleteFromCache(Lcom/jme3/asset/AssetKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public getClassLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getShaderGenerator(Ljava/util/EnumSet;)Lcom/jme3/shader/ShaderGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;)",
            "Lcom/jme3/shader/ShaderGenerator;"
        }
    .end annotation
.end method

.method public abstract loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract loadAsset(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract loadAssetFromStream(Lcom/jme3/asset/AssetKey;Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey<",
            "TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract loadAudio(Lcom/jme3/audio/AudioKey;)Lcom/jme3/audio/AudioData;
.end method

.method public abstract loadAudio(Ljava/lang/String;)Lcom/jme3/audio/AudioData;
.end method

.method public abstract loadFilter(Lcom/jme3/asset/FilterKey;)Lcom/jme3/post/FilterPostProcessor;
.end method

.method public abstract loadFilter(Ljava/lang/String;)Lcom/jme3/post/FilterPostProcessor;
.end method

.method public abstract loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;
.end method

.method public abstract loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;
.end method

.method public abstract loadModel(Lcom/jme3/asset/ModelKey;)Lcom/jme3/scene/Spatial;
.end method

.method public abstract loadModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;
.end method

.method public abstract loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;
.end method

.method public abstract loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;
.end method

.method public abstract locateAsset(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetKey<",
            "*>;)",
            "Lcom/jme3/asset/AssetInfo;"
        }
    .end annotation
.end method

.method public varargs abstract registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLoader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerLocator(Ljava/lang/String;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLocator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAssetEventListener(Lcom/jme3/asset/AssetEventListener;)V
.end method

.method public removeClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract setShaderGenerator(Lcom/jme3/shader/ShaderGenerator;)V
.end method

.method public abstract unregisterLoader(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLoader;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterLocator(Ljava/lang/String;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetLocator;",
            ">;)V"
        }
    .end annotation
.end method
