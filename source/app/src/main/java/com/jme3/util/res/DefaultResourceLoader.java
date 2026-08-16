package com.jme3.util.res;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;

class DefaultResourceLoader implements ResourceLoader {
    @Override
    public URL getResource(String str, Class<?> cls) {
        return cls == null ? Thread.currentThread().getContextClassLoader().getResource(str) : cls.getResource(str);
    }

    @Override
    public InputStream getResourceAsStream(String str, Class<?> cls) {
        return cls == null ? Thread.currentThread().getContextClassLoader().getResourceAsStream(str) : cls.getResourceAsStream(str);
    }

    @Override
    public Enumeration<URL> getResources(String str) throws IOException {
        return Thread.currentThread().getContextClassLoader().getResources(str);
    }
}
