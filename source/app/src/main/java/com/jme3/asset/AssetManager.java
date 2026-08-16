package com.jme3.asset;

import com.jme3.audio.AudioData;
import com.jme3.audio.AudioKey;
import com.jme3.font.BitmapFont;
import com.jme3.material.Material;
import com.jme3.post.FilterPostProcessor;
import com.jme3.renderer.Caps;
import com.jme3.scene.Spatial;
import com.jme3.shader.ShaderGenerator;
import com.jme3.texture.Texture;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public interface AssetManager {
    void addAssetEventListener(AssetEventListener assetEventListener);

    @Deprecated
    default void addClassLoader(ClassLoader classLoader) {
    }

    <T> void addToCache(AssetKey<T> assetKey, T t10);

    void clearAssetEventListeners();

    void clearCache();

    <T> boolean deleteFromCache(AssetKey<T> assetKey);

    @Deprecated
    default List<ClassLoader> getClassLoaders() {
        return new ArrayList();
    }

    <T> T getFromCache(AssetKey<T> assetKey);

    ShaderGenerator getShaderGenerator(EnumSet<Caps> enumSet);

    <T> T loadAsset(AssetKey<T> assetKey);

    Object loadAsset(String str);

    <T> T loadAssetFromStream(AssetKey<T> assetKey, InputStream inputStream);

    AudioData loadAudio(AudioKey audioKey);

    AudioData loadAudio(String str);

    FilterPostProcessor loadFilter(FilterKey filterKey);

    FilterPostProcessor loadFilter(String str);

    BitmapFont loadFont(String str);

    Material loadMaterial(String str);

    Spatial loadModel(ModelKey modelKey);

    Spatial loadModel(String str);

    Texture loadTexture(TextureKey textureKey);

    Texture loadTexture(String str);

    AssetInfo locateAsset(AssetKey<?> assetKey);

    void registerLoader(Class<? extends AssetLoader> cls, String... strArr);

    void registerLocator(String str, Class<? extends AssetLocator> cls);

    void removeAssetEventListener(AssetEventListener assetEventListener);

    @Deprecated
    default void removeClassLoader(ClassLoader classLoader) {
    }

    void setShaderGenerator(ShaderGenerator shaderGenerator);

    void unregisterLoader(Class<? extends AssetLoader> cls);

    void unregisterLocator(String str, Class<? extends AssetLocator> cls);
}
