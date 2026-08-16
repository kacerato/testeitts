package com.threed.jpct;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.Spanned;
import com.threed.jpct.util.BitmapHelper;
import java.io.InputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;

public class Texture implements Serializable {
    public static final int DEFAULT_HEIGHT = 16;
    public static final int DEFAULT_WIDTH = 16;
    private static final long serialVersionUID = 1;
    boolean alpha;
    boolean bilinear;
    boolean convertTo4444;
    private DepthBuffer depthBuffer;
    boolean enabled;
    boolean etc1;
    transient int fbo;
    private HashMap<Integer, Integer> glIDs;
    int height;
    private boolean isConverted;
    private boolean isLoaded;
    boolean isShadowMap;
    boolean isUnicolor;
    private boolean keepPixels;
    transient int lastHandlerId;
    private int lastRenderer;
    private int lastRendererMarker;
    private HashSet<Integer> marker;
    private int markerGL;
    boolean mipmap;
    transient ITextureEffect myEffect;
    boolean nPot;
    private int openGLID;
    transient int renderBuffer;
    boolean repeat;
    private int[] storeTexels;
    int[] texels;
    int width;
    byte[] zippedTexels;
    private static final int[] TEXTURE_SIZES = {8, 16, 32, 64, 128, 256, 512, 1024, 2048};
    private static boolean defaultTo4bpp = false;
    private static boolean defaultToMipmapping = false;
    private static boolean defaultToKeepPixels = true;
    static int MARKER_NOTHING = 0;
    static int MARKER_DELETE_AND_UPLOAD = 1;

    public Texture() {
        this.zippedTexels = null;
        this.alpha = false;
        this.isUnicolor = false;
        this.repeat = true;
        this.bilinear = true;
        this.mipmap = true;
        this.enabled = true;
        this.convertTo4444 = false;
        this.etc1 = false;
        this.isShadowMap = false;
        this.myEffect = null;
        this.fbo = -1;
        this.renderBuffer = -1;
        this.lastHandlerId = -1;
        this.nPot = false;
        this.storeTexels = null;
        this.isConverted = false;
        this.openGLID = 0;
        this.markerGL = 0;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.keepPixels = true;
        this.glIDs = new HashMap<>();
        this.marker = new HashSet<>();
        this.depthBuffer = null;
        this.width = 16;
        this.height = 16;
        this.isLoaded = true;
        int i10 = 16 * 16;
        this.texels = new int[i10];
        this.isConverted = false;
        resetIDs();
        for (int i11 = 0; i11 < i10; i11++) {
            this.texels[i11] = -1;
        }
        this.convertTo4444 = defaultTo4bpp;
        setMipmap(defaultToMipmapping);
        this.keepPixels = defaultToKeepPixels;
    }

