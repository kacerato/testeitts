package ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Animation.d;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;
import java.util.List;

public class C15390c extends NoCodeNode implements F {

    public static final String f117246j = "StopAnimation";

    public static final int f117247k = 0;

    public static final int f117248l = 1;

    public static final int f117249m = 2;

    public static final float f117250n = 0.05f;

    public final NoCodeSlot[] f117251g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Animation Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_NAME)), new NoCodeSlot("Transition Delay", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_TRANSITION_DELAY))};

    public final transient List<d> f117252h = new SteppedArrayList();

    public transient float f117253i;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15390c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15390c.class;
        }

        @Override
        public String c() {
            return C15390c.f117246j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15390c.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Animation";
        }

        @Override
        public String f() {
            return "Stop Animation";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15390c() {
        this.serializedNodeType = f117246j;
    }

    private void G0() {
        this.f117252h.clear();
        this.f117253i = 0.0f;
    }

    @Override
    public void E0() {
        super.E0();
        if (d0()) {
            if (this.f117253i <= 0.0f || this.f117252h.isEmpty()) {
                t();
                return;
            }
            float b10 = K8.d.b();
            if (b10 <= 0.0f) {
                return;
            }
            float f10 = (1.0f / this.f117253i) * b10;
            boolean z10 = true;
            for (int i10 = 0; i10 < this.f117252h.size(); i10++) {
                d dVar = this.f117252h.get(i10);
                if (dVar != null) {
                    float z11 = Nc.b.z(dVar.getWeight(), 0.0f, f10);
                    dVar.setWeight(z11);
                    if (z11 <= 0.05f) {
                        dVar.n();
                        dVar.setWeight(0.0f);
                    } else {
                        z10 = false;
                    }
                }
            }
            if (z10) {
                t();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f117251g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Stop Animation";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 2 ? Dd.c.f5125q : "";
    }

    @Override
    public void j0() {
        G0();
    }

    @Override
    public void m0() {
        G0();
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f117251g[0]);
        if (!C13317e.J(b10)) {
            t();
            return;
        }
        C15388a.a(b10, Aa.b.c(Q(this.f117251g[1])), this.f117252h);
        if (this.f117252h.isEmpty()) {
            t();
            return;
        }
        float max = Math.max(0.0f, m.V(Q(this.f117251g[2])));
        this.f117253i = max;
        if (max <= 0.0f) {
            for (int i10 = 0; i10 < this.f117252h.size(); i10++) {
                d dVar = this.f117252h.get(i10);
                dVar.stop();
                dVar.setWeight(0.0f);
            }
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_STOP_ANIMATION);
    }
}
