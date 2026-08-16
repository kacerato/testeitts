package com.android.tools.r8.internal;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class EnumC6316Zk implements QI {

    public static final EnumC6316Zk f46335c = new EnumC6316Zk("IDEMPOTENCY_UNKNOWN", 0, 0);

    public static final EnumC6316Zk f46336d = new EnumC6316Zk("NO_SIDE_EFFECTS", 1, 1);

    public static final EnumC6316Zk f46337e = new EnumC6316Zk("IDEMPOTENT", 2, 2);

    public final int f46338b;

    public EnumC6316Zk(String str, int i10, int i11) {
        this.f46338b = i11;
    }

    public static EnumC6316Zk a(int i10) {
        if (i10 == 0) {
            return f46335c;
        }
        if (i10 == 1) {
            return f46336d;
        }
        if (i10 != 2) {
            return null;
        }
        return f46337e;
    }

    @Override
    public final int getNumber() {
        return this.f46338b;
    }
}
