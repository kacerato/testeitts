package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.ObjectRelated;

import C5.b;
import F5.c;
import K8.d;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13308d;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import gb.C13317e;
import java.util.List;

public abstract class BaseObjectSpeedEventNode extends Fa.a implements F {

    public static final int f79064n = 0;

    public static final int f79065o = 1;

    public static final int f79066p = 0;

    public static final int f79067q = 1;

    public static final float f79068r = 1.0E-4f;

    @Expose
    public b conditionType = b.LessThan;

    public final NoCodeSlot[] f79069g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public final NoCodeSlot[] f79070h;

    public final transient Vector3 f79071i;

    public final transient Vector3 f79072j;

    public final transient Vector3 f79073k;

    public transient GameObject f79074l;

    public transient boolean f79075m;

    public class a extends c.n0<b> {
        public a() {
        }

        @Override
        public void a() {
            NoCodeData A10 = BaseObjectSpeedEventNode.this.A();
            if (A10 != null) {
                A10.y0();
            }
        }

        @Override
        public void set(b value) {
            BaseObjectSpeedEventNode baseObjectSpeedEventNode = BaseObjectSpeedEventNode.this;
            if (value == null) {
                value = b.LessThan;
            }
            baseObjectSpeedEventNode.conditionType = value;
        }

        @Override
        public String c(b enumObject) {
            if (enumObject == null) {
                return b.LessThan.name();
            }
            int ordinal = enumObject.ordinal();
            return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? enumObject.name() : "Lesser Or Equal" : "Bigger Or Equal" : "Less Than" : "Bigger Than" : "Equals";
        }
    }

    public enum b {
        Equals,
        BiggerThan,
        LessThan,
        BiggerOrEqual,
        LesserOrEqual
    }

    public BaseObjectSpeedEventNode() {
        H h10 = H.BRANCH;
        this.f79070h = new NoCodeSlot[]{new NoCodeSlot("on True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("on False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.f79071i = new Vector3();
        this.f79072j = new Vector3();
        this.f79073k = new Vector3();
    }

    private float Q0(GameObject target) {
        target.transform.u0(this.f79072j);
        if (this.f79074l != target || !this.f79075m) {
            this.f79074l = target;
            this.f79075m = true;
            this.f79071i.set(this.f79072j);
            return 0.0f;
        }
        this.f79073k.set(this.f79072j);
        this.f79073k.subLocal(this.f79071i);
        this.f79071i.set(this.f79072j);
        float b10 = d.b();
        if (b10 <= 0.0f) {
            return 0.0f;
        }
        return K0(target, this.f79073k, b10);
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f79069g[0]);
            if (!C13317e.J(b10)) {
                this.f79074l = null;
                this.f79075m = false;
                I0();
            } else if (H0(Q0(b10), m.V(Q(this.f79069g[1])))) {
                J0();
            } else {
                I0();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f79069g;
    }

    public final boolean H0(float value, float compareValue) {
        int ordinal = L0().ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 3 ? ordinal != 4 ? value < compareValue : value <= compareValue : value >= compareValue : value > compareValue : Math.abs(value - compareValue) <= 1.0E-4f;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(c.j("", b.class, L0(), new a(), b.a.SLDropdownWrap));
        return steppedArrayList;
    }

    public final void I0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null || !noCodeData.o0(this, this.f79070h[1])) {
            return;
        }
        u(this.f79070h[1]);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79070h;
    }

    public final void J0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null || !noCodeData.o0(this, this.f79070h[0])) {
            return;
        }
        u(this.f79070h[0]);
    }

    public abstract float K0(GameObject target, Vector3 movementDelta, float deltaTime);

    public final b L0() {
        b bVar = this.conditionType;
        return bVar != null ? bVar : b.LessThan;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    public Vector3 M0(GameObject target) {
        return target.transform.a0((Vector3) JP.acquire(Vector3.class));
    }

    @Override
    public String N(NoCodeData graphData) {
        return N0();
    }

    public abstract String N0();

    public Vector3 O0(GameObject target) {
        return target.transform.S2((Vector3) JP.acquire(Vector3.class));
    }

    public Vector3 P0(GameObject target) {
        return target.transform.r4((Vector3) JP.acquire(Vector3.class));
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "0.0" : "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
        this.f79074l = null;
        this.f79075m = false;
        this.f79071i.set(0.0f);
        this.f79072j.set(0.0f);
        this.f79073k.set(0.0f);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }
}
