package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;

public class x extends Fa.e {

    public static final String f24179j = "Normalize";

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
            return "Normalize";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, x.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Normalize";
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
        super("Normalize");
        this.serializedNodeType = "Normalize";
    }

    @Override
    public float G0(float value) {
        if (value == 0.0f) {
            return 0.0f;
        }
        return value / Math.abs(value);
    }

    @Override
    public void m0() {
        Object valueOf;
        Object vector2;
        Object Q10 = Q(F()[0]);
        if (Q10 instanceof Vector4) {
            Vector4 vector4 = (Vector4) Q10;
            float sqrt = (float) Math.sqrt((vector4.getX() * vector4.getX()) + (vector4.getY() * vector4.getY()) + (vector4.getZ() * vector4.getZ()) + (vector4.f() * vector4.f()));
            if (sqrt == 0.0f) {
                valueOf = new Vector4();
            } else {
                vector2 = new Vector4(vector4.getX() / sqrt, vector4.getY() / sqrt, vector4.getZ() / sqrt, vector4.f() / sqrt);
                valueOf = vector2;
            }
        } else if (Q10 instanceof Vector3) {
            valueOf = ((Vector3) Q10).normalize();
        } else if (Q10 instanceof Vector2) {
            Vector2 vector22 = (Vector2) Q10;
            float f10 = vector22.f79838x;
            float f11 = vector22.f79839y;
            float sqrt2 = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            if (sqrt2 == 0.0f) {
                valueOf = new Vector2();
            } else {
                vector2 = new Vector2(vector22.f79838x / sqrt2, vector22.f79839y / sqrt2);
                valueOf = vector2;
            }
        } else {
            float V10 = ga.m.V(Q10);
            valueOf = Float.valueOf(V10 != 0.0f ? V10 / Math.abs(V10) : 0.0f);
        }
        y0(J()[0], valueOf);
        u(J()[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_NORMALIZE);
    }
}
