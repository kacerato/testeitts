package com.ardor3d.util.resource;

import com.google.common.collect.D2;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ResourceLocatorTool {
    public static final String TYPE_AUDIO = "audio";
    public static final String TYPE_MODEL = "model";
    public static final String TYPE_PARTICLE = "particle";
    public static final String TYPE_SHADER = "shader";
    public static final String TYPE_TEXTURE = "texture";
    private static final Logger logger = Logger.getLogger(ResourceLocatorTool.class.getName());
    private static final Map<String, List<ResourceLocator>> _locatorMap = new HashMap();

    public static void addResourceLocator(String str, ResourceLocator resourceLocator) {
        if (resourceLocator == null) {
            return;
        }
        Map<String, List<ResourceLocator>> map = _locatorMap;
        synchronized (map) {
            try {
                List<ResourceLocator> list = map.get(str);
                if (list == null) {
                    list = new ArrayList<>();
                    map.put(str, list);
                }
                if (!list.contains(resourceLocator)) {
                    list.add(resourceLocator);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static URL getClassPathResource(Class<?> cls, String str) {
        URL resource = Thread.currentThread().getContextClassLoader().getResource(str);
        if (resource == null && !Thread.currentThread().getContextClassLoader().equals(ClassLoader.getSystemClassLoader())) {
            resource = ClassLoader.getSystemResource(str);
        }
        return resource == null ? cls.getClassLoader().getResource(str) : resource;
    }

    public static InputStream getClassPathResourceAsStream(Class<?> cls, String str) {
        InputStream resourceAsStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(str);
        if (resourceAsStream == null && !Thread.currentThread().getContextClassLoader().equals(ClassLoader.getSystemClassLoader())) {
            resourceAsStream = ClassLoader.getSystemResourceAsStream(str);
        }
        return resourceAsStream == null ? cls.getClassLoader().getResourceAsStream(str) : resourceAsStream;
    }

    public static Set<URL> getClassPathResources(Class<?> cls, String str) {
        HashSet u10 = D2.u();
        try {
            Enumeration<URL> resources = Thread.currentThread().getContextClassLoader().getResources(str);
            while (resources.hasMoreElements()) {
                u10.add(resources.nextElement());
            }
        } catch (IOException unused) {
        }
        if (!Thread.currentThread().getContextClassLoader().equals(ClassLoader.getSystemClassLoader())) {
            try {
                Enumeration<URL> systemResources = ClassLoader.getSystemResources(str);
                while (systemResources.hasMoreElements()) {
                    u10.add(systemResources.nextElement());
                }
            } catch (IOException unused2) {
            }
        }
        try {
            Enumeration<URL> resources2 = cls.getClassLoader().getResources(str);
            while (resources2.hasMoreElements()) {
                u10.add(resources2.nextElement());
            }
        } catch (IOException unused3) {
        }
        return u10;
    }

    public static ResourceSource locateResource(String str, String str2) {
        ResourceSource locateResource;
        if (str2 == null) {
            return null;
        }
        try {
            str2 = URLDecoder.decode(str2, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        Map<String, List<ResourceLocator>> map = _locatorMap;
        synchronized (map) {
            List<ResourceLocator> list = map.get(str);
            if (list != null) {
                int size = list.size();
                do {
                    size--;
                    if (size >= 0) {
                        locateResource = list.get(size).locateResource(str2);
                    }
                } while (locateResource == null);
                return locateResource;
            }
            try {
                URL classPathResource = getClassPathResource(ResourceLocatorTool.class, str2);
                if (classPathResource != null) {
                    return new URLResourceSource(classPathResource);
                }
            } catch (Exception e11) {
                logger.logp(Level.WARNING, ResourceLocatorTool.class.getName(), "locateResource(String, String)", e11.getMessage(), (Throwable) e11);
            }
            logger.warning("Unable to locate: " + str2);
            return null;
        }
    }

    public static boolean removeResourceLocator(String str, ResourceLocator resourceLocator) {
        Map<String, List<ResourceLocator>> map = _locatorMap;
        synchronized (map) {
            try {
                List<ResourceLocator> list = map.get(str);
                if (list == null) {
                    return false;
                }
                return list.remove(resourceLocator);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
