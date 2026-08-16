package com.threed.jpct;

import java.io.Serializable;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;

public class FrameBuffer implements Serializable {
    public static final boolean OPAQUE_BLITTING = false;
    public static final boolean TRANSPARENT_BLITTING = true;
    private static final long serialVersionUID = 1;
    private static long sid;
    static int versionHint;
    transient long displayCycle;
    transient GLRenderer glRend;
    transient boolean hasRenderTarget;
    int height;

    private Long f83612id;
    boolean initialized;
    int length;
    float middleX;
    float middleY;
    private int openGlVersion;
    private transient ArrayList<IPostProcessor> postProcessors;
    transient Texture renderTarget;
    private transient ArrayList<VisListManager> usedBy;
    int virtualHeight;
    int virtualWidth;
    int width;

    public FrameBuffer(GL10 gl10, int i10, int i11) {
        this.glRend = null;
        this.hasRenderTarget = false;
        this.renderTarget = null;
        this.displayCycle = 0L;
        this.usedBy = new ArrayList<>(2);
        this.postProcessors = new ArrayList<>(1);
        this.f83612id = null;
        this.openGlVersion = 0;
        this.initialized = false;
        this.virtualHeight = -1;
        this.virtualWidth = -1;
        this.f83612id = Long.valueOf(sid);
        sid++;
        this.initialized = true;
        this.length = i10 * i11;
        this.width = i10;
        this.height = i11;
        this.middleX = i10 / 2.0f;
        this.middleY = i11 / 2.0f;
        try {
            versionHint = 0;
            this.openGlVersion = 0;
            GLRenderer gLRenderer = new GLRenderer();
            this.glRend = gLRenderer;
            gLRenderer.init(gl10, this.width, this.height);
        } catch (Exception e10) {
            Logger.log(e10, 0);
        }
        if (gl10 != null) {
            this.openGlVersion = 1;
            versionHint = 1;
        } else {
            this.openGlVersion = 2;
            versionHint = 2;
        }
    }

