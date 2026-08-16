package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;

public class C7489gr0 {

    public static final HashSet f48372a;

    public static final char[] f48373b;

    public static final int f48374c;

    public static final int f48375d;

    public static final boolean f48376e = true;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        public static final a f48377b = new a(0, "USE_MIXED_CASE");

        public static final a f48378c = new a(1, "DONT_USE_MIXED_CASE");

        public a(int i10, String str) {
        }
    }

    static {
        String[] strArr = {TypedValues.Custom.S_BOOLEAN, "byte", "char", "double", TypedValues.Custom.S_FLOAT, "int", "long", "short", "void", "it", "by", "do"};
        HashSet hashSet = new HashSet(AbstractC9595tV.a(12));
        Collections.addAll(hashSet, strArr);
        f48372a = hashSet;
        char[] charArray = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        f48373b = charArray;
        int length = charArray.length;
        f48374c = length;
        f48375d = length - 26;
    }

    public static String a(int i10, a aVar) {
        char[] cArr = C10656zq0.f54545a;
        int i11 = aVar == a.f48377b ? f48374c : f48375d;
        int i12 = i11 - 10;
        int i13 = i10;
        int i14 = 1;
        for (int i15 = i12; i13 > i15; i15 = i11) {
            i13 = (i13 - 1) / i15;
            i14++;
        }
        char[] copyOfRange = Arrays.copyOfRange(cArr, 0, i14);
        int i16 = 10;
        int i17 = 0;
        while (i10 > i12) {
            int i18 = i10 - 1;
            copyOfRange[i17] = f48373b[(i18 % i12) + i16];
            i10 = i18 / i12;
            i12 = i11;
            i16 = 0;
            i17++;
        }
        int i19 = i17 + 1;
        copyOfRange[i17] = f48373b[(i10 - 1) + i16];
        boolean z10 = f48376e;
        if (!z10 && i19 != copyOfRange.length) {
            throw new AssertionError();
        }
        if (z10 || !Character.isDigit(copyOfRange[0])) {
            return new String(copyOfRange);
        }
        throw new AssertionError();
    }
}
