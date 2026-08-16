package ak;

import java.security.AccessController;
import java.security.PrivilegedAction;

public class C3667g {

    public class a implements PrivilegedAction {

        public final String f32328a;

        public a(String str) {
            this.f32328a = str;
        }

        @Override
        public Object run() {
            try {
                return ClassLoader.getSystemClassLoader().loadClass(this.f32328a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static Class a(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new a(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
