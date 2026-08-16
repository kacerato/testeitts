package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class v extends Fa.c {

    public static final String f24177j = "Multiply";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new v();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return v.class;
        }

        @Override
        public String c() {
            return "Multiply";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, v.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Multiply";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public v() {
        super("Multiply");
        this.serializedNodeType = "Multiply";
    }

    @Override
    public float G0(float a10, float b10) {
        return a10 * b10;
    }

    @Override
    public ga.H t0(int index, ga.D resolver) {
        ga.H h10;
        ga.H h11;
        ga.H b10 = resolver.b(this, 0);
        ga.H b11 = resolver.b(this, 1);
        ga.H h12 = ga.H.MAT4;
        if (b10 == h12 && b11 == h12) {
            return h12;
        }
        ga.H h13 = ga.H.MAT3;
        if (b10 == h13 && b11 == h13) {
            return h13;
        }
        if (b10 == h12 && (b11 == (h11 = ga.H.FLOAT4) || b11 == ga.H.QUATERNION)) {
            return h11;
        }
        ga.H h14 = ga.H.FLOAT4;
        if ((b10 == h14 || b10 == ga.H.QUATERNION) && b11 == h12) {
            return h14;
        }
        if (b10 == h13 && (b11 == (h10 = ga.H.FLOAT3) || b11 == ga.H.DIRECTION)) {
            return h10;
        }
        ga.H h15 = ga.H.FLOAT3;
        return ((b10 == h15 || b10 == ga.H.DIRECTION) && b11 == h13) ? h15 : (b10 == h12 && (b11 == h15 || b11 == ga.H.DIRECTION)) ? h15 : ((b10 == h15 || b10 == ga.H.DIRECTION) && b11 == h12) ? h15 : ga.C.i(b10, b11);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_MULTIPLY);
    }
}
