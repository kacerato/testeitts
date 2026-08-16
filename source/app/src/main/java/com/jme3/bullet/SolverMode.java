package com.jme3.bullet;

import java.util.ArrayList;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class SolverMode {
    public static final int AllowZeroLength = 1024;
    public static final int ArticulatedWarmStart = 4096;
    public static final int CacheDirection = 32;
    public static final int CacheFriendly = 128;
    public static final int Interleave = 512;
    public static final int NoCone = 2048;
    public static final int NoVelocityDependent = 64;
    public static final int RandomOrder = 1;
    public static final int SIMD = 256;
    public static final int Separate = 2;
    public static final int Use2Directions = 16;
    public static final int WarmStart = 4;
    public static final Logger logger = Logger.getLogger(SolverMode.class.getName());

    private SolverMode() {
    }

    public static String describe(int i10) {
        ArrayList<String> arrayList = new ArrayList(12);
        if ((i10 & 1) != 0) {
            arrayList.add("RandomOrder");
        }
        if ((i10 & 2) != 0) {
            arrayList.add("Separate");
        }
        if ((i10 & 4) != 0) {
            arrayList.add("WarmStart");
        }
        if ((i10 & 16) != 0) {
            arrayList.add("Use2Directions");
        }
        if ((i10 & 64) == 0) {
            arrayList.add("VelocityDependent");
        }
        if ((i10 & 128) != 0) {
            arrayList.add("CacheFriendly");
        }
        if ((i10 & 256) != 0) {
            arrayList.add("SIMD");
        }
        if ((i10 & 512) != 0) {
            arrayList.add("Interleave");
        }
        if ((i10 & 1024) != 0) {
            arrayList.add("AllowZeroLength");
        }
        if ((i10 & 2048) == 0) {
            arrayList.add("Cone");
        }
        if ((i10 & 4096) != 0) {
            arrayList.add("ArticulatedWarmStart");
        }
        StringBuilder sb2 = new StringBuilder(40);
        boolean z10 = false;
        for (String str : arrayList) {
            if (z10) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            } else {
                z10 = true;
            }
            sb2.append(str);
        }
        return sb2.toString();
    }
}
