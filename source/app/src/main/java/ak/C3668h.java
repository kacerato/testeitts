package ak;

import Xi.C3331a;
import Xi.C3360o0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.InvalidAlgorithmParameterException;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import nj.C14454c;
import oh.B;
import org.bouncycastle.util.k;

public class C3668h {

    public static final Class f32329a;

    public static final Constructor f32330b;

    public static final Method f32331c;

    public static final Method f32332d;

    public class a implements PrivilegedExceptionAction {
        @Override
        public Object run() throws Exception {
            return C3668h.f32329a.getConstructor(Integer.TYPE, byte[].class);
        }
    }

    public class b implements PrivilegedExceptionAction {

        public final String f32333a;

        public b(String str) {
            this.f32333a = str;
        }

        @Override
        public Object run() throws Exception {
            return C3668h.f32329a.getDeclaredMethod(this.f32333a, null);
        }
    }

    public class c implements PrivilegedExceptionAction {

        public final C3360o0 f32334a;

        public final AlgorithmParameterSpec f32335b;

        public c(C3360o0 c3360o0, AlgorithmParameterSpec algorithmParameterSpec) {
            this.f32334a = c3360o0;
            this.f32335b = algorithmParameterSpec;
        }

        @Override
        public Object run() throws Exception {
            return new C3331a(this.f32334a, ((Integer) C3668h.f32331c.invoke(this.f32335b, null)).intValue(), (byte[]) C3668h.f32332d.invoke(this.f32335b, null));
        }
    }

    public class d implements PrivilegedExceptionAction {

        public final AlgorithmParameterSpec f32336a;

        public d(AlgorithmParameterSpec algorithmParameterSpec) {
            this.f32336a = algorithmParameterSpec;
        }

        @Override
        public Object run() throws Exception {
            return new C14454c((byte[]) C3668h.f32332d.invoke(this.f32336a, null), ((Integer) C3668h.f32331c.invoke(this.f32336a, null)).intValue() / 8);
        }
    }

    static {
        Method method;
        Class a10 = C3667g.a(C3668h.class, "javax.crypto.spec.GCMParameterSpec");
        f32329a = a10;
        if (a10 != null) {
            f32330b = d();
            f32331c = g("getTLen");
            method = g("getIV");
        } else {
            method = null;
            f32330b = null;
            f32331c = null;
        }
        f32332d = method;
    }

    public static C3331a c(C3360o0 c3360o0, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        try {
            return (C3331a) AccessController.doPrivileged(new c(c3360o0, algorithmParameterSpec));
        } catch (Exception unused) {
            throw new InvalidAlgorithmParameterException("Cannot process GCMParameterSpec.");
        }
    }

    public static Constructor d() {
        try {
            return (Constructor) AccessController.doPrivileged(new a());
        } catch (PrivilegedActionException unused) {
            return null;
        }
    }

    public static C14454c e(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        try {
            return (C14454c) AccessController.doPrivileged(new d(algorithmParameterSpec));
        } catch (Exception unused) {
            throw new InvalidParameterSpecException("Cannot process GCMParameterSpec");
        }
    }

    public static AlgorithmParameterSpec f(B b10) throws InvalidParameterSpecException {
        try {
            C14454c v10 = C14454c.v(b10);
            return (AlgorithmParameterSpec) f32330b.newInstance(k.j(v10.u() * 8), v10.x());
        } catch (Exception e10) {
            throw new InvalidParameterSpecException("Construction failed: " + e10.getMessage());
        }
    }

    public static Method g(String str) {
        try {
            return (Method) AccessController.doPrivileged(new b(str));
        } catch (PrivilegedActionException unused) {
            return null;
        }
    }

    public static boolean h() {
        return f32329a != null;
    }

    public static boolean i() {
        return f32330b != null;
    }

    public static boolean j(Class cls) {
        return f32329a == cls;
    }

    public static boolean k(AlgorithmParameterSpec algorithmParameterSpec) {
        Class cls = f32329a;
        return cls != null && cls.isInstance(algorithmParameterSpec);
    }
}
