package com.jsibbold.zoomage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface a {

    public static final int f81711V = 0;

    public static final int f81712W = 1;

    public static final int f81713X = 2;

    public static final int f81714Y = 3;

    public static class C1496a {
        public static int a(int i10) {
            int i11 = 1;
            if (i10 != 1) {
                i11 = 2;
                if (i10 != 2) {
                    i11 = 3;
                    if (i10 != 3) {
                        return 0;
                    }
                }
            }
            return i11;
        }
    }
}
