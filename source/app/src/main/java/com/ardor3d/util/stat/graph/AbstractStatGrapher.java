package com.ardor3d.util.stat.graph;

import com.ardor3d.image.Texture2D;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.renderer.ContextCapabilities;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.TextureRenderer;
import com.ardor3d.renderer.TextureRendererFactory;
import com.ardor3d.util.stat.StatListener;
import com.ardor3d.util.stat.StatType;
import java.util.HashMap;
import java.util.TreeMap;

public abstract class AbstractStatGrapher implements StatListener {
    protected TreeMap<StatType, HashMap<String, Object>> _config = new TreeMap<>();
    protected boolean _enabled = true;
    protected int _gHeight;
    protected int _gWidth;
    protected Texture2D _texture;
    protected TextureRenderer _textureRenderer;

    public AbstractStatGrapher(int i10, int i11, Renderer renderer, ContextCapabilities contextCapabilities) {
        this._gWidth = i10;
        this._gHeight = i11;
        TextureRenderer createTextureRenderer = TextureRendererFactory.INSTANCE.createTextureRenderer(i10, i11, renderer, contextCapabilities);
        this._textureRenderer = createTextureRenderer;
        if (createTextureRenderer != null) {
            createTextureRenderer.setBackgroundColor(new ColorRGBA(ColorRGBA.BLACK));
        }
    }

    public void addConfig(StatType statType, HashMap<String, Object> hashMap) {
        this._config.put(statType, hashMap);
    }

    public void clearConfig() {
        this._config.clear();
    }

    public boolean getBooleanConfig(StatType statType, String str, boolean z10) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        }
        return z10;
    }

    public ColorRGBA getColorConfig(StatType statType, String str, ColorRGBA colorRGBA) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof ColorRGBA) {
                return (ColorRGBA) obj;
            }
        }
        return colorRGBA;
    }

    public double getDoubleConfig(StatType statType, String str, double d10) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).doubleValue();
            }
        }
        return d10;
    }

    public float getFloatConfig(StatType statType, String str, float f10) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).floatValue();
            }
        }
        return f10;
    }

    public int getIntConfig(StatType statType, String str, int i10) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
        }
        return i10;
    }

    public long getLongConfig(StatType statType, String str, long j10) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
        }
        return j10;
    }

    public short getShortConfig(StatType statType, String str, short s10) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).shortValue();
            }
        }
        return s10;
    }

    public String getStringConfig(StatType statType, String str, String str2) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap != null && hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        return str2;
    }

    public TextureRenderer getTextureRenderer() {
        return this._textureRenderer;
    }

    public boolean hasConfig(StatType statType) {
        return this._config.containsKey(statType) && !this._config.get(statType).isEmpty();
    }

    public boolean isEnabled() {
        return this._enabled;
    }

    public abstract void reset();

    public void setEnabled(boolean z10) {
        this._enabled = z10;
    }

    public void setTexture(Texture2D texture2D) {
        this._textureRenderer.setupTexture(texture2D);
        this._texture = texture2D;
    }

    public void addConfig(StatType statType, String str, Object obj) {
        HashMap<String, Object> hashMap = this._config.get(statType);
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this._config.put(statType, hashMap);
        }
        hashMap.put(str, obj);
    }

    public void clearConfig(StatType statType) {
        if (this._config.get(statType) != null) {
            this._config.get(statType).clear();
        }
    }

    public void clearConfig(StatType statType, String str) {
        if (this._config.get(statType) != null) {
            this._config.get(statType).remove(str);
        }
    }
}
