package com.ardor3d.util.resource;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Arrays;

public class MultiFormatResourceLocator extends SimpleResourceLocator {
    private final String[] _extensions;
    private boolean _trySpecifiedFormatFirst;

    public MultiFormatResourceLocator(URI uri, String... strArr) throws URISyntaxException {
        super(uri);
        this._trySpecifiedFormatFirst = false;
        if (strArr != null) {
            this._extensions = strArr;
            return;
        }
        throw new NullPointerException("extensions can not be null.");
    }

    private String getBaseFileName(String str) {
        String path = new File(str).getPath();
        int lastIndexOf = path.lastIndexOf(46);
        return lastIndexOf < 0 ? path : path.substring(0, lastIndexOf);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof MultiFormatResourceLocator)) {
            return super.equals(obj);
        }
        MultiFormatResourceLocator multiFormatResourceLocator = (MultiFormatResourceLocator) obj;
        return getBaseDir().equals(multiFormatResourceLocator.getBaseDir()) && Arrays.equals(this._extensions, multiFormatResourceLocator._extensions);
    }

    public boolean isTrySpecifiedFormatFirst() {
        return this._trySpecifiedFormatFirst;
    }

    @Override
    public ResourceSource locateResource(String str) {
        ResourceSource doRecursiveLocate;
        String cleanup = cleanup(str);
        if (this._trySpecifiedFormatFirst && (doRecursiveLocate = doRecursiveLocate(cleanup)) != null) {
            return doRecursiveLocate;
        }
        String baseFileName = getBaseFileName(cleanup);
        for (String str2 : this._extensions) {
            ResourceSource doRecursiveLocate2 = doRecursiveLocate(baseFileName + str2);
            if (doRecursiveLocate2 != null) {
                return doRecursiveLocate2;
            }
        }
        if (this._trySpecifiedFormatFirst) {
            return null;
        }
        return doRecursiveLocate(cleanup);
    }

    public void setTrySpecifiedFormatFirst(boolean z10) {
        this._trySpecifiedFormatFirst = z10;
    }

    public MultiFormatResourceLocator(URL url, String... strArr) throws URISyntaxException {
        this(url.toURI(), strArr);
    }
}
