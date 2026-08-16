package X0;

import dalvik.system.DelegateLastClassLoader;

public final class a {
    public static DelegateLastClassLoader a(String str, ClassLoader classLoader) {
        return new DelegateLastClassLoader(str, classLoader);
    }
}
