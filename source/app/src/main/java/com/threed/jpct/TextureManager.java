package com.threed.jpct;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class TextureManager {
    static final String DUMMY_NAME = "--dummy--";
    public static final int TEXTURE_NOTFOUND = -1;
    private static TextureManager myInstance;
    private Texture dummy;
    private int textureCount;
    private HashMap<String, Integer> textureList;
    Texture[] textures;
    private int lastID = -1;
    private String lastName = null;
    private Virtualizer textureVirtualizer = null;

    private TextureManager() {
        flush();
    }

    public static synchronized TextureManager getInstance() {
        TextureManager textureManager;
        synchronized (TextureManager.class) {
            try {
                if (myInstance == null) {
                    myInstance = new TextureManager();
                }
                textureManager = myInstance;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return textureManager;
    }

    public void addTexture(String str) {
        addTexture(str, this.dummy);
    }

    public void compress() {
        int i10 = 0;
        while (true) {
            Texture[] textureArr = this.textures;
            if (i10 >= textureArr.length) {
                return;
            }
            Texture texture = textureArr[i10];
            if (texture != null) {
                texture.compress();
            }
            i10++;
        }
    }

    public boolean containsTexture(String str) {
        return this.textureList.containsKey(str);
    }

    public void flush() {
        this.textureList = new HashMap<>();
        this.textures = new Texture[Config.maxTextures];
        Texture texture = new Texture();
        this.dummy = texture;
        this.textureCount = 0;
        addTexture(DUMMY_NAME, texture);
    }

    public void flushOpenGLIDs(int i10) {
        Iterator<String> it = this.textureList.o().iterator();
        while (it.hasNext()) {
            getTexture(it.next()).clearIDs(i10);
        }
    }

    public Texture getDummyTexture() {
        return this.dummy;
    }

    public long getMemoryUsage() {
        long j10 = 0;
        for (int i10 = 0; i10 < this.textureCount; i10++) {
            Texture texture = this.textures[i10];
            if (texture.texels != null) {
                j10 += r4.length * 4;
            }
            if (texture.zippedTexels != null) {
                j10 += r3.length;
            }
        }
        return j10;
    }

    public String getNameByID(int i10) {
        for (String str : this.textureList.o()) {
            if (this.textureList.get(str).intValue() == i10) {
                return str;
            }
        }
        return null;
    }

    public HashSet<String> getNames() {
        return new HashSet<>(this.textureList.o());
    }

    public List<?> getState() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.textureCount; i10++) {
            arrayList.add(new Object[]{getNameByID(i10), this.textures[i10]});
        }
        return arrayList;
    }

    public Texture getTexture(String str) {
        int textureID;
        if (str != null && (textureID = getTextureID(str)) != -1) {
            return this.textures[textureID];
        }
        Logger.log("Requested texture not found!", 0);
        return null;
    }

    public Texture getTextureByID(int i10) {
        return getTexture(getNameByID(i10));
    }

    public int getTextureCount() {
        return this.textureList.size();
    }

    public int getTextureID(String str) {
        if (str.equals(this.lastName)) {
            return this.lastID;
        }
        Integer num = this.textureList.get(str);
        if (num == null) {
            return -1;
        }
        int intValue = num.intValue();
        this.lastID = intValue;
        this.lastName = str;
        return intValue;
    }

    public Texture[] getTextures() {
        return this.textures;
    }

    public Virtualizer getVirtualizer() {
        return this.textureVirtualizer;
    }

    public void preWarm(FrameBuffer frameBuffer) {
        GLRenderer gLRenderer = frameBuffer.glRend;
        int i10 = 0;
        if (gLRenderer != null) {
            int i11 = 0;
            while (i10 < this.textureCount) {
                Texture texture = this.textures[i10];
                if (texture != null && (texture.texels != null || texture.zippedTexels != null || (getVirtualizer() != null && getVirtualizer().isVirtual(texture)))) {
                    gLRenderer.upload(texture);
                    i11 = 1;
                }
                i10++;
            }
            i10 = i11;
        }
        if (i10 != 0) {
            Logger.log("Pre-warming done!");
        }
    }

    public void removeAndUnload(String str, FrameBuffer frameBuffer) {
        unloadTexture(frameBuffer, getTexture(str));
        removeTexture(str);
    }

    public synchronized void removeTexture(String str) {
        try {
            Texture texture = getTexture(str);
            for (int i10 = 0; i10 < this.textureCount; i10++) {
                if (texture == this.textures[i10]) {
                    this.textureList.remove(str);
                    this.textures[i10] = this.dummy;
                    int i11 = this.textureCount;
                    if (i10 == i11 - 1) {
                        this.textureCount = i11 - 1;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void replaceTexture(String str, Texture texture) {
        int textureID = getTextureID(str);
        if (textureID != -1) {
            this.textures[textureID] = texture;
            return;
        }
        Logger.log("Texture '" + ((Object) texture) + "' not found!", 0);
    }

    public void setDummyTexture(Texture texture) {
        if (texture == null) {
            Logger.log("Texture can't be null!", 0);
        } else {
            this.dummy = texture;
            replaceTexture(DUMMY_NAME, texture);
        }
    }

    public void setState(List<?> list) {
        flush();
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                Object[] objArr = (Object[]) list.get(i10);
                String str = (String) objArr[0];
                Texture texture = (Texture) objArr[1];
                if (!str.equals(DUMMY_NAME)) {
                    addTexture(str, texture);
                }
            } catch (Exception unused) {
                Logger.log("Not a valid dump!", 0);
                return;
            }
        }
    }

    public void setVirtualizer(Virtualizer virtualizer) {
        this.textureVirtualizer = virtualizer;
    }

    public void unloadTexture(FrameBuffer frameBuffer, Texture texture) {
        GLRenderer gLRenderer = frameBuffer.glRend;
        if (gLRenderer != null) {
            gLRenderer.addForUnload(texture);
        }
    }

    public void virtualize(Texture texture) {
        Virtualizer virtualizer = this.textureVirtualizer;
        if (virtualizer == null) {
            Logger.log("No Virtualizer set!", 0);
        } else if (texture.myEffect == null) {
            virtualizer.store(texture);
        }
    }

    public void addTexture(String str, Texture texture) {
        int i10 = this.textureCount;
        Texture[] textureArr = this.textures;
        if (i10 >= textureArr.length) {
            Texture[] textureArr2 = new Texture[textureArr.length * 2];
            System.arraycopy(textureArr, 0, textureArr2, 0, textureArr.length);
            this.textures = textureArr2;
        }
        if (!this.textureList.containsKey(str)) {
            this.textureList.put(str, IntegerC.valueOf(this.textureCount));
            Texture[] textureArr3 = this.textures;
            int i11 = this.textureCount;
            textureArr3[i11] = texture;
            this.textureCount = i11 + 1;
            return;
        }
        Logger.log("A texture with the name '" + str + "' has been declared twice!", 0);
    }
}
