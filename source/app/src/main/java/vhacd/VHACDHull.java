package vhacd;

import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;

public class VHACDHull {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(VHACDHull.class.getName());
    private final float[] positions;

    public VHACDHull(long j10) {
        int numFloats = getNumFloats(j10);
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(numFloats);
        getPositions(j10, createFloatBuffer);
        this.positions = new float[numFloats];
        for (int i10 = 0; i10 < numFloats; i10++) {
            this.positions[i10] = createFloatBuffer.get(i10);
        }
    }

    private static native int getNumFloats(long j10);

    private static native void getPositions(long j10, FloatBuffer floatBuffer);

    public float[] clonePositions() {
        float[] fArr = this.positions;
        int length = fArr.length;
        float[] fArr2 = new float[length];
        System.arraycopy(fArr, 0, fArr2, 0, length);
        return fArr2;
    }
}
