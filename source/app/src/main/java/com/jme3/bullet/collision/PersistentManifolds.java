package com.jme3.bullet.collision;

import java.util.logging.Logger;

public final class PersistentManifolds {
    public static final Logger logger = Logger.getLogger(PersistentManifolds.class.getName());

    private PersistentManifolds() {
    }

    public static native int countPoints(long j10);

    public static native long getBodyAId(long j10);

    public static native long getBodyBId(long j10);

    public static native long getPointId(long j10, int i10);

    public static long[] listPointIds(long j10) {
        int countPoints = countPoints(j10);
        long[] jArr = new long[countPoints];
        for (int i10 = 0; i10 < countPoints; i10++) {
            jArr[i10] = getPointId(j10, i10);
        }
        return jArr;
    }
}
