package Ml;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.spec.AlgorithmParameterSpec;

public class f {

    public static Class[] f15447a = new Class[0];

    public static Object[] f15448b = new Object[0];

    public class a implements PrivilegedAction {

        public final AlgorithmParameterSpec f15449a;

        public a(AlgorithmParameterSpec algorithmParameterSpec) {
            this.f15449a = algorithmParameterSpec;
        }

        @Override
        public Object run() {
            try {
                return this.f15449a.getClass().getMethod("getName", f.f15447a).invoke(this.f15449a, f.f15448b);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static String c(AlgorithmParameterSpec algorithmParameterSpec) {
        return (String) AccessController.doPrivileged(new a(algorithmParameterSpec));
    }
}
