package com.jme3.asset;

import com.jme3.asset.cache.AssetCache;
import com.jme3.audio.AudioData;
import com.jme3.audio.AudioKey;
import com.jme3.font.BitmapFont;
import com.jme3.material.Material;
import com.jme3.post.FilterPostProcessor;
import com.jme3.renderer.Caps;
import com.jme3.scene.Spatial;
import com.jme3.shader.Glsl100ShaderGenerator;
import com.jme3.shader.Glsl150ShaderGenerator;
import com.jme3.shader.Glsl300ShaderGenerator;
import com.jme3.shader.ShaderGenerator;
import com.jme3.system.JmeSystem;
import com.jme3.texture.Texture;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DesktopAssetManager implements AssetManager {
    private static final Logger logger = Logger.getLogger(AssetManager.class.getName());

    @Deprecated
    private final List<ClassLoader> classLoaders;
    private final CopyOnWriteArrayList<AssetEventListener> eventListeners;
    private final ImplHandler handler;
    private ShaderGenerator shaderGenerator;

    public DesktopAssetManager() {
        this((URL) null);
    }

    private void loadConfigFile(URL url) {
        try {
            AssetConfig.loadText(this, url);
        } catch (IOException e10) {
            logger.log(Level.SEVERE, "Failed to load asset config", (Throwable) e10);
        }
    }

    @Override
    public void addAssetEventListener(AssetEventListener assetEventListener) {
        this.eventListeners.add(assetEventListener);
    }

    @Override
    @Deprecated
    public void addClassLoader(ClassLoader classLoader) {
        this.classLoaders.add(classLoader);
    }

    @Override
    public <T> void addToCache(AssetKey<T> assetKey, T t10) {
        AssetCache cache = this.handler.getCache(assetKey.getCacheType());
        if (cache != null) {
            cache.addToCache(assetKey, t10);
            cache.notifyNoAssetClone();
        } else {
            throw new IllegalArgumentException("Key " + ((Object) assetKey) + " specifies no cache.");
        }
    }

    @Override
    public void clearAssetEventListeners() {
        this.eventListeners.clear();
    }

    @Override
    public void clearCache() {
        this.handler.clearCache();
        Logger logger2 = logger;
        Level level = Level.FINER;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "All asset caches cleared.");
        }
    }

    @Override
    public <T> boolean deleteFromCache(AssetKey<T> assetKey) {
        AssetCache cache = this.handler.getCache(assetKey.getCacheType());
        if (cache != null) {
            return cache.deleteFromCache(assetKey);
        }
        throw new IllegalArgumentException("Key " + ((Object) assetKey) + " specifies no cache.");
    }

    @Override
    @Deprecated
    public List<ClassLoader> getClassLoaders() {
        return Collections.unmodifiableList(this.classLoaders);
    }

    @Override
    public <T> T getFromCache(AssetKey<T> assetKey) {
        AssetCache cache = this.handler.getCache(assetKey.getCacheType());
        if (cache != null) {
            T t10 = (T) cache.getFromCache(assetKey);
            if (t10 != null) {
                cache.notifyNoAssetClone();
            }
            return t10;
        }
        throw new IllegalArgumentException("Key " + ((Object) assetKey) + " specifies no cache.");
    }

    @Override
    public ShaderGenerator getShaderGenerator(EnumSet<Caps> enumSet) {
        if (this.shaderGenerator == null) {
            if (enumSet.contains(Caps.OpenGLES30) && enumSet.contains(Caps.GLSL300)) {
                this.shaderGenerator = new Glsl300ShaderGenerator(this);
            } else if (enumSet.contains(Caps.GLSL150)) {
                this.shaderGenerator = new Glsl150ShaderGenerator(this);
            } else {
                this.shaderGenerator = new Glsl100ShaderGenerator(this);
            }
        }
        return this.shaderGenerator;
    }

    @Override
    public <T> T loadAsset(AssetKey<T> assetKey) {
        if (assetKey != null) {
            Iterator<AssetEventListener> it = this.eventListeners.iterator();
            while (it.hasNext()) {
                it.next().assetRequested(assetKey);
            }
            AssetCache cache = this.handler.getCache(assetKey.getCacheType());
            AssetProcessor processor = this.handler.getProcessor(assetKey.getProcessorType());
            T t10 = cache != null ? (T) cache.getFromCache(assetKey) : null;
            if (t10 == null) {
                AssetInfo tryLocate = this.handler.tryLocate(assetKey);
                if (tryLocate == null) {
                    if (this.handler.getParentKey() != null) {
                        Iterator<AssetEventListener> it2 = this.eventListeners.iterator();
                        while (it2.hasNext()) {
                            it2.next().assetDependencyNotFound(this.handler.getParentKey(), assetKey);
                        }
                    }
                    throw new AssetNotFoundException(assetKey.toString());
                }
                t10 = (T) loadLocatedAsset(assetKey, tryLocate, processor, cache);
            }
            return t10 instanceof CloneableSmartAsset ? (T) registerAndCloneSmartAsset(assetKey, t10, processor, cache) : t10;
        }
        throw new IllegalArgumentException("key cannot be null");
    }

    @Override
    public <T> T loadAssetFromStream(AssetKey<T> assetKey, InputStream inputStream) {
        if (assetKey == null) {
            throw new IllegalArgumentException("key cannot be null");
        }
        Iterator<AssetEventListener> it = this.eventListeners.iterator();
        while (it.hasNext()) {
            it.next().assetRequested(assetKey);
        }
        return (T) loadLocatedAsset(assetKey, new StreamAssetInfo(this, assetKey, inputStream), this.handler.getProcessor(assetKey.getProcessorType()), null);
    }

    @Override
    public AudioData loadAudio(AudioKey audioKey) {
        return (AudioData) loadAsset(audioKey);
    }

    @Override
    public FilterPostProcessor loadFilter(FilterKey filterKey) {
        return (FilterPostProcessor) loadAsset(filterKey);
    }

    @Override
    public BitmapFont loadFont(String str) {
        return (BitmapFont) loadAsset(new AssetKey(str));
    }

    public <T> T loadLocatedAsset(AssetKey<T> assetKey, AssetInfo assetInfo, AssetProcessor assetProcessor, AssetCache assetCache) {
        AssetLoader aquireLoader = this.handler.aquireLoader(assetKey);
        try {
            try {
                this.handler.establishParentKey(assetKey);
                T t10 = (T) aquireLoader.load(assetInfo);
                if (t10 == null) {
                    throw new AssetLoadException("Error occurred while loading asset \"" + ((Object) assetKey) + "\" using " + aquireLoader.getClass().getSimpleName());
                }
                Logger logger2 = logger;
                Level level = Level.FINER;
                if (logger2.isLoggable(level)) {
                    logger2.log(level, "Loaded {0} with {1}", new Object[]{assetKey, aquireLoader.getClass().getSimpleName()});
                }
                if (assetProcessor != null) {
                    t10 = (T) assetProcessor.postProcess(assetKey, t10);
                }
                if (assetCache != null) {
                    assetCache.addToCache(assetKey, t10);
                }
                Iterator<AssetEventListener> it = this.eventListeners.iterator();
                while (it.hasNext()) {
                    it.next().assetLoaded(assetKey);
                }
                return t10;
            } catch (IOException e10) {
                throw new AssetLoadException("An exception has occurred while loading asset: " + ((Object) assetKey), e10);
            }
        } finally {
            this.handler.releaseParentKey(assetKey);
        }
    }

    @Override
    public Material loadMaterial(String str) {
        return (Material) loadAsset(new MaterialKey(str));
    }

    @Override
    public Spatial loadModel(ModelKey modelKey) {
        return (Spatial) loadAsset(modelKey);
    }

    @Override
    public Texture loadTexture(TextureKey textureKey) {
        return (Texture) loadAsset(textureKey);
    }

    @Override
    public AssetInfo locateAsset(AssetKey<?> assetKey) {
        AssetInfo tryLocate = this.handler.tryLocate(assetKey);
        if (tryLocate == null) {
            logger.log(Level.WARNING, "Cannot locate resource: {0}", assetKey);
        }
        return tryLocate;
    }

    public <T> T registerAndCloneSmartAsset(AssetKey<T> assetKey, T t10, AssetProcessor assetProcessor, AssetCache assetCache) {
        if (assetProcessor == null) {
            throw new IllegalStateException("Asset implements CloneableSmartAsset but doesn't have processor to handle cloning");
        }
        T t11 = (T) assetProcessor.createClone(t10);
        if (assetCache == null || t11 == t10) {
            throw new IllegalStateException("Asset implements CloneableSmartAsset but doesn't have cache or was not cloned");
        }
        assetCache.registerAssetClone(assetKey, t11);
        return t11;
    }

    @Override
    public void registerLoader(Class<? extends AssetLoader> cls, String... strArr) {
        this.handler.addLoader(cls, strArr);
        Logger logger2 = logger;
        Level level = Level.FINER;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Registered loader: {0} for extensions {1}", new Object[]{cls.getSimpleName(), Arrays.toString(strArr)});
        }
    }

    @Override
    public void registerLocator(String str, Class<? extends AssetLocator> cls) {
        this.handler.addLocator(cls, str);
        Logger logger2 = logger;
        Level level = Level.FINER;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Registered locator: {0}", cls.getSimpleName());
        }
    }

    @Override
    public void removeAssetEventListener(AssetEventListener assetEventListener) {
        this.eventListeners.remove(assetEventListener);
    }

    @Override
    @Deprecated
    public void removeClassLoader(ClassLoader classLoader) {
        this.classLoaders.remove(classLoader);
    }

    public void setAssetEventListener(AssetEventListener assetEventListener) {
        this.eventListeners.clear();
        this.eventListeners.add(assetEventListener);
    }

    @Override
    public void setShaderGenerator(ShaderGenerator shaderGenerator) {
        this.shaderGenerator = shaderGenerator;
    }

    @Override
    public void unregisterLoader(Class<? extends AssetLoader> cls) {
        this.handler.removeLoader(cls);
        Logger logger2 = logger;
        Level level = Level.FINER;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Unregistered loader: {0}", cls.getSimpleName());
        }
    }

    @Override
    public void unregisterLocator(String str, Class<? extends AssetLocator> cls) {
        this.handler.removeLocator(cls, str);
        Logger logger2 = logger;
        Level level = Level.FINER;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Unregistered locator: {0}", cls.getSimpleName());
        }
    }

    public DesktopAssetManager(boolean z10) {
        this(z10 ? JmeSystem.getPlatformAssetConfigURL() : null);
    }

    @Override
    public AudioData loadAudio(String str) {
        return loadAudio(new AudioKey(str, false));
    }

    @Override
    public FilterPostProcessor loadFilter(String str) {
        return loadFilter(new FilterKey(str));
    }

    @Override
    public Spatial loadModel(String str) {
        return loadModel(new ModelKey(str));
    }

    @Override
    public Texture loadTexture(String str) {
        TextureKey textureKey = new TextureKey(str, true);
        textureKey.setGenerateMips(true);
        return loadTexture(textureKey);
    }

    public DesktopAssetManager(URL url) {
        this.handler = new ImplHandler(this);
        this.eventListeners = new CopyOnWriteArrayList<>();
        this.classLoaders = Collections.synchronizedList(new ArrayList());
        if (url != null) {
            loadConfigFile(url);
        }
        logger.fine("DesktopAssetManager created.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void registerLoader(String str, String... strArr) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException | NoClassDefFoundError e10) {
            logger.log(Level.WARNING, "Failed to find loader: " + str, e10);
            cls = null;
        }
        if (cls != null) {
            registerLoader((Class<? extends AssetLoader>) cls, strArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:4:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:7:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void registerLocator(String str, String str2) {
        Class<?> cls;
        try {
            cls = Class.forName(str2);
        } catch (ClassNotFoundException e10) {
            logger.log(Level.WARNING, "Failed to find locator: " + str2, (Throwable) e10);
            cls = null;
            if (cls != null) {
            }
        } catch (NoClassDefFoundError e11) {
            logger.log(Level.WARNING, "Failed to find loader: " + str2, (Throwable) e11);
            cls = null;
            if (cls != null) {
            }
        }
        if (cls != null) {
            registerLocator(str, (Class<? extends AssetLocator>) cls);
        }
    }

    @Override
    public Object loadAsset(String str) {
        return loadAsset(new AssetKey(str));
    }
}
