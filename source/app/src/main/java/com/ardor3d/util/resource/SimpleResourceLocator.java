package com.ardor3d.util.resource;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import org.eclipse.jdt.internal.core.JavaElement;

public class SimpleResourceLocator implements ResourceLocator {
    private final URI _baseDir;

    public SimpleResourceLocator(URI uri) throws URISyntaxException {
        if (uri != null) {
            if (!uri.toString().endsWith("/")) {
                this._baseDir = new URI(uri.toString() + "/");
                return;
            }
            this._baseDir = uri;
            return;
        }
        throw new NullPointerException("baseDir can not be null.");
    }

    public String cleanup(String str) {
        return str.replaceAll("\\%2[F,f]", "/").replace(JavaElement.JEM_ESCAPE, '/');
    }

    public ResourceSource doRecursiveLocate(String str) {
        while (str.startsWith("./") && str.length() > 2) {
            str = str.substring(2);
        }
        while (str.startsWith(".\\") && str.length() > 2) {
            str = str.substring(2);
        }
        try {
            URL url = new URL(this._baseDir.toURL(), URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20"));
            url.openStream().close();
            return new URLResourceSource(url);
        } catch (IOException | IllegalArgumentException unused) {
            String trimResourceName = trimResourceName(str);
            if (trimResourceName == null) {
                return null;
            }
            return doRecursiveLocate(trimResourceName);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof SimpleResourceLocator) {
            return this._baseDir.equals(((SimpleResourceLocator) obj)._baseDir);
        }
        return false;
    }

    public URI getBaseDir() {
        return this._baseDir;
    }

    @Override
    public ResourceSource locateResource(String str) {
        return doRecursiveLocate(cleanup(str));
    }

    public String trimResourceName(String str) {
        String cleanup = cleanup(str);
        int indexOf = cleanup.indexOf(47);
        if (indexOf < 0 || indexOf >= cleanup.length() - 1) {
            return null;
        }
        return cleanup.substring(indexOf + 1);
    }

    public SimpleResourceLocator(URL url) throws URISyntaxException {
        this(url != null ? url.toURI() : null);
    }
}