    private static int adjustSize(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = TEXTURE_SIZES;
            if (i11 >= iArr.length) {
                return i10;
            }
            int i12 = iArr[i11];
            if (i10 <= i12) {
                return i12;
            }
            i11++;
        }
    }

    private int clip(int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 > 255) {
            return 255;
        }
        return i10;
    }

    private static int[] createIntArray(int i10, int i11, RGBColor rGBColor, boolean z10) {
        if (rGBColor == null) {
            return null;
        }
        if (!z10) {
            i10 = adjustSize(i10);
            i11 = adjustSize(i11);
        }
        int i12 = i10 * i11;
        int[] iArr = new int[i12];
        int blue = rGBColor.getBlue() | (rGBColor.getAlpha() << 24) | (rGBColor.getRed() << 16) | (rGBColor.getGreen() << 8);
        if (blue != 0) {
            for (int i13 = 0; i13 < i12; i13++) {
                iArr[i13] = blue;
            }
        }
        if (Logger.isDebugEnabled()) {
            Logger.log("Created a " + i10 + "*" + i11 + " texture using " + (i12 * 4) + " bytes!", 3);
        }
        return iArr;
    }

    public static Texture createSingleColoredTexture(RGBColor rGBColor) {
        int[] iArr = new int[256];
        int blue = rGBColor.getBlue() | (rGBColor.getRed() << 16) | (rGBColor.getGreen() << 8);
        for (int i10 = 0; i10 < 256; i10++) {
            iArr[i10] = blue;
        }
        Texture texture = new Texture(iArr, 16, 16, false);
        texture.isUnicolor = true;
        return texture;
    }

    public static void defaultTo4bpp(boolean z10) {
        defaultTo4bpp = z10;
    }

    public static void defaultToKeepPixels(boolean z10) {
        defaultToKeepPixels = z10;
    }

    public static void defaultToMipmapping(boolean z10) {
        defaultToMipmapping = z10;
    }

    private void loadTexture(InputStream inputStream, Bitmap bitmap) {
        loadTexture(inputStream, bitmap, false);
    }

    private void resetIDs() {
        this.openGLID = 0;
        this.markerGL = -999;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.glIDs.clear();
        this.marker.clear();
    }

    private final void setMarker(int i10) {
        setMarker(-1, i10);
    }

    public void add(Texture texture, float f10) {
        if (texture.texels == null || this.texels == null) {
            Logger.log("Textures contains no texel data!", 0);
            return;
        }
        if (texture.getArraySize() != getArraySize()) {
            Logger.log("Texture sizes don't match", 0);
            return;
        }
        int[] iArr = texture.texels;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int i11 = iArr[i10];
            int i12 = this.texels[i10];
            this.texels[i10] = clip((i12 & 255) + ((int) ((i11 & 255) * f10))) | (clip((i12 >> 24) + ((int) ((i11 >> 24) * f10))) << 24) | (clip(((i12 & Spanned.SPAN_PRIORITY) >> 16) + ((int) (((16711680 & i11) >> 16) * f10))) << 16) | (clip(((i12 & 65280) >> 8) + ((int) (((65280 & i11) >> 8) * f10))) << 8);
        }
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public void applyEffect() {
        ITextureEffect iTextureEffect = this.myEffect;
        if (iTextureEffect == null) {
            Logger.log("The texture doesn't have an effect assigned to it!", 0);
            return;
        }
        iTextureEffect.apply(this.texels, this.storeTexels);
        if (this.myEffect.containsAlpha() && !this.alpha) {
            this.alpha = true;
        }
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public final void clearIDs(int i10) {
        this.openGLID = 0;
        this.markerGL = -999;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.glIDs.remove(IntegerC.valueOf(i10));
        this.marker.remove(IntegerC.valueOf(i10));
    }

    public void compress() {
        int[] iArr;
        if (this.zippedTexels == null && this.myEffect == null && (iArr = this.texels) != null) {
            this.zippedTexels = ZipHelper.zip(iArr);
            float length = r0.length / (this.texels.length * 4);
            if (length <= 0.95f) {
                Logger.log("Texture compressed to " + ((int) (length * 100.0f)) + "% (" + this.zippedTexels.length + "/" + (this.texels.length * 4) + ") of uncompressed size!", 3);
                this.texels = null;
                return;
            }
            Logger.log("Texture not compressed, because compressed size was " + ((int) (length * 100.0f)) + "% (" + this.zippedTexels.length + "/" + (this.texels.length * 4) + ") of uncompressed size!", 3);
            this.zippedTexels = null;
        }
    }

    public void enable4bpp(boolean z10) {
        this.convertTo4444 = z10;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public void enableClamping() {
        this.repeat = false;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public int getArraySize() {
        int[] iArr = this.texels;
        if (iArr == null) {
            return 0;
        }
        return iArr.length;
    }

    public DepthBuffer getDepthBuffer() {
        return this.depthBuffer;
    }

    public int getHeight() {
        return this.height;
    }

    public final int getMarker(int i10) {
        if (this.markerGL == -999 || this.lastRendererMarker != i10) {
            this.lastRendererMarker = i10;
            if (this.marker.contains(IntegerC.valueOf(i10))) {
                this.markerGL = MARKER_NOTHING;
            } else {
                this.markerGL = MARKER_DELETE_AND_UPLOAD;
            }
        }
        return this.markerGL;
    }

    public final int getOpenGLID(int i10) {
        if (!this.isConverted) {
            return 0;
        }
        if (i10 == this.lastRenderer) {
            return this.openGLID;
        }
        Integer num = this.glIDs.get(IntegerC.valueOf(i10));
        if (num == null) {
            return 0;
        }
        int intValue = num.intValue();
        this.openGLID = intValue;
        this.lastRenderer = i10;
        return intValue;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void keepPixelData(boolean z10) {
        this.keepPixels = z10;
    }

    public final void refill(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.width * i12;
            int i14 = i10 * i12;
            for (int i15 = 0; i15 < i10; i15++) {
                this.texels[i13 + i15] = iArr[i14 + i15];
            }
        }
        this.isConverted = false;
    }

    public void removeAlpha() {
        this.alpha = true;
        int i10 = 0;
        while (true) {
            int[] iArr = this.texels;
            if (i10 >= iArr.length) {
                setMarker(MARKER_DELETE_AND_UPLOAD);
                return;
            } else {
                iArr[i10] = iArr[i10] | (-16777216);
                i10++;
            }
        }
    }

    public void removeEffect() {
        this.myEffect = null;
        this.storeTexels = null;
    }

    public void setAsShadowMap(boolean z10) {
        this.isShadowMap = z10;
        setMipmap(false);
        this.convertTo4444 = false;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public void setClamping(boolean z10) {
        this.repeat = !z10;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public void setDepthBuffer(DepthBuffer depthBuffer) {
        if (depthBuffer != null && (depthBuffer.getWidth() != getWidth() || depthBuffer.getHeight() != getHeight())) {
            Logger.log("Size of depth buffer doesn't match texture size!", 0);
        } else {
            this.depthBuffer = depthBuffer;
            setMarker(MARKER_DELETE_AND_UPLOAD);
        }
    }

    public void setEffect(ITextureEffect iTextureEffect) {
        if (this.storeTexels == null) {
            int[] iArr = this.texels;
            if (iArr == null) {
                Logger.log("Can't set a texture effect for a compressed texture!", 0);
                return;
            } else {
                int[] iArr2 = new int[iArr.length];
                this.storeTexels = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            }
        }
        this.myEffect = iTextureEffect;
        iTextureEffect.init(this);
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setFiltering(boolean z10) {
        this.bilinear = z10;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public void setMipmap(boolean z10) {
        this.mipmap = z10;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    public final void setOpenGLID(int i10, int i11) {
        this.openGLID = i11;
        if (i11 == 0) {
            resetIDs();
            return;
        }
        this.lastRenderer = i10;
        this.glIDs.put(IntegerC.valueOf(i10), IntegerC.valueOf(i11));
        this.isConverted = true;
        if (this.myEffect != null || this.keepPixels) {
            return;
        }
        this.texels = null;
        this.zippedTexels = null;
    }

    public void setTextureCompression(boolean z10) {
        this.etc1 = z10;
        setMarker(MARKER_DELETE_AND_UPLOAD);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void loadTexture(InputStream inputStream, Bitmap bitmap, boolean z10) {
        Bitmap loadImage;
        boolean z11;
        boolean z12;
        int i10 = 0;
        this.isLoaded = false;
        Logger.log("Loading Texture...", 2);
        if (bitmap == null) {
            try {
                loadImage = BitmapHelper.loadImage(inputStream);
                z11 = true;
            } catch (Exception e10) {
                e = e10;
                Logger.log(e, i10);
                if (this.isLoaded) {
                }
            }
        } else {
            loadImage = bitmap;
            z11 = false;
        }
        if (loadImage != null) {
            try {
            } catch (Exception e11) {
                e = e11;
                i10 = 0;
                Logger.log(e, i10);
                if (this.isLoaded) {
                }
            }
            if (loadImage.getWidth() > 0) {
                int height = loadImage.getHeight();
                int width = loadImage.getWidth();
                this.width = width;
                this.height = height;
                if (width == 8 || width == 16 || width == 32 || width == 64 || width == 128 || width == 256 || width == 512 || width == 1024 || width == 2048 || width == 4096 || width == 8192) {
                    z12 = false;
                } else {
                    Logger.log("Unsupported Texture width: " + width, 0);
                    z12 = true;
                }
                if (height != 8 && height != 16 && height != 32 && height != 64 && height != 128 && height != 256 && height != 512 && height != 1024 && height != 2048 && height != 4096 && height != 8192) {
                    Logger.log("Unsupported Texture height: " + height, 0);
                    z12 = true;
                }
                if (z12) {
                    this.width = 16;
                    this.height = 16;
                    loadImage = Bitmap.createBitmap(16, 16, Bitmap.Config.ARGB_8888);
                }
                this.texels = new int[this.width * this.height];
                Logger.log("Texture loaded..." + (this.texels.length * 4) + " bytes/" + width + "*" + height + " pixels!", 2);
                int[] iArr = this.texels;
                int i11 = this.width;
                loadImage.getPixels(iArr, 0, i11, 0, 0, i11, this.height);
                if (z11) {
                    loadImage.recycle();
                }
                this.isLoaded = true;
                this.convertTo4444 = defaultTo4bpp;
                setMipmap(defaultToMipmapping);
                this.keepPixels = defaultToKeepPixels;
                if (this.isLoaded) {
                    return;
                }
                this.alpha = z10;
                return;
            }
        }
        Logger.log("File not found - replacement texture used instead!", 0);
        this.texels = new int[8];
        this.isLoaded = true;
        this.width = 2;
        this.height = 2;
        this.convertTo4444 = defaultTo4bpp;
        setMipmap(defaultToMipmapping);
        this.keepPixels = defaultToKeepPixels;
        if (this.isLoaded) {
        }
    }

    public final void setMarker(int i10, int i11) {
        if (i11 == MARKER_NOTHING) {
            this.marker.add(IntegerC.valueOf(i10));
            this.markerGL = MARKER_NOTHING;
            this.lastRendererMarker = i10;
        } else if (i11 == MARKER_DELETE_AND_UPLOAD) {
            this.marker.clear();
            this.markerGL = -999;
            this.lastRendererMarker = -1;
        }
    }

    public Texture(InputStream inputStream) {
        this.zippedTexels = null;
        this.alpha = false;
        this.isUnicolor = false;
        this.repeat = true;
        this.bilinear = true;
        this.mipmap = true;
        this.enabled = true;
        this.convertTo4444 = false;
        this.etc1 = false;
        this.isShadowMap = false;
        this.myEffect = null;
        this.fbo = -1;
        this.renderBuffer = -1;
        this.lastHandlerId = -1;
        this.nPot = false;
        this.storeTexels = null;
        this.isConverted = false;
        this.openGLID = 0;
        this.markerGL = 0;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.keepPixels = true;
        this.glIDs = new HashMap<>();
        this.marker = new HashSet<>();
        this.depthBuffer = null;
        loadTexture(inputStream, null);
        this.isConverted = false;
    }

    public Texture(InputStream inputStream, boolean z10) {
        this.zippedTexels = null;
        this.alpha = false;
        this.isUnicolor = false;
        this.repeat = true;
        this.bilinear = true;
        this.mipmap = true;
        this.enabled = true;
        this.convertTo4444 = false;
        this.etc1 = false;
        this.isShadowMap = false;
        this.myEffect = null;
        this.fbo = -1;
        this.renderBuffer = -1;
        this.lastHandlerId = -1;
        this.nPot = false;
        this.storeTexels = null;
        this.isConverted = false;
        this.openGLID = 0;
        this.markerGL = 0;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.keepPixels = true;
        this.glIDs = new HashMap<>();
        this.marker = new HashSet<>();
        this.depthBuffer = null;
        loadTexture(inputStream, null, z10);
        this.isConverted = false;
    }

    public Texture(Bitmap bitmap) {
        this.zippedTexels = null;
        this.alpha = false;
        this.isUnicolor = false;
        this.repeat = true;
        this.bilinear = true;
        this.mipmap = true;
        this.enabled = true;
        this.convertTo4444 = false;
        this.etc1 = false;
        this.isShadowMap = false;
        this.myEffect = null;
        this.fbo = -1;
        this.renderBuffer = -1;
        this.lastHandlerId = -1;
        this.nPot = false;
        this.storeTexels = null;
        this.isConverted = false;
        this.openGLID = 0;
        this.markerGL = 0;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.keepPixels = true;
        this.glIDs = new HashMap<>();
        this.marker = new HashSet<>();
        this.depthBuffer = null;
        loadTexture(null, bitmap);
        this.isConverted = false;
    }

    public Texture(Bitmap bitmap, boolean z10) {
        this.zippedTexels = null;
        this.alpha = false;
        this.isUnicolor = false;
        this.repeat = true;
        this.bilinear = true;
        this.mipmap = true;
        this.enabled = true;
        this.convertTo4444 = false;
        this.etc1 = false;
        this.isShadowMap = false;
        this.myEffect = null;
        this.fbo = -1;
        this.renderBuffer = -1;
        this.lastHandlerId = -1;
        this.nPot = false;
        this.storeTexels = null;
        this.isConverted = false;
        this.openGLID = 0;
        this.markerGL = 0;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.keepPixels = true;
        this.glIDs = new HashMap<>();
        this.marker = new HashSet<>();
        this.depthBuffer = null;
        loadTexture(null, bitmap, z10);
        this.isConverted = false;
    }

    public Texture(Drawable drawable) {
        this(BitmapHelper.convert(drawable));
    }

    public Texture(Drawable drawable, boolean z10) {
        this(BitmapHelper.convert(drawable), z10);
    }

    public Texture(int i10, int i11) {
        this(i10, i11, RGBColor.BLACK);
    }

    public Texture(int i10, int i11, int i12) {
        this(i10, i11, RGBColor.BLACK);
        int length = this.texels.length;
        this.alpha = true;
        int i13 = (i12 & 255) << 24;
        for (int i14 = 0; i14 < length; i14++) {
            int[] iArr = this.texels;
            iArr[i14] = iArr[i14] | i13;
        }
    }

    public Texture(int i10, int i11, RGBColor rGBColor) {
        this(createIntArray(i10, i11, rGBColor, false), adjustSize(i10), adjustSize(i11), false);
        if (rGBColor == null || rGBColor.getAlpha() == 0) {
            return;
        }
        this.alpha = true;
    }

    public Texture(int i10, int i11, RGBColor rGBColor, boolean z10) {
        this(createIntArray(i10, i11, rGBColor, z10), i10, i11, false);
        if (rGBColor == null || rGBColor.getAlpha() == 0) {
            return;
        }
        this.alpha = true;
    }

    public Texture(int[] iArr, int i10, int i11, boolean z10) {
        this.zippedTexels = null;
        this.alpha = false;
        this.isUnicolor = false;
        this.repeat = true;
        this.bilinear = true;
        this.mipmap = true;
        this.enabled = true;
        this.convertTo4444 = false;
        this.etc1 = false;
        this.isShadowMap = false;
        this.myEffect = null;
        this.fbo = -1;
        this.renderBuffer = -1;
        this.lastHandlerId = -1;
        this.nPot = false;
        this.storeTexels = null;
        this.isConverted = false;
        this.openGLID = 0;
        this.markerGL = 0;
        this.lastRenderer = -1;
        this.lastRendererMarker = -1;
        this.keepPixels = true;
        this.glIDs = new HashMap<>();
        this.marker = new HashSet<>();
        this.depthBuffer = null;
        if (!z10) {
            this.width = i10;
            this.height = i11;
            this.texels = iArr;
        } else if (i10 <= 2048 && i11 <= 2048) {
            this.width = adjustSize(i10);
            int adjustSize = adjustSize(i11);
            this.height = adjustSize;
            this.texels = new int[this.width * adjustSize];
            refill(iArr, i10, i11);
        } else {
            Logger.log("Unsupported bitmap size for blitting!", 0);
        }
        this.isLoaded = true;
        this.convertTo4444 = defaultTo4bpp;
        setMipmap(defaultToMipmapping);
        resetIDs();
    }
}
