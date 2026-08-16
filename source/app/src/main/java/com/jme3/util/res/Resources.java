package com.jme3.util.res;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Resources {
    private static final String DEFAULT_IMPL = "com.jme3.util.res.DefaultResourceLoader";
    public static final String PROPERTY_RESOURCE_LOADER_IMPLEMENTATION = "com.jme3.ResourceLoaderImplementation";
    private static final Logger LOGGER = Logger.getLogger(Resources.class.getName());
    private static ResourceLoader impl = null;

    /* JADX WARN: Multi-variable type inference failed */
    private static Class<? extends ResourceLoader> findResourceLoaderClass(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (Throwable unused) {
            LOGGER.log(Level.WARNING, "Unable to access {0}", str);
            cls = null;
        }
        if (cls == null || ResourceLoader.class.isAssignableFrom(cls)) {
            return cls;
        }
        LOGGER.log(Level.WARNING, "{0} does not implement {1}", new Object[]{str, ResourceLoader.class.getName()});
        return null;
    }

    public static URL getResource(String str) {
        return getResourceLoader().getResource(str, null);
    }

    public static InputStream getResourceAsStream(String str) {
        return getResourceLoader().getResourceAsStream(str, null);
    }

    private static ResourceLoader getResourceLoader() {
        Class<? extends ResourceLoader> cls;
        ResourceLoader resourceLoader = impl;
        if (resourceLoader != null) {
            return resourceLoader;
        }
        String property = System.getProperty(PROPERTY_RESOURCE_LOADER_IMPLEMENTATION, null);
        if (property != null) {
            LOGGER.log(Level.FINE, "Loading user defined ResourceLoader implementation {0}", property);
            cls = findResourceLoaderClass(property);
        } else {
            cls = null;
        }
        if (cls == null) {
            LOGGER.log(Level.FINE, "No usable user defined ResourceLoader implementation found, using default implementation {0}", DEFAULT_IMPL);
            cls = findResourceLoaderClass(DEFAULT_IMPL);
        }
        if (cls == null) {
            throw new RuntimeException("No ResourceLoader implementation found");
        }
        try {
            ResourceLoader newInstance = cls.getDeclaredConstructor(null).newInstance(null);
            impl = newInstance;
            return newInstance;
        } catch (Throwable th2) {
            throw new RuntimeException("Could not instantiate ResourceLoader class " + cls.getName(), th2);
        }
    }

    public static Enumeration<URL> getResources(String str) throws IOException {
        return getResourceLoader().getResources(str);
    }

    public static void setResourceLoader(ResourceLoader resourceLoader) {
        impl = resourceLoader;
    }

    public static URL getResource(String str, Class<?> cls) {
        return getResourceLoader().getResource(str, cls);
    }

    public static InputStream getResourceAsStream(String str, Class<?> cls) {
        return getResourceLoader().getResourceAsStream(str, cls);
    }
}
