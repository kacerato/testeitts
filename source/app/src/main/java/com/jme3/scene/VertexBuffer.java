package com.jme3.scene;

import android.media.MediaFormat;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.renderer.Renderer;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObject;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

public class VertexBuffer extends NativeObject implements Savable, Cloneable {
    protected Type bufType;
    protected int components;
    protected transient int componentsLength;
    protected Buffer data;
    protected transient boolean dataSizeChanged;
    protected Format format;
    protected int instanceSpan;
    protected int lastLimit;
    protected String name;
    protected boolean normalized;
    protected int offset;
    protected int stride;
    protected Usage usage;

    public enum Format {
        Half(2),
        Float(4),
        Double(8),
        Byte(1),
        UnsignedByte(1),
        Short(2),
        UnsignedShort(2),
        Int(4),
        UnsignedInt(4);

        private int componentSize;

        Format(int i10) {
            this.componentSize = i10;
        }

        public int getComponentSize() {
            return this.componentSize;
        }
    }

    public enum Type {
        Position,
        Size,
        Normal,
        TexCoord,
        Color,
        Tangent,
        Binormal,
        InterleavedData,
        Reserved0,
        Index,
        BindPosePosition,
        BindPoseNormal,
        BoneWeight,
        BoneIndex,
        TexCoord2,
        TexCoord3,
        TexCoord4,
        TexCoord5,
        TexCoord6,
        TexCoord7,
        TexCoord8,
        BindPoseTangent,
        HWBoneWeight,
        HWBoneIndex,
        InstanceData,
        MorphTarget0,
        MorphTarget1,
        MorphTarget2,
        MorphTarget3,
        MorphTarget4,
        MorphTarget5,
        MorphTarget6,
        MorphTarget7,
        MorphTarget8,
        MorphTarget9,
        MorphTarget10,
        MorphTarget11,
        MorphTarget12,
        MorphTarget13
    }

    public enum Usage {
        Static,
        Dynamic,
        Stream,
        CpuOnly
    }

    public VertexBuffer(Type type) {
        this.offset = 0;
        this.lastLimit = 0;
        this.stride = 0;
        this.components = 0;
        this.componentsLength = 0;
        this.data = null;
        this.normalized = false;
        this.instanceSpan = 0;
        this.dataSizeChanged = false;
        this.bufType = type;
    }

    public static Buffer createBuffer(Format format, int i10, int i11) {
        if (i10 < 1 || i10 > 4) {
            throw new IllegalArgumentException("Num components must be between 1 and 4");
        }
        int i12 = i11 * i10;
        switch (format) {
            case Half:
                return BufferUtils.createByteBuffer(i12 * 2);
            case Float:
                return BufferUtils.createFloatBuffer(i12);
            case Double:
                return BufferUtils.createDoubleBuffer(i12);
            case Byte:
            case UnsignedByte:
                return BufferUtils.createByteBuffer(i12);
            case Short:
            case UnsignedShort:
                return BufferUtils.createShortBuffer(i12);
            case Int:
            case UnsignedInt:
                return BufferUtils.createIntBuffer(i12);
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
        }
    }

    @Override
    public void clearUpdateNeeded() {
        super.clearUpdateNeeded();
        this.dataSizeChanged = false;
    }

