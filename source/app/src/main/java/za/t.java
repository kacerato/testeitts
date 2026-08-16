package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public class t extends NoCodeNode implements ga.F {

    public static final String f130931o = "LimitedRotateNode";

    public static final float f130932p = 1.0E-4f;

    public static final int f130933q = 0;

    public static final int f130934r = 1;

    public static final int f130935s = 2;

    public final NoCodeSlot[] f130936g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("angles", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_ANGLES)), new NoCodeSlot("seconds", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SECONDS))};

    public float f130937h;

    public float f130938i;

    public float f130939j;

    public float f130940k;

    public float f130941l;

    public float f130942m;

    public float f130943n;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new t();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return t.class;
        }

        @Override
        public String c() {
            return t.f130931o;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, t.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Limited Rotate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public t() {
        this.serializedNodeType = f130931o;
    }

    @Override
    public void E0() {
        NoCodeData noCodeData;
        float f10;
        float f11;
        super.E0();
        if (d0() && (noCodeData = this.f79021a) != null) {
            GameObject b10 = Aa.b.b(this, noCodeData, this.f130936g[0]);
            if (C13317e.J(b10)) {
                float f12 = 0.0f;
                if (this.f130943n <= 1.0E-4f) {
                    b10.J0().T2(this.f130940k, this.f130941l, this.f130942m);
                    this.f130940k = 0.0f;
                    this.f130941l = 0.0f;
                    this.f130942m = 0.0f;
                    t();
                    return;
                }
                float b11 = Ic.A.b(K8.d.b()) * (1.0f / this.f130943n);
                if (Math.abs(this.f130940k) > 1.0E-4f) {
                    f10 = G0(this.f130940k, this.f130937h, b11);
                    float f13 = this.f130940k - f10;
                    this.f130940k = f13;
                    if (Math.abs(f13) < 1.0E-4f) {
                        this.f130940k = 0.0f;
                    }
                } else {
                    f10 = 0.0f;
                }
                if (Math.abs(this.f130941l) > 1.0E-4f) {
                    f11 = G0(this.f130941l, this.f130938i, b11);
                    float f14 = this.f130941l - f11;
                    this.f130941l = f14;
                    if (Math.abs(f14) < 1.0E-4f) {
                        this.f130941l = 0.0f;
                    }
                } else {
                    f11 = 0.0f;
                }
                if (Math.abs(this.f130942m) > 1.0E-4f) {
                    float G02 = G0(this.f130942m, this.f130939j, b11);
                    float f15 = this.f130942m - G02;
                    this.f130942m = f15;
                    if (Math.abs(f15) < 1.0E-4f) {
                        this.f130942m = 0.0f;
                    }
                    f12 = G02;
                }
                StandUp standUp = (StandUp) b10.d0(StandUp.class);
                if (standUp != null) {
                    standUp.rotate(f11);
                } else {
                    b10.J0().T2(f10, f11, f12);
                }
                if (Math.abs(this.f130940k) >= 1.0E-4f || Math.abs(this.f130941l) >= 1.0E-4f || Math.abs(this.f130942m) >= 1.0E-4f) {
                    return;
                }
                t();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130936g;
    }

    public final float G0(float remaining, float totalDegrees, float dt) {
        float f10 = totalDegrees * dt;
        return Math.abs(f10) >= Math.abs(remaining) ? remaining : f10;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Limited Rotate";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 2) {
            return "1.0";
        }
        if (inputIndex == 0) {
            return C13308d.f88188b;
        }
        return null;
    }

    @Override
    public void m0() {
        Vector3 vector3;
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null || !C13317e.J(Aa.b.b(this, noCodeData, this.f130936g[0]))) {
            vector3 = null;
        } else {
            vector3 = h(Q(this.f130936g[1]));
            this.f130943n = Ic.A.b(ga.m.V(Q(this.f130936g[2])));
            this.f130937h = Ic.A.b(vector3.getX());
            this.f130938i = Ic.A.b(vector3.getY());
            float b10 = Ic.A.b(vector3.getZ());
            this.f130939j = b10;
            this.f130940k = this.f130937h;
            this.f130941l = this.f130938i;
            this.f130942m = b10;
        }
        if (vector3 != null) {
            q0(vector3);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LIMITED_ROTATE);
    }
}
