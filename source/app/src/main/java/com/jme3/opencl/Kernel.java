package com.jme3.opencl;

import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector4f;
import com.jme3.opencl.OpenCLObject;
import com.jme3.util.TempVars;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class Kernel extends AbstractOpenCLObject {
    protected final WorkSize globalWorkSize;
    protected final WorkSize workGroupSize;

    public static final class LocalMem {
        private int size;

        public LocalMem(int i10) {
            this.size = i10;
        }

        public boolean equals(Object obj) {
            return obj != null && LocalMem.class == obj.getClass() && this.size == ((LocalMem) obj).size;
        }

        public int getSize() {
            return this.size;
        }

        public int hashCode() {
            return 237 + this.size;
        }

        public String toString() {
            return "LocalMem (" + this.size + "B)";
        }
    }

    public static final class LocalMemPerElement {
        private int size;

        public LocalMemPerElement(int i10) {
            this.size = i10;
        }

        public boolean equals(Object obj) {
            return obj != null && LocalMemPerElement.class == obj.getClass() && this.size == ((LocalMemPerElement) obj).size;
        }

        public int getSize() {
            return this.size;
        }

        public int hashCode() {
            return 237 + this.size;
        }

        public String toString() {
            return "LocalMemPerElement (" + this.size + "B)";
        }
    }

    public Kernel(OpenCLObject.ObjectReleaser objectReleaser) {
        super(objectReleaser);
        this.globalWorkSize = new WorkSize(0L);
        this.workGroupSize = new WorkSize(0L);
    }

    private void setArgs(Object... objArr) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            setArg(i10, objArr[i10]);
        }
    }

    public abstract Event Run(CommandQueue commandQueue);

    public Event Run1(CommandQueue commandQueue, WorkSize workSize, Object... objArr) {
        setGlobalWorkSize(workSize);
        setWorkGroupSizeToNull();
        setArgs(objArr);
        return Run(commandQueue);
    }

    public void Run1NoEvent(CommandQueue commandQueue, WorkSize workSize, Object... objArr) {
        setGlobalWorkSize(workSize);
        setWorkGroupSizeToNull();
        setArgs(objArr);
        RunNoEvent(commandQueue);
    }

    public Event Run2(CommandQueue commandQueue, WorkSize workSize, WorkSize workSize2, Object... objArr) {
        setGlobalWorkSize(workSize);
        setWorkGroupSize(workSize2);
        setArgs(objArr);
        return Run(commandQueue);
    }

    public void Run2NoEvent(CommandQueue commandQueue, WorkSize workSize, WorkSize workSize2, Object... objArr) {
        setGlobalWorkSize(workSize);
        setWorkGroupSize(workSize2);
        setArgs(objArr);
        RunNoEvent(commandQueue);
    }

    public void RunNoEvent(CommandQueue commandQueue) {
        Run(commandQueue).release();
    }

    public abstract int getArgCount();

    public WorkSize getGlobalWorkSize() {
        return this.globalWorkSize;
    }

    public abstract long getMaxWorkGroupSize(Device device);

    public abstract String getName();

    public WorkSize getWorkGroupSize() {
        return this.workGroupSize;
    }

    public abstract void setArg(int i10, byte b10);

    public abstract void setArg(int i10, double d10);

    public abstract void setArg(int i10, float f10);

    public abstract void setArg(int i10, int i11);

    public abstract void setArg(int i10, long j10);

    public void setArg(int i10, Matrix3f matrix3f) {
        TempVars tempVars = TempVars.get();
        try {
            Matrix4f matrix4f = tempVars.tempMat4;
            matrix4f.zero();
            for (int i11 = 0; i11 < 3; i11++) {
                for (int i12 = 0; i12 < 3; i12++) {
                    matrix4f.set(i11, i12, matrix3f.get(i11, i12));
                }
            }
            setArg(i10, matrix4f);
            tempVars.release();
        } catch (Throwable th2) {
            tempVars.release();
            throw th2;
        }
    }

    public abstract void setArg(int i10, Matrix4f matrix4f);

    public abstract void setArg(int i10, Quaternion quaternion);

    public abstract void setArg(int i10, Vector2f vector2f);

    public abstract void setArg(int i10, Vector4f vector4f);

    public abstract void setArg(int i10, Buffer buffer);

    public abstract void setArg(int i10, Image image);

    public abstract void setArg(int i10, LocalMem localMem);

    public abstract void setArg(int i10, LocalMemPerElement localMemPerElement);

    public abstract void setArg(int i10, ByteBuffer byteBuffer, long j10);

    public abstract void setArg(int i10, short s10);

    public void setGlobalWorkSize(WorkSize workSize) {
        this.globalWorkSize.set(workSize);
    }

    public void setWorkGroupSdize(int i10, int i11, int i12) {
        this.workGroupSize.set(3, i10, i11, i12);
    }

    public void setWorkGroupSize(WorkSize workSize) {
        this.workGroupSize.set(workSize);
    }

    public void setWorkGroupSizeToNull() {
        this.workGroupSize.set(1, 0, 0, 0);
    }

    public String toString() {
        return "Kernel (" + getName() + ")";
    }

    public static final class WorkSize {
        private int dimension;
        private long[] sizes;

        public WorkSize(int i10, long... jArr) {
            set(i10, jArr);
        }

        public boolean equals(Object obj) {
            if (obj == null || WorkSize.class != obj.getClass()) {
                return false;
            }
            WorkSize workSize = (WorkSize) obj;
            return this.dimension == workSize.dimension && Arrays.equals(this.sizes, workSize.sizes);
        }

        public int getDimension() {
            return this.dimension;
        }

        public long[] getSizes() {
            return this.sizes;
        }

        public int hashCode() {
            return ((235 + this.dimension) * 47) + Arrays.hashCode(this.sizes);
        }

        public void set(int i10, long... jArr) {
            if (jArr == null || jArr.length != 3) {
                throw new IllegalArgumentException("sizes must be an array of length 3");
            }
            if (i10 > 0 && i10 <= 3) {
                this.dimension = i10;
                this.sizes = jArr;
                return;
            }
            throw new IllegalArgumentException("dimension must be between 1 and 3");
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("WorkSize[");
            for (int i10 = 0; i10 < this.dimension; i10++) {
                if (i10 > 0) {
                    sb2.append(", ");
                }
                sb2.append(this.sizes[i10]);
            }
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            return sb2.toString();
        }

        public WorkSize() {
            this(1, 1, 1, 1);
        }

        public WorkSize(long j10) {
            this(1, j10, 1, 1);
        }

        public WorkSize(long j10, long j11) {
            this(2, j10, j11, 1);
        }

        public WorkSize(long j10, long j11, long j12) {
            this(3, j10, j11, j12);
        }

        public void set(WorkSize workSize) {
            this.dimension = workSize.dimension;
            this.sizes = workSize.sizes;
        }
    }

    public void setGlobalWorkSize(int i10) {
        this.globalWorkSize.set(1, i10);
    }

    public void setWorkGroupSize(int i10) {
        this.workGroupSize.set(1, i10);
    }

    @Override
    public Kernel register() {
        super.register();
        return this;
    }

    public void setGlobalWorkSize(int i10, int i11) {
        this.globalWorkSize.set(2, i10, i11);
    }

    public void setWorkGroupSize(int i10, int i11) {
        this.workGroupSize.set(2, i10, i11);
    }

    public void setGlobalWorkSize(int i10, int i11, int i12) {
        this.globalWorkSize.set(3, i10, i11, i12);
    }

    public void setArg(int i10, Object obj) {
        if (obj instanceof Byte) {
            setArg(i10, ((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            setArg(i10, ((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Integer) {
            setArg(i10, ((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            setArg(i10, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Float) {
            setArg(i10, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            setArg(i10, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Vector2f) {
            setArg(i10, (Vector2f) obj);
            return;
        }
        if (obj instanceof Vector4f) {
            setArg(i10, (Vector4f) obj);
            return;
        }
        if (obj instanceof Quaternion) {
            setArg(i10, (Quaternion) obj);
            return;
        }
        if (obj instanceof Matrix3f) {
            setArg(i10, (Matrix3f) obj);
            return;
        }
        if (obj instanceof Matrix4f) {
            setArg(i10, (Matrix4f) obj);
            return;
        }
        if (obj instanceof LocalMemPerElement) {
            setArg(i10, (LocalMemPerElement) obj);
            return;
        }
        if (obj instanceof LocalMem) {
            setArg(i10, (LocalMem) obj);
            return;
        }
        if (obj instanceof Buffer) {
            setArg(i10, (Buffer) obj);
        } else {
            if (obj instanceof Image) {
                setArg(i10, (Image) obj);
                return;
            }
            throw new IllegalArgumentException("unknown kernel argument type: " + obj);
        }
    }
}
