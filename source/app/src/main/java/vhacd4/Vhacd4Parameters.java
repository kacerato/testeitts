package vhacd4;

import android.provider.MediaStore;
import com.jme3.bullet.FillMode;
import com.jme3.bullet.NativePhysicsObject;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;
import p000if.C13702E;

public class Vhacd4Parameters extends NativePhysicsObject implements Cloneable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(Vhacd4Parameters.class.getName());
    private boolean debug;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$FillMode;

        static {
            int[] iArr = new int[FillMode.values().length];
            $SwitchMap$com$jme3$bullet$FillMode = iArr;
            try {
                iArr[FillMode.FloodFill.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$FillMode[FillMode.RaycastFill.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$bullet$FillMode[FillMode.SurfaceOnly.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Vhacd4Parameters() {
        long create = create();
        super.setNativeId(create);
        setMaxNumVerticesPerCH(create, 32);
        setMaxRecursion(14);
        setResolution(create, 100000);
    }

    private static native long create();

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native int getFillMode(long j10);

    private static native int getMaxHulls(long j10);

    private static native int getMaxNumVerticesPerCH(long j10);

    private static native int getMaxRecursion(long j10);

    private static native int getMinEdgeLength(long j10);

    private static native int getResolution(long j10);

    private static native double getVolumePercentError(long j10);

    private static native boolean isAsync(long j10);

    private static native boolean isFindBestPlane(long j10);

    private static native boolean isShrinkWrap(long j10);

    private static native void setAsync(long j10, boolean z10);

    private static native void setFillMode(long j10, int i10);

    private static native void setFindBestPlane(long j10, boolean z10);

    private static native void setMaxHulls(long j10, int i10);

    private static native void setMaxNumVerticesPerCH(long j10, int i10);

    private static native void setMaxRecursion(long j10, int i10);

    private static native void setMinEdgeLength(long j10, int i10);

    private static native void setResolution(long j10, int i10);

    private static native void setShrinkWrap(long j10, boolean z10);

    private static native void setVolumePercentError(long j10, double d10);

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            Vhacd4Parameters vhacd4Parameters = (Vhacd4Parameters) obj;
            if (isAsync() == vhacd4Parameters.isAsync() && getDebugEnabled() == vhacd4Parameters.getDebugEnabled() && getFillMode() == vhacd4Parameters.getFillMode() && isFindBestPlane() == vhacd4Parameters.isFindBestPlane() && getMaxHulls() == vhacd4Parameters.getMaxHulls() && getMaxRecursion() == vhacd4Parameters.getMaxRecursion() && getMaxVerticesPerHull() == vhacd4Parameters.getMaxVerticesPerHull() && getMinEdgeLength() == vhacd4Parameters.getMinEdgeLength() && isShrinkWrap() == vhacd4Parameters.isShrinkWrap() && getVolumePercentError() == vhacd4Parameters.getVolumePercentError() && getVoxelResolution() == vhacd4Parameters.getVoxelResolution()) {
                return true;
            }
        }
        return false;
    }

    public void fromInputStream(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            setAsync(dataInputStream.readBoolean());
            setDebugEnabled(dataInputStream.readBoolean());
            setFillMode(FillMode.values()[dataInputStream.readInt()]);
            setFindBestPlane(dataInputStream.readBoolean());
            setMaxHulls(dataInputStream.readInt());
            setMaxRecursion(dataInputStream.readInt());
            setMaxVerticesPerHull(dataInputStream.readInt());
            setMinEdgeLength(dataInputStream.readInt());
            setShrinkWrap(dataInputStream.readBoolean());
            setVolumePercentError(dataInputStream.readDouble());
            setVoxelResolution(dataInputStream.readInt());
            dataInputStream.close();
        } catch (Throwable th2) {
            try {
                dataInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public boolean getDebugEnabled() {
        return this.debug;
    }

    public FillMode getFillMode() {
        return FillMode.values()[getFillMode(nativeId())];
    }

    public int getMaxHulls() {
        return getMaxHulls(nativeId());
    }

    public int getMaxRecursion() {
        return getMaxRecursion(nativeId());
    }

    public int getMaxVerticesPerHull() {
        return getMaxNumVerticesPerCH(nativeId());
    }

    public int getMinEdgeLength() {
        return getMinEdgeLength(nativeId());
    }

    public double getVolumePercentError() {
        return getVolumePercentError(nativeId());
    }

    public int getVoxelResolution() {
        return getResolution(nativeId());
    }

    @Override
    public int hashCode() {
        return ((((((((((((((((((((10 + (isAsync() ? 1 : 0)) * 2) + (getDebugEnabled() ? 1 : 0)) * 3) + getFillMode().ordinal()) * 2) + (isFindBestPlane() ? 1 : 0)) * 83) + getMaxHulls()) * 83) + getMaxRecursion()) * 83) + getMaxVerticesPerHull()) * 83) + getMinEdgeLength()) * 2) + (isShrinkWrap() ? 1 : 0)) * 83) + Double.hashCode(getVolumePercentError())) * 83) + getVoxelResolution();
    }

    public boolean isAsync() {
        return isAsync(nativeId());
    }

    public boolean isFindBestPlane() {
        return isFindBestPlane(nativeId());
    }

    public boolean isShrinkWrap() {
        return isShrinkWrap(nativeId());
    }

    public void nextFillMode() {
        FillMode fillMode = getFillMode();
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$FillMode[fillMode.ordinal()];
        if (i10 == 1) {
            setFillMode(FillMode.RaycastFill);
            return;
        }
        if (i10 == 2) {
            setFillMode(FillMode.SurfaceOnly);
        } else {
            if (i10 == 3) {
                setFillMode(FillMode.FloodFill);
                return;
            }
            throw new IllegalStateException("mode = " + ((Object) fillMode));
        }
    }

    public void setAsync(boolean z10) {
        setAsync(nativeId(), z10);
    }

    public void setDebugEnabled(boolean z10) {
        this.debug = z10;
    }

    public void setFillMode(FillMode fillMode) {
        C13702E.t(fillMode, "mode");
        setFillMode(nativeId(), fillMode.ordinal());
    }

    public void setFindBestPlane(boolean z10) {
        setFindBestPlane(nativeId(), z10);
    }

    public void setMaxHulls(int i10) {
        C13702E.i(i10, "limit", 1, 1024);
        setMaxHulls(nativeId(), i10);
    }

    public void setMaxRecursion(int i10) {
        C13702E.i(i10, "depth", 2, 64);
        setMaxRecursion(nativeId(), i10);
    }

    public void setMaxVerticesPerHull(int i10) {
        C13702E.i(i10, "limit", 4, 2048);
        setMaxNumVerticesPerCH(nativeId(), i10);
    }

    public void setMinEdgeLength(int i10) {
        C13702E.i(i10, "length", 1, 32);
        setMinEdgeLength(nativeId(), i10);
    }

    public void setShrinkWrap(boolean z10) {
        setShrinkWrap(nativeId(), z10);
    }

    public void setVolumePercentError(double d10) {
        C13702E.g(d10, "percentage", 0.0d, 100.0d);
        setVolumePercentError(nativeId(), d10);
    }

    public void setVoxelResolution(int i10) {
        C13702E.i(i10, "maxVoxels", 10000, 64000000);
        setResolution(nativeId(), i10);
    }

    public Map<String, Object> toMap() {
        TreeMap treeMap = new TreeMap();
        treeMap.put("async", Boolean.valueOf(isAsync()));
        treeMap.put("debug", Boolean.valueOf(this.debug));
        treeMap.put("fillMode", getFillMode());
        treeMap.put("findBest", Boolean.valueOf(isFindBestPlane()));
        treeMap.put("maxHulls", Integer.valueOf(getMaxHulls()));
        treeMap.put("maxRecursion", Integer.valueOf(getMaxRecursion()));
        treeMap.put("maxVerticesPH", Integer.valueOf(getMaxVerticesPerHull()));
        treeMap.put("minEdge", Integer.valueOf(getMinEdgeLength()));
        treeMap.put(MediaStore.Video.VideoColumns.RESOLUTION, Integer.valueOf(getVoxelResolution()));
        treeMap.put("shrink", Boolean.valueOf(isShrinkWrap()));
        treeMap.put("volumeErr", Double.valueOf(getVolumePercentError()));
        return treeMap;
    }

    public void toOutputStream(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        try {
            dataOutputStream.writeBoolean(isAsync());
            dataOutputStream.writeBoolean(getDebugEnabled());
            dataOutputStream.writeInt(getFillMode().ordinal());
            dataOutputStream.writeBoolean(isFindBestPlane());
            dataOutputStream.writeInt(getMaxHulls());
            dataOutputStream.writeInt(getMaxRecursion());
            dataOutputStream.writeInt(getMaxVerticesPerHull());
            dataOutputStream.writeInt(getMinEdgeLength());
            dataOutputStream.writeBoolean(isShrinkWrap());
            dataOutputStream.writeDouble(getVolumePercentError());
            dataOutputStream.writeInt(getVoxelResolution());
            dataOutputStream.close();
        } catch (Throwable th2) {
            try {
                dataOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override
    public String toString() {
        return String.format("Vhacd4Parameters[%n async=%s  debug=%s  %s  findBest=%s%n maxHulls=%s  maxRecursion=%s  maxVerticesPH=%s  minEdge=%s%n resolution=%s  shrink=%s  volumeErr=%s%%%n]", Boolean.valueOf(isAsync()), Boolean.valueOf(getDebugEnabled()), getFillMode(), Boolean.valueOf(isFindBestPlane()), Integer.valueOf(getMaxHulls()), Integer.valueOf(getMaxRecursion()), Integer.valueOf(getMaxVerticesPerHull()), Integer.valueOf(getMinEdgeLength()), Integer.valueOf(getVoxelResolution()), Boolean.valueOf(isShrinkWrap()), Double.valueOf(getVolumePercentError()));
    }

    public Vhacd4Parameters clone() {
        try {
            Vhacd4Parameters vhacd4Parameters = (Vhacd4Parameters) super.clone();
            vhacd4Parameters.reassignNativeId(create());
            vhacd4Parameters.setAsync(isAsync());
            vhacd4Parameters.setFillMode(getFillMode());
            vhacd4Parameters.setFindBestPlane(isFindBestPlane());
            vhacd4Parameters.setMaxHulls(getMaxHulls());
            vhacd4Parameters.setMaxRecursion(getMaxRecursion());
            vhacd4Parameters.setMaxVerticesPerHull(getMaxVerticesPerHull());
            vhacd4Parameters.setMinEdgeLength(getMinEdgeLength());
            vhacd4Parameters.setShrinkWrap(isShrinkWrap());
            vhacd4Parameters.setVolumePercentError(getVolumePercentError());
            vhacd4Parameters.setVoxelResolution(getVoxelResolution());
            return vhacd4Parameters;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
