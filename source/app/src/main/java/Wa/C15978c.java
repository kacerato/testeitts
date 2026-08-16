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
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;
import java.lang.ref.WeakReference;

public class C15978c extends NoCodeNode implements F {

    public static final String f127367k = "PooledInstantiate";

    public static final int f127368l = 0;

    public static final int f127369m = 1;

    public static final int f127370n = 2;

    public static final int f127371o = 0;

    public final NoCodeSlot[] f127372g;

    public final NoCodeSlot[] f127373h;

    public final transient SteppedArrayList<GameObject> f127374i;

    public transient int f127375j;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15978c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15978c.class;
        }

        @Override
        public String c() {
            return C15978c.f127367k;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15978c.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Lifecycle";
        }

        @Override
        public String f() {
            return "Pooled Instantiate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15978c() {
        NoCodeSlot c10 = new NoCodeSlot("Object File", H.OBJECT_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_FILE));
        H h10 = H.GAME_OBJECT;
        this.f127372g = new NoCodeSlot[]{c10, new NoCodeSlot("Pivot", h10).c(Lang.l(Lang.T.NOCODE_SLOT_PIVOT)), new NoCodeSlot("Max Objects", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_OBJECTS))};
        this.f127373h = new NoCodeSlot[]{new NoCodeSlot("GameObject", h10).c(Lang.l(Lang.T.NOCODE_SLOT_GAME_OBJECT))};
        this.f127374i = new SteppedArrayList<>();
        this.f127375j = 0;
        this.serializedNodeType = f127367k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static GameObject I0(ObjectFile file, GameObject pivot) {
        WeakReference weakReference;
        SpatialObject instantiate = pivot.W1().instantiate(file);
        if (instantiate == null || (weakReference = instantiate.instance) == null) {
            return null;
        }
        return (GameObject) weakReference.get();
    }

    private GameObject J0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f127372g[1]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    public static void K0(GameObject target, GameObject pivot) {
        Transform J02;
        if (C13317e.J(target) && C13317e.J(pivot) && (J02 = pivot.J0()) != null) {
            Transform J03 = target.J0();
            if (J03 == null) {
                J03 = new Transform();
                target.M1(J03);
            }
            J03.p3(J02.t0().m1249clone());
            J03.x3(Quaternion.Q(J02.forward()));
            target.setEnabled(true);
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f127372g;
    }

    public final void G0() {
        for (int size = this.f127374i.size() - 1; size >= 0; size--) {
            if (!C13317e.J(this.f127374i.get(size))) {
                this.f127374i.remove(size);
            }
        }
        if (this.f127374i.isEmpty()) {
            this.f127375j = 0;
        } else if (this.f127375j >= this.f127374i.size()) {
            this.f127375j = 0;
        }
    }

    public final GameObject H0() {
        int size = this.f127374i.size();
        if (size == 0) {
            return null;
        }
        int i10 = this.f127375j;
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = (i10 + i11) % size;
            GameObject gameObject = this.f127374i.get(i12);
            if (C13317e.J(gameObject) && !gameObject.isEnabled()) {
                this.f127375j = (i12 + 1) % size;
                return gameObject;
            }
        }
        return null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f127373h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Pooled Instantiate";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "" : inputIndex == 1 ? C13308d.f88188b : inputIndex == 2 ? "10" : "";
    }

    @Override
    public void j0() {
        this.f127374i.clear();
        this.f127375j = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m0() {
        GameObject gameObject;
        ObjectFile c02;
        GameObject J02;
        int max;
        try {
            c02 = m.c0(Q(this.f127372g[0]));
            J02 = J0();
            max = Math.max(1, Math.round(m.V(Q(this.f127372g[2]))));
        } catch (Exception unused) {
        }
        if (c02 != null && C13317e.J(J02)) {
            G0();
            gameObject = H0();
            if (!C13317e.J(gameObject) && this.f127374i.size() >= max) {
                gameObject = this.f127374i.get(0);
            }
            if (C13317e.J(gameObject)) {
                K0(gameObject, J02);
            } else if (this.f127374i.size() < max) {
                gameObject = I0(c02, J02);
                if (C13317e.J(gameObject)) {
                    this.f127374i.add(gameObject);
                }
            }
            y0(this.f127373h[0], C13317e.J(gameObject) ? gameObject : null);
            u(this.f127373h[0]);
        }
        gameObject = null;
        y0(this.f127373h[0], C13317e.J(gameObject) ? gameObject : null);
        u(this.f127373h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_POOLED_INSTANTIATE);
    }
}
