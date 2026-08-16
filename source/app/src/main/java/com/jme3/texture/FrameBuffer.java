package com.jme3.texture;

import com.jme3.renderer.Renderer;
import com.jme3.texture.Image;
import com.jme3.texture.TextureCubeMap;
import com.jme3.util.NativeObject;
import java.util.ArrayList;
import java.util.Iterator;

public class FrameBuffer extends NativeObject {
    public static final int SLOT_DEPTH = -100;
    public static final int SLOT_DEPTH_STENCIL = -101;
    public static final int SLOT_UNDEF = -1;
    private int colorBufIndex;
    private final ArrayList<RenderBuffer> colorBufs;
    private RenderBuffer depthBuf;
    private int height;
    private Boolean mipMapsGenerationHint;
    private String name;
    private int samples;
    private boolean srgb;
    private int width;

    public static class FrameBufferBufferTarget extends RenderBuffer {
        public void setFormat(Image.Format format) {
            this.format = format;
        }

        private FrameBufferBufferTarget() {
        }
    }

    public static class FrameBufferTextureTarget extends RenderBuffer {
        public FrameBufferTextureTarget face(TextureCubeMap.Face face) {
            return face(face.ordinal());
        }

        public FrameBufferTextureTarget layer(int i10) {
            this.layer = i10;
            return this;
        }

        public FrameBufferTextureTarget level(int i10) {
            this.level = i10;
            return this;
        }

        public void setFormat(Image.Format format) {
            this.format = format;
        }

        public void setTexture(Texture texture) {
            this.tex = texture;
            this.format = texture.getImage().getFormat();
        }

        private FrameBufferTextureTarget() {
        }

        public FrameBufferTextureTarget face(int i10) {
            this.face = i10;
            return this;
        }
    }

    public static class RenderBuffer {
        Image.Format format;
        Texture tex;

        int f81647id = -1;
        int slot = -1;
        int face = -1;
        int layer = -1;
        int level = 0;

        public RenderBuffer createDestructableClone() {
            if (this.tex != null) {
                return null;
            }
            RenderBuffer renderBuffer = new RenderBuffer();
            renderBuffer.f81647id = this.f81647id;
            return renderBuffer;
        }

        public int getFace() {
            return this.face;
        }

        public Image.Format getFormat() {
            return this.format;
        }

        public int getId() {
            return this.f81647id;
        }

        public int getLayer() {
            return this.layer;
        }

        public int getLevel() {
            return this.level;
        }

        public int getSlot() {
            return this.slot;
        }

        public Texture getTexture() {
            return this.tex;
        }

        public void resetObject() {
            this.f81647id = -1;
        }

        public void setId(int i10) {
            this.f81647id = i10;
        }

        public String toString() {
            if (this.tex != null) {
                return "TextureTarget[format=" + ((Object) this.format) + "]";
            }
            return "BufferTarget[format=" + ((Object) this.format) + "]";
        }
    }

    private FrameBuffer() {
        this.width = 0;
        this.height = 0;
        this.samples = 1;
        this.colorBufs = new ArrayList<>();
        this.depthBuf = null;
        this.colorBufIndex = 0;
        this.mipMapsGenerationHint = null;
    }

    private void checkSetTexture(Texture texture, boolean z10) {
        Image image = texture.getImage();
        if (image == null) {
            throw new IllegalArgumentException("Texture not initialized with RTT.");
        }
        if (z10 && !image.getFormat().isDepthFormat()) {
            throw new IllegalArgumentException("Texture image format must be depth.");
        }
        if (!z10 && image.getFormat().isDepthFormat()) {
            throw new IllegalArgumentException("Texture image format must be color/luminance.");
        }
        if (this.width != image.getWidth() || this.height != image.getHeight()) {
            throw new IllegalArgumentException("Texture image resolution must match FB resolution");
        }
        if (this.samples != texture.getImage().getMultiSamples()) {
            throw new IllegalStateException("Texture samples must match framebuffer samples");
        }
    }

    @Deprecated
    public void addColorBuffer(Image.Format format) {
        if (this.f81661id != -1) {
            throw new UnsupportedOperationException("FrameBuffer already initialized.");
        }
        if (format.isDepthFormat()) {
            throw new IllegalArgumentException("Color buffer format must be color/luminance.");
        }
        RenderBuffer renderBuffer = new RenderBuffer();
        renderBuffer.slot = this.colorBufs.size();
        renderBuffer.format = format;
        this.colorBufs.add(renderBuffer);
    }

