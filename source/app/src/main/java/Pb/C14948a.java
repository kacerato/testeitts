package pb;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.SaveGame.SaveGameFile;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import x8.b;

public class C14948a {

    public static SaveGameFile f103755b;

    public static final Object f103754a = new Object();

    public static final AtomicBoolean f103756c = new AtomicBoolean();

    public class C1951a implements b {
        @Override
        public void a() {
            synchronized (C14948a.f103754a) {
                SaveGameFile unused = C14948a.f103755b = null;
            }
        }

        @Override
        public void b() {
            synchronized (C14948a.f103754a) {
                SaveGameFile unused = C14948a.f103755b = null;
            }
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C1951a());
    }

    public static void A(String key, Vector2 value) {
        s().put(key, Vector2.y(value));
        f103756c.set(true);
    }

    public static void B(String key, Vector3 value) {
        t().put(key, Vector3.clone(value));
        f103756c.set(true);
    }

    public static void C(String key, String value) {
        r().put(key, value);
        f103756c.set(true);
    }

    public static void D(String key, boolean value) {
        l().put(key, Boolean.valueOf(value));
        f103756c.set(true);
    }

    public static boolean E(String key) {
        Boolean bool = l().get(key);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static ColorINT F(String key) {
        return ColorINT.k(m().get(key));
    }

    public static float G(String key) {
        Float f10 = n().get(key);
        if (f10 != null) {
            return f10.floatValue();
        }
        return 0.0f;
    }

    public static int H(String key) {
        Integer num = o().get(key);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static Quaternion I(String key) {
        return Quaternion.k(p().get(key));
    }

    public static String J(String key) {
        return r().get(key);
    }

    public static Vector2 K(String key) {
        return Vector2.y(s().get(key));
    }

    public static Vector3 L(String key) {
        return Vector3.clone(t().get(key));
    }

    public static void M() {
        if (f103756c.compareAndSet(true, false)) {
            v();
        }
    }

    public static void c() {
        u();
        f103755b.a();
    }

    public static void d(String key) {
        l().remove(key);
        f103756c.set(true);
    }

    public static void e(String key) {
        m().remove(key);
        f103756c.set(true);
    }

    public static void f(String key) {
        n().remove(key);
        f103756c.set(true);
    }

    public static void g(String key) {
        o().remove(key);
        f103756c.set(true);
    }

    public static void h(String key) {
        p().remove(key);
        f103756c.set(true);
    }

    public static void i(String key) {
        r().remove(key);
        f103756c.set(true);
    }

    public static void j(String key) {
        s().remove(key);
        f103756c.set(true);
    }

    public static void k(String key) {
        t().remove(key);
        f103756c.set(true);
    }

    public static Map<String, Boolean> l() {
        u();
        return f103755b.b();
    }

    public static Map<String, ColorINT> m() {
        u();
        return f103755b.c();
    }

    public static Map<String, Float> n() {
        u();
        return f103755b.d();
    }

    public static Map<String, Integer> o() {
        u();
        return f103755b.e();
    }

    public static Map<String, Quaternion> p() {
        u();
        return f103755b.f();
    }

    public static SaveGameFile q() {
        u();
        return f103755b;
    }

    public static Map<String, String> r() {
        u();
        return f103755b.g();
    }

    public static Map<String, Vector2> s() {
        u();
        return f103755b.h();
    }

    public static Map<String, Vector3> t() {
        u();
        return f103755b.i();
    }

    public static void u() {
        synchronized (f103754a) {
            if (f103755b == null) {
                try {
                    String t10 = X7.a.t("_EDITOR", "SGF.config");
                    if (t10 != null && !t10.trim().isEmpty()) {
                        f103755b = (SaveGameFile) X7.a.m().fromJson(t10, SaveGameFile.class);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                SaveGameFile saveGameFile = f103755b;
                if (saveGameFile == null) {
                    f103755b = new SaveGameFile();
                } else {
                    saveGameFile.j();
                }
            }
        }
    }

    public static void v() {
        X7.a.d("_EDITOR", "SGF.config", X7.a.m().toJson(q()));
    }

    public static void w(String key, float value) {
        n().put(key, Float.valueOf(value));
        f103756c.set(true);
    }

    public static void x(String key, int value) {
        o().put(key, Integer.valueOf(value));
        f103756c.set(true);
    }

    public static void y(String key, ColorINT value) {
        m().put(key, ColorINT.k(value));
        f103756c.set(true);
    }

    public static void z(String key, Quaternion value) {
        p().put(key, Quaternion.k(value));
        f103756c.set(true);
    }
}