    private void checkListeners() {
        if (this.usedBy == null) {
            this.usedBy = new ArrayList<>(2);
        }
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < this.usedBy.size(); i10++) {
            VisListManager visListManager = this.usedBy.get(i10);
            if (visListManager.isDisposed) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(visListManager);
            }
        }
        if (arrayList != null) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                this.usedBy.remove(arrayList.get(i11));
            }
        }
    }

    private void incCounter() {
        if (this.hasRenderTarget) {
            return;
        }
        this.displayCycle++;
    }

    private void removeListeners() {
        for (int i10 = 0; i10 < this.usedBy.size(); i10++) {
            try {
                this.usedBy.get(i10).remove(this);
            } catch (Exception unused) {
                Logger.log("Couldn't unregister visibility list!", 1);
                return;
            }
        }
    }

    public void addPostProcessor(IPostProcessor iPostProcessor) {
        if (iPostProcessor.isInitialized()) {
            Logger.log("Post processor has already been initialized!", 0);
        } else {
            this.postProcessors.add(iPostProcessor);
        }
    }

    public void blit(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        this.glRend.blitTexture(texture, this, i10, i11, i12, i13, i14, i15, z10);
    }

    public void clear() {
        clear(null);
    }

    public void clearColorBufferOnly(RGBColor rGBColor) {
        this.glRend.clearColorBufferOnly(rGBColor);
    }

    public void clearZBufferOnly() {
        this.glRend.clearZBufferOnly();
    }

    public void display() {
        incCounter();
        this.glRend.swapBuffers();
    }

    public void dispose() {
        checkListeners();
        removeListeners();
        removeAllPostProcessors();
        GLRenderer gLRenderer = this.glRend;
        if (gLRenderer != null) {
            gLRenderer.dispose();
            this.glRend = null;
        }
    }

    public void finalize() {
        checkListeners();
        removeListeners();
    }

    public void flush() {
        this.glRend.flush();
    }

    public void freeMemory() {
        GLRenderer gLRenderer = this.glRend;
        if (gLRenderer != null) {
            gLRenderer.unloadKnownTextures();
        }
    }

    public float getCenterX() {
        return this.middleX;
    }

    public float getCenterY() {
        return this.middleY;
    }

    public int getHeight() {
        return this.height;
    }

    public Long getID() {
        return this.f83612id;
    }

    public int getOpenGLMajorVersion() {
        return this.openGlVersion;
    }

    public int[] getPixels() {
        return getPixels(new int[this.width * this.height]);
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isInitialized() {
        return this.glRend.isInitialized();
    }

    public final void register(VisListManager visListManager) {
        checkListeners();
        if (this.usedBy.contains(visListManager)) {
            return;
        }
        this.usedBy.add(visListManager);
    }

    public void removeAllPostProcessors() {
        for (int i10 = 0; i10 < this.postProcessors.size(); i10++) {
            removePostProcessor(this.postProcessors.get(i10));
        }
    }

    public void removePostProcessor(IPostProcessor iPostProcessor) {
        this.postProcessors.remove(iPostProcessor);
        this.glRend.disposeProcessor(iPostProcessor);
    }

    public void removeRenderTarget() {
        if (this.hasRenderTarget) {
            setRenderTarget((Texture) null);
        }
    }

    public void runPostProcessors() {
        if (this.postProcessors == null) {
            this.postProcessors = new ArrayList<>(1);
        }
        if (this.postProcessors.size() > 0) {
            for (int i10 = 0; i10 < this.postProcessors.size(); i10++) {
                this.glRend.postProcess(this, this.postProcessors.get(i10));
            }
        }
    }

    public void setPaintListener(IPaintListener iPaintListener) {
        this.glRend.setPaintListener(iPaintListener);
    }

    public void setRenderTarget(int i10) {
        if (i10 == -1) {
            setRenderTarget((Texture) null);
        } else {
            setRenderTarget(TextureManager.getInstance().getTextureByID(i10));
        }
    }

    public void setVirtualDimensions(int i10, int i11) {
        this.virtualHeight = i11;
        this.virtualWidth = i10;
    }

    public void sync() {
        this.glRend.sync();
    }

    public void blit(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10, RGBColor rGBColor) {
        int i19;
        int i20;
        int i21;
        if (rGBColor != null) {
            i19 = rGBColor.getRed();
            i20 = rGBColor.getGreen();
            i21 = rGBColor.getBlue();
        } else {
            i19 = 255;
            i20 = 255;
            i21 = 255;
        }
        this.glRend.blitTexture(texture, this, i10, i11, i12, i13, i14, i15, z10, rGBColor != null, i16, i17, i18, i19, i20, i21);
    }

    public void clear(RGBColor rGBColor) {
        this.glRend.clear(rGBColor);
    }

    public int[] getPixels(int[] iArr) {
        if (iArr != null && iArr.length == this.width * this.height) {
            this.glRend.grabScreen(this, iArr);
            return iArr;
        }
        Logger.log("The int[]-array has to have a size of width*height!", 0);
        return null;
    }

    public void setRenderTarget(int i10, int i11, int i12, int i13, int i14, boolean z10) {
        if (i10 == -1) {
            setRenderTarget((Texture) null);
        } else {
            setRenderTarget(TextureManager.getInstance().getTextureByID(i10), i11, i12, i13, i14, z10);
        }
    }

    public void setRenderTarget(Texture texture) {
        setRenderTarget(texture, -1, -1, -1, -1, true);
    }

    public void blit(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10) {
        blit(texture, i10, i11, i12, i13, i14, i15, i16, i17, i18, z10, null);
    }

    public void setRenderTarget(Texture texture, int i10, int i11, int i12, int i13, boolean z10) {
        if (texture != null && ((texture.getWidth() > getWidth() || texture.getHeight() > getHeight()) && (!Config.useFBO || !this.glRend.gl20))) {
            Logger.log("Can't render into a texture larger than the current framebuffer!", 0);
            return;
        }
        if (this.glRend != null) {
            if (texture != null && texture.mipmap) {
                texture.setMipmap(false);
            }
            this.glRend.setRenderTarget(texture, this, i10, i11, i12, i13, z10);
        }
        if (texture == null) {
            this.hasRenderTarget = false;
        } else {
            this.hasRenderTarget = true;
        }
        this.renderTarget = texture;
    }

    public void blit(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        if (i12 >= 0 && i12 < i10 && i13 >= 0 && i13 < i11 && i12 + i16 <= i10 && i13 + i17 <= i11) {
            this.glRend.blitIntArray(iArr, this, i12, i13, i14, i15, i10, i11, z10, i10, i11);
        } else {
            Logger.log("Blitting region out of bounds", 0);
        }
    }

    public FrameBuffer(int i10, int i11) {
        this(null, i10, i11);
    }
}
