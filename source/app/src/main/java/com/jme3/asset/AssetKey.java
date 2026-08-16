package com.jme3.asset;

import com.jme3.asset.cache.AssetCache;
import com.jme3.asset.cache.SimpleAssetCache;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class AssetKey<T> implements Savable, Cloneable {
    protected transient String extension;
    protected transient String folder;
    protected String name;

    public AssetKey(String str) {
        String reducePath = reducePath(str);
        this.name = reducePath;
        this.extension = getExtension(reducePath);
    }

    public static String getExtension(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (str.toLowerCase().endsWith(".xml") && (lastIndexOf = str.substring(0, lastIndexOf).lastIndexOf(46)) == -1) {
            lastIndexOf = str.lastIndexOf(46);
        }
        if (lastIndexOf > 0 && lastIndexOf != str.length() - 1) {
            return str.substring(lastIndexOf + 1).toLowerCase();
        }
        return "";
    }

    public static String getFolder(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf > 0 && lastIndexOf != str.length() - 1) {
            return str.substring(0, lastIndexOf + 1);
        }
        return "";
    }

    public static String reducePath(String str) {
        if (str == null || str.indexOf("./") == -1) {
            return str;
        }
        String[] split = str.split("/");
        LinkedList linkedList = new LinkedList();
        for (String str2 : split) {
            if (str2.length() != 0 && !str2.equals(".")) {
                if (!str2.equals(ClasspathEntry.DOT_DOT)) {
                    linkedList.add(str2);
                } else if (linkedList.size() <= 0 || ((String) linkedList.getLast()).equals(ClasspathEntry.DOT_DOT)) {
                    linkedList.add(ClasspathEntry.DOT_DOT);
                    Logger.getLogger(AssetKey.class.getName()).log(Level.SEVERE, "Asset path \"{0}\" is outside the asset manager root", str);
                } else {
                    linkedList.removeLast();
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            String str3 = (String) linkedList.get(i10);
            if (i10 != 0) {
                sb2.append("/");
            }
            sb2.append(str3);
        }
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AssetKey) {
            return this.name.equals(((AssetKey) obj).name);
        }
        return false;
    }

    public Class<? extends AssetCache> getCacheType() {
        return SimpleAssetCache.class;
    }

    public String getName() {
        return this.name;
    }

    public Class<? extends AssetProcessor> getProcessorType() {
        return null;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        String reducePath = reducePath(jmeImporter.getCapsule(this).readString("name", null));
        this.name = reducePath;
        this.extension = getExtension(reducePath);
    }

    public String toString() {
        return this.name;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(this.name, "name", (String) null);
    }

    public AssetKey<T> m1262clone() {
        try {
            return (AssetKey) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public AssetKey() {
    }

    public String getFolder() {
        if (this.folder == null) {
            this.folder = getFolder(this.name);
        }
        return this.folder;
    }

    public String getExtension() {
        return this.extension;
    }
}
