package Qa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import java.util.HashSet;
import rc.C15169a;
import tc.h;

public class c extends Fa.a implements F {

    public static final String f22015i = "On3DTouchExit";

    public static final int f22016j = 0;

    public final NoCodeSlot[] f22017g = {new NoCodeSlot("Max Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};

    public transient HashSet<h> f22018h = new HashSet<>();

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return c.f22015i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Events/Object/Touch 3D";
        }

        @Override
        public String f() {
            return "On 3D Touch Exit";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public c() {
        this.serializedNodeType = f22015i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            if (this.f22018h == null) {
                this.f22018h = new HashSet<>();
            }
            this.f79021a.G0(this);
            float V10 = m.V(Q(this.f22017g[0]));
            int L10 = C15169a.L();
            for (int i10 = 0; i10 < L10; i10++) {
                h n10 = C15169a.n(i10);
                if (n10 != null) {
                    if (n10.k()) {
                        if (d.i(this.f79021a, n10, V10)) {
                            this.f22018h.add(n10);
                        }
                    } else if (n10.t() && this.f22018h.remove(n10)) {
                        t();
                        return;
                    }
                }
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f22017g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On 3D Touch Exit";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "1000" : "";
    }

    @Override
    public void j0() {
        HashSet<h> hashSet = this.f22018h;
        if (hashSet != null) {
            hashSet.clear();
        }
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
        HashSet<h> hashSet = this.f22018h;
        if (hashSet == null) {
            this.f22018h = new HashSet<>();
        } else {
            hashSet.clear();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_3D_TOUCH_EXIT);
    }
}
