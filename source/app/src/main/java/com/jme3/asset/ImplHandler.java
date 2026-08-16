package com.jme3.asset;

import com.jme3.asset.cache.AssetCache;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavadocConstants;

final class ImplHandler {
    private static final Logger logger = Logger.getLogger(ImplHandler.class.getName());
    private final AssetManager assetManager;
    private final ThreadLocal<AssetKey> parentAssetKey = new ThreadLocal<>();
    private final CopyOnWriteArrayList<ImplThreadLocal<AssetLocator>> locatorsList = new CopyOnWriteArrayList<>();
    private final HashMap<Class<?>, ImplThreadLocal<AssetLoader>> classToLoaderMap = new HashMap<>();
    private final ConcurrentHashMap<String, ImplThreadLocal<AssetLoader>> extensionToLoaderMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Class<? extends AssetProcessor>, AssetProcessor> classToProcMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Class<? extends AssetCache>, AssetCache> classToCacheMap = new ConcurrentHashMap<>();

    public ImplHandler(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    public void addLoader(Class<? extends AssetLoader> cls, String... strArr) {
        ImplThreadLocal<AssetLoader> implThreadLocal = new ImplThreadLocal<>((Class<AssetLoader>) cls, strArr);
        for (String str : strArr) {
            String lowerCase = str.toLowerCase();
            synchronized (this.classToLoaderMap) {
                this.classToLoaderMap.put(cls, implThreadLocal);
                this.extensionToLoaderMap.put(lowerCase, implThreadLocal);
            }
        }
    }

    public void addLocator(Class<? extends AssetLocator> cls, String str) {
        this.locatorsList.add(new ImplThreadLocal<>(cls, str));
    }

    public AssetLoader aquireLoader(AssetKey assetKey) {
        ImplThreadLocal<AssetLoader> implThreadLocal = this.extensionToLoaderMap.get(assetKey.getExtension());
        if (implThreadLocal != null) {
            return implThreadLocal.get();
        }
        throw new AssetLoadException("No loader registered for type \"" + assetKey.getExtension() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    public void clearCache() {
        synchronized (this.classToCacheMap) {
            try {
                Iterator<AssetCache> it = this.classToCacheMap.values().iterator();
                while (it.hasNext()) {
                    it.next().clearCache();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void establishParentKey(AssetKey assetKey) {
        if (this.parentAssetKey.get() == null) {
            this.parentAssetKey.set(assetKey);
        }
    }

    public <T extends AssetCache> T getCache(Class<T> cls) {
        if (cls == null) {
            return null;
        }
        AssetCache assetCache = (T) this.classToCacheMap.get(cls);
        if (assetCache == null) {
            synchronized (this.classToCacheMap) {
                assetCache = this.classToCacheMap.get(cls);
                if (assetCache == null) {
                    try {
                        T newInstance = cls.getDeclaredConstructor(null).newInstance(null);
                        this.classToCacheMap.put(cls, newInstance);
                        assetCache = newInstance;
                    } catch (IllegalAccessException e10) {
                        e = e10;
                        throw new IllegalArgumentException("The cache class cannot be accessed", e);
                    } catch (IllegalArgumentException e11) {
                        e = e11;
                        throw new IllegalArgumentException("The cache class cannot be created, ensure it has empty constructor", e);
                    } catch (InstantiationException e12) {
                        e = e12;
                        throw new IllegalArgumentException("The cache class cannot be created, ensure it has empty constructor", e);
                    } catch (NoSuchMethodException e13) {
                        e = e13;
                        throw new IllegalArgumentException("The cache class cannot be created, ensure it has empty constructor", e);
                    } catch (SecurityException e14) {
                        e = e14;
                        throw new IllegalArgumentException("The cache class cannot be accessed", e);
                    } catch (InvocationTargetException e15) {
                        e = e15;
                        throw new IllegalArgumentException("The cache class cannot be created, ensure it has empty constructor", e);
                    }
                }
            }
        }
        return (T) assetCache;
    }

    public int getLocatorCount() {
        return this.locatorsList.size();
    }

    public AssetKey getParentKey() {
        return this.parentAssetKey.get();
    }

    public <T extends AssetProcessor> T getProcessor(Class<T> cls) {
        if (cls == null) {
            return null;
        }
        AssetProcessor assetProcessor = (T) this.classToProcMap.get(cls);
        if (assetProcessor == null) {
            synchronized (this.classToProcMap) {
                assetProcessor = this.classToProcMap.get(cls);
                if (assetProcessor == null) {
                    try {
                        T newInstance = cls.getDeclaredConstructor(null).newInstance(null);
                        this.classToProcMap.put(cls, newInstance);
                        assetProcessor = newInstance;
                    } catch (IllegalAccessException e10) {
                        e = e10;
                        throw new IllegalArgumentException("The processor class cannot be accessed", e);
                    } catch (IllegalArgumentException e11) {
                        e = e11;
                        throw new IllegalArgumentException("The processor class cannot be created, ensure it has empty constructor", e);
                    } catch (InstantiationException e12) {
                        e = e12;
                        throw new IllegalArgumentException("The processor class cannot be created, ensure it has empty constructor", e);
                    } catch (NoSuchMethodException e13) {
                        e = e13;
                        throw new IllegalArgumentException("The processor class cannot be created, ensure it has empty constructor", e);
                    } catch (SecurityException e14) {
                        e = e14;
                        throw new IllegalArgumentException("The processor class cannot be accessed", e);
                    } catch (InvocationTargetException e15) {
                        e = e15;
                        throw new IllegalArgumentException("The processor class cannot be created, ensure it has empty constructor", e);
                    }
                }
            }
        }
        return (T) assetProcessor;
    }

    public void releaseParentKey(AssetKey assetKey) {
        if (this.parentAssetKey.get() == assetKey) {
            this.parentAssetKey.set(null);
        }
    }

    public void removeLoader(Class<? extends AssetLoader> cls) {
        synchronized (this.classToLoaderMap) {
            try {
                ImplThreadLocal<AssetLoader> remove = this.classToLoaderMap.remove(cls);
                if (remove == null) {
                    return;
                }
                for (String str : remove.getExtensions()) {
                    this.extensionToLoaderMap.remove(str);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void removeLocator(Class<? extends AssetLocator> cls, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<ImplThreadLocal<AssetLocator>> it = this.locatorsList.iterator();
        while (it.hasNext()) {
            ImplThreadLocal<AssetLocator> next = it.next();
            if (next.getPath().equals(str) && next.getTypeClass().equals(cls)) {
                arrayList.add(next);
            }
        }
        this.locatorsList.removeAll(arrayList);
    }

    public AssetInfo tryLocate(AssetKey assetKey) {
        if (this.locatorsList.isEmpty()) {
            logger.warning("There are no locators currently registered. Use AssetManager.registerLocator() to register a locator.");
            return null;
        }
        Iterator<ImplThreadLocal<AssetLocator>> it = this.locatorsList.iterator();
        while (it.hasNext()) {
            AssetInfo locate = it.next().get().locate(this.assetManager, assetKey);
            if (locate != null) {
                return locate;
            }
        }
        return null;
    }

    public static class ImplThreadLocal<T> extends ThreadLocal<T> {
        private final String[] extensions;
        private final String path;
        private final Class<T> type;

        public ImplThreadLocal(Class<T> cls, String[] strArr) {
            this.type = cls;
            this.extensions = (String[]) strArr.clone();
            this.path = null;
        }

        public String[] getExtensions() {
            return this.extensions;
        }

        public String getPath() {
            return this.path;
        }

        public Class<?> getTypeClass() {
            return this.type;
        }

        @Override
        public T initialValue() {
            try {
                T newInstance = this.type.getDeclaredConstructor(null).newInstance(null);
                String str = this.path;
                if (str != null) {
                    ((AssetLocator) newInstance).setRootPath(str);
                }
                return newInstance;
            } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e10) {
                ImplHandler.logger.log(Level.SEVERE, "An exception occurred while instantiating asset locator: " + this.type.getName(), e10);
                return null;
            }
        }

        public ImplThreadLocal(Class<T> cls, String str) {
            this.type = cls;
            this.path = str;
            this.extensions = null;
        }

        public ImplThreadLocal(Class<T> cls) {
            this.type = cls;
            this.path = null;
            this.extensions = null;
        }
    }
}
