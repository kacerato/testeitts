package X0;

import dalvik.system.PathClassLoader;

public final class e extends PathClassLoader {
    public e(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override
    public final Class loadClass(String str, boolean z10) throws ClassNotFoundException {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z10);
    }
}
