package com.threed.jpct;

import Pg.a;
import android.drm.DrmManagerClient;

public class IntegerC {
    private static final Integer[] CACHE = new Integer[a.f21453k];
    private static final int offset = 2000;

    static {
        int i10 = 0;
        while (true) {
            Integer[] numArr = CACHE;
            if (i10 >= numArr.length) {
                return;
            }
            numArr[i10] = Integer.valueOf(i10 + DrmManagerClient.ERROR_UNKNOWN);
            i10++;
        }
    }

    public static Integer valueOf(int i10) {
        return (i10 < -2000 || i10 > 1999) ? Integer.valueOf(i10) : CACHE[i10 + 2000];
    }
}
