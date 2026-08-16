package com.android.tools.r8.internal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public abstract class NB {

    public static final NB f42527b;

    public static final NB f42528c;

    public static final NB f42529d;

    public static final NB f42530e;

    public static final NB f42531f;

    public static final NB f42532g;

    public static final NB[] f42533h;

    static {
        NB nb2 = new NB() {
            @Override
            public final boolean a(int i10) {
                return i10 == 0;
            }

            @Override
            public final String a() {
                return "==";
            }
        };
        f42527b = nb2;
        NB nb3 = new NB() {
            @Override
            public final boolean a(int i10) {
                return i10 >= 0;
            }

            @Override
            public final String a() {
                return ">=";
            }
        };
        f42528c = nb3;
        NB nb4 = new NB() {
            @Override
            public final boolean a(int i10) {
                return i10 > 0;
            }

            @Override
            public final String a() {
                return ">";
            }
        };
        f42529d = nb4;
        NB nb5 = new NB() {
            @Override
            public final boolean a(int i10) {
                return i10 <= 0;
            }

            @Override
            public final String a() {
                return "<=";
            }
        };
        f42530e = nb5;
        NB nb6 = new NB() {
            @Override
            public final boolean a(int i10) {
                return i10 < 0;
            }

            @Override
            public final String a() {
                return "<";
            }
        };
        f42531f = nb6;
        NB nb7 = new NB() {
            @Override
            public final boolean a(int i10) {
                return i10 != 0;
            }

            @Override
            public final String a() {
                return "!=";
            }
        };
        f42532g = nb7;
        f42533h = new NB[]{nb2, nb3, nb4, nb5, nb6, nb7};
    }

    public NB(int i10, String str) {
    }

    public static NB[] c() {
        return (NB[]) f42533h.clone();
    }

    public abstract String a();

    public abstract boolean a(int i10);

    public final NB b() {
        switch (MB.f42237a[ordinal()]) {
            case 1:
                return f42532g;
            case 2:
                return f42527b;
            case 3:
                return f42531f;
            case 4:
                return f42530e;
            case 5:
                return f42529d;
            case 6:
                return f42528c;
            default:
                throw new C5417Jv0("Unknown if condition type.");
        }
    }
}
