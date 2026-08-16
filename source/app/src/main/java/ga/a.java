package Ga;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class a extends NoCodeNode implements F {

    public static final String f7706i = "ColorBlend";

    public static final int f7707j = 0;

    public static final int f7708k = 1;

    public static final int f7709l = 2;

    public static final int f7710m = 0;

    public final NoCodeSlot[] f7711g;

    public final NoCodeSlot[] f7712h;

    public class C0149a implements p {
        @Override
        public NoCodeNode a() {
            return new a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a.class;
        }

        @Override
        public String c() {
            return a.f7706i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return SerializableShaderEntry.f81153g;
        }

        @Override
        public String f() {
            return "Color Blend";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements m.b {
        public b() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 - b10;
        }
    }

    public class c implements m.b {
        public c() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 * b10;
        }
    }

    public class d implements m.b {
        public d() {
        }

        @Override
        public float a(float a10, float b10) {
            return a10 + b10;
        }
    }

    static {
        o.a(new C0149a());
    }

    public a() {
        H h10 = H.COLOR;
        this.f7711g = new NoCodeSlot[]{new NoCodeSlot("Base", h10).c(Lang.l(Lang.T.NOCODE_SLOT_BASE)), new NoCodeSlot("Blend", h10).c(Lang.l(Lang.T.NOCODE_SLOT_BLEND)), new NoCodeSlot("Opacity", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_OPACITY))};
        this.f7712h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = f7706i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f7711g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f7712h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Color Blend";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 2) {
            return Dd.c.f5125q;
        }
        return null;
    }

    @Override
    public void m0() {
        float V10 = m.V(Q(this.f7711g[2]));
        Object Q10 = Q(this.f7711g[1]);
        Object Q11 = Q(this.f7711g[0]);
        H h10 = H.FLOAT4;
        y0(this.f7712h[0], m.a(Q(this.f7711g[0]), m.a(m.a(Q10, Q11, h10, new b()), Float.valueOf(V10), h10, new c()), h10, new d()));
        u(this.f7712h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.FLOAT4;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COLOR_BLEND);
    }
}
