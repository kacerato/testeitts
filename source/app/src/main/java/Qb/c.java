package Qb;

import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.LightManager;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FailedDestructionOfFilamentInstanceException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import t3.C15377a;

public class c {

    public static final Method f22041a = b("nDestroyInstanceBuffer");

    public static final Method f22042b = b("nDestroySkinningBuffer");

    public static final Method f22043c = b("nDestroyRenderTarget");

    public static final Method f22044d = b("nDestroyVertexBuffer");

    public static final Method f22045e = b("nDestroyColorGrading");

    public static final Method f22046f = b("nDestroyIndirectLight");

    public static final Method f22047g = b("nDestroySkybox");

    public static final Method f22048h = b("nDestroyIndexBuffer");

    public static final Method f22049i = b("nDestroyTexture");

    public static final Method f22050j = b("nDestroyView");

    public static final Method f22051k = b("nDestroyScene");

    public static final Method f22052l = b("nDestroyMaterialInstance");

    public static final Method f22053m = b("nDestroyMaterial");

    public static synchronized void a(int id2) {
        synchronized (c.class) {
            try {
                TransformManager j02 = a.f().j0();
                if (j02.o(id2)) {
                    j02.e(id2);
                }
                RenderableManager h02 = a.f().h0();
                if (h02.U(id2)) {
                    h02.G(id2);
                }
                LightManager e02 = a.f().e0();
                if (e02.L(id2)) {
                    e02.v(id2);
                }
                if (c().a0(id2) != null) {
                    c().A(id2);
                }
                EntityManager.f().d(id2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Method b(String name) {
        try {
            Class<Long> cls = Long.TYPE;
            Method declaredMethod = Engine.class.getDeclaredMethod(name, cls, cls);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Falha ao resolver m\u00e9todo nativo: " + name, e10);
        }
    }

    public static Engine c() {
        return a.f();
    }

    public static boolean d(Method m10, long objectPtr) {
        Engine c10 = c();
        if (c10 == null) {
            throw new IllegalStateException("Engine \u00e9 null");
        }
        try {
            return ((Boolean) m10.invoke(null, Long.valueOf(c10.getNativeObject()), Long.valueOf(objectPtr))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException("Falha ao invocar " + m10.getName(), e10);
        }
    }

    public static synchronized void e(long pointer) {
        synchronized (c.class) {
            if (!d(f22045e, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyColorGrading");
            }
        }
    }

    public static synchronized void f(long pointer) {
        synchronized (c.class) {
            if (!d(f22048h, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyIndexBuffer");
            }
        }
    }

    public static synchronized void g(long pointer) {
        synchronized (c.class) {
            if (!d(f22046f, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyIndirectLight");
            }
        }
    }

    public static synchronized void h(long pointer) {
        synchronized (c.class) {
            if (!d(f22041a, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyInstanceBuffer");
            }
        }
    }

    public static synchronized void i(long pointer) {
        synchronized (c.class) {
            if (!d(f22053m, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyMaterial");
            }
        }
    }

    public static synchronized void j(long pointer) {
        synchronized (c.class) {
            if (!d(f22052l, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyMaterialInstance");
            }
        }
    }

    public static synchronized void k(long pointer) {
        synchronized (c.class) {
            if (!d(f22043c, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyRenderTarget");
            }
        }
    }

    public static synchronized void l(long pointer) {
        synchronized (c.class) {
            if (!d(f22051k, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyScene");
            }
        }
    }

    public static synchronized void m(long pointer) {
        synchronized (c.class) {
            if (!d(f22042b, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroySkinningBuffer");
            }
        }
    }

    public static synchronized void n(long pointer) {
        synchronized (c.class) {
            if (!d(f22047g, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroySkybox");
            }
        }
    }

    public static synchronized void o(long pointer) {
        synchronized (c.class) {
            if (!d(f22049i, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyTexture");
            }
        }
    }

    public static synchronized void p(long pointer) {
        synchronized (c.class) {
            if (!d(f22044d, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyVertexBuffer");
            }
        }
    }

    public static synchronized void q(long pointer) {
        synchronized (c.class) {
            if (!d(f22050j, pointer) && !C15377a.f109719g.booleanValue()) {
                throw new FailedDestructionOfFilamentInstanceException("nDestroyView");
            }
        }
    }
}
