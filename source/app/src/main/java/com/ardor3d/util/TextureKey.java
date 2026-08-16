package com.ardor3d.util;

import com.ardor3d.image.Texture;
import com.ardor3d.image.TextureStoreFormat;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.resource.ResourceSource;
import com.google.common.collect.M1;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public final class TextureKey implements Savable {
    protected static final List<WeakReference<TextureKey>> _keyCache = M1.y();
    private static AtomicInteger _uniqueTK = new AtomicInteger(Integer.MIN_VALUE);
    private boolean _dirty;
    private final List<WeakReference<Object>> _dirtyContexts;
    protected boolean _flipped;
    protected String _id;
    protected ResourceSource _source = null;
    protected TextureStoreFormat _format = TextureStoreFormat.GuessCompressedFormat;
    protected Texture.MinificationFilter _minFilter = Texture.MinificationFilter.Trilinear;
    protected final transient ContextIdReference<TextureKey> _idCache = new ContextIdReference<>(this, TextureManager.getRefQueue());
    protected transient int _code = Integer.MAX_VALUE;

    public TextureKey() {
        if (Constants.useMultipleContexts) {
            this._dirtyContexts = M1.q();
        } else {
            this._dirtyContexts = null;
        }
    }

    public static synchronized boolean clearKey(TextureKey textureKey) {
        synchronized (TextureKey.class) {
            Iterator<WeakReference<TextureKey>> it = _keyCache.iterator();
            while (it.hasNext()) {
                TextureKey textureKey2 = it.next().get();
                if (textureKey2 != null && textureKey2.equals(textureKey)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public static synchronized TextureKey getKey(ResourceSource resourceSource, boolean z10, TextureStoreFormat textureStoreFormat, Texture.MinificationFilter minificationFilter) {
        TextureKey key;
        synchronized (TextureKey.class) {
            key = getKey(resourceSource, z10, textureStoreFormat, null, minificationFilter);
        }
        return key;
    }

    public static synchronized TextureKey getRTTKey(Texture.MinificationFilter minificationFilter) {
        TextureKey key;
        synchronized (TextureKey.class) {
            try {
                int addAndGet = _uniqueTK.addAndGet(1);
                if (addAndGet == Integer.MAX_VALUE) {
                    _uniqueTK.set(Integer.MIN_VALUE);
                    addAndGet = Integer.MIN_VALUE;
                }
                key = getKey(null, false, TextureStoreFormat.GuessCompressedFormat, "RTT_" + addAndGet, minificationFilter);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return key;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TextureKey)) {
            return false;
        }
        TextureKey textureKey = (TextureKey) obj;
        ResourceSource resourceSource = this._source;
        if (resourceSource == null) {
            if (textureKey._source != null) {
                return false;
            }
        } else if (!resourceSource.equals(textureKey._source)) {
            return false;
        }
        String str = this._id;
        if (str != null || textureKey._id == null) {
            return (str == null || str.equals(textureKey._id)) && this._minFilter == textureKey._minFilter && this._format == textureKey._format && this._flipped == textureKey._flipped;
        }
        return false;
    }

    @Override
    public Class<? extends TextureKey> getClassTag() {
        return TextureKey.class;
    }

    public Set<Object> getContextObjects() {
        return this._idCache.getContextObjects();
    }

    public TextureStoreFormat getFormat() {
        return this._format;
    }

    public String getId() {
        return this._id;
    }

    public Texture.MinificationFilter getMinificationFilter() {
        return this._minFilter;
    }

    public ResourceSource getSource() {
        return this._source;
    }

    public int getTextureIdForContext(Object obj) {
        if (this._idCache.containsKey(obj)) {
            return this._idCache.get(obj);
        }
        return 0;
    }

    public int hashCode() {
        if (this._code == Integer.MAX_VALUE) {
            this._code = 17;
            int i10 = 17 * 31;
            ResourceSource resourceSource = this._source;
            int hashCode = 17 + i10 + (resourceSource != null ? resourceSource.hashCode() : 0);
            this._code = hashCode;
            int i11 = hashCode * 31;
            String str = this._id;
            int hashCode2 = hashCode + i11 + (str != null ? str.hashCode() : 0);
            this._code = hashCode2;
            int hashCode3 = hashCode2 + (hashCode2 * 31) + this._minFilter.hashCode();
            this._code = hashCode3;
            int hashCode4 = hashCode3 + (hashCode3 * 31) + this._format.hashCode();
            this._code = hashCode4 + (hashCode4 * 31) + (this._flipped ? 1 : 0);
        }
        return this._code;
    }

    public boolean isDirty(Object obj) {
        if (!Constants.useMultipleContexts) {
            return this._dirty;
        }
        synchronized (this._dirtyContexts) {
            try {
                if (this._dirtyContexts.isEmpty()) {
                    return false;
                }
                Iterator<WeakReference<Object>> it = this._dirtyContexts.iterator();
                while (it.hasNext()) {
                    Object obj2 = it.next().get();
                    if (obj2 == null) {
                        it.remove();
                    } else if (obj2.equals(obj)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean isFlipped() {
        return this._flipped;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._source = (ResourceSource) inputCapsule.readSavable("source", null);
        this._flipped = inputCapsule.readBoolean("flipped", false);
        this._format = (TextureStoreFormat) inputCapsule.readEnum("format", TextureStoreFormat.class, TextureStoreFormat.GuessCompressedFormat);
        this._minFilter = (Texture.MinificationFilter) inputCapsule.readEnum("minFilter", Texture.MinificationFilter.class, Texture.MinificationFilter.Trilinear);
        this._id = inputCapsule.readString("id", null);
        this._code = Integer.MAX_VALUE;
    }

    public void removeFromIdCache(Object obj) {
        this._idCache.remove(obj);
    }

    public void setClean(Object obj) {
        if (!Constants.useMultipleContexts) {
            this._dirty = false;
            return;
        }
        synchronized (this._dirtyContexts) {
            try {
                if (!this._dirtyContexts.isEmpty()) {
                    Iterator<WeakReference<Object>> it = this._dirtyContexts.iterator();
                    while (it.hasNext()) {
                        Object obj2 = it.next().get();
                        if (obj2 != null && obj2.equals(obj)) {
                            it.remove();
                            return;
                        }
                    }
                }
            } finally {
            }
        }
    }

    public void setDirty() {
        if (!Constants.useMultipleContexts) {
            this._dirty = true;
            return;
        }
        synchronized (this._dirtyContexts) {
            try {
                this._dirtyContexts.clear();
                Iterator<Object> it = this._idCache.getContextObjects().iterator();
                while (it.hasNext()) {
                    this._dirtyContexts.add(new WeakReference<>(it.next()));
                }
            } finally {
            }
        }
    }

    public void setTextureIdForContext(Object obj, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("textureId must != 0");
        }
        this._idCache.put(obj, i10);
    }

    public String toString() {
        return "tkey: src:" + ((Object) this._source) + " flip: " + this._flipped + " code: " + hashCode() + " imageType: " + ((Object) this._format) + " id: " + this._id;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._source, "source", (Savable) null);
        outputCapsule.write(this._flipped, "flipped", false);
        outputCapsule.write(this._format, "format", TextureStoreFormat.GuessCompressedFormat);
        outputCapsule.write(this._minFilter, "minFilter", Texture.MinificationFilter.Trilinear);
        outputCapsule.write(this._id, "id", (String) null);
    }

    public static synchronized TextureKey getKey(ResourceSource resourceSource, boolean z10, TextureStoreFormat textureStoreFormat, String str, Texture.MinificationFilter minificationFilter) {
        synchronized (TextureKey.class) {
            try {
                TextureKey textureKey = new TextureKey();
                textureKey._source = resourceSource;
                textureKey._flipped = z10;
                textureKey._minFilter = minificationFilter;
                textureKey._format = textureStoreFormat;
                textureKey._id = str;
                textureKey._code = Integer.MAX_VALUE;
                Iterator<WeakReference<TextureKey>> it = _keyCache.iterator();
                while (it.hasNext()) {
                    TextureKey textureKey2 = it.next().get();
                    if (textureKey2 == null) {
                        it.remove();
                    } else if (textureKey2.equals(textureKey)) {
                        return textureKey2;
                    }
                }
                _keyCache.add(new WeakReference<>(textureKey));
                return textureKey;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void removeFromIdCache() {
        this._idCache.clear();
    }
}
