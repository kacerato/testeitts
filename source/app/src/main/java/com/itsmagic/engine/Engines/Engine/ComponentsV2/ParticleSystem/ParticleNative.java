package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem;

import java.nio.ByteBuffer;

public final class ParticleNative {
    static {
        System.loadLibrary("native-particles");
    }

    public static native void buildBatchVertices(ByteBuffer vertexBuffer, int maxParticles, int aliveCount, float[] positions, float[] prevPositions, float[] scales, float[] rotations, float[] colors, float[] emissives, float[] spriteRects, float[] tmpRotations, boolean rotateBasedDirection, boolean hasCameraBasis, float camRightX, float camRightY, float camRightZ, float camUpX, float camUpY, float camUpZ, boolean sortEnabled, float camPosX, float camPosY, float camPosZ, float camDirX, float camDirY, float camDirZ, float rotateDirEpsSq);

    public static native void buildBoundingBox(long positionsBufferPointer, int aliveCount, long outBoundingBufferPointer, float boundingStepMeters);

    public static native void updatePerParticle(int aliveCount, int maxParticles, float[] positions, float[] moveDirs, float[] scales, float[] rotations, boolean rotateBasedDirection, boolean hasCameraBasis, float camRightX, float camRightY, float camRightZ, float camUpX, float camUpY, float camUpZ, float camForwardX, float camForwardY, float camForwardZ, float rotateDirEpsSq, float[] outMatrices, boolean updateBlendOrder, int[] outBlendOrders, float camPosX, float camPosY, float camPosZ, float camDirX, float camDirY, float camDirZ);
}
