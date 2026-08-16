package com.itsmagic.engine.Engines.Engine.Threading;

public final class ThreadAffinity {

    public static final int f79824a = 1 << a.LITTLE.ordinal();

    public static final int f79825b = 1 << a.MEDIUM.ordinal();

    public static final int f79826c = 1 << a.BIG.ordinal();

    public enum a {
        LITTLE,
        MEDIUM,
        BIG
    }

    static {
        System.loadLibrary("native-affinity");
    }

    public static boolean a(a coreTier) {
        return d(coreTier);
    }

    public static boolean b() {
        return nativeUnlockAllCurrentThreadTiers();
    }

    public static boolean c(int coreIndex) {
        return nativeUseCurrentThreadSpecificCore(coreIndex);
    }

    public static boolean d(a coreTier) {
        if (coreTier != null) {
            return nativeUseCurrentThreadTier(coreTier.ordinal());
        }
        throw new NullPointerException("coreTier can't be null");
    }

    public static boolean e(a coreTierA, a coreTierB) {
        if (coreTierA == null) {
            throw new NullPointerException("coreTierA can't be null");
        }
        if (coreTierB == null) {
            throw new NullPointerException("coreTierB can't be null");
        }
        a aVar = a.LITTLE;
        int i10 = (coreTierA == aVar || coreTierB == aVar) ? f79824a : 0;
        a aVar2 = a.MEDIUM;
        if (coreTierA == aVar2 || coreTierB == aVar2) {
            i10 |= f79825b;
        }
        a aVar3 = a.BIG;
        if (coreTierA == aVar3 || coreTierB == aVar3) {
            i10 |= f79826c;
        }
        return nativeUseCurrentThreadTiers(i10);
    }

    private static native boolean nativeUnlockAllCurrentThreadTiers();

    private static native boolean nativeUseCurrentThreadSpecificCore(int coreIndex);

    private static native boolean nativeUseCurrentThreadTier(int coreTier);

    private static native boolean nativeUseCurrentThreadTiers(int tierMask);
}
