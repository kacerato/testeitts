package com.jme3.bullet;

import java.util.ArrayList;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class RayTestFlag {
    public static final int DisableHeightfieldAccelerator = 16;
    public static final int FilterBackfaces = 1;
    public static final int GjkRaytest = 8;
    public static final int KeepUnflippedNormal = 2;
    public static final int SubSimplexRaytest = 4;
    public static final Logger logger = Logger.getLogger(RayTestFlag.class.getName());

    private RayTestFlag() {
    }

    public static String describe(int i10) {
        ArrayList<String> arrayList = new ArrayList(5);
        if ((i10 & 1) != 0) {
            arrayList.add("FilterBackfaces");
        }
        if ((i10 & 2) != 0) {
            arrayList.add("KeepUnflippedNormal");
        }
        if ((i10 & 4) != 0) {
            arrayList.add("SubSimplex");
        }
        if ((i10 & 8) != 0) {
            arrayList.add("Gjk");
        }
        if ((i10 & 16) == 0) {
            arrayList.add("HeightfieldAccel");
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
