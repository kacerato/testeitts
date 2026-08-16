package Dc;

import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public class d {

    public c f5104g;

    public b f5105h;

    public a f5106i;

    public String f5110m;

    public int f5098a = 0;

    public int f5099b = 0;

    public int f5100c = 0;

    public int f5101d = 0;

    public transient int f5102e = 0;

    public com.itsmagic.engine.Engines.Native.Base.a f5103f = null;

    public boolean f5107j = false;

    public int f5108k = 0;

    public transient boolean f5109l = false;

    public enum a {
        Half(2),
        Float(4),
        Double(8),
        Byte(1),
        UnsignedByte(1),
        Short(2),
        UnsignedShort(2),
        Int(4),
        UnsignedInt(4);

        private final int componentSize;

        a(int componentSize) {
            this.componentSize = componentSize;
        }

        public int b() {
            return this.componentSize;
        }
    }

    public enum b {
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

    public enum c {
        Static,
        Dynamic,
        Stream,
        CpuOnly
    }

    public d(b type) {
        this.f5105h = type;
    }

    public static com.itsmagic.engine.Engines.Native.Base.a d(com.itsmagic.engine.Engines.Native.Base.a source) {
        if (source == null) {
            return null;
        }
        if (source instanceof NativeFloatBuffer) {
            return ((NativeFloatBuffer) source).m1250clone();
        }
        if (source instanceof NativeIntBuffer) {
            return ((NativeIntBuffer) source).m1251clone();
        }
        if (source instanceof NativeShortBuffer) {
            return ((NativeShortBuffer) source).m1252clone();
        }
        if (!(source instanceof NativeByteBuffer)) {
            throw new UnsupportedOperationException("Cannot clone buffer type: " + source.getClass().getSimpleName());
        }
        NativeByteBuffer nativeByteBuffer = (NativeByteBuffer) source;
        NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(nativeByteBuffer.capacity());
        for (int i10 = 0; i10 < nativeByteBuffer.capacity(); i10++) {
            nativeByteBuffer2.set(i10, nativeByteBuffer.get(i10));
        }
        return nativeByteBuffer2;
    }

    public static com.itsmagic.engine.Engines.Native.Base.a i(a format, int components, int numElements) {
        if (components < 1 || components > 4) {
            throw new IllegalArgumentException("Num components must be between 1 and 4");
        }
        int i10 = numElements * components;
        switch (format) {
            case Half:
            case Short:
            case UnsignedShort:
                return new NativeShortBuffer(i10);
            case Float:
                return new NativeFloatBuffer(i10);
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
            case Byte:
            case UnsignedByte:
                return new NativeByteBuffer(i10);
            case Int:
            case UnsignedInt:
                return new NativeIntBuffer(i10);
        }
    }

    public static void k(a format, com.itsmagic.engine.Engines.Native.Base.a data) {
        if (format == null || data == null) {
            return;
        }
        if (format == a.Float && !(data instanceof NativeFloatBuffer)) {
            throw new IllegalArgumentException("Format Float requires NativeFloatBuffer");
        }
        if ((format == a.Int || format == a.UnsignedInt) && !(data instanceof NativeIntBuffer)) {
            throw new IllegalArgumentException("Format Int requires NativeIntBuffer");
        }
        if ((format == a.Short || format == a.UnsignedShort || format == a.Half) && !(data instanceof NativeShortBuffer)) {
            throw new IllegalArgumentException("Format Short/Half requires NativeShortBuffer");
        }
        if ((format == a.Byte || format == a.UnsignedByte) && !(data instanceof NativeByteBuffer)) {
            throw new IllegalArgumentException("Format Byte requires NativeByteBuffer");
        }
        if (format == a.Double) {
            throw new UnsupportedOperationException("Double format is not supported by NativeVertexBuffer");
        }
    }

    public boolean A() {
        return this.f5108k > 0;
    }

    public boolean B() {
        return this.f5107j;
    }

    public final <T extends com.itsmagic.engine.Engines.Native.Base.a> T C(Class<T> cls) {
        if (cls.isInstance(this.f5103f)) {
            return (T) this.f5103f;
        }
        throw new IllegalStateException("Data buffer is not " + cls.getSimpleName());
    }

    public void D() {
        this.f5109l = true;
    }

    public void E(int elementIndex, int componentIndex, Object val) {
        int i10 = (elementIndex * this.f5101d) + componentIndex;
        switch (this.f5106i) {
            case Half:
            case Short:
            case UnsignedShort:
                ((NativeShortBuffer) C(NativeShortBuffer.class)).set(i10, ((Short) val).shortValue());
                return;
            case Float:
                ((NativeFloatBuffer) C(NativeFloatBuffer.class)).set(i10, ((Float) val).floatValue());
                return;
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.f5106i));
            case Byte:
            case UnsignedByte:
                ((NativeByteBuffer) C(NativeByteBuffer.class)).set(i10, ((Byte) val).byteValue());
                return;
            case Int:
            case UnsignedInt:
                ((NativeIntBuffer) C(NativeIntBuffer.class)).set(i10, ((Integer) val).intValue());
                return;
        }
    }

    public void F(int i10) {
        this.f5108k = i10;
    }

    public void G(boolean instanced) {
        if (instanced && this.f5108k == 0) {
            this.f5108k = 1;
        } else {
            if (instanced) {
                return;
            }
            this.f5108k = 0;
        }
    }

    public void H(String name) {
        this.f5110m = name;
    }

    public void I(boolean normalized) {
        this.f5107j = normalized;
    }

    public void J(int offset) {
        this.f5098a = offset;
    }

    public void K(int stride) {
        this.f5100c = stride;
    }

    public void L(c usage) {
        this.f5104g = usage;
        this.f5109l = true;
    }

    public void M(c usage, int components, a format, com.itsmagic.engine.Engines.Native.Base.a data) {
        if (usage == null || format == null || data == null) {
            throw new IllegalArgumentException("None of the arguments can be null");
        }
        if (components < 1 && format != a.Double) {
            throw new IllegalArgumentException("components must be greater than 0");
        }
        if (this.f5105h != b.InstanceData && components > 4) {
            throw new IllegalArgumentException("components must be between 1 and 4");
        }
        if (format == a.Float && !(data instanceof NativeFloatBuffer)) {
            throw new IllegalArgumentException("Format Float requires NativeFloatBuffer");
        }
        if ((format == a.Int || format == a.UnsignedInt) && !(data instanceof NativeIntBuffer)) {
            throw new IllegalArgumentException("Format Int requires NativeIntBuffer");
        }
        if ((format == a.Short || format == a.UnsignedShort || format == a.Half) && !(data instanceof NativeShortBuffer)) {
            throw new IllegalArgumentException("Format Short/Half requires NativeShortBuffer");
        }
        if ((format == a.Byte || format == a.UnsignedByte) && !(data instanceof NativeByteBuffer)) {
            throw new IllegalArgumentException("Format Byte requires NativeByteBuffer");
        }
        if (format == a.Double) {
            throw new UnsupportedOperationException("Double format is not supported by NativeVertexBuffer");
        }
        this.f5103f = data;
        this.f5101d = components;
        this.f5104g = usage;
        this.f5106i = format;
        this.f5102e = components * format.b();
        this.f5099b = data.capacity();
        this.f5109l = true;
    }

    public void N(com.itsmagic.engine.Engines.Native.Base.a data) {
        if (data == null) {
            this.f5103f = null;
            this.f5109l = true;
            return;
        }
        k(this.f5106i, data);
        com.itsmagic.engine.Engines.Native.Base.a aVar = this.f5103f;
        if (aVar != null && (aVar.getClass() != data.getClass() || data.capacity() != this.f5099b)) {
            this.f5109l = true;
        }
        this.f5103f = data;
        this.f5099b = data.capacity();
        this.f5109l = true;
    }

    public void a() {
        this.f5109l = false;
    }

    public d clone() {
        d dVar = new d(this.f5105h);
        dVar.f5101d = this.f5101d;
        dVar.f5102e = this.f5102e;
        dVar.f5103f = d(o());
        dVar.f5106i = this.f5106i;
        dVar.f5107j = this.f5107j;
        dVar.f5108k = this.f5108k;
        dVar.f5098a = this.f5098a;
        dVar.f5100c = this.f5100c;
        dVar.f5104g = this.f5104g;
        dVar.f5099b = this.f5099b;
        dVar.f5109l = this.f5109l;
        dVar.f5110m = this.f5110m;
        return dVar;
    }

    public d c(b overrideType) {
        d dVar = new d(overrideType);
        dVar.f5101d = this.f5101d;
        dVar.f5102e = this.f5102e;
        dVar.f5103f = d(o());
        dVar.f5106i = this.f5106i;
        dVar.f5107j = this.f5107j;
        dVar.f5108k = this.f5108k;
        dVar.f5098a = this.f5098a;
        dVar.f5100c = this.f5100c;
        dVar.f5104g = this.f5104g;
        dVar.f5099b = this.f5099b;
        dVar.f5109l = this.f5109l;
        dVar.f5110m = this.f5110m;
        return dVar;
    }

    public void e(int numElements) {
        if (numElements < 0) {
            throw new IllegalArgumentException("numElements must be >= 0");
        }
        int i10 = this.f5101d * numElements;
        switch (this.f5106i) {
            case Half:
            case Short:
            case UnsignedShort:
                NativeShortBuffer nativeShortBuffer = (NativeShortBuffer) C(NativeShortBuffer.class);
                NativeShortBuffer nativeShortBuffer2 = new NativeShortBuffer(i10);
                nativeShortBuffer2.set(0, nativeShortBuffer, 0, i10);
                this.f5103f = nativeShortBuffer2;
                break;
            case Float:
                NativeFloatBuffer nativeFloatBuffer = (NativeFloatBuffer) C(NativeFloatBuffer.class);
                NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(i10);
                nativeFloatBuffer2.set(0, nativeFloatBuffer, 0, i10);
                this.f5103f = nativeFloatBuffer2;
                break;
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.f5106i));
            case Byte:
            case UnsignedByte:
                NativeByteBuffer nativeByteBuffer = (NativeByteBuffer) C(NativeByteBuffer.class);
                NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(i10);
                for (int i11 = 0; i11 < i10; i11++) {
                    nativeByteBuffer2.set(i11, nativeByteBuffer.get(i11));
                }
                this.f5103f = nativeByteBuffer2;
                break;
            case Int:
            case UnsignedInt:
                NativeIntBuffer nativeIntBuffer = (NativeIntBuffer) C(NativeIntBuffer.class);
                NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(i10);
                nativeIntBuffer2.set(0, nativeIntBuffer, 0, i10);
                this.f5103f = nativeIntBuffer2;
                break;
        }
        this.f5099b = this.f5103f.capacity();
        this.f5109l = true;
    }

    public void f() {
        if (this.f5106i != a.Float) {
            throw new IllegalStateException("Format must be float!");
        }
        com.itsmagic.engine.Engines.Native.Base.a aVar = this.f5103f;
        if (!(aVar instanceof NativeFloatBuffer)) {
            throw new IllegalStateException("Data must be NativeFloatBuffer");
        }
        NativeFloatBuffer nativeFloatBuffer = (NativeFloatBuffer) aVar;
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(this.f5101d * (nativeFloatBuffer.capacity() / this.f5101d));
        nativeFloatBuffer.position(0);
        for (int i10 = 0; i10 < nativeFloatBuffer.capacity(); i10++) {
            nativeShortBuffer.put(Nc.a.i(nativeFloatBuffer.get(i10)));
        }
        this.f5103f = nativeShortBuffer;
        a aVar2 = a.Half;
        this.f5106i = aVar2;
        this.f5102e = this.f5101d * aVar2.b();
        this.f5099b = nativeShortBuffer.capacity();
        this.f5109l = true;
    }

    public void g(int inIndex, d outVb, int outIndex) {
        h(inIndex, outVb, outIndex, 1);
    }

    public void h(int inIndex, d outVb, int outIndex, int len) {
        a aVar = outVb.f5106i;
        a aVar2 = this.f5106i;
        if (aVar == aVar2) {
            int i10 = outVb.f5101d;
            int i11 = this.f5101d;
            if (i10 == i11) {
                int i12 = inIndex * i11;
                int i13 = outIndex * i11;
                int ordinal = aVar2.ordinal();
                switch (ordinal) {
                    case 0:
                    case 5:
                    case 6:
                        NativeShortBuffer nativeShortBuffer = (NativeShortBuffer) C(NativeShortBuffer.class);
                        NativeShortBuffer nativeShortBuffer2 = (NativeShortBuffer) outVb.C(NativeShortBuffer.class);
                        nativeShortBuffer.position(0);
                        nativeShortBuffer2.set(i13, nativeShortBuffer, i12, i11 * len);
                        return;
                    case 1:
                        NativeFloatBuffer nativeFloatBuffer = (NativeFloatBuffer) C(NativeFloatBuffer.class);
                        NativeFloatBuffer nativeFloatBuffer2 = (NativeFloatBuffer) outVb.C(NativeFloatBuffer.class);
                        nativeFloatBuffer.position(0);
                        nativeFloatBuffer2.set(i13, nativeFloatBuffer, i12, i11 * len);
                        return;
                    case 2:
                    default:
                        throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.f5106i));
                    case 3:
                    case 4:
                        NativeByteBuffer nativeByteBuffer = (NativeByteBuffer) C(NativeByteBuffer.class);
                        NativeByteBuffer nativeByteBuffer2 = (NativeByteBuffer) outVb.C(NativeByteBuffer.class);
                        for (int i14 = 0; i14 < i11 * len; i14++) {
                            nativeByteBuffer2.set(i13 + i14, nativeByteBuffer.get(i12 + i14));
                        }
                        return;
                    case 7:
                    case 8:
                        NativeIntBuffer nativeIntBuffer = (NativeIntBuffer) C(NativeIntBuffer.class);
                        NativeIntBuffer nativeIntBuffer2 = (NativeIntBuffer) outVb.C(NativeIntBuffer.class);
                        nativeIntBuffer.position(0);
                        nativeIntBuffer2.set(i13, nativeIntBuffer, i12, i11 * len);
                        return;
                }
            }
        }
        throw new IllegalArgumentException("Buffer format mismatch. Cannot copy");
    }

    public void j() {
        this.f5103f = null;
    }

    public int l() {
        if (this.f5108k == 0) {
            return 1;
        }
        return u() * this.f5108k;
    }

    public b m() {
        return this.f5105h;
    }

    public com.itsmagic.engine.Engines.Native.Base.a n() {
        return this.f5103f;
    }

    public com.itsmagic.engine.Engines.Native.Base.a o() {
        return d(this.f5103f);
    }

    public Object p(int elementIndex, int componentIndex) {
        int i10 = (elementIndex * this.f5101d) + componentIndex;
        switch (this.f5106i) {
            case Half:
            case Short:
            case UnsignedShort:
                return Short.valueOf(((NativeShortBuffer) C(NativeShortBuffer.class)).get(i10));
            case Float:
                return Float.valueOf(((NativeFloatBuffer) C(NativeFloatBuffer.class)).get(i10));
            case Double:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) this.f5106i));
            case Byte:
            case UnsignedByte:
                return Byte.valueOf(((NativeByteBuffer) C(NativeByteBuffer.class)).get(i10));
            case Int:
            case UnsignedInt:
                return Integer.valueOf(((NativeIntBuffer) C(NativeIntBuffer.class)).get(i10));
        }
    }

    public a q() {
        return this.f5106i;
    }

    public int r() {
        return this.f5108k;
    }

    public String s() {
        if (this.f5110m == null) {
            this.f5110m = getClass().getSimpleName() + "(" + m().name() + ")";
        }
        return this.f5110m;
    }

    public int t() {
        return this.f5101d;
    }

    public String toString() {
        String str;
        if (this.f5103f != null) {
            str = ", elements=" + this.f5103f.capacity();
        } else {
            str = null;
        }
        return getClass().getSimpleName() + "[fmt=" + this.f5106i.name() + ", type=" + this.f5105h.name() + ", usage=" + this.f5104g.name() + str + "]";
    }

    public int u() {
        com.itsmagic.engine.Engines.Native.Base.a aVar = this.f5103f;
        if (aVar == null || this.f5101d <= 0) {
            return 0;
        }
        return aVar.capacity() / this.f5101d;
    }

    public int v() {
        return this.f5098a;
    }

    public int w() {
        return this.f5100c;
    }

    public c x() {
        return this.f5104g;
    }

    public boolean y() {
        return this.f5109l;
    }

    public boolean z() {
        int i10;
        if (this.f5105h == null || this.f5106i == null || this.f5104g == null) {
            throw new AssertionError();
        }
        com.itsmagic.engine.Engines.Native.Base.a aVar = this.f5103f;
        if (aVar == null) {
            throw new AssertionError();
        }
        int i11 = this.f5098a;
        if (i11 < 0 || i11 > aVar.capacity()) {
            throw new AssertionError();
        }
        if (this.f5105h != b.InstanceData && ((i10 = this.f5101d) < 1 || i10 > 4)) {
            throw new AssertionError();
        }
        if (this.f5103f.capacity() == 0) {
            throw new AssertionError();
        }
        a aVar2 = this.f5106i;
        if (aVar2 == a.Float && !(this.f5103f instanceof NativeFloatBuffer)) {
            throw new AssertionError();
        }
        if (aVar2 == a.Int || aVar2 == a.UnsignedInt) {
            if (!(this.f5103f instanceof NativeIntBuffer)) {
                throw new AssertionError();
            }
        } else if (aVar2 == a.Short || aVar2 == a.UnsignedShort || aVar2 == a.Half) {
            if (!(this.f5103f instanceof NativeShortBuffer)) {
                throw new AssertionError();
            }
        } else if (aVar2 == a.Byte || aVar2 == a.UnsignedByte) {
            if (!(this.f5103f instanceof NativeByteBuffer)) {
                throw new AssertionError();
            }
        } else if (aVar2 == a.Double) {
            throw new AssertionError();
        }
        return true;
    }

    public d() {
    }
}
