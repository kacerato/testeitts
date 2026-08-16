package Ob;

import Ub.d;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary.ShaderTemplates;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import fc.C13204a;
import hc.AbstractC13441a;
import java.util.List;
import mc.C14208b;
import oc.C14497a;
import p6.g;
import t3.C15377a;
import ub.p;
import yb.C16165b;

public abstract class a {

    public static class C0471a {

        public static boolean f16597a = false;

        public static final List<Tb.a> f16598b;

        public static final List<p> f16599c;

        static {
            if (C15377a.f109719g.booleanValue()) {
                f16597a = false;
            }
            f16598b = new SteppedArrayList();
            f16599c = new SteppedArrayList();
        }

        public static void a(Tb.a frameBuffer) {
            if (f16597a) {
                f16598b.add(frameBuffer);
            }
        }

        public static void b(p texture) {
            if (f16597a) {
                f16599c.add(texture);
            }
        }

        public static void c() {
            if (f16597a) {
                List<Tb.a> list = f16598b;
                List<p> list2 = f16599c;
                C14208b.c(list, list2);
                list.clear();
                list2.clear();
            }
        }
    }

    public static class b {

        public static ShaderTemplates f16600a;

        public static final d f16601b = new d();

        public static int f16602c = 1;

        public static Tb.a f16603d;

        public static void a() {
            f16600a = null;
        }
    }

    public static void a() {
    }

    public static void b() {
        AbstractC13441a.a();
        b.a();
    }

    public static void c(int width, int height) {
        C13204a.g(width, height);
    }

    public static void d() {
        b.f16600a = new ShaderTemplates();
        C16165b.q();
        C16165b.a();
        C13204a.c();
    }

    public static void e(World world) {
        g L12 = p6.d.E1() ? p6.d.L1("VFX Update") : null;
        C14497a.u();
        p6.d.J1(L12);
        g L13 = p6.d.E1() ? p6.d.L1("Gizmo preparation") : null;
        b.f16601b.n(Ub.a.c());
        p6.d.J1(L13);
        Ub.a.b();
    }

    public static void f(World world) {
        if (E.f71997a0) {
            return;
        }
        AbstractC13441a.c(world);
    }
}
