package com.jme3.util;

import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import java.io.UnsupportedEncodingException;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public final class BufferUtils {
    static ClearReferences cleanupthread;
    private static final BufferAllocator allocator = BufferAllocatorFactory.create();
    private static boolean trackDirectMemory = false;
    private static final ReferenceQueue<Buffer> removeCollected = new ReferenceQueue<>();
    private static final ConcurrentHashMap<BufferInfo, BufferInfo> trackedBuffers = new ConcurrentHashMap<>();

    public static class BufferInfo extends PhantomReference<Buffer> {
        private int size;
        private Class type;

        public BufferInfo(Class cls, int i10, Buffer buffer, ReferenceQueue<? super Buffer> referenceQueue) {
            super(buffer, referenceQueue);
            this.type = cls;
            this.size = i10;
        }
    }

    public static class ClearReferences extends Thread {
        public ClearReferences() {
            setDaemon(true);
        }

        @Override
        public void run() {
            while (true) {
                try {
                    BufferUtils.trackedBuffers.remove(BufferUtils.removeCollected.remove());
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    private BufferUtils() {
    }

    public static void addInBuffer(Vector3f vector3f, FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        populateFromBuffer(vector3f2, floatBuffer, i10);
        vector3f2.addLocal(vector3f);
        setInBuffer(vector3f2, floatBuffer, i10);
        tempVars.release();
    }

    public static Buffer clone(Buffer buffer) {
        if (buffer instanceof FloatBuffer) {
            return clone((FloatBuffer) buffer);
        }
        if (buffer instanceof ShortBuffer) {
            return clone((ShortBuffer) buffer);
        }
        if (buffer instanceof ByteBuffer) {
            return clone((ByteBuffer) buffer);
        }
        if (buffer instanceof IntBuffer) {
            return clone((IntBuffer) buffer);
        }
        if (buffer instanceof DoubleBuffer) {
            return clone((DoubleBuffer) buffer);
        }
        throw new UnsupportedOperationException();
    }

    public static void copyInternal(FloatBuffer floatBuffer, int i10, int i11, int i12) {
        float[] fArr = new float[i12];
        floatBuffer.position(i10);
        floatBuffer.get(fArr);
        floatBuffer.position(i11);
        floatBuffer.put(fArr);
    }

    public static void copyInternalVector2(FloatBuffer floatBuffer, int i10, int i11) {
        copyInternal(floatBuffer, i10 * 2, i11 * 2, 2);
    }

    public static void copyInternalVector3(FloatBuffer floatBuffer, int i10, int i11) {
        copyInternal(floatBuffer, i10 * 3, i11 * 3, 3);
    }

    public static ByteBuffer createByteBuffer(int i10) {
        ByteBuffer order = allocator.allocate(i10).order(ByteOrder.nativeOrder());
        order.clear();
        onBufferAllocated(order);
        return order;
    }

    public static DoubleBuffer createDoubleBuffer(int i10) {
        DoubleBuffer asDoubleBuffer = allocator.allocate(i10 * 8).order(ByteOrder.nativeOrder()).asDoubleBuffer();
        asDoubleBuffer.clear();
        onBufferAllocated(asDoubleBuffer);
        return asDoubleBuffer;
    }

    public static FloatBuffer createFloatBuffer(Vector3f... vector3fArr) {
        if (vector3fArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(vector3fArr.length * 3);
        for (Vector3f vector3f : vector3fArr) {
            if (vector3f != null) {
                createFloatBuffer.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f);
            }
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
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

    public static ShortBuffer createShortBuffer(int i10) {
        ShortBuffer asShortBuffer = allocator.allocate(i10 * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        asShortBuffer.clear();
        onBufferAllocated(asShortBuffer);
        return asShortBuffer;
    }

    public static FloatBuffer createVector2Buffer(int i10) {
        return createFloatBuffer(i10 * 2);
    }

    public static FloatBuffer createVector3Buffer(int i10) {
        return createFloatBuffer(i10 * 3);
    }

    public static void destroyDirectBuffer(Buffer buffer) {
        if (isDirect(buffer)) {
            allocator.destroyDirectBuffer(buffer);
        }
    }

    public static FloatBuffer ensureLargeEnough(FloatBuffer floatBuffer, int i10) {
        if (floatBuffer != null) {
            floatBuffer.limit(floatBuffer.capacity());
        }
        if (floatBuffer != null && floatBuffer.remaining() >= i10) {
            return floatBuffer;
        }
        int position = floatBuffer != null ? floatBuffer.position() : 0;
        FloatBuffer createFloatBuffer = createFloatBuffer(i10 + position);
        if (floatBuffer != null) {
            floatBuffer.flip();
            createFloatBuffer.put(floatBuffer);
            createFloatBuffer.position(position);
        }
        return createFloatBuffer;
    }

    public static boolean equals(Vector3f vector3f, FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        populateFromBuffer(vector3f2, floatBuffer, i10);
        boolean equals = vector3f2.equals(vector3f);
        tempVars.release();
        return equals;
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
        intBuffer.clear();
        int limit = intBuffer.limit();
        int[] iArr = new int[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            iArr[i10] = intBuffer.get();
        }
        return iArr;
    }

    public static Vector2f[] getVector2Array(FloatBuffer floatBuffer) {
        floatBuffer.clear();
        int limit = floatBuffer.limit() / 2;
        Vector2f[] vector2fArr = new Vector2f[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            vector2fArr[i10] = new Vector2f(floatBuffer.get(), floatBuffer.get());
        }
        return vector2fArr;
    }

    public static Vector3f[] getVector3Array(FloatBuffer floatBuffer) {
        floatBuffer.clear();
        int limit = floatBuffer.limit() / 3;
        Vector3f[] vector3fArr = new Vector3f[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            vector3fArr[i10] = new Vector3f(floatBuffer.get(), floatBuffer.get(), floatBuffer.get());
        }
        return vector3fArr;
    }

    private static boolean isDirect(Buffer buffer) {
        return buffer.isDirect();
    }

    public static void multInBuffer(Vector3f vector3f, FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        populateFromBuffer(vector3f2, floatBuffer, i10);
        vector3f2.multLocal(vector3f);
        setInBuffer(vector3f2, floatBuffer, i10);
        tempVars.release();
    }

    public static void normalizeVector2(FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector2f vector2f = tempVars.vect2d;
        populateFromBuffer(vector2f, floatBuffer, i10);
        vector2f.normalizeLocal();
        setInBuffer(vector2f, floatBuffer, i10);
        tempVars.release();
    }

    public static void normalizeVector3(FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        populateFromBuffer(vector3f, floatBuffer, i10);
        vector3f.normalizeLocal();
        setInBuffer(vector3f, floatBuffer, i10);
        tempVars.release();
    }

    private static void onBufferAllocated(Buffer buffer) {
        if (trackDirectMemory) {
            if (cleanupthread == null) {
                ClearReferences clearReferences = new ClearReferences();
                cleanupthread = clearReferences;
                clearReferences.start();
            }
            if (buffer instanceof ByteBuffer) {
                BufferInfo bufferInfo = new BufferInfo(ByteBuffer.class, buffer.capacity(), buffer, removeCollected);
                trackedBuffers.put(bufferInfo, bufferInfo);
                return;
            }
            if (buffer instanceof FloatBuffer) {
                BufferInfo bufferInfo2 = new BufferInfo(FloatBuffer.class, buffer.capacity() * 4, buffer, removeCollected);
                trackedBuffers.put(bufferInfo2, bufferInfo2);
                return;
            }
            if (buffer instanceof IntBuffer) {
                BufferInfo bufferInfo3 = new BufferInfo(IntBuffer.class, buffer.capacity() * 4, buffer, removeCollected);
                trackedBuffers.put(bufferInfo3, bufferInfo3);
            } else if (buffer instanceof ShortBuffer) {
                BufferInfo bufferInfo4 = new BufferInfo(ShortBuffer.class, buffer.capacity() * 2, buffer, removeCollected);
                trackedBuffers.put(bufferInfo4, bufferInfo4);
            } else if (buffer instanceof DoubleBuffer) {
                BufferInfo bufferInfo5 = new BufferInfo(DoubleBuffer.class, buffer.capacity() * 8, buffer, removeCollected);
                trackedBuffers.put(bufferInfo5, bufferInfo5);
            }
        }
    }

    public static void populateFromBuffer(Vector3f vector3f, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 3;
        vector3f.f81611x = floatBuffer.get(i11);
        vector3f.f81612y = floatBuffer.get(i11 + 1);
        vector3f.f81613z = floatBuffer.get(i11 + 2);
    }

    public static void printCurrentDirectMemory(StringBuilder sb2) {
        boolean z10;
        long freeMemory = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
        int i10 = 0;
        boolean z11 = sb2 == null;
        StringBuilder sb3 = sb2 == null ? new StringBuilder() : sb2;
        if (trackDirectMemory) {
            Iterator<BufferInfo> it = trackedBuffers.values().iterator();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            z10 = z11;
            long j10 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (it.hasNext()) {
                BufferInfo next = it.next();
                Iterator<BufferInfo> it2 = it;
                long j11 = freeMemory;
                if (next.type == ByteBuffer.class) {
                    j10 += next.size;
                    i15 += next.size;
                    i10++;
                } else if (next.type == FloatBuffer.class) {
                    j10 += next.size;
                    i11 += next.size;
                    i18++;
                } else if (next.type == IntBuffer.class) {
                    j10 += next.size;
                    i12 += next.size;
                    i19++;
                } else if (next.type == ShortBuffer.class) {
                    j10 += next.size;
                    i16 += next.size;
                    i13++;
                } else if (next.type == DoubleBuffer.class) {
                    j10 += next.size;
                    i17 += next.size;
                    i14++;
                }
                it = it2;
                freeMemory = j11;
            }
            sb3.append("Existing buffers: ");
            sb3.append(trackedBuffers.size());
            sb3.append("\n");
            sb3.append("(b: ");
            sb3.append(i10);
            sb3.append("  f: ");
            sb3.append(i18);
            sb3.append("  i: ");
            sb3.append(i19);
            sb3.append("  s: ");
            sb3.append(i13);
            sb3.append("  d: ");
            sb3.append(i14);
            sb3.append(")");
            sb3.append("\n");
            sb3.append("Total   heap memory held: ");
            sb3.append(freeMemory / 1024);
            sb3.append("kb\n");
            sb3.append("Total direct memory held: ");
            sb3.append(j10 / 1024);
            sb3.append("kb\n");
            sb3.append("(b: ");
            sb3.append(i15 / 1024);
            sb3.append("kb  f: ");
            sb3.append(i11 / 1024);
            sb3.append("kb  i: ");
            sb3.append(i12 / 1024);
            sb3.append("kb  s: ");
            sb3.append(i16 / 1024);
            sb3.append("kb  d: ");
            sb3.append(i17 / 1024);
            sb3.append("kb)");
            sb3.append("\n");
        } else {
            z10 = z11;
            sb3.append("Total   heap memory held: ");
            sb3.append(freeMemory / 1024);
            sb3.append("kb\n");
            sb3.append("Only heap memory available, if you want to monitor direct memory use BufferUtils.setTrackDirectMemoryEnabled(true) during initialization.");
            sb3.append("\n");
        }
        if (z10) {
            System.out.println(sb3.toString());
        }
    }

    public static void setInBuffer(ColorRGBA colorRGBA, FloatBuffer floatBuffer, int i10) {
        floatBuffer.position(i10 * 4);
        floatBuffer.put(colorRGBA.f81598r);
        floatBuffer.put(colorRGBA.f81597g);
        floatBuffer.put(colorRGBA.f81596b);
        floatBuffer.put(colorRGBA.f81595a);
    }

    public static void setTrackDirectMemoryEnabled(boolean z10) {
        trackDirectMemory = z10;
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

    public static ShortBuffer createShortBuffer(ShortBuffer shortBuffer, int i10) {
        if (shortBuffer != null && shortBuffer.limit() == i10) {
            shortBuffer.rewind();
            return shortBuffer;
        }
        return createShortBuffer(i10);
    }

    public static void populateFromBuffer(Vector4f vector4f, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 4;
        vector4f.f81615x = floatBuffer.get(i11);
        vector4f.f81616y = floatBuffer.get(i11 + 1);
        vector4f.f81617z = floatBuffer.get(i11 + 2);
        vector4f.f81614w = floatBuffer.get(i11 + 3);
    }

    public static IntBuffer createIntBuffer(int i10) {
        IntBuffer asIntBuffer = allocator.allocate(i10 * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
        asIntBuffer.clear();
        onBufferAllocated(asIntBuffer);
        return asIntBuffer;
    }

    public static FloatBuffer createFloatBuffer(Quaternion... quaternionArr) {
        if (quaternionArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(quaternionArr.length * 4);
        for (Quaternion quaternion : quaternionArr) {
            if (quaternion != null) {
                createFloatBuffer.put(quaternion.getX()).put(quaternion.getY()).put(quaternion.getZ()).put(quaternion.getW());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f).put(0.0f);
            }
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static boolean equals(Vector2f vector2f, FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector2f vector2f2 = tempVars.vect2d;
        populateFromBuffer(vector2f2, floatBuffer, i10);
        boolean equals = vector2f2.equals(vector2f);
        tempVars.release();
        return equals;
    }

    public static void setInBuffer(Quaternion quaternion, FloatBuffer floatBuffer, int i10) {
        floatBuffer.position(i10 * 4);
        floatBuffer.put(quaternion.getX());
        floatBuffer.put(quaternion.getY());
        floatBuffer.put(quaternion.getZ());
        floatBuffer.put(quaternion.getW());
    }

    public static void addInBuffer(Vector2f vector2f, FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector2f vector2f2 = tempVars.vect2d;
        populateFromBuffer(vector2f2, floatBuffer, i10);
        vector2f2.addLocal(vector2f);
        setInBuffer(vector2f2, floatBuffer, i10);
        tempVars.release();
    }

    public static ByteBuffer createByteBuffer(byte... bArr) {
        ByteBuffer createByteBuffer = createByteBuffer(bArr.length);
        createByteBuffer.put(bArr);
        createByteBuffer.flip();
        return createByteBuffer;
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

    public static void multInBuffer(Vector2f vector2f, FloatBuffer floatBuffer, int i10) {
        TempVars tempVars = TempVars.get();
        Vector2f vector2f2 = tempVars.vect2d;
        populateFromBuffer(vector2f2, floatBuffer, i10);
        vector2f2.multLocal(vector2f);
        setInBuffer(vector2f2, floatBuffer, i10);
        tempVars.release();
    }

    public static IntBuffer createIntBuffer(IntBuffer intBuffer, int i10) {
        if (intBuffer != null && intBuffer.limit() == i10) {
            intBuffer.rewind();
            return intBuffer;
        }
        return createIntBuffer(i10);
    }

    public static IntBuffer ensureLargeEnough(IntBuffer intBuffer, int i10) {
        if (intBuffer != null) {
            intBuffer.limit(intBuffer.capacity());
        }
        if (intBuffer != null && intBuffer.remaining() >= i10) {
            return intBuffer;
        }
        int position = intBuffer != null ? intBuffer.position() : 0;
        IntBuffer createIntBuffer = createIntBuffer(i10 + position);
        if (intBuffer != null) {
            intBuffer.flip();
            createIntBuffer.put(intBuffer);
            createIntBuffer.position(position);
        }
        return createIntBuffer;
    }

    public static void populateFromBuffer(Vector2f vector2f, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 2;
        vector2f.f81609x = floatBuffer.get(i11);
        vector2f.f81610y = floatBuffer.get(i11 + 1);
    }

    public static ByteBuffer createByteBuffer(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            ByteBuffer createByteBuffer = createByteBuffer(bytes.length);
            createByteBuffer.put(bytes);
            createByteBuffer.flip();
            return createByteBuffer;
        } catch (UnsupportedEncodingException e10) {
            throw new UnsupportedOperationException(e10);
        }
    }

    public static FloatBuffer createFloatBuffer(Vector4f... vector4fArr) {
        if (vector4fArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(vector4fArr.length * 4);
        for (int i10 = 0; i10 < vector4fArr.length; i10++) {
            Vector4f vector4f = vector4fArr[i10];
            if (vector4f != null) {
                createFloatBuffer.put(vector4f.getX()).put(vector4fArr[i10].getY()).put(vector4fArr[i10].getZ()).put(vector4fArr[i10].getW());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f).put(0.0f);
            }
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static Buffer createShortBuffer(int[] iArr) {
        ShortBuffer createShortBuffer = createShortBuffer(iArr.length);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            createShortBuffer.put(i10, (short) iArr[i10]);
        }
        return createShortBuffer;
    }

    public static void setInBuffer(Vector4f vector4f, FloatBuffer floatBuffer, int i10) {
        floatBuffer.position(i10 * 4);
        floatBuffer.put(vector4f.getX());
        floatBuffer.put(vector4f.getY());
        floatBuffer.put(vector4f.getZ());
        floatBuffer.put(vector4f.getW());
    }

    public static DoubleBuffer clone(DoubleBuffer doubleBuffer) {
        DoubleBuffer allocate;
        if (doubleBuffer == null) {
            return null;
        }
        doubleBuffer.rewind();
        if (isDirect(doubleBuffer)) {
            allocate = createDoubleBuffer(doubleBuffer.limit());
        } else {
            allocate = DoubleBuffer.allocate(doubleBuffer.limit());
        }
        allocate.put(doubleBuffer);
        return allocate;
    }

    public static Buffer createByteBuffer(int[] iArr) {
        ByteBuffer createByteBuffer = createByteBuffer(iArr.length);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            createByteBuffer.put(i10, (byte) iArr[i10]);
        }
        return createByteBuffer;
    }

    public static ShortBuffer ensureLargeEnough(ShortBuffer shortBuffer, int i10) {
        if (shortBuffer != null) {
            shortBuffer.limit(shortBuffer.capacity());
        }
        if (shortBuffer != null && shortBuffer.remaining() >= i10) {
            return shortBuffer;
        }
        int position = shortBuffer != null ? shortBuffer.position() : 0;
        ShortBuffer createShortBuffer = createShortBuffer(i10 + position);
        if (shortBuffer != null) {
            shortBuffer.flip();
            createShortBuffer.put(shortBuffer);
            createShortBuffer.position(position);
        }
        return createShortBuffer;
    }

    public static void setInBuffer(Vector3f vector3f, FloatBuffer floatBuffer, int i10) {
        if (floatBuffer == null) {
            return;
        }
        if (vector3f == null) {
            int i11 = i10 * 3;
            floatBuffer.put(i11, 0.0f);
            floatBuffer.put(i11 + 1, 0.0f);
            floatBuffer.put(i11 + 2, 0.0f);
            return;
        }
        int i12 = i10 * 3;
        floatBuffer.put(i12, vector3f.f81611x);
        floatBuffer.put(i12 + 1, vector3f.f81612y);
        floatBuffer.put(i12 + 2, vector3f.f81613z);
    }

    public static FloatBuffer clone(FloatBuffer floatBuffer) {
        FloatBuffer allocate;
        if (floatBuffer == null) {
            return null;
        }
        floatBuffer.rewind();
        if (isDirect(floatBuffer)) {
            allocate = createFloatBuffer(floatBuffer.limit());
        } else {
            allocate = FloatBuffer.allocate(floatBuffer.limit());
        }
        allocate.put(floatBuffer);
        return allocate;
    }

    public static FloatBuffer createFloatBuffer(ColorRGBA... colorRGBAArr) {
        if (colorRGBAArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(colorRGBAArr.length * 4);
        for (int i10 = 0; i10 < colorRGBAArr.length; i10++) {
            ColorRGBA colorRGBA = colorRGBAArr[i10];
            if (colorRGBA != null) {
                createFloatBuffer.put(colorRGBA.getRed()).put(colorRGBAArr[i10].getGreen()).put(colorRGBAArr[i10].getBlue()).put(colorRGBAArr[i10].getAlpha());
            } else {
                createFloatBuffer.put(0.0f).put(0.0f).put(0.0f).put(0.0f);
            }
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static IntBuffer clone(IntBuffer intBuffer) {
        IntBuffer allocate;
        if (intBuffer == null) {
            return null;
        }
        intBuffer.rewind();
        if (isDirect(intBuffer)) {
            allocate = createIntBuffer(intBuffer.limit());
        } else {
            allocate = IntBuffer.allocate(intBuffer.limit());
        }
        allocate.put(intBuffer);
        return allocate;
    }

    public static ByteBuffer ensureLargeEnough(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer != null) {
            byteBuffer.limit(byteBuffer.capacity());
        }
        if (byteBuffer != null && byteBuffer.remaining() >= i10) {
            return byteBuffer;
        }
        int position = byteBuffer != null ? byteBuffer.position() : 0;
        ByteBuffer createByteBuffer = createByteBuffer(i10 + position);
        if (byteBuffer != null) {
            byteBuffer.flip();
            createByteBuffer.put(byteBuffer);
            createByteBuffer.position(position);
        }
        return createByteBuffer;
    }

    public static void setInBuffer(Vector2f vector2f, FloatBuffer floatBuffer, int i10) {
        int i11 = i10 * 2;
        floatBuffer.put(i11, vector2f.f81609x);
        floatBuffer.put(i11 + 1, vector2f.f81610y);
    }

    public static FloatBuffer createFloatBuffer(float... fArr) {
        if (fArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(fArr.length);
        createFloatBuffer.clear();
        createFloatBuffer.put(fArr);
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static ByteBuffer clone(ByteBuffer byteBuffer) {
        ByteBuffer allocate;
        if (byteBuffer == null) {
            return null;
        }
        byteBuffer.rewind();
        if (isDirect(byteBuffer)) {
            allocate = createByteBuffer(byteBuffer.limit());
        } else {
            allocate = ByteBuffer.allocate(byteBuffer.limit());
        }
        allocate.put(byteBuffer);
        return allocate;
    }

    public static FloatBuffer createFloatBuffer(Vector2f... vector2fArr) {
        if (vector2fArr == null) {
            return null;
        }
        FloatBuffer createFloatBuffer = createFloatBuffer(vector2fArr.length * 2);
        for (Vector2f vector2f : vector2fArr) {
            if (vector2f != null) {
                createFloatBuffer.put(vector2f.f81609x).put(vector2f.f81610y);
            } else {
                createFloatBuffer.put(0.0f).put(0.0f);
            }
        }
        createFloatBuffer.flip();
        return createFloatBuffer;
    }

    public static ShortBuffer clone(ShortBuffer shortBuffer) {
        ShortBuffer allocate;
        if (shortBuffer == null) {
            return null;
        }
        shortBuffer.rewind();
        if (isDirect(shortBuffer)) {
            allocate = createShortBuffer(shortBuffer.limit());
        } else {
            allocate = ShortBuffer.allocate(shortBuffer.limit());
        }
        allocate.put(shortBuffer);
        return allocate;
    }

    public static FloatBuffer createFloatBuffer(int i10) {
        FloatBuffer asFloatBuffer = allocator.allocate(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.clear();
        onBufferAllocated(asFloatBuffer);
        return asFloatBuffer;
    }
}
