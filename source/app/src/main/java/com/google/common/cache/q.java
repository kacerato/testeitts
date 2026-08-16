package com.google.common.cache;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@v2.b
@g
public abstract class q {
    public static final q EXPLICIT = new a("EXPLICIT", 0);
    public static final q REPLACED = new q("REPLACED", 1) {
        {
            a aVar = null;
        }

        @Override
        public boolean b() {
            return false;
        }
    };
    public static final q COLLECTED = new q("COLLECTED", 2) {
        {
            a aVar = null;
        }

        @Override
        public boolean b() {
            return true;
        }
    };
    public static final q EXPIRED = new q("EXPIRED", 3) {
        {
            a aVar = null;
        }

        @Override
        public boolean b() {
            return true;
        }
    };
    public static final q SIZE = new q("SIZE", 4) {
        {
            a aVar = null;
        }

        @Override
        public boolean b() {
            return true;
        }
    };
    private static final q[] $VALUES = a();

    public enum a extends q {
        public a(String str, int i10) {
            super(str, i10, null);
        }

        @Override
        public boolean b() {
            return false;
        }
    }

    public q(String str, int i10) {
    }

    public static q[] a() {
        return new q[]{EXPLICIT, REPLACED, COLLECTED, EXPIRED, SIZE};
    }

    public static q valueOf(String str) {
        return (q) Enum.valueOf(q.class, str);
    }

    public static q[] values() {
        return (q[]) $VALUES.clone();
    }

    public abstract boolean b();

    public q(String str, int i10, a aVar) {
        this(str, i10);
    }
}
