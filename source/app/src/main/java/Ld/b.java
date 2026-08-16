package Ld;

import Dd.a;

public final class b {

    public static final int[] f11716a;

    public static final int[] f11717b;

    static {
        int[] iArr = new int[a.d.values().length];
        f11716a = iArr;
        a.d dVar = a.d.ENDED;
        iArr[dVar.ordinal()] = 1;
        a.d dVar2 = a.d.PAUSED;
        iArr[dVar2.ordinal()] = 2;
        a.d dVar3 = a.d.PLAYING;
        iArr[dVar3.ordinal()] = 3;
        a.d dVar4 = a.d.UNSTARTED;
        iArr[dVar4.ordinal()] = 4;
        int[] iArr2 = new int[a.d.values().length];
        f11717b = iArr2;
        iArr2[dVar3.ordinal()] = 1;
        iArr2[dVar2.ordinal()] = 2;
        iArr2[a.d.VIDEO_CUED.ordinal()] = 3;
        iArr2[a.d.BUFFERING.ordinal()] = 4;
        iArr2[dVar4.ordinal()] = 5;
        iArr2[a.d.UNKNOWN.ordinal()] = 6;
        iArr2[dVar.ordinal()] = 7;
    }
}
