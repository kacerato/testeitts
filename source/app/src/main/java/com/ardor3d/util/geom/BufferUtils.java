package com.ardor3d.util.geom;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.Vector4;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.math.type.ReadOnlyVector4;
import com.ardor3d.scenegraph.ByteBufferData;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.IntBufferData;
import com.ardor3d.scenegraph.ShortBufferData;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.Constants;
import com.google.common.collect.O1;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public final class BufferUtils {
    private static final Map<Buffer, Object> trackingHash = new O1().l().i();
    private static final Object ref = new Object();

    public static void addInBuffer(ReadOnlyVector4 readOnlyVector4, FloatBuffer floatBuffer, int i10) {
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.addLocal(readOnlyVector4);
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector4.releaseTempInstance(fetchTempInstance);
    }

    public static DoubleBuffer clone(DoubleBuffer doubleBuffer) {
        DoubleBuffer createDoubleBufferOnHeap;
        if (doubleBuffer == null) {
            return null;
        }
        doubleBuffer.rewind();
        if (doubleBuffer.isDirect()) {
            createDoubleBufferOnHeap = createDoubleBuffer(doubleBuffer.limit());
        } else {
            createDoubleBufferOnHeap = createDoubleBufferOnHeap(doubleBuffer.limit());
        }
        createDoubleBufferOnHeap.put(doubleBuffer);
        return createDoubleBufferOnHeap;
    }

    public static ByteBuffer cloneOnHeap(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        byteBuffer.rewind();
        ByteBuffer createByteBufferOnHeap = createByteBufferOnHeap(byteBuffer.limit());
        createByteBufferOnHeap.put(byteBuffer);
        return createByteBufferOnHeap;
    }

    public static void copyInternal(FloatBuffer floatBuffer, int i10, int i11, int i12) {
        float[] fArr = new float[i12];
        floatBuffer.position(i10);
        floatBuffer.get(fArr);
        floatBuffer.position(i11);
        floatBuffer.put(fArr);
    }

    public static void copyInternalColor(FloatBuffer floatBuffer, int i10, int i11) {
        copyInternal(floatBuffer, i10 * 4, i11 * 4, 4);
    }

    public static void copyInternalVector2(FloatBuffer floatBuffer, int i10, int i11) {
        copyInternal(floatBuffer, i10 * 2, i11 * 2, 2);
    }

    public static void copyInternalVector3(FloatBuffer floatBuffer, int i10, int i11) {
        copyInternal(floatBuffer, i10 * 3, i11 * 3, 3);
    }

    public static void copyInternalVector4(FloatBuffer floatBuffer, int i10, int i11) {
        copyInternal(floatBuffer, i10 * 4, i11 * 4, 4);
    }

    public static ByteBuffer createByteBuffer(int i10) {
        ByteBuffer order = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        order.clear();
        if (Constants.trackDirectMemory) {
            trackingHash.put(order, ref);
        }
        return order;
    }

    public static ByteBuffer createByteBufferOnHeap(int i10) {
        ByteBuffer order = ByteBuffer.allocate(i10).order(ByteOrder.nativeOrder());
        order.clear();
        return order;
    }

    public static FloatBuffer createColorBuffer(int i10) {
        return createFloatBuffer(i10 * 4);
    }

    public static DoubleBuffer createDoubleBuffer(int i10) {
        DoubleBuffer asDoubleBuffer = ByteBuffer.allocateDirect(i10 * 8).order(ByteOrder.nativeOrder()).asDoubleBuffer();
        asDoubleBuffer.clear();
        if (Constants.trackDirectMemory) {
            trackingHash.put(asDoubleBuffer, ref);
        }
        return asDoubleBuffer;
    }

    public static DoubleBuffer createDoubleBufferOnHeap(int i10) {
        DoubleBuffer asDoubleBuffer = ByteBuffer.allocate(i10 * 8).order(ByteOrder.nativeOrder()).asDoubleBuffer();
        asDoubleBuffer.clear();
        return asDoubleBuffer;
    }

    public static FloatBuffer createFloatBuffer(ReadOnlyColorRGBA... readOnlyColorRGBAArr) {
        if (readOnlyColorRGBAArr == null) {
            return null;
        }
        return createFloatBuffer(0, readOnlyColorRGBAArr.length, readOnlyColorRGBAArr);
    }

    public static FloatBuffer createFloatBufferOnHeap(int i10) {
        FloatBuffer asFloatBuffer = ByteBuffer.allocate(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.clear();
        return asFloatBuffer;
    }

    public static IndexBufferData<?> createIndexBufferData(int i10, int i11) {
        if (i11 < 256) {
            return createIndexBufferData(i10, (Class<? extends IndexBufferData<?>>) ByteBufferData.class);
        }
        if (i11 < 65536) {
            return createIndexBufferData(i10, (Class<? extends IndexBufferData<?>>) ShortBufferData.class);
        }
        return createIndexBufferData(i10, (Class<? extends IndexBufferData<?>>) IntBufferData.class);
    }

    public static IntBuffer createIntBuffer(int... iArr) {
        if (iArr == null) {
            return null;
        }
        IntBuffer createIntBuffer = createIntBuffer(iArr.length);
        createIntBuffer.clear();
        createIntBuffer.put(iArr);
        createIntBuffer.flip();
        return createIntBuffer;
    }

    public static IntBuffer createIntBufferOnHeap(int i10) {
        IntBuffer asIntBuffer = ByteBuffer.allocate(i10 * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
        asIntBuffer.clear();
        return asIntBuffer;
    }

    public static ShortBuffer createShortBuffer(int i10) {
        ShortBuffer asShortBuffer = ByteBuffer.allocateDirect(i10 * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        asShortBuffer.clear();
        if (Constants.trackDirectMemory) {
            trackingHash.put(asShortBuffer, ref);
        }
        return asShortBuffer;
    }

    public static ShortBuffer createShortBufferOnHeap(int i10) {
        ShortBuffer asShortBuffer = ByteBuffer.allocate(i10 * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        asShortBuffer.clear();
        return asShortBuffer;
    }

    public static FloatBuffer createVector2Buffer(int i10) {
        return createFloatBuffer(i10 * 2);
    }

    public static FloatBuffer createVector3Buffer(int i10) {
        return createFloatBuffer(i10 * 3);
    }

    public static FloatBuffer createVector4Buffer(int i10) {
        return createFloatBuffer(i10 * 4);
    }

    public static FloatBuffer ensureLargeEnough(FloatBuffer floatBuffer, int i10) {
        if (floatBuffer != null && floatBuffer.remaining() >= i10) {
            return floatBuffer;
        }
        int position = floatBuffer != null ? floatBuffer.position() : 0;
        FloatBuffer createFloatBuffer = createFloatBuffer(i10 + position);
        if (floatBuffer != null) {
            floatBuffer.rewind();
            createFloatBuffer.put(floatBuffer);
            createFloatBuffer.position(position);
        }
        return createFloatBuffer;
    }

    public static boolean equals(ReadOnlyColorRGBA readOnlyColorRGBA, FloatBuffer floatBuffer, int i10) {
        ColorRGBA colorRGBA = new ColorRGBA();
        populateFromBuffer(colorRGBA, floatBuffer, i10);
        return colorRGBA.equals(readOnlyColorRGBA);
    }

    public static ColorRGBA[] getColorArray(FloatBuffer floatBuffer) {
        floatBuffer.rewind();
        int limit = floatBuffer.limit() >> 2;
        ColorRGBA[] colorRGBAArr = new ColorRGBA[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            colorRGBAArr[i10] = new ColorRGBA(floatBuffer.get(), floatBuffer.get(), floatBuffer.get(), floatBuffer.get());
        }
        return colorRGBAArr;
    }

    public static float[] getFloatArray(FloatBuffer floatBuffer) {
        if (floatBuffer == null) {
            return null;
        }
        floatBuffer.clear();
        int limit = floatBuffer.limit();
        float[] fArr = new float[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            fArr[i10] = floatBuffer.get();
        }
        return fArr;
    }

    public static int[] getIntArray(IntBuffer intBuffer) {
        if (intBuffer == null) {
            return null;
        }
        intBuffer.rewind();
        int limit = intBuffer.limit();
        int[] iArr = new int[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            iArr[i10] = intBuffer.get();
        }
        return iArr;
    }

    public static Vector2[] getVector2Array(FloatBuffer floatBuffer) {
        floatBuffer.clear();
        int limit = floatBuffer.limit() / 2;
        Vector2[] vector2Arr = new Vector2[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            vector2Arr[i10] = new Vector2(floatBuffer.get(), floatBuffer.get());
        }
        return vector2Arr;
    }

    public static Vector3[] getVector3Array(FloatBuffer floatBuffer) {
        floatBuffer.clear();
        int limit = floatBuffer.limit() / 3;
        Vector3[] vector3Arr = new Vector3[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            vector3Arr[i10] = new Vector3(floatBuffer.get(), floatBuffer.get(), floatBuffer.get());
        }
        return vector3Arr;
    }

    public static Vector4[] getVector4Array(FloatBuffer floatBuffer) {
        floatBuffer.clear();
        int limit = floatBuffer.limit() / 4;
        Vector4[] vector4Arr = new Vector4[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            vector4Arr[i10] = new Vector4(floatBuffer.get(), floatBuffer.get(), floatBuffer.get(), floatBuffer.get());
        }
        return vector4Arr;
    }

    public static void multInBuffer(ReadOnlyVector4 readOnlyVector4, FloatBuffer floatBuffer, int i10) {
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.multiplyLocal(readOnlyVector4);
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector4.releaseTempInstance(fetchTempInstance);
    }

    public static void normalizeVector2(FloatBuffer floatBuffer, int i10) {
        Vector2 fetchTempInstance = Vector2.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.normalizeLocal();
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector2.releaseTempInstance(fetchTempInstance);
    }

    public static void normalizeVector3(FloatBuffer floatBuffer, int i10) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.normalizeLocal();
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector3.releaseTempInstance(fetchTempInstance);
    }

    public static void normalizeVector4(FloatBuffer floatBuffer, int i10) {
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.normalizeLocal();
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector4.releaseTempInstance(fetchTempInstance);
    }

    public static void populateFromBuffer(ColorRGBA colorRGBA, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 4;
        colorRGBA.setRed(floatBuffer.get(i11));
        colorRGBA.setGreen(floatBuffer.get(i11 + 1));
        colorRGBA.setBlue(floatBuffer.get(i11 + 2));
        colorRGBA.setAlpha(floatBuffer.get(i11 + 3));
    }

    public static void printCurrentDirectMemory(StringBuilder sb2) {
        ArrayList arrayList;
        Iterator it;
        ArrayList arrayList2 = new ArrayList(trackingHash.o());
        Iterator it2 = arrayList2.iterator();
        long j10 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (it2.hasNext()) {
            Buffer buffer = (Buffer) it2.next();
            if (buffer instanceof ByteBuffer) {
                arrayList = arrayList2;
                it = it2;
                j10 += buffer.capacity();
                i10 += buffer.capacity();
                i11++;
            } else {
                arrayList = arrayList2;
                it = it2;
                if (buffer instanceof FloatBuffer) {
                    j10 += buffer.capacity() * 4;
                    i12 += buffer.capacity() * 4;
                    i13++;
                } else if (buffer instanceof IntBuffer) {
                    j10 += buffer.capacity() * 4;
                    i17 += buffer.capacity() * 4;
                    i14++;
                } else if (buffer instanceof ShortBuffer) {
                    j10 += buffer.capacity() * 2;
                    i18 += buffer.capacity() * 2;
                    i15++;
                } else if (buffer instanceof DoubleBuffer) {
                    j10 += buffer.capacity() * 8;
                    i19 += buffer.capacity() * 8;
                    i16++;
                }
            }
            arrayList2 = arrayList;
            it2 = it;
        }
        ArrayList arrayList3 = arrayList2;
        boolean z10 = sb2 == null;
        StringBuilder sb3 = sb2 == null ? new StringBuilder() : sb2;
        sb3.append("Existing buffers: ");
        sb3.append(arrayList3.size());
        sb3.append("\n");
        sb3.append("(b: ");
        sb3.append(i11);
        sb3.append("  f: ");
        sb3.append(i13);
        sb3.append("  i: ");
        sb3.append(i14);
        sb3.append("  s: ");
        sb3.append(i15);
        sb3.append("  d: ");
        sb3.append(i16);
        sb3.append(")");
        sb3.append("\n");
        sb3.append("Total direct memory held: ");
        sb3.append(j10 / 1024);
        sb3.append("kb\n");
        sb3.append("(b: ");
        sb3.append(i10 / 1024);
        sb3.append("kb  f: ");
        sb3.append(i12 / 1024);
        sb3.append("kb  i: ");
        sb3.append(i17 / 1024);
        sb3.append("kb  s: ");
        sb3.append(i18 / 1024);
        sb3.append("kb  d: ");
        sb3.append(i19 / 1024);
        sb3.append("kb)");
        sb3.append("\n");
        if (z10) {
            System.out.println(sb3.toString());
        }
    }

    public static void setInBuffer(ReadOnlyColorRGBA readOnlyColorRGBA, FloatBuffer floatBuffer, int i10) {
        floatBuffer.position(i10 * 4);
        floatBuffer.put(readOnlyColorRGBA.getRed());
        floatBuffer.put(readOnlyColorRGBA.getGreen());
        floatBuffer.put(readOnlyColorRGBA.getBlue());
        floatBuffer.put(readOnlyColorRGBA.getAlpha());
    }

    public static FloatBuffer createFloatBuffer(int i10, int i11, ReadOnlyColorRGBA... readOnlyColorRGBAArr) {
        if (readOnlyColorRGBAArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(i11 * 4);
        while (i10 < i11) {
            ReadOnlyColorRGBA readOnlyColorRGBA = readOnlyColorRGBAArr[i10];
            if (readOnlyColorRGBA != null) {
                createFloatBuffer.put(readOnlyColorRGBA.getRed()).put(readOnlyColorRGBAArr[i10].getGreen()).put(readOnlyColorRGBAArr[i10].getBlue()).put(readOnlyColorRGBAArr[i10].getAlpha());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f).put(0.0f);
            }
            i10++;
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static FloatBuffer createVector2Buffer(FloatBuffer floatBuffer, int i10) {
        if (floatBuffer != null && floatBuffer.limit() == i10 * 2) {
            floatBuffer.rewind();
            return floatBuffer;
        }
        return createFloatBuffer(i10 * 2);
    }

    public static FloatBuffer createVector3Buffer(FloatBuffer floatBuffer, int i10) {
        if (floatBuffer != null && floatBuffer.limit() == i10 * 3) {
            floatBuffer.rewind();
            return floatBuffer;
        }
        return createFloatBuffer(i10 * 3);
    }

    public static FloatBuffer createVector4Buffer(FloatBuffer floatBuffer, int i10) {
        if (floatBuffer != null && floatBuffer.limit() == i10 * 4) {
            floatBuffer.rewind();
            return floatBuffer;
        }
        return createFloatBuffer(i10 * 4);
    }

    public static ByteBuffer createByteBufferOnHeap(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer != null && byteBuffer.limit() == i10) {
            byteBuffer.rewind();
            return byteBuffer;
        }
        return createByteBufferOnHeap(i10);
    }

    public static IndexBufferData<?> createIndexBufferData(int i10, Class<? extends IndexBufferData<?>> cls) {
        try {
            return cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(i10));
        } catch (Exception e10) {
            throw new Ardor3dException(e10.getMessage(), e10);
        }
    }

    public static boolean equals(ReadOnlyVector4 readOnlyVector4, FloatBuffer floatBuffer, int i10) {
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        boolean equals = fetchTempInstance.equals(readOnlyVector4);
        Vector4.releaseTempInstance(fetchTempInstance);
        return equals;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.nio.Buffer] */
    public static int[] getIntArray(IndexBufferData<?> indexBufferData) {
        if (indexBufferData == null || indexBufferData.getBufferLimit() == 0) {
            return null;
        }
        indexBufferData.getBuffer().rewind();
        int bufferLimit = indexBufferData.getBufferLimit();
        int[] iArr = new int[bufferLimit];
        for (int i10 = 0; i10 < bufferLimit; i10++) {
            iArr[i10] = indexBufferData.get();
        }
        return iArr;
    }

    public static ByteBuffer createByteBuffer(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer != null && byteBuffer.limit() == i10) {
            byteBuffer.rewind();
            return byteBuffer;
        }
        return createByteBuffer(i10);
    }

    public static DoubleBuffer createDoubleBuffer(DoubleBuffer doubleBuffer, int i10) {
        if (doubleBuffer != null && doubleBuffer.limit() == i10) {
            doubleBuffer.rewind();
            return doubleBuffer;
        }
        return createDoubleBuffer(i10);
    }

    public static IntBuffer createIntBuffer(int i10) {
        IntBuffer asIntBuffer = ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
        asIntBuffer.clear();
        if (Constants.trackDirectMemory) {
            trackingHash.put(asIntBuffer, ref);
        }
        return asIntBuffer;
    }

    public static ShortBuffer createShortBuffer(short... sArr) {
        if (sArr == null) {
            return null;
        }
        ShortBuffer createShortBuffer = createShortBuffer(sArr.length);
        createShortBuffer.clear();
        createShortBuffer.put(sArr);
        createShortBuffer.flip();
        return createShortBuffer;
    }

    public static void populateFromBuffer(Vector4 vector4, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 4;
        vector4.setX(floatBuffer.get(i11));
        vector4.setY(floatBuffer.get(i11 + 1));
        vector4.setZ(floatBuffer.get(i11 + 2));
        vector4.setW(floatBuffer.get(i11 + 3));
    }

    public static void addInBuffer(ReadOnlyVector3 readOnlyVector3, FloatBuffer floatBuffer, int i10) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.addLocal(readOnlyVector3);
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector3.releaseTempInstance(fetchTempInstance);
    }

    public static FloatBuffer clone(FloatBuffer floatBuffer) {
        FloatBuffer createFloatBufferOnHeap;
        if (floatBuffer == null) {
            return null;
        }
        floatBuffer.rewind();
        if (floatBuffer.isDirect()) {
            createFloatBufferOnHeap = createFloatBuffer(floatBuffer.limit());
        } else {
            createFloatBufferOnHeap = createFloatBufferOnHeap(floatBuffer.limit());
        }
        createFloatBufferOnHeap.put(floatBuffer);
        return createFloatBufferOnHeap;
    }

    public static void multInBuffer(ReadOnlyVector3 readOnlyVector3, FloatBuffer floatBuffer, int i10) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.multiplyLocal(readOnlyVector3);
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector3.releaseTempInstance(fetchTempInstance);
    }

    public static void setInBuffer(ReadOnlyVector4 readOnlyVector4, FloatBuffer floatBuffer, int i10) {
        if (floatBuffer == null) {
            return;
        }
        if (readOnlyVector4 == null) {
            int i11 = i10 * 4;
            floatBuffer.put(i11, 0.0f);
            floatBuffer.put(i11 + 1, 0.0f);
            floatBuffer.put(i11 + 2, 0.0f);
            floatBuffer.put(i11 + 3, 0.0f);
            return;
        }
        int i12 = i10 * 4;
        floatBuffer.put(i12, readOnlyVector4.getXf());
        floatBuffer.put(i12 + 1, readOnlyVector4.getYf());
        floatBuffer.put(i12 + 2, readOnlyVector4.getZf());
        floatBuffer.put(i12 + 3, readOnlyVector4.getWf());
    }

    public static FloatBuffer createFloatBuffer(ReadOnlyVector4... readOnlyVector4Arr) {
        if (readOnlyVector4Arr == null) {
            return null;
        }
        return createFloatBuffer(0, readOnlyVector4Arr.length, readOnlyVector4Arr);
    }

    public static FloatBuffer createFloatBuffer(int i10, int i11, ReadOnlyVector4... readOnlyVector4Arr) {
        if (readOnlyVector4Arr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(i11 * 4);
        while (i10 < i11) {
            ReadOnlyVector4 readOnlyVector4 = readOnlyVector4Arr[i10];
            if (readOnlyVector4 != null) {
                createFloatBuffer.put(readOnlyVector4.getXf()).put(readOnlyVector4Arr[i10].getYf()).put(readOnlyVector4Arr[i10].getZf()).put(readOnlyVector4Arr[i10].getWf());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f);
            }
            i10++;
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static boolean equals(ReadOnlyVector3 readOnlyVector3, FloatBuffer floatBuffer, int i10) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        boolean equals = fetchTempInstance.equals(readOnlyVector3);
        Vector3.releaseTempInstance(fetchTempInstance);
        return equals;
    }

    public static IntBuffer createIntBuffer(IntBuffer intBuffer, int i10) {
        if (intBuffer != null && intBuffer.limit() == i10) {
            intBuffer.rewind();
            return intBuffer;
        }
        return createIntBuffer(i10);
    }

    public static ShortBuffer createShortBuffer(ShortBuffer shortBuffer, int i10) {
        if (shortBuffer != null && shortBuffer.limit() == i10) {
            shortBuffer.rewind();
            return shortBuffer;
        }
        return createShortBuffer(i10);
    }

    public static void populateFromBuffer(Vector3 vector3, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 3;
        vector3.setX(floatBuffer.get(i11));
        vector3.setY(floatBuffer.get(i11 + 1));
        vector3.setZ(floatBuffer.get(i11 + 2));
    }

    public static void addInBuffer(ReadOnlyVector2 readOnlyVector2, FloatBuffer floatBuffer, int i10) {
        Vector2 fetchTempInstance = Vector2.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.addLocal(readOnlyVector2);
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector2.releaseTempInstance(fetchTempInstance);
    }

    public static IntBuffer clone(IntBuffer intBuffer) {
        IntBuffer createIntBufferOnHeap;
        if (intBuffer == null) {
            return null;
        }
        intBuffer.rewind();
        if (intBuffer.isDirect()) {
            createIntBufferOnHeap = createIntBuffer(intBuffer.limit());
        } else {
            createIntBufferOnHeap = createIntBufferOnHeap(intBuffer.limit());
        }
        createIntBufferOnHeap.put(intBuffer);
        return createIntBufferOnHeap;
    }

    public static void multInBuffer(ReadOnlyVector2 readOnlyVector2, FloatBuffer floatBuffer, int i10) {
        Vector2 fetchTempInstance = Vector2.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        fetchTempInstance.multiplyLocal(readOnlyVector2);
        setInBuffer(fetchTempInstance, floatBuffer, i10);
        Vector2.releaseTempInstance(fetchTempInstance);
    }

    public static boolean equals(ReadOnlyVector2 readOnlyVector2, FloatBuffer floatBuffer, int i10) {
        Vector2 fetchTempInstance = Vector2.fetchTempInstance();
        populateFromBuffer(fetchTempInstance, floatBuffer, i10);
        boolean equals = fetchTempInstance.equals(readOnlyVector2);
        Vector2.releaseTempInstance(fetchTempInstance);
        return equals;
    }

    public static void populateFromBuffer(Vector2 vector2, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 2;
        vector2.setX(floatBuffer.get(i11));
        vector2.setY(floatBuffer.get(i11 + 1));
    }

    public static FloatBuffer createFloatBuffer(ReadOnlyVector3... readOnlyVector3Arr) {
        if (readOnlyVector3Arr == null) {
            return null;
        }
        return createFloatBuffer(0, readOnlyVector3Arr.length, readOnlyVector3Arr);
    }

    public static FloatBuffer createFloatBuffer(int i10, int i11, ReadOnlyVector3... readOnlyVector3Arr) {
        if (readOnlyVector3Arr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(i11 * 3);
        while (i10 < i11) {
            ReadOnlyVector3 readOnlyVector3 = readOnlyVector3Arr[i10];
            if (readOnlyVector3 != null) {
                createFloatBuffer.put(readOnlyVector3.getXf()).put(readOnlyVector3Arr[i10].getYf()).put(readOnlyVector3Arr[i10].getZf());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f);
            }
            i10++;
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static void setInBuffer(ReadOnlyVector3 readOnlyVector3, FloatBuffer floatBuffer, int i10) {
        if (floatBuffer == null) {
            return;
        }
        if (readOnlyVector3 == null) {
            int i11 = i10 * 3;
            floatBuffer.put(i11, 0.0f);
            floatBuffer.put(i11 + 1, 0.0f);
            floatBuffer.put(i11 + 2, 0.0f);
            return;
        }
        int i12 = i10 * 3;
        floatBuffer.put(i12, readOnlyVector3.getXf());
        floatBuffer.put(i12 + 1, readOnlyVector3.getYf());
        floatBuffer.put(i12 + 2, readOnlyVector3.getZf());
    }

    public static ByteBuffer clone(ByteBuffer byteBuffer) {
        ByteBuffer createByteBufferOnHeap;
        if (byteBuffer == null) {
            return null;
        }
        byteBuffer.rewind();
        if (byteBuffer.isDirect()) {
            createByteBufferOnHeap = createByteBuffer(byteBuffer.limit());
        } else {
            createByteBufferOnHeap = createByteBufferOnHeap(byteBuffer.limit());
        }
        createByteBufferOnHeap.put(byteBuffer);
        return createByteBufferOnHeap;
    }

    public static FloatBuffer createFloatBuffer(ReadOnlyVector2... readOnlyVector2Arr) {
        if (readOnlyVector2Arr == null) {
            return null;
        }
        return createFloatBuffer(0, readOnlyVector2Arr.length, readOnlyVector2Arr);
    }

    public static FloatBuffer createFloatBuffer(int i10, int i11, ReadOnlyVector2... readOnlyVector2Arr) {
        if (readOnlyVector2Arr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(i11 * 2);
        while (i10 < i11) {
            ReadOnlyVector2 readOnlyVector2 = readOnlyVector2Arr[i10];
            if (readOnlyVector2 != null) {
                createFloatBuffer.put(readOnlyVector2.getXf()).put(readOnlyVector2Arr[i10].getYf());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f);
            }
            i10++;
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static void setInBuffer(ReadOnlyVector2 readOnlyVector2, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 2;
        floatBuffer.put(i11, readOnlyVector2.getXf());
        floatBuffer.put(i11 + 1, readOnlyVector2.getYf());
    }

    public static ShortBuffer clone(ShortBuffer shortBuffer) {
        ShortBuffer createShortBufferOnHeap;
        if (shortBuffer == null) {
            return null;
        }
        shortBuffer.rewind();
        if (shortBuffer.isDirect()) {
            createShortBufferOnHeap = createShortBuffer(shortBuffer.limit());
        } else {
            createShortBufferOnHeap = createShortBufferOnHeap(shortBuffer.limit());
        }
        createShortBufferOnHeap.put(shortBuffer);
        return createShortBufferOnHeap;
    }

    public static FloatBuffer createFloatBuffer(int i10) {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.clear();
        if (Constants.trackDirectMemory) {
            trackingHash.put(asFloatBuffer, ref);
        }
        return asFloatBuffer;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.nio.Buffer] */
    public static IndexBufferData<?> clone(IndexBufferData<?> indexBufferData) {
        if (indexBufferData == null) {
            return null;
        }
        IndexBufferData<?> createIndexBufferData = createIndexBufferData(indexBufferData.getBufferLimit(), (Class<? extends IndexBufferData<?>>) indexBufferData.getClass());
        if (indexBufferData.getBuffer() == null) {
            createIndexBufferData.setBuffer(null);
        } else {
            indexBufferData.getBuffer().rewind();
            createIndexBufferData.put(indexBufferData);
        }
        return createIndexBufferData;
    }

    public static FloatBuffer createFloatBuffer(float... fArr) {
        return createFloatBuffer(null, fArr);
    }

    public static FloatBuffer createFloatBuffer(FloatBuffer floatBuffer, float... fArr) {
        if (fArr == null) {
            return null;
        }
        if (floatBuffer != null && floatBuffer.capacity() == fArr.length) {
            floatBuffer.clear();
        } else {
            floatBuffer = createFloatBuffer(fArr.length);
        }
        floatBuffer.clear();
        floatBuffer.put(fArr);
        floatBuffer.flip();
        return floatBuffer;
    }
}