    public void addColorTarget(FrameBufferBufferTarget frameBufferBufferTarget) {
        frameBufferBufferTarget.slot = this.colorBufs.size();
        this.colorBufs.add(frameBufferBufferTarget);
    }

    @Deprecated
    public void addColorTexture(Texture2D texture2D) {
        if (this.f81661id == -1) {
            Image image = texture2D.getImage();
            checkSetTexture(texture2D, false);
            RenderBuffer renderBuffer = new RenderBuffer();
            renderBuffer.slot = this.colorBufs.size();
            renderBuffer.tex = texture2D;
            renderBuffer.format = image.getFormat();
            this.colorBufs.add(renderBuffer);
            return;
        }
        throw new UnsupportedOperationException("FrameBuffer already initialized.");
    }

    public void clearColorTargets() {
        this.colorBufs.clear();
    }

    @Override
    public NativeObject createDestructableClone() {
        return new FrameBuffer(this);
    }

    @Override
    public void deleteObject(Object obj) {
        ((Renderer) obj).deleteFrameBuffer(this);
    }

    @Deprecated
    public RenderBuffer getColorBuffer(int i10) {
        return this.colorBufs.get(i10);
    }

    public RenderBuffer getColorTarget(int i10) {
        return this.colorBufs.get(i10);
    }

    @Deprecated
    public RenderBuffer getDepthBuffer() {
        return this.depthBuf;
    }

    public RenderBuffer getDepthTarget() {
        return this.depthBuf;
    }

    public int getHeight() {
        return this.height;
    }

    public Boolean getMipMapsGenerationHint() {
        return this.mipMapsGenerationHint;
    }

    public String getName() {
        return this.name;
    }

    @Deprecated
    public int getNumColorBuffers() {
        return this.colorBufs.size();
    }

    public int getNumColorTargets() {
        return this.colorBufs.size();
    }

    public int getSamples() {
        return this.samples;
    }

