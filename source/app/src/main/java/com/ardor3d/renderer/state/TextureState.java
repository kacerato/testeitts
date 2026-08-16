package com.ardor3d.renderer.state;

import com.ardor3d.image.Image;
import com.ardor3d.image.Texture;
import com.ardor3d.image.Texture2D;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.renderer.state.record.TextureStateRecord;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.util.TextureKey;
import com.ardor3d.util.TextureManager;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.ardor3d.util.resource.ResourceSource;
import com.ardor3d.util.resource.URLResourceSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TextureState extends RenderState {
    public static ResourceSource DEFAULT_TEXTURE_SOURCE = null;
    public static final int MAX_TEXTURES = 32;
    private static final Logger logger = Logger.getLogger(TextureState.class.getName());
    protected static Texture _defaultTexture = null;
    protected static boolean defaultTextureLoaded = false;
    protected List<Texture> _texture = new ArrayList(1);
    private CorrectionType _correctionType = CorrectionType.Perspective;
    public transient TextureKey[] _keyCache = new TextureKey[32];

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode;

        static {
            int[] iArr = new int[TextureCombineMode.values().length];
            $SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode = iArr;
            try {
                iArr[TextureCombineMode.CombineClosest.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode[TextureCombineMode.CombineClosestEnabled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode[TextureCombineMode.CombineFirst.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode[TextureCombineMode.Off.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum CorrectionType {
        Affine,
        Perspective
    }

    static {
        try {
            DEFAULT_TEXTURE_SOURCE = new URLResourceSource(ResourceLocatorTool.getClassPathResource(TextureState.class, "com/ardor3d/renderer/state/notloaded.tga"));
        } catch (Exception unused) {
            DEFAULT_TEXTURE_SOURCE = null;
        }
    }

    public TextureState() {
        if (defaultTextureLoaded) {
            return;
        }
        loadDefaultTexture();
    }

    public static Texture getDefaultTexture() {
        if (!defaultTextureLoaded) {
            loadDefaultTexture();
        }
        return _defaultTexture.createSimpleClone();
    }

    public static Image getDefaultTextureImage() {
        Texture texture = _defaultTexture;
        if (texture != null) {
            return texture.getImage();
        }
        return null;
    }

    private static void loadDefaultTexture() {
        synchronized (logger) {
            if (!defaultTextureLoaded) {
                defaultTextureLoaded = true;
                _defaultTexture = new Texture2D();
                try {
                    _defaultTexture = TextureManager.load(DEFAULT_TEXTURE_SOURCE, Texture.MinificationFilter.Trilinear, true);
                } catch (Exception e10) {
                    logger.log(Level.WARNING, "Failed to load default texture: notloaded.tga", (Throwable) e10);
                }
            }
        }
    }

    public void clearTextures() {
        int size = this._texture.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                removeTexture(size);
            }
        }
    }

    @Override
    public StateRecord createStateRecord() {
        return new TextureStateRecord();
    }

    @Override
    public RenderState extract(Stack<? extends RenderState> stack, Spatial spatial) {
        boolean z10;
        if (spatial == null) {
            return stack.peek();
        }
        TextureCombineMode textureCombineMode = spatial.getSceneHints().getTextureCombineMode();
        if (textureCombineMode == TextureCombineMode.Replace || (textureCombineMode != TextureCombineMode.Off && stack.size() == 1)) {
            return stack.peek();
        }
        TextureState textureState = new TextureState();
        Object[] array = stack.toArray();
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$hint$TextureCombineMode[textureCombineMode.ordinal()];
        boolean z11 = false;
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                z10 = false;
                for (Object obj : array) {
                    TextureState textureState2 = (TextureState) obj;
                    if (textureState2.isEnabled()) {
                        for (int i11 = 0; i11 < 32; i11++) {
                            Texture texture = textureState2.getTexture(i11);
                            if (textureState.getTexture(i11) == null) {
                                textureState.setTexture(texture, i11);
                            }
                        }
                        z10 = true;
                    }
                }
            }
            textureState.setEnabled(z11);
            return textureState;
        }
        z10 = false;
        for (int length = array.length - 1; length >= 0; length--) {
            TextureState textureState3 = (TextureState) array[length];
            if (!textureState3.isEnabled()) {
                if (textureCombineMode == TextureCombineMode.CombineClosestEnabled) {
                    break;
                }
            } else {
                int maxTextureIndexUsed = textureState3.getMaxTextureIndexUsed();
                for (int i12 = 0; i12 <= maxTextureIndexUsed; i12++) {
                    Texture texture2 = textureState3.getTexture(i12);
                    if (textureState.getTexture(i12) == null) {
                        textureState.setTexture(texture2, i12);
                    }
                }
                z10 = true;
            }
        }
        z11 = z10;
        textureState.setEnabled(z11);
        return textureState;
    }

    public CorrectionType getCorrectionType() {
        return this._correctionType;
    }

    public int getMaxTextureIndexUsed() {
        int size = this._texture.size() - 1;
        while (size > 0 && this._texture.get(size) == null) {
            size--;
        }
        return size;
    }

    public int getNumberOfSetTextures() {
        int i10 = 0;
        for (int i11 = 0; i11 < this._texture.size(); i11++) {
            if (this._texture.get(i11) != null) {
                i10++;
            }
        }
        return i10;
    }

    public Texture getTexture() {
        if (this._texture.size() > 0) {
            return this._texture.get(0);
        }
        return null;
    }

    public final TextureKey getTextureKey(int i10) {
        TextureKey[] textureKeyArr = this._keyCache;
        if (i10 >= textureKeyArr.length || i10 < 0) {
            return null;
        }
        return textureKeyArr[i10];
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Texture;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._texture = inputCapsule.readSavableList(ResourceLocatorTool.TYPE_TEXTURE, new ArrayList(1));
        this._correctionType = (CorrectionType) inputCapsule.readEnum("correctionType", CorrectionType.class, CorrectionType.Perspective);
    }

    public boolean removeTexture(Texture texture) {
        int indexOf = this._texture.indexOf(texture);
        if (indexOf == -1) {
            return false;
        }
        this._texture.set(indexOf, null);
        this._keyCache[indexOf] = null;
        return true;
    }

    public void setCorrectionType(CorrectionType correctionType) {
        if (correctionType == null) {
            throw new IllegalArgumentException("type can not be null.");
        }
        this._correctionType = correctionType;
        setNeedsRefresh(true);
    }

    public void setTexture(Texture texture) {
        if (this._texture.size() == 0) {
            this._texture.add(texture);
        } else {
            this._texture.set(0, texture);
        }
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.writeSavableList(this._texture, ResourceLocatorTool.TYPE_TEXTURE, new ArrayList(1));
        outputCapsule.write(this._correctionType, "correctionType", CorrectionType.Perspective);
    }

    public Texture getTexture(int i10) {
        if (i10 >= this._texture.size() || i10 < 0) {
            return null;
        }
        return this._texture.get(i10);
    }

    public boolean removeTexture(int i10) {
        if (i10 < 0 || i10 >= 32 || i10 >= this._texture.size() || this._texture.get(i10) == null) {
            return false;
        }
        this._texture.set(i10, null);
        this._keyCache[i10] = null;
        return true;
    }

    public void setTexture(Texture texture, int i10) {
        if (i10 >= 0 && i10 < 32) {
            while (i10 >= this._texture.size()) {
                this._texture.add(null);
            }
            this._texture.set(i10, texture);
        }
        setNeedsRefresh(true);
    }
}
