package vhacd;

import G0.E;
import com.jme3.util.BufferUtils;
import com.jme3.util.SafeArrayList;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import p000if.C13702E;

public final class VHACD {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(VHACD.class.getName());
    private static final Collection<VHACDProgressListener> progressListeners = new SafeArrayList(VHACDProgressListener.class);
    private static List<VHACDHull> results = null;
    private static final int vpt = 3;

    private VHACD() {
    }

    private static void addHull(long j10) {
        results.add(new VHACDHull(j10));
    }

    public static void addProgressListener(VHACDProgressListener vHACDProgressListener) {
        C13702E.t(vHACDProgressListener, E.a.f7280a);
        progressListeners.add(vHACDProgressListener);
    }

    public static List<VHACDHull> compute(float[] fArr, int[] iArr, VHACDParameters vHACDParameters) {
        C13702E.t(fArr, "positions");
        C13702E.t(iArr, "indices");
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(fArr);
        IntBuffer createIntBuffer = BufferUtils.createIntBuffer(iArr);
        results = new ArrayList(50);
        compute(createFloatBuffer, createIntBuffer, vHACDParameters.nativeId(), vHACDParameters.getDebugEnabled());
        return results;
    }

    private static native void compute(FloatBuffer floatBuffer, IntBuffer intBuffer, long j10, boolean z10);

    public static void removeProgressListener(VHACDProgressListener vHACDProgressListener) {
        C13702E.t(vHACDProgressListener, E.a.f7280a);
        progressListeners.remove(vHACDProgressListener);
    }

    private static void update(double d10, double d11, double d12, String str, String str2) {
        Iterator<VHACDProgressListener> it = progressListeners.iterator();
        while (it.hasNext()) {
            it.next().update(d10, d11, d12, str, str2);
        }
    }
}