    public int getTargetIndex() {
        return this.colorBufIndex;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 12884901888L;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isMultiTarget() {
        return this.colorBufIndex == -1;
    }

    public boolean isSrgb() {
        return this.srgb;
    }

    public void removeColorTarget(int i10) {
        this.colorBufs.remove(i10);
        while (i10 < this.colorBufs.size()) {
            this.colorBufs.get(i10).slot = i10;
            i10++;
        }
    }

    public void replaceColorTarget(int i10, FrameBufferTextureTarget frameBufferTextureTarget) {
        if (i10 >= 0 && i10 < this.colorBufs.size()) {
            frameBufferTextureTarget.slot = i10;
            this.colorBufs.set(i10, frameBufferTextureTarget);
        } else {
            throw new IndexOutOfBoundsException("No color target exists to replace at index=" + i10);
        }
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        for (int i10 = 0; i10 < this.colorBufs.size(); i10++) {
            this.colorBufs.get(i10).resetObject();
        }
        RenderBuffer renderBuffer = this.depthBuf;
        if (renderBuffer != null) {
            renderBuffer.resetObject();
        }
        setUpdateNeeded();
    }

    @Deprecated
    public void setColorBuffer(Image.Format format) {
        if (this.f81661id != -1) {
            throw new UnsupportedOperationException("FrameBuffer already initialized.");
        }
        if (format.isDepthFormat()) {
            throw new IllegalArgumentException("Color buffer format must be color/luminance.");
        }
        RenderBuffer renderBuffer = new RenderBuffer();
        renderBuffer.slot = 0;
        renderBuffer.format = format;
        this.colorBufs.clear();
        this.colorBufs.add(renderBuffer);
    }

    @Deprecated
    public void setColorTexture(Texture2D texture2D) {
        clearColorTargets();
        addColorTexture(texture2D);
    }

    @Deprecated
    public void setDepthBuffer(Image.Format format) {
        if (this.f81661id != -1) {
            throw new UnsupportedOperationException("FrameBuffer already initialized.");
        }
        if (!format.isDepthFormat()) {
            throw new IllegalArgumentException("Depth buffer format must be depth.");
        }
        RenderBuffer renderBuffer = new RenderBuffer();
        this.depthBuf = renderBuffer;
        renderBuffer.slot = format.isDepthStencilFormat() ? SLOT_DEPTH_STENCIL : -100;
        this.depthBuf.format = format;
    }

    public void setDepthTarget(FrameBufferBufferTarget frameBufferBufferTarget) {
        if (frameBufferBufferTarget.getFormat().isDepthFormat()) {
            this.depthBuf = frameBufferBufferTarget;
            frameBufferBufferTarget.slot = frameBufferBufferTarget.getFormat().isDepthStencilFormat() ? SLOT_DEPTH_STENCIL : -100;
            return;
        }
        throw new IllegalArgumentException("Depth buffer format must be depth.");
    }

    @Deprecated
    public void setDepthTexture(Texture2D texture2D) {
        if (this.f81661id == -1) {
            Image image = texture2D.getImage();
            checkSetTexture(texture2D, true);
            RenderBuffer renderBuffer = new RenderBuffer();
            this.depthBuf = renderBuffer;
            renderBuffer.slot = image.getFormat().isDepthStencilFormat() ? SLOT_DEPTH_STENCIL : -100;
            RenderBuffer renderBuffer2 = this.depthBuf;
            renderBuffer2.tex = texture2D;
            renderBuffer2.format = image.getFormat();
            return;
        }
        throw new UnsupportedOperationException("FrameBuffer already initialized.");
    }

    public void setMipMapsGenerationHint(Boolean bool) {
        this.mipMapsGenerationHint = bool;
    }

    public void setMultiTarget(boolean z10) {
        if (z10) {
            this.colorBufIndex = -1;
        } else {
            this.colorBufIndex = 0;
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSrgb(boolean z10) {
        this.srgb = z10;
    }

    public void setTargetIndex(int i10) {
        if (i10 < 0 || i10 >= 16) {
            throw new IllegalArgumentException("Target index must be between 0 and 16");
        }
        if (this.colorBufs.size() >= i10) {
            this.colorBufIndex = i10;
            setUpdateNeeded();
        } else {
            throw new IllegalArgumentException("The target at " + i10 + " is not set!");
        }
    }

    @Override
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (this.colorBufIndex >= 0) {
            str = "" + this.colorBufIndex;
        } else {
            str = "mrt";
        }
        sb2.append("FrameBuffer[format=");
        sb2.append(this.width);
        sb2.append("x");
        sb2.append(this.height);
        sb2.append("x");
        sb2.append(this.samples);
        sb2.append(", drawBuf=");
        sb2.append(str);
        sb2.append("]\n");
        if (this.depthBuf != null) {
            sb2.append("Depth => ");
            sb2.append((Object) this.depthBuf);
            sb2.append("\n");
        }
        Iterator<RenderBuffer> it = this.colorBufs.iterator();
        while (it.hasNext()) {
            RenderBuffer next = it.next();
            sb2.append("Color(");
            sb2.append(next.slot);
            sb2.append(") => ");
            sb2.append((Object) next);
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public static class FrameBufferTarget {
        private FrameBufferTarget() {
        }

        public static FrameBufferTextureTarget newTarget(Texture texture) {
            FrameBufferTextureTarget frameBufferTextureTarget = new FrameBufferTextureTarget();
            frameBufferTextureTarget.setTexture(texture);
            return frameBufferTextureTarget;
        }

        public static FrameBufferBufferTarget newTarget(Image.Format format) {
            FrameBufferBufferTarget frameBufferBufferTarget = new FrameBufferBufferTarget();
            frameBufferBufferTarget.setFormat(format);
            return frameBufferBufferTarget;
        }

        public static FrameBufferTextureTarget newTarget(Texture texture, TextureCubeMap.Face face) {
            FrameBufferTextureTarget frameBufferTextureTarget = new FrameBufferTextureTarget();
            frameBufferTextureTarget.face = face.ordinal();
            frameBufferTextureTarget.setTexture(texture);
            return frameBufferTextureTarget;
        }
    }

    @Deprecated
    public RenderBuffer getColorBuffer() {
        if (this.colorBufs.isEmpty()) {
            return null;
        }
        int i10 = this.colorBufIndex;
        if (i10 >= 0 && i10 < this.colorBufs.size()) {
            return this.colorBufs.get(this.colorBufIndex);
        }
        return this.colorBufs.get(0);
    }

    public RenderBuffer getColorTarget() {
        if (this.colorBufs.isEmpty()) {
            return null;
        }
        int i10 = this.colorBufIndex;
        if (i10 >= 0 && i10 < this.colorBufs.size()) {
            return this.colorBufs.get(this.colorBufIndex);
        }
        return this.colorBufs.get(0);
    }

    public void addColorTarget(FrameBufferTextureTarget frameBufferTextureTarget) {
        frameBufferTextureTarget.slot = this.colorBufs.size();
        this.colorBufs.add(frameBufferTextureTarget);
    }

    @Deprecated
    public void setColorTexture(TextureArray textureArray, int i10) {
        clearColorTargets();
        addColorTexture(textureArray, i10);
    }

    public void addColorTarget(FrameBufferTextureTarget frameBufferTextureTarget, TextureCubeMap.Face face) {
        frameBufferTextureTarget.slot = this.colorBufs.size();
        frameBufferTextureTarget.face = face.ordinal();
        this.colorBufs.add(frameBufferTextureTarget);
    }

    @Deprecated
    public void setColorTexture(TextureCubeMap textureCubeMap, TextureCubeMap.Face face) {
        clearColorTargets();
        addColorTexture(textureCubeMap, face);
    }

    public void setDepthTarget(FrameBufferTextureTarget frameBufferTextureTarget) {
        checkSetTexture(frameBufferTextureTarget.getTexture(), true);
        this.depthBuf = frameBufferTextureTarget;
        frameBufferTextureTarget.slot = frameBufferTextureTarget.getTexture().getImage().getFormat().isDepthStencilFormat() ? SLOT_DEPTH_STENCIL : -100;
    }

    public FrameBuffer(int i10, int i11, int i12) {
        this.width = 0;
        this.height = 0;
        this.samples = 1;
        this.colorBufs = new ArrayList<>();
        this.depthBuf = null;
        this.colorBufIndex = 0;
        this.mipMapsGenerationHint = null;
        if (i10 > 0 && i11 > 0) {
            this.width = i10;
            this.height = i11;
            this.samples = i12 == 0 ? 1 : i12;
            return;
        }
        throw new IllegalArgumentException("FrameBuffer must have valid size.");
    }

    @Deprecated
    public void setDepthTexture(TextureArray textureArray, int i10) {
        if (this.f81661id == -1) {
            Image image = textureArray.getImage();
            checkSetTexture(textureArray, true);
            RenderBuffer renderBuffer = new RenderBuffer();
            this.depthBuf = renderBuffer;
            renderBuffer.slot = image.getFormat().isDepthStencilFormat() ? SLOT_DEPTH_STENCIL : -100;
            RenderBuffer renderBuffer2 = this.depthBuf;
            renderBuffer2.tex = textureArray;
            renderBuffer2.format = image.getFormat();
            this.depthBuf.layer = i10;
            return;
        }
        throw new UnsupportedOperationException("FrameBuffer already initialized.");
    }

    @Deprecated
    public void addColorTexture(TextureArray textureArray, int i10) {
        if (this.f81661id == -1) {
            Image image = textureArray.getImage();
            checkSetTexture(textureArray, false);
            RenderBuffer renderBuffer = new RenderBuffer();
            renderBuffer.slot = this.colorBufs.size();
            renderBuffer.tex = textureArray;
            renderBuffer.format = image.getFormat();
            renderBuffer.layer = i10;
            this.colorBufs.add(renderBuffer);
            return;
        }
        throw new UnsupportedOperationException("FrameBuffer already initialized.");
    }

    @Deprecated
    public void addColorTexture(TextureCubeMap textureCubeMap, TextureCubeMap.Face face) {
        if (this.f81661id == -1) {
            Image image = textureCubeMap.getImage();
            checkSetTexture(textureCubeMap, false);
            RenderBuffer renderBuffer = new RenderBuffer();
            renderBuffer.slot = this.colorBufs.size();
            renderBuffer.tex = textureCubeMap;
            renderBuffer.format = image.getFormat();
            renderBuffer.face = face.ordinal();
            this.colorBufs.add(renderBuffer);
            return;
        }
        throw new UnsupportedOperationException("FrameBuffer already initialized.");
    }

    public FrameBuffer(FrameBuffer frameBuffer) {
        super(frameBuffer.f81661id);
        this.width = 0;
        this.height = 0;
        this.samples = 1;
        this.colorBufs = new ArrayList<>();
        this.depthBuf = null;
        this.colorBufIndex = 0;
        this.mipMapsGenerationHint = null;
    }
}
