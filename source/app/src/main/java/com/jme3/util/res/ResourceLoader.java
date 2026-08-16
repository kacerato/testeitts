package com.jme3.util.res;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;

public interface ResourceLoader {
    URL getResource(String str, Class<?> cls);

    InputStream getResourceAsStream(String str, Class<?> cls);

    Enumeration<URL> getResources(String str) throws IOException;
}
