package vhacd;

import android.provider.MediaStore;
import com.jme3.bullet.NativePhysicsObject;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;
import p000if.C13702E;

public class VHACDParameters extends NativePhysicsObject implements Cloneable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(VHACDParameters.class.getName());
    private boolean debug;

    public VHACDParameters() {
        long create = create();
        super.setNativeId(create);
        setConcavity(create, 0.0025d);
        setMaxNumVerticesPerCH(create, 32);
    }

    private static native long create();

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native double getAlpha(long j10);

    private static native double getBeta(long j10);

    private static native double getConcavity(long j10);

    private int getConvexHullApproximation() {
        return getConvexhullApproximation(nativeId());
    }

    private static native int getConvexhullApproximation(long j10);

    private static native int getConvexhullDownsampling(long j10);

    private static native int getMaxNumVerticesPerCH(long j10);

    private static native double getMinVolumePerCH(long j10);

    private static native int getMode(long j10);

    private int getOclAcceleration() {
        return getOclAcceleration(nativeId());
    }

    private static native int getOclAcceleration(long j10);

    private static native boolean getPca(long j10);

    private static native int getPlaneDownsampling(long j10);

    private static native int getResolution(long j10);

    private static native void setAlpha(long j10, double d10);

    private static native void setBeta(long j10, double d10);

    private static native void setConcavity(long j10, double d10);

    private void setConvexHullApproximation(int i10) {
        setConvexhullApproximation(nativeId(), i10);
    }

    private static native void setConvexhullApproximation(long j10, int i10);

    private static native void setConvexhullDownsampling(long j10, int i10);

    private static native void setMaxNumVerticesPerCH(long j10, int i10);

    private static native void setMinVolumePerCH(long j10, double d10);

    private static native void setMode(long j10, int i10);

    private void setOclAcceleration(int i10) {
        setOclAcceleration(nativeId(), i10);
    }

    private static native void setOclAcceleration(long j10, int i10);

    private static native void setPca(long j10, boolean z10);

    private static native void setPlaneDownsampling(long j10, int i10);

    private static native void setResolution(long j10, int i10);

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            VHACDParameters vHACDParameters = (VHACDParameters) obj;
            int convexHullApproximation = vHACDParameters.getConvexHullApproximation();
            int convexHullDownSampling = vHACDParameters.getConvexHullDownSampling();
            double maxConcavity = vHACDParameters.getMaxConcavity();
            double minVolumePerHull = vHACDParameters.getMinVolumePerHull();
            if (getACDMode() == vHACDParameters.getACDMode() && Double.compare(getAlpha(), vHACDParameters.getAlpha()) == 0 && Double.compare(getBeta(), vHACDParameters.getBeta()) == 0 && getConvexHullApproximation() == convexHullApproximation && getConvexHullDownSampling() == convexHullDownSampling && getDebugEnabled() == vHACDParameters.getDebugEnabled() && Double.compare(getMaxConcavity(), maxConcavity) == 0 && getMaxVerticesPerHull() == vHACDParameters.getMaxVerticesPerHull() && Double.compare(getMinVolumePerHull(), minVolumePerHull) == 0 && getOclAcceleration() == vHACDParameters.getOclAcceleration() && getPCA() == vHACDParameters.getPCA() && getPlaneDownSampling() == vHACDParameters.getPlaneDownSampling() && getVoxelResolution() == vHACDParameters.getVoxelResolution()) {
                return true;
            }
        }
        return false;
    }

    public void fromInputStream(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            setMaxConcavity(dataInputStream.readDouble());
            setAlpha(dataInputStream.readDouble());
            setBeta(dataInputStream.readDouble());
            setMinVolumePerHull(dataInputStream.readDouble());
            setVoxelResolution(dataInputStream.readInt());
            setMaxVerticesPerHull(dataInputStream.readInt());
            setPlaneDownSampling(dataInputStream.readInt());
            setConvexHullDownSampling(dataInputStream.readInt());
            setPCA(dataInputStream.readInt() != 0);
            setACDMode(ACDMode.values()[dataInputStream.readInt()]);
            setConvexHullApproximation(dataInputStream.readInt());
            setOclAcceleration(dataInputStream.readInt());
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

    public ACDMode getACDMode() {
        return ACDMode.values()[getMode(nativeId())];
    }

    public double getAlpha() {
        return getAlpha(nativeId());
    }

    public double getBeta() {
        return getBeta(nativeId());
    }

    public int getConvexHullDownSampling() {
        return getConvexhullDownsampling(nativeId());
    }

    public boolean getDebugEnabled() {
        return this.debug;
    }

    public double getMaxConcavity() {
        return getConcavity(nativeId());
    }

    public int getMaxVerticesPerHull() {
        return getMaxNumVerticesPerCH(nativeId());
    }

    public double getMinVolumePerHull() {
        return getMinVolumePerCH(nativeId());
    }

    public boolean getPCA() {
        return getPca(nativeId());
    }

    public int getPlaneDownSampling() {
        return getPlaneDownsampling(nativeId());
    }

    public int getVoxelResolution() {
        return getResolution(nativeId());
    }

    @Override
    public int hashCode() {
        return ((((((((((((((((((((((((HttpURLConnection.HTTP_UNSUPPORTED_TYPE + (this.debug ? 1 : 0)) * 83) + getACDMode().hashCode()) * 83) + Double.hashCode(getAlpha())) * 83) + Double.hashCode(getBeta())) * 83) + getConvexHullApproximation()) * 83) + getConvexHullDownSampling()) * 83) + Double.hashCode(getMaxConcavity())) * 83) + getMaxVerticesPerHull()) * 83) + Double.hashCode(getMinVolumePerHull())) * 83) + getOclAcceleration()) * 83) + Boolean.hashCode(getPCA())) * 83) + getPlaneDownSampling()) * 83) + getVoxelResolution();
    }

    public void setACDMode(ACDMode aCDMode) {
        setMode(nativeId(), aCDMode.ordinal());
    }

    public void setAlpha(double d10) {
        C13702E.e(d10, "alpha");
        setAlpha(nativeId(), d10);
    }

    public void setBeta(double d10) {
        C13702E.e(d10, "beta");
        setBeta(nativeId(), d10);
    }

    public void setConvexHullDownSampling(int i10) {
        C13702E.i(i10, "precision", 1, 16);
        setConvexhullDownsampling(nativeId(), i10);
    }

    public void setDebugEnabled(boolean z10) {
        this.debug = z10;
    }

    public void setMaxConcavity(double d10) {
        C13702E.e(d10, "concavity");
        setConcavity(nativeId(), d10);
    }

    public void setMaxVerticesPerHull(int i10) {
        C13702E.i(i10, "limit", 4, 1024);
        setMaxNumVerticesPerCH(nativeId(), i10);
    }

    public void setMinVolumePerHull(double d10) {
        C13702E.g(d10, "min volume", 0.0d, 0.01d);
        setMinVolumePerCH(nativeId(), d10);
    }

    public void setPCA(boolean z10) {
        setPca(nativeId(), z10);
    }

    public void setPlaneDownSampling(int i10) {
        C13702E.i(i10, "granularity", 1, 16);
        setPlaneDownsampling(nativeId(), i10);
    }

    public void setVoxelResolution(int i10) {
        C13702E.i(i10, "maxVoxels", 10000, 64000000);
        setResolution(nativeId(), i10);
    }

    public Map<String, Object> toMap() {
        TreeMap treeMap = new TreeMap();
        treeMap.put("ACDMode", getACDMode());
        treeMap.put("alpha", Double.valueOf(getAlpha()));
        treeMap.put("beta", Double.valueOf(getBeta()));
        treeMap.put("debug", Boolean.valueOf(this.debug));
        treeMap.put("hullDS", Integer.valueOf(getConvexHullDownSampling()));
        treeMap.put("maxConcavity", Double.valueOf(getMaxConcavity()));
        treeMap.put("maxVerticesPH", Integer.valueOf(getMaxVerticesPerHull()));
        treeMap.put("minVolumePH", Double.valueOf(getMinVolumePerHull()));
        treeMap.put(MediaStore.Video.VideoColumns.RESOLUTION, Integer.valueOf(getVoxelResolution()));
        treeMap.put("PCA", Boolean.valueOf(getPCA()));
        treeMap.put("planeDS", Integer.valueOf(getPlaneDownSampling()));
        return treeMap;
    }

    public void toOutputStream(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        try {
            dataOutputStream.writeDouble(getMaxConcavity());
            dataOutputStream.writeDouble(getAlpha());
            dataOutputStream.writeDouble(getBeta());
            dataOutputStream.writeDouble(getMinVolumePerHull());
            dataOutputStream.writeInt(getVoxelResolution());
            dataOutputStream.writeInt(getMaxVerticesPerHull());
            dataOutputStream.writeInt(getPlaneDownSampling());
            dataOutputStream.writeInt(getConvexHullDownSampling());
            dataOutputStream.writeInt(getPCA() ? 1 : 0);
            dataOutputStream.writeInt(getACDMode().ordinal());
            dataOutputStream.writeInt(getConvexHullApproximation());
            dataOutputStream.writeInt(getOclAcceleration());
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
        return String.format("VHACDParameters[%n %s  alpha=%s  beta=%s  debug=%s  hullDS=%s%n maxConcavity=%s  maxVerticesPH=%s  minVolumePH=%s%n resolution=%s  PCA=%s  planeDS=%s%n]", getACDMode(), Double.valueOf(getAlpha()), Double.valueOf(getBeta()), Boolean.valueOf(getDebugEnabled()), Integer.valueOf(getConvexHullDownSampling()), Double.valueOf(getMaxConcavity()), Integer.valueOf(getMaxVerticesPerHull()), Double.valueOf(getMinVolumePerHull()), Integer.valueOf(getVoxelResolution()), Boolean.valueOf(getPCA()), Integer.valueOf(getPlaneDownSampling()));
    }

    public VHACDParameters clone() {
        try {
            VHACDParameters vHACDParameters = (VHACDParameters) super.clone();
            vHACDParameters.reassignNativeId(create());
            vHACDParameters.setACDMode(getACDMode());
            vHACDParameters.setAlpha(getAlpha());
            vHACDParameters.setBeta(getBeta());
            vHACDParameters.setConvexHullApproximation(getConvexHullApproximation());
            vHACDParameters.setConvexHullDownSampling(getConvexHullDownSampling());
            vHACDParameters.setMaxConcavity(getMaxConcavity());
            vHACDParameters.setMaxVerticesPerHull(getMaxVerticesPerHull());
            vHACDParameters.setMinVolumePerHull(getMinVolumePerHull());
            vHACDParameters.setOclAcceleration(getOclAcceleration());
            vHACDParameters.setPCA(getPCA());
            vHACDParameters.setPlaneDownSampling(getPlaneDownSampling());
            vHACDParameters.setVoxelResolution(getVoxelResolution());
            return vHACDParameters;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
