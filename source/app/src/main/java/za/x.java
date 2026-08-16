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

public class x extends NoCodeNode implements ga.F {

    public static final String f130964h = "Rotate";

    public static final int f130965i = 0;

    public static final int f130966j = 1;

    public final NoCodeSlot[] f130967g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Angles", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_ANGLES))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new x();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return x.class;
        }

        @Override
        public String c() {
            return "Rotate";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, x.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Rotate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public x() {
        this.serializedNodeType = "Rotate";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130967g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Rotate";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) {
            return C13308d.f88188b;
        }
        return null;
    }

    @Override
    public void m0() {
        Vector3 vector3 = null;
        try {
            NoCodeData noCodeData = this.f79021a;
            if (noCodeData != null) {
                GameObject b10 = Aa.b.b(this, noCodeData, this.f130967g[0]);
                if (C13317e.J(b10)) {
                    vector3 = h(Q(this.f130967g[1]));
                    float b11 = Ic.A.b(K8.d.b());
                    float b12 = Ic.A.b(vector3.getX());
                    float f10 = b12 * b11;
                    float b13 = Ic.A.b(vector3.getY()) * b11;
                    float b14 = Ic.A.b(vector3.getZ()) * b11;
                    StandUp standUp = (StandUp) b10.d0(StandUp.class);
                    if (standUp != null) {
                        standUp.rotate(b13);
                    } else {
                        b10.J0().T2(f10, b13, b14);
                    }
                }
            }
            if (vector3 != null) {
                q0(vector3);
            }
            t();
        } catch (Throwable th2) {
            if (0 != 0) {
                q0(null);
            }
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ROTATE);
    }
}
