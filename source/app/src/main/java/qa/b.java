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

public class b extends Fa.a implements F {

    public static final String f22011i = "On3DTouchBegin";

    public static final int f22012j = 0;

    public final NoCodeSlot[] f22013g = {new NoCodeSlot("Max Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};

    public transient HashSet<h> f22014h = new HashSet<>();

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f22011i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Events/Object/Touch 3D";
        }

        @Override
        public String f() {
            return "On 3D Touch Begin";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        this.serializedNodeType = f22011i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            if (this.f22014h == null) {
                this.f22014h = new HashSet<>();
            }
            this.f79021a.G0(this);
            float V10 = m.V(Q(this.f22013g[0]));
            int L10 = C15169a.L();
            for (int i10 = 0; i10 < L10; i10++) {
                h n10 = C15169a.n(i10);
                if (n10 != null) {
                    if (n10.t() || !n10.q()) {
                        this.f22014h.remove(n10);
                    } else if (n10.k() && d.i(this.f79021a, n10, V10) && this.f22014h.add(n10)) {
                        t();
                        return;
                    }
                }
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f22013g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On 3D Touch Begin";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "1000" : "";
    }

    @Override
    public void j0() {
        HashSet<h> hashSet = this.f22014h;
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
        HashSet<h> hashSet = this.f22014h;
        if (hashSet == null) {
            this.f22014h = new HashSet<>();
        } else {
            hashSet.clear();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_3D_TOUCH_BEGIN);
    }
}
