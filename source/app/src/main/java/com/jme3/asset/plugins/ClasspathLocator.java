package com.jme3.asset.plugins;

import android.content.ContentResolver;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetLocator;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.system.JmeSystem;
import com.jme3.util.res.Resources;
import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class ClasspathLocator implements AssetLocator {
    private static final Logger logger = Logger.getLogger(ClasspathLocator.class.getName());
    private String root = "";

    @Override
    public AssetInfo locate(AssetManager assetManager, AssetKey assetKey) {
        URL resource;
        String name = assetKey.getName();
        if (name.startsWith("/")) {
            name = name.substring(1);
        }
        String str = this.root + name;
        if (JmeSystem.isLowPermissions()) {
            resource = Resources.getResource("/" + str, ClasspathLocator.class);
        } else {
            resource = Resources.getResource(str);
        }
        if (resource == null) {
            return null;
        }
        if (resource.getProtocol().equals(ContentResolver.SCHEME_FILE)) {
            try {
                String canonicalPath = new File(resource.toURI()).getCanonicalPath();
                if (File.separatorChar == '\\') {
                    canonicalPath = canonicalPath.replace(JavaElement.JEM_ESCAPE, '/');
                }
                if (!canonicalPath.endsWith(str)) {
                    throw new AssetNotFoundException("Asset name doesn't match requirements.\n\"" + canonicalPath + "\" doesn't match \"" + str + JavadocConstants.ANCHOR_PREFIX_END);
                }
            } catch (IOException e10) {
                throw new AssetLoadException("Failed to get canonical path for " + ((Object) resource), e10);
            } catch (URISyntaxException e11) {
                throw new AssetLoadException("Error converting URL to URI", e11);
            }
        }
        try {
            return UrlAssetInfo.create(assetManager, assetKey, resource);
        } catch (IOException e12) {
            throw new AssetLoadException("Failed to read URL " + ((Object) resource), e12);
        }
    }

    @Override
    public void setRootPath(String str) {
        this.root = str;
        if (str.equals("/")) {
            this.root = "";
            return;
        }
        if (this.root.length() > 1) {
            if (this.root.startsWith("/")) {
                this.root = this.root.substring(1);
            }
            if (this.root.endsWith("/")) {
                return;
            }
            this.root += "/";
        }
    }
}
