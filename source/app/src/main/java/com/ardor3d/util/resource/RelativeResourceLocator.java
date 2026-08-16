package com.ardor3d.util.resource;

public class RelativeResourceLocator implements ResourceLocator {
    static final boolean $assertionsDisabled = false;
    private final ResourceSource _baseSource;

    public RelativeResourceLocator(ResourceSource resourceSource) {
        this._baseSource = resourceSource;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RelativeResourceLocator) {
            return this._baseSource.equals(((RelativeResourceLocator) obj)._baseSource);
        }
        return false;
    }

    public ResourceSource getBaseSource() {
        return this._baseSource;
    }

    @Override
    public ResourceSource locateResource(String str) {
        while (str.startsWith("./") && str.length() > 2) {
            str = str.substring(2);
        }
        while (str.startsWith(".\\") && str.length() > 2) {
            str = str.substring(2);
        }
        return this._baseSource.getRelativeSource(str);
    }
}