    public void compact(int i10) {
        int i11 = this.components * i10;
        this.data.clear();
        switch (this.format) {
            case Half:
            case Byte:
            case UnsignedByte:
                ByteBuffer byteBuffer = (ByteBuffer) this.data;
                byteBuffer.limit(i11);
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i11);
                createByteBuffer.put(byteBuffer);
                this.data = createByteBuffer;
                break;
            case Float:
                FloatBuffer floatBuffer = (FloatBuffer) this.data;
                floatBuffer.limit(i11);
                FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i11);
                createFloatBuffer.put(floatBuffer);
                this.data = createFloatBuffer;
                break;
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.format));
            case Short:
            case UnsignedShort:
                ShortBuffer shortBuffer = (ShortBuffer) this.data;
                shortBuffer.limit(i11);
                ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(i11);
                createShortBuffer.put(shortBuffer);
                this.data = createShortBuffer;
                break;
            case Int:
            case UnsignedInt:
                IntBuffer intBuffer = (IntBuffer) this.data;
                intBuffer.limit(i11);
                IntBuffer createIntBuffer = BufferUtils.createIntBuffer(i11);
                createIntBuffer.put(intBuffer);
                this.data = createIntBuffer;
                break;
        }
        this.data.clear();
        setUpdateNeeded();
        this.dataSizeChanged = true;
    }

    public void convertToHalf() {
        if (this.f81661id != -1) {
            throw new UnsupportedOperationException("Data has already been sent.");
        }
        if (this.format != Format.Float) {
            throw new IllegalStateException("Format must be float!");
        }
        int limit = this.data.limit();
        int i10 = this.components;
        int i11 = limit / i10;
        Format format = Format.Half;
        this.format = format;
        int componentSize = i10 * format.getComponentSize();
        this.componentsLength = componentSize;
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(componentSize * i11);
        createByteBuffer.rewind();
        FloatBuffer floatBuffer = (FloatBuffer) this.data;
        floatBuffer.rewind();
        for (int i12 = 0; i12 < floatBuffer.limit(); i12++) {
            createByteBuffer.putShort(FastMath.convertFloatToHalf(floatBuffer.get(i12)));
        }
        this.data = createByteBuffer;
        setUpdateNeeded();
        this.dataSizeChanged = true;
    }

    public void copyElement(int i10, VertexBuffer vertexBuffer, int i11) {
        copyElements(i10, vertexBuffer, i11, 1);
    }

    public void copyElements(int i10, VertexBuffer vertexBuffer, int i11, int i12) {
        Format format = vertexBuffer.format;
        Format format2 = this.format;
        if (format == format2) {
            int i13 = vertexBuffer.components;
            int i14 = this.components;
            if (i13 == i14) {
                int i15 = i10 * i14;
                int i16 = i11 * i14;
                if (format2 == Format.Half) {
                    i15 *= 2;
                    i16 *= 2;
                    i14 *= 2;
                }
                Buffer dataReadOnly = getDataReadOnly();
                vertexBuffer.data.clear();
                switch (this.format) {
                    case Half:
                    case Byte:
                    case UnsignedByte:
                        ByteBuffer byteBuffer = (ByteBuffer) dataReadOnly;
                        ByteBuffer byteBuffer2 = (ByteBuffer) vertexBuffer.data;
                        int i17 = i14 * i12;
                        byteBuffer.position(i15).limit(i15 + i17);
                        byteBuffer2.position(i16).limit(i16 + i17);
                        byteBuffer2.put(byteBuffer);
                        break;
                    case Float:
                        FloatBuffer floatBuffer = (FloatBuffer) dataReadOnly;
                        FloatBuffer floatBuffer2 = (FloatBuffer) vertexBuffer.data;
                        int i18 = i14 * i12;
                        floatBuffer.position(i15).limit(i15 + i18);
                        floatBuffer2.position(i16).limit(i16 + i18);
                        floatBuffer2.put(floatBuffer);
                        break;
                    case Double:
                    default:
                        throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.format));
                    case Short:
                    case UnsignedShort:
                        ShortBuffer shortBuffer = (ShortBuffer) dataReadOnly;
                        ShortBuffer shortBuffer2 = (ShortBuffer) vertexBuffer.data;
                        int i19 = i14 * i12;
                        shortBuffer.position(i15).limit(i15 + i19);
                        shortBuffer2.position(i16).limit(i16 + i19);
                        shortBuffer2.put(shortBuffer);
                        break;
                    case Int:
                    case UnsignedInt:
                        IntBuffer intBuffer = (IntBuffer) dataReadOnly;
                        IntBuffer intBuffer2 = (IntBuffer) vertexBuffer.data;
                        int i20 = i14 * i12;
                        intBuffer.position(i15).limit(i15 + i20);
                        intBuffer2.position(i16).limit(i16 + i20);
                        intBuffer2.put(intBuffer);
                        break;
                }
                vertexBuffer.data.clear();
                return;
            }
        }
        throw new IllegalArgumentException("Buffer format mismatch. Cannot copy");
    }

    @Override
    public NativeObject createDestructableClone() {
        return new VertexBuffer(this.f81661id);
    }

    @Override
    public void deleteNativeBuffers() {
        Buffer buffer = this.data;
        if (buffer != null) {
            BufferUtils.destroyDirectBuffer(buffer);
        }
    }

    @Override
    public void deleteObject(Object obj) {
        ((Renderer) obj).deleteBuffer(this);
    }

    public int getBaseInstanceCount() {
        if (this.instanceSpan == 0) {
            return 1;
        }
        return getNumElements() * this.instanceSpan;
    }

    public Type getBufferType() {
        return this.bufType;
    }

    public Buffer getData() {
        return this.data;
    }

    public Buffer getDataReadOnly() {
        Buffer asReadOnlyBuffer;
        Buffer buffer = this.data;
        if (buffer == null) {
            return null;
        }
        if (buffer instanceof ByteBuffer) {
            asReadOnlyBuffer = ((ByteBuffer) buffer).asReadOnlyBuffer();
        } else if (buffer instanceof FloatBuffer) {
            asReadOnlyBuffer = ((FloatBuffer) buffer).asReadOnlyBuffer();
        } else if (buffer instanceof ShortBuffer) {
            asReadOnlyBuffer = ((ShortBuffer) buffer).asReadOnlyBuffer();
        } else {
            if (!(buffer instanceof IntBuffer)) {
                throw new UnsupportedOperationException("Cannot get read-only view of buffer type:" + ((Object) this.data));
            }
            asReadOnlyBuffer = ((IntBuffer) buffer).asReadOnlyBuffer();
        }
        asReadOnlyBuffer.rewind();
        return asReadOnlyBuffer;
    }

    public Object getElementComponent(int i10, int i11) {
        int i12 = i10 * this.components;
        if (this.format == Format.Half) {
            i12 *= 2;
            i11 *= 2;
        }
        Buffer dataReadOnly = getDataReadOnly();
        switch (this.format) {
            case Half:
            case Byte:
            case UnsignedByte:
                return Byte.valueOf(((ByteBuffer) dataReadOnly).get(i12 + i11));
            case Float:
                return Float.valueOf(((FloatBuffer) dataReadOnly).get(i12 + i11));
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.format));
            case Short:
            case UnsignedShort:
                return Short.valueOf(((ShortBuffer) dataReadOnly).get(i12 + i11));
            case Int:
            case UnsignedInt:
                return Integer.valueOf(((IntBuffer) dataReadOnly).get(i12 + i11));
        }
    }

    public Format getFormat() {
        return this.format;
    }

    public int getInstanceSpan() {
        return this.instanceSpan;
    }

    public String getName() {
        String str = this.name;
        return str == null ? String.format("%s(%s)", getClass().getSimpleName(), getBufferType().name()) : str;
    }

    public int getNumComponents() {
        return this.components;
    }

    public int getNumElements() {
        Buffer buffer = this.data;
        if (buffer == null) {
            return 0;
        }
        int limit = buffer.limit() / this.components;
        return this.format == Format.Half ? limit / 2 : limit;
    }

    public int getOffset() {
        return this.offset;
    }

    public int getStride() {
        return this.stride;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 4294967296L;
    }

    public Usage getUsage() {
        return this.usage;
    }

    public boolean hasDataSizeChanged() {
        return this.dataSizeChanged;
    }

    public boolean invariant() {
        Format format;
        Format format2;
        Format format3;
        int i10;
        Buffer buffer = this.data;
        if (buffer == null) {
            throw new AssertionError();
        }
        if (buffer.position() != 0) {
            throw new AssertionError();
        }
        if (this.data.limit() == 0) {
            throw new AssertionError();
        }
        if (this.offset > this.data.limit() || this.offset < 0) {
            throw new AssertionError();
        }
        if (this.bufType != Type.InstanceData && ((i10 = this.components) < 1 || i10 > 4)) {
            throw new AssertionError();
        }
        if (this.usage != Usage.CpuOnly && !this.data.isDirect()) {
            throw new AssertionError();
        }
        Buffer buffer2 = this.data;
        if (buffer2 instanceof DoubleBuffer) {
            throw new AssertionError();
        }
        if (buffer2 instanceof CharBuffer) {
            throw new AssertionError();
        }
        if (buffer2 instanceof LongBuffer) {
            throw new AssertionError();
        }
        if ((buffer2 instanceof FloatBuffer) && this.format != Format.Float) {
            throw new AssertionError();
        }
        if ((buffer2 instanceof IntBuffer) && (format3 = this.format) != Format.Int && format3 != Format.UnsignedInt) {
            throw new AssertionError();
        }
        if ((buffer2 instanceof ShortBuffer) && (format2 = this.format) != Format.Short && format2 != Format.UnsignedShort) {
            throw new AssertionError();
        }
        if (!(buffer2 instanceof ByteBuffer) || (format = this.format) == Format.Byte || format == Format.UnsignedByte) {
            return true;
        }
        throw new AssertionError();
    }

    public boolean isInstanced() {
        return this.instanceSpan > 0;
    }

    public boolean isNormalized() {
        return this.normalized;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.components = capsule.readInt("components", 0);
        this.usage = (Usage) capsule.readEnum("usage", Usage.class, Usage.Dynamic);
        this.bufType = (Type) capsule.readEnum("buffer_type", Type.class, null);
        this.format = (Format) capsule.readEnum("format", Format.class, Format.Float);
        this.normalized = capsule.readBoolean("normalized", false);
        this.offset = capsule.readInt("offset", 0);
        this.stride = capsule.readInt(MediaFormat.KEY_STRIDE, 0);
        this.instanceSpan = capsule.readInt("instanceSpan", 0);
        this.name = capsule.readString("name", null);
        this.componentsLength = this.components * this.format.getComponentSize();
        String str = "data" + this.format.name();
        switch (this.format) {
            case Half:
            case Byte:
            case UnsignedByte:
                this.data = capsule.readByteBuffer(str, null);
                return;
            case Float:
                this.data = capsule.readFloatBuffer(str, null);
                return;
            case Double:
            default:
                throw new IOException("Unsupported import buffer format: " + ((Object) this.format));
            case Short:
            case UnsignedShort:
                this.data = capsule.readShortBuffer(str, null);
                return;
            case Int:
            case UnsignedInt:
                this.data = capsule.readIntBuffer(str, null);
                return;
        }
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        setUpdateNeeded();
    }

    public void setElementComponent(int i10, int i11, Object obj) {
        int i12 = i10 * this.components;
        if (this.format == Format.Half) {
            i12 *= 2;
            i11 *= 2;
        }
        this.data.clear();
        switch (this.format) {
            case Half:
            case Byte:
            case UnsignedByte:
                ((ByteBuffer) this.data).put(i12 + i11, ((Byte) obj).byteValue());
                return;
            case Float:
                ((FloatBuffer) this.data).put(i12 + i11, ((Float) obj).floatValue());
                return;
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.format));
            case Short:
            case UnsignedShort:
                ((ShortBuffer) this.data).put(i12 + i11, ((Short) obj).shortValue());
                return;
            case Int:
            case UnsignedInt:
                ((IntBuffer) this.data).put(i12 + i11, ((Integer) obj).intValue());
                return;
        }
    }

    public void setInstanceSpan(int i10) {
        this.instanceSpan = i10;
    }

    public void setInstanced(boolean z10) {
        if (z10 && this.instanceSpan == 0) {
            this.instanceSpan = 1;
        } else {
            if (z10) {
                return;
            }
            this.instanceSpan = 0;
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNormalized(boolean z10) {
        this.normalized = z10;
    }

    public void setOffset(int i10) {
        this.offset = i10;
    }

    public void setStride(int i10) {
        this.stride = i10;
    }

    public void setUsage(Usage usage) {
        this.usage = usage;
        setUpdateNeeded();
    }

    public void setupData(Usage usage, int i10, Format format, Buffer buffer) {
        if (this.f81661id != -1) {
            throw new UnsupportedOperationException("Data has already been sent. Cannot setupData again.");
        }
        if (usage == null || format == null || buffer == null) {
            throw new IllegalArgumentException("None of the arguments can be null");
        }
        if (buffer.isReadOnly()) {
            throw new IllegalArgumentException("VertexBuffer data cannot be read-only.");
        }
        if (this.bufType != Type.InstanceData && (i10 < 1 || i10 > 4)) {
            throw new IllegalArgumentException("components must be between 1 and 4");
        }
        this.data = buffer;
        this.components = i10;
        this.usage = usage;
        this.format = format;
        this.componentsLength = i10 * format.getComponentSize();
        this.lastLimit = buffer.limit();
        setUpdateNeeded();
    }

    @Override
    public String toString() {
        String str;
        if (this.data != null) {
            str = ", elements=" + this.data.limit();
        } else {
            str = null;
        }
        return getClass().getSimpleName() + "[fmt=" + this.format.name() + ", type=" + this.bufType.name() + ", usage=" + this.usage.name() + str + "]";
    }

    public void updateData(Buffer buffer) {
        if (buffer != null && buffer.isReadOnly()) {
            throw new IllegalArgumentException("VertexBuffer data cannot be read-only.");
        }
        if (buffer != null && (this.data.getClass() != buffer.getClass() || buffer.limit() != this.lastLimit)) {
            this.dataSizeChanged = true;
            this.lastLimit = buffer.limit();
        }
        this.data = buffer;
        setUpdateNeeded();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.components, "components", 0);
        capsule.write(this.usage, "usage", Usage.Dynamic);
        capsule.write(this.bufType, "buffer_type", (Enum) null);
        capsule.write(this.format, "format", Format.Float);
        capsule.write(this.normalized, "normalized", false);
        capsule.write(this.offset, "offset", 0);
        capsule.write(this.stride, MediaFormat.KEY_STRIDE, 0);
        capsule.write(this.instanceSpan, "instanceSpan", 0);
        capsule.write(this.name, "name", (String) null);
        String str = "data" + this.format.name();
        Buffer dataReadOnly = getDataReadOnly();
        switch (this.format) {
            case Half:
            case Byte:
            case UnsignedByte:
                capsule.write((ByteBuffer) dataReadOnly, str, (ByteBuffer) null);
                return;
            case Float:
                capsule.write((FloatBuffer) dataReadOnly, str, (FloatBuffer) null);
                return;
            case Double:
            default:
                throw new IOException("Unsupported export buffer format: " + ((Object) this.format));
            case Short:
            case UnsignedShort:
                capsule.write((ShortBuffer) dataReadOnly, str, (ShortBuffer) null);
                return;
            case Int:
            case UnsignedInt:
                capsule.write((IntBuffer) dataReadOnly, str, (IntBuffer) null);
                return;
        }
    }

    @Override
    public VertexBuffer mo1296clone() {
        VertexBuffer vertexBuffer = (VertexBuffer) super.mo1296clone();
        vertexBuffer.handleRef = new Object();
        vertexBuffer.f81661id = -1;
        if (this.data != null) {
            vertexBuffer.updateData(BufferUtils.clone(getDataReadOnly()));
        }
        return vertexBuffer;
    }

    public VertexBuffer clone(Type type) {
        VertexBuffer vertexBuffer = new VertexBuffer(type);
        vertexBuffer.components = this.components;
        vertexBuffer.componentsLength = this.componentsLength;
        vertexBuffer.data = BufferUtils.clone(getDataReadOnly());
        vertexBuffer.format = this.format;
        vertexBuffer.handleRef = new Object();
        vertexBuffer.f81661id = -1;
        vertexBuffer.normalized = this.normalized;
        vertexBuffer.instanceSpan = this.instanceSpan;
        vertexBuffer.offset = this.offset;
        vertexBuffer.stride = this.stride;
        vertexBuffer.updateNeeded = true;
        vertexBuffer.usage = this.usage;
        return vertexBuffer;
    }

    public VertexBuffer() {
        this.offset = 0;
        this.lastLimit = 0;
        this.stride = 0;
        this.components = 0;
        this.componentsLength = 0;
        this.data = null;
        this.normalized = false;
        this.instanceSpan = 0;
        this.dataSizeChanged = false;
    }

    public VertexBuffer(int i10) {
        super(i10);
        this.offset = 0;
        this.lastLimit = 0;
        this.stride = 0;
        this.components = 0;
        this.componentsLength = 0;
        this.data = null;
        this.normalized = false;
        this.instanceSpan = 0;
        this.dataSizeChanged = false;
    }
}
