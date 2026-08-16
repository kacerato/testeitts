package Wa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class h extends NoCodeNode {

    public static final String f27375i = "Length";

    public final NoCodeSlot[] f27376g = {new NoCodeSlot("In", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_IN))};

    public final NoCodeSlot[] f27377h = {new NoCodeSlot("Out", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return h.class;
        }

        @Override
        public String c() {
            return "Length";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, h.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Length";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public h() {
        this.serializedNodeType = "Length";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27376g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27377h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Length";
    }

    @Override
    public void m0() {
        float abs;
        double sqrt;
        Object Q10 = Q(this.f27376g[0]);
        if (!(Q10 instanceof Vector4)) {
            if (Q10 instanceof Vector3) {
                abs = ((Vector3) Q10).lengthF();
            } else if (Q10 instanceof Vector2) {
                Vector2 vector2 = (Vector2) Q10;
                float f10 = vector2.f79838x;
                float f11 = vector2.f79839y;
                sqrt = Math.sqrt((f10 * f10) + (f11 * f11));
            } else {
                abs = Math.abs(m.V(Q10));
            }
            y0(this.f27377h[0], Float.valueOf(abs));
            u(this.f27377h[0]);
        }
        Vector4 vector4 = (Vector4) Q10;
        sqrt = Math.sqrt((vector4.getX() * vector4.getX()) + (vector4.getY() * vector4.getY()) + (vector4.getZ() * vector4.getZ()) + (vector4.f() * vector4.f()));
        abs = (float) sqrt;
        y0(this.f27377h[0], Float.valueOf(abs));
        u(this.f27377h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LENGTH);
    }
}
