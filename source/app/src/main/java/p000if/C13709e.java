package p000if;

import com.jme3.scene.VertexBuffer;
import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.logging.Logger;
import jf.f;

public final class C13709e {

    public static final Logger f92108a = Logger.getLogger(C13709e.class.getName());

    public static class a {

        public static final int[] f92109a;

        static {
            int[] iArr = new int[VertexBuffer.Format.values().length];
            f92109a = iArr;
            try {
                iArr[VertexBuffer.Format.Byte.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92109a[VertexBuffer.Format.Half.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92109a[VertexBuffer.Format.UnsignedByte.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92109a[VertexBuffer.Format.Double.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92109a[VertexBuffer.Format.Float.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f92109a[VertexBuffer.Format.Int.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f92109a[VertexBuffer.Format.UnsignedInt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f92109a[VertexBuffer.Format.Short.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f92109a[VertexBuffer.Format.UnsignedShort.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static void a(VertexBuffer vertexBuffer, int i10, VertexBuffer vertexBuffer2, int i11) {
        int i12 = 0;
        C13702E.i(i10, "source index", 0, vertexBuffer.getNumElements() - 1);
        C13702E.i(i11, "target index", 0, vertexBuffer2.getNumElements() - 1);
        C13702E.H(vertexBuffer.getBufferType() == vertexBuffer2.getBufferType(), "same buffer type");
        C13702E.H(vertexBuffer.getFormat() == vertexBuffer2.getFormat(), "same format");
        C13702E.H(vertexBuffer.getNumComponents() == vertexBuffer2.getNumComponents(), "same number of components");
        int numComponents = vertexBuffer2.getNumComponents();
        VertexBuffer.Format format = vertexBuffer2.getFormat();
        if (format == VertexBuffer.Format.Half) {
            numComponents *= 2;
        }
        int i13 = i10 * numComponents;
        int i14 = i11 * numComponents;
        switch (a.f92109a[format.ordinal()]) {
            case 1:
            case 2:
            case 3:
                ByteBuffer byteBuffer = (ByteBuffer) vertexBuffer.getData();
                ByteBuffer byteBuffer2 = (ByteBuffer) vertexBuffer2.getData();
                while (i12 < numComponents) {
                    byteBuffer2.put(i14 + i12, byteBuffer.get(i13 + i12));
                    i12++;
                }
                return;
            case 4:
                DoubleBuffer doubleBuffer = (DoubleBuffer) vertexBuffer.getData();
                DoubleBuffer doubleBuffer2 = (DoubleBuffer) vertexBuffer2.getData();
                while (i12 < numComponents) {
                    doubleBuffer2.put(i14 + i12, doubleBuffer.get(i13 + i12));
                    i12++;
                }
                return;
            case 5:
                FloatBuffer floatBuffer = (FloatBuffer) vertexBuffer.getData();
                FloatBuffer floatBuffer2 = (FloatBuffer) vertexBuffer2.getData();
                while (i12 < numComponents) {
                    floatBuffer2.put(i14 + i12, floatBuffer.get(i13 + i12));
                    i12++;
                }
                return;
            case 6:
            case 7:
                IntBuffer intBuffer = (IntBuffer) vertexBuffer.getData();
                IntBuffer intBuffer2 = (IntBuffer) vertexBuffer2.getData();
                while (i12 < numComponents) {
                    intBuffer2.put(i14 + i12, intBuffer.get(i13 + i12));
                    i12++;
                }
                return;
            case 8:
            case 9:
                ShortBuffer shortBuffer = (ShortBuffer) vertexBuffer.getData();
                ShortBuffer shortBuffer2 = (ShortBuffer) vertexBuffer2.getData();
                while (i12 < numComponents) {
                    shortBuffer2.put(i14 + i12, shortBuffer.get(i13 + i12));
                    i12++;
                }
                return;
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
        }
    }

    public static boolean b(VertexBuffer vertexBuffer, int i10, int i11) {
        int numElements = vertexBuffer.getNumElements() - 1;
        C13702E.i(i10, "index1", 0, numElements);
        C13702E.i(i11, "index2", 0, numElements);
        if (i10 == i11) {
            return true;
        }
        int numComponents = vertexBuffer.getNumComponents();
        VertexBuffer.Format format = vertexBuffer.getFormat();
        if (format == VertexBuffer.Format.Half) {
            numComponents *= 2;
        }
        int i12 = i10 * numComponents;
        int i13 = i11 * numComponents;
        switch (a.f92109a[format.ordinal()]) {
            case 1:
            case 2:
            case 3:
                ByteBuffer byteBuffer = (ByteBuffer) vertexBuffer.getData();
                for (int i14 = 0; i14 < numComponents; i14++) {
                    if (byteBuffer.get(i12 + i14) != byteBuffer.get(i13 + i14)) {
                        return false;
                    }
                }
                return true;
            case 4:
                DoubleBuffer doubleBuffer = (DoubleBuffer) vertexBuffer.getData();
                for (int i15 = 0; i15 < numComponents; i15++) {
                    if (doubleBuffer.get(i12 + i15) != doubleBuffer.get(i13 + i15)) {
                        return false;
                    }
                }
                return true;
            case 5:
                FloatBuffer floatBuffer = (FloatBuffer) vertexBuffer.getData();
                for (int i16 = 0; i16 < numComponents; i16++) {
                    if (floatBuffer.get(i12 + i16) != floatBuffer.get(i13 + i16)) {
                        return false;
                    }
                }
                return true;
            case 6:
            case 7:
                IntBuffer intBuffer = (IntBuffer) vertexBuffer.getData();
                for (int i17 = 0; i17 < numComponents; i17++) {
                    if (intBuffer.get(i12 + i17) != intBuffer.get(i13 + i17)) {
                        return false;
                    }
                }
                return true;
            case 8:
            case 9:
                ShortBuffer shortBuffer = (ShortBuffer) vertexBuffer.getData();
                for (int i18 = 0; i18 < numComponents; i18++) {
                    if (shortBuffer.get(i12 + i18) != shortBuffer.get(i13 + i18)) {
                        return false;
                    }
                }
                return true;
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
        }
    }

    public static void c(float f10, VertexBuffer vertexBuffer, int i10, int i11, VertexBuffer vertexBuffer2, int i12) {
        int numElements = vertexBuffer.getNumElements() - 1;
        int i13 = 0;
        C13702E.i(i10, "source index(t=0)", 0, numElements);
        C13702E.i(i11, "source index(t=1)", 0, numElements);
        C13702E.i(i12, "target index", 0, vertexBuffer2.getNumElements() - 1);
        C13702E.H(vertexBuffer.getBufferType() == vertexBuffer2.getBufferType(), "same buffer type");
        C13702E.H(vertexBuffer.getNumComponents() == vertexBuffer2.getNumComponents(), "same number of components");
        C13702E.H(vertexBuffer2.getFormat() == VertexBuffer.Format.Float, "Float format");
        int numComponents = vertexBuffer2.getNumComponents();
        VertexBuffer.Format format = vertexBuffer2.getFormat();
        if (format == VertexBuffer.Format.Half) {
            numComponents *= 2;
        }
        int i14 = i10 * numComponents;
        int i15 = i11 * numComponents;
        int i16 = i12 * numComponents;
        FloatBuffer floatBuffer = (FloatBuffer) vertexBuffer2.getData();
        switch (a.f92109a[format.ordinal()]) {
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, byteBuffer.get(i14 + i13), byteBuffer.get(i15 + i13)));
                    i13++;
                }
                return;
            case 2:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
            case 3:
                ByteBuffer byteBuffer2 = (ByteBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, byteBuffer2.get(i14 + i13) & 255, byteBuffer2.get(i15 + i13) & 255));
                    i13++;
                }
                return;
            case 4:
                DoubleBuffer doubleBuffer = (DoubleBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, (float) doubleBuffer.get(i14 + i13), (float) doubleBuffer.get(i15 + i13)));
                    i13++;
                }
                return;
            case 5:
                FloatBuffer floatBuffer2 = (FloatBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, floatBuffer2.get(i14 + i13), floatBuffer2.get(i15 + i13)));
                    i13++;
                }
                return;
            case 6:
                IntBuffer intBuffer = (IntBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, intBuffer.get(i14 + i13), intBuffer.get(i15 + i13)));
                    i13++;
                }
                return;
            case 7:
                IntBuffer intBuffer2 = (IntBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, (float) (intBuffer2.get(i14 + i13) & 4294967295L), (float) (intBuffer2.get(i15 + i13) & 4294967295L)));
                    i13++;
                }
                return;
            case 8:
                ShortBuffer shortBuffer = (ShortBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, shortBuffer.get(i14 + i13), shortBuffer.get(i15 + i13)));
                    i13++;
                }
                return;
            case 9:
                ShortBuffer shortBuffer2 = (ShortBuffer) vertexBuffer.getData();
                while (i13 < numComponents) {
                    floatBuffer.put(i16 + i13, f.y(f10, shortBuffer2.get(i14 + i13) & 65535, shortBuffer2.get(i15 + i13) & 65535));
                    i13++;
                }
                return;
        }
    }

    public static void d(float f10, float f11, VertexBuffer vertexBuffer, int i10, int i11, int i12, VertexBuffer vertexBuffer2, int i13) {
        int numElements = vertexBuffer.getNumElements() - 1;
        int i14 = 0;
        C13702E.i(i10, "source index(0,0)", 0, numElements);
        C13702E.i(i11, "source index(1,0)", 0, numElements);
        C13702E.i(i12, "source index(0,1)", 0, numElements);
        C13702E.i(i13, "target index", 0, vertexBuffer2.getNumElements() - 1);
        C13702E.H(vertexBuffer.getBufferType() == vertexBuffer2.getBufferType(), "same buffer type");
        C13702E.H(vertexBuffer.getNumComponents() == vertexBuffer2.getNumComponents(), "same number of components");
        C13702E.H(vertexBuffer2.getFormat() == VertexBuffer.Format.Float, "Float format");
        int numComponents = vertexBuffer2.getNumComponents();
        VertexBuffer.Format format = vertexBuffer2.getFormat();
        if (format == VertexBuffer.Format.Half) {
            numComponents *= 2;
        }
        int i15 = i10 * numComponents;
        int i16 = i11 * numComponents;
        int i17 = i12 * numComponents;
        int i18 = i13 * numComponents;
        FloatBuffer floatBuffer = (FloatBuffer) vertexBuffer2.getData();
        switch (a.f92109a[format.ordinal()]) {
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, byteBuffer.get(i15 + i14), byteBuffer.get(i16 + i14), byteBuffer.get(i17 + i14)));
                    i14++;
                }
                return;
            case 2:
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
            case 3:
                ByteBuffer byteBuffer2 = (ByteBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, byteBuffer2.get(i15 + i14) & 255, byteBuffer2.get(i16 + i14) & 255, byteBuffer2.get(i17 + i14) & 255));
                    i14++;
                }
                return;
            case 4:
                DoubleBuffer doubleBuffer = (DoubleBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, (float) doubleBuffer.get(i15 + i14), (float) doubleBuffer.get(i16 + i14), (float) doubleBuffer.get(i17 + i14)));
                    i14++;
                }
                return;
            case 5:
                FloatBuffer floatBuffer2 = (FloatBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, floatBuffer2.get(i15 + i14), floatBuffer2.get(i16 + i14), floatBuffer2.get(i17 + i14)));
                    i14++;
                }
                return;
            case 6:
                IntBuffer intBuffer = (IntBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, intBuffer.get(i15 + i14), intBuffer.get(i16 + i14), intBuffer.get(i17 + i14)));
                    i14++;
                }
                return;
            case 7:
                IntBuffer intBuffer2 = (IntBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    int i19 = i16;
                    floatBuffer.put(i18 + i14, f.z(f10, f11, (float) (intBuffer2.get(i15 + i14) & 4294967295L), (float) (intBuffer2.get(i16 + i14) & 4294967295L), (float) (intBuffer2.get(i17 + i14) & 4294967295L)));
                    i14++;
                    i16 = i19;
                    i17 = i17;
                }
                return;
            case 8:
                ShortBuffer shortBuffer = (ShortBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, shortBuffer.get(i15 + i14), shortBuffer.get(i16 + i14), shortBuffer.get(i17 + i14)));
                    i14++;
                }
                return;
            case 9:
                ShortBuffer shortBuffer2 = (ShortBuffer) vertexBuffer.getData();
                while (i14 < numComponents) {
                    floatBuffer.put(i18 + i14, f.z(f10, f11, shortBuffer2.get(i15 + i14) & 65535, shortBuffer2.get(i16 + i14) & 65535, shortBuffer2.get(i17 + i14) & 65535));
                    i14++;
                }
                return;
        }
    }

    public static void e(VertexBuffer vertexBuffer, int i10, int i11) {
        int numElements = vertexBuffer.getNumElements() - 1;
        int i12 = 0;
        C13702E.i(i10, "index1", 0, numElements);
        C13702E.i(i11, "index2", 0, numElements);
        if (i10 == i11) {
            return;
        }
        int numComponents = vertexBuffer.getNumComponents();
        VertexBuffer.Format format = vertexBuffer.getFormat();
        if (format == VertexBuffer.Format.Half) {
            numComponents *= 2;
        }
        int i13 = i10 * numComponents;
        int i14 = i11 * numComponents;
        switch (a.f92109a[format.ordinal()]) {
            case 1:
            case 2:
            case 3:
                ByteBuffer byteBuffer = (ByteBuffer) vertexBuffer.getData();
                while (i12 < numComponents) {
                    int i15 = i13 + i12;
                    byte b10 = byteBuffer.get(i15);
                    int i16 = i14 + i12;
                    byteBuffer.put(i15, byteBuffer.get(i16));
                    byteBuffer.put(i16, b10);
                    i12++;
                }
                return;
            case 4:
                DoubleBuffer doubleBuffer = (DoubleBuffer) vertexBuffer.getData();
                while (i12 < numComponents) {
                    int i17 = i13 + i12;
                    double d10 = doubleBuffer.get(i17);
                    int i18 = i14 + i12;
                    doubleBuffer.put(i17, doubleBuffer.get(i18));
                    doubleBuffer.put(i18, d10);
                    i12++;
                }
                return;
            case 5:
                FloatBuffer floatBuffer = (FloatBuffer) vertexBuffer.getData();
                while (i12 < numComponents) {
                    int i19 = i13 + i12;
                    float f10 = floatBuffer.get(i19);
                    int i20 = i14 + i12;
                    floatBuffer.put(i19, floatBuffer.get(i20));
                    floatBuffer.put(i20, f10);
                    i12++;
                }
                return;
            case 6:
            case 7:
                IntBuffer intBuffer = (IntBuffer) vertexBuffer.getData();
                while (i12 < numComponents) {
                    int i21 = i13 + i12;
                    int i22 = intBuffer.get(i21);
                    int i23 = i14 + i12;
                    intBuffer.put(i21, intBuffer.get(i23));
                    intBuffer.put(i23, i22);
                    i12++;
                }
                return;
            case 8:
            case 9:
                ShortBuffer shortBuffer = (ShortBuffer) vertexBuffer.getData();
                while (i12 < numComponents) {
                    int i24 = i13 + i12;
                    short s10 = shortBuffer.get(i24);
                    int i25 = i14 + i12;
                    shortBuffer.put(i24, shortBuffer.get(i25));
                    shortBuffer.put(i25, s10);
                    i12++;
                }
                return;
            default:
                throw new UnsupportedOperationException("Unrecognized buffer format: " + ((Object) format));
        }
    }
}
