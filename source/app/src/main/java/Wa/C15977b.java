package wa;

import JAVARuntime.ObjectFile;
import JAVARuntime.SpatialObject;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;
import java.lang.ref.WeakReference;

public class C15977b extends NoCodeNode implements F {

    public static final String f127361i = "Instantiate";

    public static final int f127362j = 0;

    public static final int f127363k = 1;

    public static final int f127364l = 0;

    public final NoCodeSlot[] f127365g;

    public final NoCodeSlot[] f127366h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15977b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15977b.class;
        }

        @Override
        public String c() {
            return C15977b.f127361i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15977b.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Lifecycle";
        }

        @Override
        public String f() {
            return C15977b.f127361i;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15977b() {
        NoCodeSlot c10 = new NoCodeSlot("Object File", H.OBJECT_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_FILE));
        H h10 = H.GAME_OBJECT;
        this.f127365g = new NoCodeSlot[]{c10, new NoCodeSlot("Pivot", h10).c(Lang.l(Lang.T.NOCODE_SLOT_PIVOT))};
        this.f127366h = new NoCodeSlot[]{new NoCodeSlot("GameObject", h10).c(Lang.l(Lang.T.NOCODE_SLOT_GAME_OBJECT))};
        this.serializedNodeType = f127361i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f127365g;
    }

    public final GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f127365g[1]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f127366h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return f127361i;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex != 0 && inputIndex == 1) ? C13308d.f88188b : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void m0() {
        SpatialObject instantiate;
        WeakReference weakReference;
        GameObject gameObject = null;
        try {
            ObjectFile c02 = m.c0(Q(this.f127365g[0]));
            GameObject G02 = G0();
            if (c02 != null && C13317e.J(G02) && (instantiate = G02.W1().instantiate(c02)) != null && (weakReference = instantiate.instance) != null) {
                gameObject = (GameObject) weakReference.get();
            }
        } catch (Exception unused) {
        }
        if (!C13317e.J(gameObject)) {
            s();
        } else {
            y0(this.f127366h[0], gameObject);
            u(this.f127366h[0]);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_INSTANTIATE);
    }
}
