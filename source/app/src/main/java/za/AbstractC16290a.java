package za;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public abstract class AbstractC16290a extends NoCodeNode implements ga.F {

    public static final int f130851n = 0;

    public static final int f130852o = 0;

    public final NoCodeSlot[] f130853g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130854h = {new NoCodeSlot("Speed", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SPEED))};

    public final transient Vector3 f130855i = new Vector3();

    public final transient Vector3 f130856j = new Vector3();

    public final transient Vector3 f130857k = new Vector3();

    public transient GameObject f130858l;

    public transient boolean f130859m;

    @Override
    public NoCodeSlot[] F() {
        return this.f130853g;
    }

    public abstract float G0(GameObject target, Vector3 movementDelta, float deltaTime);

    public Vector3 H0(GameObject target) {
        return target.transform.a0((Vector3) JP.acquire(Vector3.class));
    }

    public abstract String I0();

    @Override
    public NoCodeSlot[] J() {
        return this.f130854h;
    }

    public Vector3 J0(GameObject target) {
        return target.transform.S2((Vector3) JP.acquire(Vector3.class));
    }

    public Vector3 K0(GameObject target) {
        return target.transform.r4((Vector3) JP.acquire(Vector3.class));
    }

    public final float L0(GameObject target) {
        target.transform.u0(this.f130856j);
        if (this.f130858l != target || !this.f130859m) {
            this.f130858l = target;
            this.f130859m = true;
            this.f130855i.set(this.f130856j);
            return 0.0f;
        }
        this.f130857k.set(this.f130856j);
        this.f130857k.subLocal(this.f130855i);
        this.f130855i.set(this.f130856j);
        float b10 = K8.d.b();
        if (b10 <= 0.0f) {
            return 0.0f;
        }
        return G0(target, this.f130857k, b10);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    public final void M0() {
        this.f130858l = null;
        this.f130859m = false;
        this.f130855i.set(0.0f);
        this.f130856j.set(0.0f);
        this.f130857k.set(0.0f);
    }

    @Override
    public String N(NoCodeData graphData) {
        return I0();
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void l0() {
        M0();
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130853g[0]);
        float L02 = C13317e.J(b10) ? L0(b10) : 0.0f;
        if (!C13317e.J(b10)) {
            M0();
        }
        y0(this.f130854h[0], Float.valueOf(L02));
        u(this.f130854h[0]);
    }

    @Override
    public H t0(int index, ga.D resolver) {
        return H.NUMBER;
    }
}
