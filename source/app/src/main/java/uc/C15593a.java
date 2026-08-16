package uc;

import JAVARuntime.Point3;
import JAVARuntime.Vector2;
import JAVARuntime.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeCharBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.List;
import vc.n;
import vc.p;
import vc.q;

public class C15593a {
    public static ByteBuffer a(int bytesQuantity) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bytesQuantity);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect;
    }

    public static ByteBuffer b(byte[] data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(data.length);
        allocateDirect.order(ByteOrder.nativeOrder());
        allocateDirect.put(data);
        return allocateDirect;
    }

    public static FloatBuffer c(int floatsQuantity) {
        ByteBuffer allocateDirect;
        int i10 = floatsQuantity * 4;
        try {
            allocateDirect = ByteBuffer.allocateDirect(i10);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            System.gc();
            allocateDirect = ByteBuffer.allocateDirect(i10);
        }
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.rewind();
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static FloatBuffer d(float[] data) {
        ByteBuffer allocateDirect;
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        try {
            allocateDirect = ByteBuffer.allocateDirect(data.length * 4);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            System.gc();
            allocateDirect = ByteBuffer.allocateDirect(data.length * 4);
        }
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(data);
        asFloatBuffer.rewind();
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static IntBuffer e(int intsQuantity) {
        ByteBuffer allocateDirect;
        int i10 = intsQuantity * 4;
        try {
            allocateDirect = ByteBuffer.allocateDirect(i10);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            System.gc();
            allocateDirect = ByteBuffer.allocateDirect(i10);
        }
        allocateDirect.order(ByteOrder.nativeOrder());
        IntBuffer asIntBuffer = allocateDirect.asIntBuffer();
        asIntBuffer.rewind();
        asIntBuffer.position(0);
        return asIntBuffer;
    }

    public static IntBuffer f(int[] data) {
        ByteBuffer allocateDirect;
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        try {
            allocateDirect = ByteBuffer.allocateDirect(data.length * 4);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            System.gc();
            allocateDirect = ByteBuffer.allocateDirect(data.length * 4);
        }
        allocateDirect.order(ByteOrder.nativeOrder());
        IntBuffer asIntBuffer = allocateDirect.asIntBuffer();
        asIntBuffer.put(data);
        asIntBuffer.rewind();
        asIntBuffer.position(0);
        return asIntBuffer;
    }

    public static NativeByteBuffer g(int capacity) {
        return new NativeByteBuffer(capacity);
    }

    public static NativeCharBuffer h(int capacity) {
        return new NativeCharBuffer(capacity);
    }

    public static NativeCharBuffer i(char[] data) {
        NativeCharBuffer nativeCharBuffer = new NativeCharBuffer(data.length);
        for (char c10 : data) {
            nativeCharBuffer.position(c10);
        }
        return nativeCharBuffer;
    }

    public static NativeFloatBuffer j(int capacity) {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(capacity);
        nativeFloatBuffer.position(0);
        return nativeFloatBuffer;
    }

    public static NativeFloatBuffer k(FloatBuffer data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(data.capacity());
        data.position(0);
        for (int i10 = 0; i10 < data.capacity(); i10++) {
            nativeFloatBuffer.put(data.get(i10));
        }
        return nativeFloatBuffer;
    }

    public static NativeFloatBuffer l(List<Float> data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(data.size());
        for (int i10 = 0; i10 < data.size(); i10++) {
            nativeFloatBuffer.put(data.get(i10).floatValue());
        }
        return nativeFloatBuffer;
    }

    public static NativeFloatBuffer m(float[] data) {
        if (data != null) {
            return new NativeFloatBuffer(data);
        }
        throw new RuntimeException("Invalid array");
    }

    public static NativeFloatBuffer n(int[] data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(data.length);
        for (int i10 : data) {
            nativeFloatBuffer.put(i10);
        }
        return nativeFloatBuffer;
    }

    public static NativeIntBuffer o(int capacity) {
        return new NativeIntBuffer(capacity);
    }

    public static NativeIntBuffer p(IntBuffer data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(data.capacity());
        data.position(0);
        for (int i10 = 0; i10 < data.capacity(); i10++) {
            nativeIntBuffer.put(data.get(i10));
        }
        return nativeIntBuffer;
    }

    public static NativeIntBuffer q(int[] data) {
        if (data != null) {
            return new NativeIntBuffer(data);
        }
        throw new RuntimeException("Invalid array");
    }

    public static NativeShortBuffer r(int capacity) {
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(capacity);
        nativeShortBuffer.position(0);
        return nativeShortBuffer;
    }

    public static n s(int pointsQuantity) {
        return new n(new NativeIntBuffer(pointsQuantity * 3));
    }

    public static n t(Point3[] data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(data.length * 3);
        for (Point3 point3 : data) {
            nativeIntBuffer.put(point3.vector.J());
            nativeIntBuffer.put(point3.vector.K());
            nativeIntBuffer.put(point3.vector.L());
        }
        return new n(nativeIntBuffer);
    }

    public static p u(int vectorsQuantity) {
        return new p(new NativeFloatBuffer(vectorsQuantity * 2));
    }

    public static p v(Vector2[] data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(data.length * 2);
        for (Vector2 vector2 : data) {
            nativeFloatBuffer.put(vector2.instance.f79838x);
            nativeFloatBuffer.put(vector2.instance.f79839y);
        }
        return new p(nativeFloatBuffer);
    }

    public static q w(int vectorsQuantity) {
        return new q(new NativeFloatBuffer(vectorsQuantity * 3));
    }

    public static q x(Vector3[] data) {
        if (data == null) {
            throw new RuntimeException("Invalid array");
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(data.length * 3);
        for (Vector3 vector3 : data) {
            nativeFloatBuffer.put(vector3.instance.getX());
            nativeFloatBuffer.put(vector3.instance.getY());
            nativeFloatBuffer.put(vector3.instance.getZ());
        }
        return new q(nativeFloatBuffer);
    }
}
