package com.google.android.filament;

import androidx.annotation.NonNull;

public abstract class o {

    public static o f60348a;

    public static class a extends o {
        @Override
        public long b(Object obj) {
            return 0L;
        }

        @Override
        public void g(String str) {
            System.out.println(str);
        }

        @Override
        public boolean h(Object obj) {
            return false;
        }

        @Override
        public boolean i(Object obj) {
            return false;
        }

        @Override
        public boolean j(Object obj) {
            return false;
        }

        @Override
        public void k(String str) {
            System.out.println(str);
        }

        public a() {
        }
    }

    @NonNull
    public static o a() {
        if (f60348a == null) {
            try {
                if (c()) {
                    f60348a = (o) Class.forName("com.google.android.filament.b").newInstance();
                } else {
                    f60348a = (o) Class.forName("com.google.android.filament.DesktopPlatform").newInstance();
                }
            } catch (Exception unused) {
            }
            if (f60348a == null) {
                f60348a = new a();
            }
        }
        return f60348a;
    }

    public static boolean c() {
        return "The Android Project".equalsIgnoreCase(System.getProperty("java.vendor"));
    }

    public static boolean d() {
        return System.getProperty("os.name").contains("Linux") && !c();
    }

    public static boolean e() {
        return System.getProperty("os.name").contains("Mac OS X");
    }

    public static boolean f() {
        return System.getProperty("os.name").contains("Windows");
    }

    public abstract long b(Object obj);

    public abstract void g(String str);

    public abstract boolean h(Object obj);

    public abstract boolean i(Object obj);

    public abstract boolean j(Object obj);

    public abstract void k(String str);
}
