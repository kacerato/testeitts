package com.jme3.bullet;

import java.util.ArrayList;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class StepFlag {
    public static final int contactConceived = 8;
    public static final int contactEnded = 1;
    public static final int contactProcessed = 2;
    public static final int contactStarted = 4;
    public static final Logger logger = Logger.getLogger(StepFlag.class.getName());

    private StepFlag() {
    }

    public static String describe(int i10) {
        ArrayList<String> arrayList = new ArrayList(3);
        if ((i10 & 8) != 0) {
            arrayList.add("contactConceived");
        }
        if ((i10 & 4) != 0) {
            arrayList.add("contactStarted");
        }
        if ((i10 & 2) != 0) {
            arrayList.add("contactProcessed");
        }
        if ((i10 & 1) != 0) {
            arrayList.add("contactEnded");
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

    private static native void generateJniHeaderFile();
}
