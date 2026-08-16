package com.ardor3d.util;

public class Constants {
    public static final int maxPoolSize;
    public static final boolean stats;
    public static final boolean storeSavableImages;
    public static final boolean trackDirectMemory;
    public static boolean updateGraphs = false;
    public static final boolean useFastMath;
    public static final boolean useMathPools;
    public static final boolean useMultipleContexts;
    public static boolean useValidatingTransform;

    static {
        stats = System.getProperty("ardor3d.stats") != null;
        trackDirectMemory = System.getProperty("ardor3d.trackDirect") != null;
        useMultipleContexts = System.getProperty("ardor3d.useMultipleContexts") != null;
        useMathPools = System.getProperty("ardor3d.noMathPools") == null;
        useFastMath = System.getProperty("ardor3d.useFastMath") != null;
        storeSavableImages = System.getProperty("ardor3d.storeSavableImages") != null;
        maxPoolSize = System.getProperty("ardor3d.maxPoolSize") != null ? Integer.parseInt(System.getProperty("ardor3d.maxPoolSize")) : 11;
        useValidatingTransform = System.getProperty("ardor3d.disableValidatingTransform") == null;
    }
}
