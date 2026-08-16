package com.android.tools.r8.internal;

import com.android.tools.r8.synthesis.S;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC4934Bm {

    public static final EnumC4934Bm f39013b = new EnumC4934Bm(0, "WRAPPER");

    public static final EnumC4934Bm f39014c = new EnumC4934Bm(1, "VIVIFIED_WRAPPER");

    public EnumC4934Bm(int i10, String str) {
    }

    public final com.android.tools.r8.synthesis.I a() {
        if (this == f39013b) {
            return new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58187n;
                    return bVar;
                }
            };
        }
        return new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58188o;
                return bVar;
            }
        };
    }
}
