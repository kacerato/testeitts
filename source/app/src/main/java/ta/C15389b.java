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

public class C15389b extends NoCodeNode implements F {

    public static final String f117236j = "PlayAnimation";

    public static final int f117237k = 0;

    public static final int f117238l = 1;

    public static final int f117239m = 2;

    public static final int f117240n = 3;

    public static final float f117241o = 0.05f;

    public static final float f117242p = 1.0f;

    public final NoCodeSlot[] f117243g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Animation Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_NAME)), new NoCodeSlot(Ia.a.f8901g, H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_LOOP)), new NoCodeSlot("Transition Delay", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_TRANSITION_DELAY))};

    public final transient List<d> f117244h = new SteppedArrayList();

    public transient float f117245i;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15389b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15389b.class;
        }

        @Override
        public String c() {
            return C15389b.f117236j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15389b.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Animation";
        }

        @Override
        public String f() {
            return "Play Animation";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15389b() {
        this.serializedNodeType = f117236j;
    }

    @Override
    public void E0() {
        super.E0();
        if (d0()) {
            if (this.f117245i <= 0.0f || this.f117244h.isEmpty()) {
                t();
                return;
            }
            float b10 = K8.d.b();
            if (b10 <= 0.0f) {
                return;
            }
            float f10 = (1.0f / this.f117245i) * b10;
            boolean z10 = true;
            for (int i10 = 0; i10 < this.f117244h.size(); i10++) {
                d dVar = this.f117244h.get(i10);
                if (dVar != null && dVar.isPlaying()) {
                    float z11 = Nc.b.z(dVar.getWeight(), 1.0f, f10);
                    dVar.setWeight(z11);
                    if (z11 >= 0.95f) {
                        dVar.setWeight(1.0f);
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
        return this.f117243g;
    }

    public final void G0() {
        this.f117244h.clear();
        this.f117245i = 0.0f;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Play Animation";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 2 ? "true" : inputIndex == 3 ? Dd.c.f5125q : "";
    }

    @Override
    public void j0() {
        G0();
    }

    @Override
    public void m0() {
        G0();
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f117243g[0]);
        if (!C13317e.J(b10)) {
            t();
            return;
        }
        C15388a.a(b10, Aa.b.c(Q(this.f117243g[1])), this.f117244h);
        if (this.f117244h.isEmpty()) {
            t();
            return;
        }
        boolean O10 = m.O(Q(this.f117243g[2]));
        this.f117245i = Math.max(0.0f, m.V(Q(this.f117243g[3])));
        for (int i10 = 0; i10 < this.f117244h.size(); i10++) {
            d dVar = this.f117244h.get(i10);
            if (this.f117245i <= 0.0f) {
                dVar.setWeight(1.0f);
                if (O10) {
                    dVar.playInLoop();
                } else {
                    dVar.play();
                }
            } else {
                dVar.setWeight(0.0f);
                if (O10) {
                    dVar.playInLoop();
                } else {
                    dVar.play();
                }
            }
        }
        if (this.f117245i <= 0.0f) {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_PLAY_ANIMATION);
    }
}
