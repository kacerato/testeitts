package org.eclipse.jdt.internal.core.nd.util;

public class MathUtils {
    public static int roundUpToNearestMultiple(int i10, int i11) {
        return (((i10 + i11) - 1) / i11) * i11;
    }

    public static int roundUpToNearestMultipleOfPowerOfTwo(int i10, int i11) {
        return ((i10 + i11) - 1) & (~(i11 - 1));
    }
}
