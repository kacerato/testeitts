package com.jme3.texture;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.renderer.Renderer;
import com.jme3.texture.image.ColorSpace;
import com.jme3.texture.image.LastTextureState;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObject;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class Image extends NativeObject implements Savable {
    protected ColorSpace colorSpace;
    protected ArrayList<ByteBuffer> data;
    protected int depth;
    protected Format format;
    protected int height;
    protected LastTextureState lastTextureState;
    protected int[] mipMapSizes;
    protected boolean mipsWereGenerated;
    protected int multiSamples;
    protected boolean needGeneratedMips;
    protected int width;

    public Image() {
        this.multiSamples = 1;
        this.colorSpace = null;
        this.mipsWereGenerated = false;
        this.needGeneratedMips = false;
        this.lastTextureState = new LastTextureState();
        this.data = new ArrayList<>(1);
    }

    public void addData(ByteBuffer byteBuffer) {
        if (this.data == null) {
            this.data = new ArrayList<>(1);
        }
        this.data.add(byteBuffer);
        setUpdateNeeded();
    }

    @Override
    public NativeObject createDestructableClone() {
        return new Image(this.f81661id);
    }

    @Override
    public void deleteNativeBuffers() {
        Iterator<ByteBuffer> it = this.data.iterator();
        while (it.hasNext()) {
            BufferUtils.destroyDirectBuffer(it.next());
        }
    }

    @Override
    public void deleteObject(Object obj) {
        ((Renderer) obj).deleteImage(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Image)) {
            return false;
        }
        Image image = (Image) obj;
        if (getFormat() != image.getFormat() || getWidth() != image.getWidth() || getHeight() != image.getHeight()) {
            return false;
        }
        if (getData() != null && !getData().equals(image.getData())) {
            return false;
        }
        if (getData() == null && image.getData() != null) {
            return false;
        }
        if (getMipMapSizes() == null || Arrays.equals(getMipMapSizes(), image.getMipMapSizes())) {
            return (getMipMapSizes() != null || image.getMipMapSizes() == null) && getMultiSamples() == image.getMultiSamples();
        }
        return false;
    }

    public ColorSpace getColorSpace() {
        return this.colorSpace;
    }

    public List<ByteBuffer> getData() {
        return this.data;
    }

    public int getDepth() {
        return this.depth;
    }

    @Deprecated
    public Object getEfficentData() {
        return null;
    }

    public Format getFormat() {
        return this.format;
    }

    public int getHeight() {
        return this.height;
    }

    public LastTextureState getLastTextureState() {
        return this.lastTextureState;
    }

    public int[] getMipMapSizes() {
        return this.mipMapSizes;
    }

    public int getMultiSamples() {
        return this.multiSamples;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 8589934592L;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean hasMipmaps() {
        return this.mipMapSizes != null;
    }

    public int hashCode() {
        Format format = this.format;
        int hashCode = (((((((((679 + (format != null ? format.hashCode() : 0)) * 97) + this.width) * 97) + this.height) * 97) + this.depth) * 97) + Arrays.hashCode(this.mipMapSizes)) * 97;
        ArrayList<ByteBuffer> arrayList = this.data;
        return ((hashCode + (arrayList != null ? arrayList.hashCode() : 0)) * 97) + this.multiSamples;
    }

    public boolean isGeneratedMipmapsRequired() {
        return this.needGeneratedMips;
    }

    public boolean isMipmapsGenerated() {
        return this.mipsWereGenerated;
    }

    public boolean isNPOT() {
        int i10 = this.width;
        return (i10 == 0 || this.height == 0 || (FastMath.isPowerOfTwo(i10) && FastMath.isPowerOfTwo(this.height))) ? false : true;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.format = (Format) capsule.readEnum("format", Format.class, Format.RGBA8);
        this.width = capsule.readInt("width", 0);
        this.height = capsule.readInt("height", 0);
        this.depth = capsule.readInt("depth", 0);
        this.mipMapSizes = capsule.readIntArray("mipMapSizes", null);
        this.multiSamples = capsule.readInt("multiSamples", 1);
        this.data = capsule.readByteBufferArrayList("data", null);
        this.colorSpace = (ColorSpace) capsule.readEnum("colorSpace", ColorSpace.class, null);
        if (this.mipMapSizes != null) {
            this.needGeneratedMips = false;
            this.mipsWereGenerated = true;
        }
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        this.mipsWereGenerated = false;
        this.lastTextureState.reset();
        setUpdateNeeded();
    }

    public void setColorSpace(ColorSpace colorSpace) {
        this.colorSpace = colorSpace;
    }

    public void setData(ArrayList<ByteBuffer> arrayList) {
        this.data = arrayList;
        setUpdateNeeded();
    }

    public void setDepth(int i10) {
        this.depth = i10;
        setUpdateNeeded();
    }

    public void setFormat(Format format) {
        if (format == null) {
            throw new IllegalArgumentException("format may not be null.");
        }
        this.format = format;
        setUpdateNeeded();
    }

    public void setHeight(int i10) {
        this.height = i10;
        setUpdateNeeded();
    }

    public void setMipMapSizes(int[] iArr) {
        if (iArr != null && iArr.length <= 1) {
            iArr = null;
        }
        this.mipMapSizes = iArr;
        if (iArr != null) {
            this.needGeneratedMips = false;
            this.mipsWereGenerated = false;
        } else {
            this.needGeneratedMips = true;
            this.mipsWereGenerated = false;
        }
        setUpdateNeeded();
    }

    public void setMipmapsGenerated(boolean z10) {
        this.mipsWereGenerated = z10;
    }

    public void setMultiSamples(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("multiSamples must be > 0");
        }
        if (i10 > 1) {
            if (getData(0) != null) {
                throw new IllegalArgumentException("Cannot upload data as multisample texture");
            }
            if (hasMipmaps()) {
                throw new IllegalArgumentException("Multisample textures do not support mipmaps");
            }
        }
        this.multiSamples = i10;
    }

    public void setNeedGeneratedMipmaps() {
        this.needGeneratedMips = true;
    }

    @Override
    public void setUpdateNeeded() {
        super.setUpdateNeeded();
        if (!isGeneratedMipmapsRequired() || hasMipmaps()) {
            return;
        }
        setMipmapsGenerated(false);
    }

    public void setWidth(int i10) {
        this.width = i10;
        setUpdateNeeded();
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("[size=");
        sb2.append(this.width);
        sb2.append("x");
        sb2.append(this.height);
        if (this.depth > 1) {
            sb2.append("x");
            sb2.append(this.depth);
        }
        sb2.append(", format=");
        sb2.append(this.format.name());
        if (hasMipmaps()) {
            sb2.append(", mips");
        }
        if (getId() >= 0) {
            sb2.append(", id=");
            sb2.append(this.f81661id);
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.format, "format", Format.RGBA8);
        capsule.write(this.width, "width", 0);
        capsule.write(this.height, "height", 0);
        capsule.write(this.depth, "depth", 0);
        capsule.write(this.mipMapSizes, "mipMapSizes", (int[]) null);
        capsule.write(this.multiSamples, "multiSamples", 1);
        capsule.writeByteBufferArrayList(this.data, "data", null);
        capsule.write(this.colorSpace, "colorSpace", (Enum) null);
    }

    public enum Format {
        Alpha8(8),
        Reserved1(0),
        Luminance8(8),
        Reserved2(0),
        Luminance16F(16, true),
        Luminance32F(32, true),
        Luminance8Alpha8(16),
        Reserved3(0),
        Luminance16FAlpha16F(32, true),
        Reserved4(0),
        Reserved5(0),
        BGR8(24),
        RGB8(24),
        Reserved6(0),
        Reserved7(0),
        RGB565(16),
        Reserved8(0),
        RGB5A1(16),
        RGBA8(32),
        ABGR8(32),
        ARGB8(32),
        BGRA8(32),
        Reserved9(0),
        DXT1(4, false, true, false),
        DXT1A(4, false, true, false),
        DXT3(8, false, true, false),
        DXT5(8, false, true, false),
        RGTC2(8, false, true, false),
        SIGNED_RGTC2(8, false, true, false),
        RGTC1(4, false, true, false),
        SIGNED_RGTC1(4, false, true, false),
        BC6H_SF16(8, false, true, true),
        BC6H_UF16(8, false, true, true),
        BC7_UNORM(8, false, true, false),
        BC7_UNORM_SRGB(8, false, true, false),
        Reserved10(0),
        Depth(0, true, false, false),
        Depth16(16, true, false, false),
        Depth24(24, true, false, false),
        Depth32(32, true, false, false),
        Depth32F(32, true, false, true),
        RGB16F_to_RGB111110F(48, true),
        RGB111110F(32, true),
        RGB16F_to_RGB9E5(48, true),
        RGB9E5(32, true),
        RGB16F(48, true),
        RGBA16F(64, true),
        RGB32F(96, true),
        RGBA32F(128, true),
        Reserved11(0),
        Depth24Stencil8(32, true, false, false),
        Reserved12(0),
        ETC1(4, false, true, false),
        ETC2(8, false, true, false),
        ETC2_ALPHA1(4, false, true, false),
        R8I(8),
        R8UI(8),
        R16I(16),
        R16UI(16),
        R32I(32),
        R32UI(32),
        RG8I(16),
        RG8UI(16),
        RG16I(32),
        RG16UI(32),
        RG32I(64),
        RG32UI(64),
        RGB8I(24),
        RGB8UI(24),
        RGB16I(48),
        RGB16UI(48),
        RGB32I(96),
        RGB32UI(96),
        RGBA8I(32),
        RGBA8UI(32),
        RGBA16I(64),
        RGBA16UI(64),
        RGBA32I(128),
        RGBA32UI(128),
        R16F(16, true),
        R32F(32, true),
        RG16F(32, true),
        RG32F(64, true),
        RGB10A2(32);

        private int bpp;
        private boolean isCompressed;
        private boolean isDepth;
        private boolean isFloatingPoint;

        Format(int i10) {
            this.bpp = i10;
        }

        public int getBitsPerPixel() {
            return this.bpp;
        }

        public boolean isCompressed() {
            return this.isCompressed;
        }

        public boolean isDepthFormat() {
            return this.isDepth;
        }

        public boolean isDepthStencilFormat() {
            return this == Depth24Stencil8;
        }

        public boolean isFloatingPont() {
            return this.isFloatingPoint;
        }

        Format(int i10, boolean z10) {
            this(i10);
            this.isFloatingPoint = z10;
        }

        Format(int i10, boolean z10, boolean z11, boolean z12) {
            this(i10, z12);
            this.isDepth = z10;
            this.isCompressed = z11;
        }
    }

    public ByteBuffer getData(int i10) {
        if (this.data.size() > i10) {
            return this.data.get(i10);
        }
        return null;
    }

    @Override
    public Image mo1296clone() {
        Image image = (Image) super.mo1296clone();
        int[] iArr = this.mipMapSizes;
        image.mipMapSizes = iArr != null ? (int[]) iArr.clone() : null;
        image.data = this.data != null ? new ArrayList<>(this.data) : null;
        image.lastTextureState = new LastTextureState();
        image.setUpdateNeeded();
        return image;
    }

    public void setData(ByteBuffer byteBuffer) {
        ArrayList<ByteBuffer> arrayList = new ArrayList<>(1);
        this.data = arrayList;
        arrayList.add(byteBuffer);
        setUpdateNeeded();
    }

    public void setData(int i10, ByteBuffer byteBuffer) {
        if (i10 >= 0) {
            while (this.data.size() <= i10) {
                this.data.add(null);
            }
            this.data.set(i10, byteBuffer);
            setUpdateNeeded();
            return;
        }
        throw new IllegalArgumentException("index must be greater than or equal to 0.");
    }

    public Image(int i10) {
        super(i10);
        this.multiSamples = 1;
        this.colorSpace = null;
        this.mipsWereGenerated = false;
        this.needGeneratedMips = false;
        this.lastTextureState = new LastTextureState();
    }

    public Image(Format format, int i10, int i11, int i12, ArrayList<ByteBuffer> arrayList, int[] iArr, ColorSpace colorSpace) {
        this();
        if (iArr != null) {
            if (iArr.length <= 1) {
                iArr = null;
            } else {
                this.needGeneratedMips = false;
                this.mipsWereGenerated = true;
            }
        }
        setFormat(format);
        this.width = i10;
        this.height = i11;
        this.data = arrayList;
        this.depth = i12;
        this.mipMapSizes = iArr;
        this.colorSpace = colorSpace;
    }

    @Deprecated
    public Image(Format format, int i10, int i11, int i12, ArrayList<ByteBuffer> arrayList, int[] iArr) {
        this(format, i10, i11, i12, arrayList, iArr, ColorSpace.Linear);
    }

    public Image(Format format, int i10, int i11, ByteBuffer byteBuffer, int[] iArr, ColorSpace colorSpace) {
        this();
        if (iArr != null) {
            if (iArr.length <= 1) {
                iArr = null;
            } else {
                this.needGeneratedMips = false;
                this.mipsWereGenerated = true;
            }
        }
        setFormat(format);
        this.width = i10;
        this.height = i11;
        if (byteBuffer != null) {
            ArrayList<ByteBuffer> arrayList = new ArrayList<>(1);
            this.data = arrayList;
            arrayList.add(byteBuffer);
        }
        this.mipMapSizes = iArr;
        this.colorSpace = colorSpace;
    }

    @Deprecated
    public Image(Format format, int i10, int i11, ByteBuffer byteBuffer, int[] iArr) {
        this(format, i10, i11, byteBuffer, iArr, ColorSpace.Linear);
    }

    public Image(Format format, int i10, int i11, int i12, ArrayList<ByteBuffer> arrayList, ColorSpace colorSpace) {
        this(format, i10, i11, i12, arrayList, null, colorSpace);
    }

    @Deprecated
    public Image(Format format, int i10, int i11, int i12, ArrayList<ByteBuffer> arrayList) {
        this(format, i10, i11, i12, arrayList, ColorSpace.Linear);
    }

    public Image(Format format, int i10, int i11, ByteBuffer byteBuffer, ColorSpace colorSpace) {
        this(format, i10, i11, byteBuffer, (int[]) null, colorSpace);
    }

    @Deprecated
    public Image(Format format, int i10, int i11, ByteBuffer byteBuffer) {
        this(format, i10, i11, byteBuffer, (int[]) null, ColorSpace.Linear);
    }
}
