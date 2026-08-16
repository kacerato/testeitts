package Ga;

import F2.d;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
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

public class b extends NoCodeNode implements F {

    public static final String f7716m = "ColorTransition";

    public static final int f7717n = 0;

    public static final int f7718o = 1;

    public static final int f7719p = 2;

    public static final int f7720q = 0;

    public final NoCodeSlot[] f7721g;

    public final NoCodeSlot[] f7722h;

    public boolean f7723i;

    public ColorINT f7724j;

    public ColorINT f7725k;

    public float f7726l;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f7716m;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return SerializableShaderEntry.f81153g;
        }

        @Override
        public String f() {
            return "Color Transition";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        H h10 = H.COLOR;
        this.f7721g = new NoCodeSlot[]{new NoCodeSlot(d.f6274t, h10).c(Lang.l(Lang.T.NOCODE_SLOT_FROM)), new NoCodeSlot("To", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TO)), new NoCodeSlot("Seconds", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SECONDS))};
        this.f7722h = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.f7723i = false;
        this.serializedNodeType = f7716m;
    }

    @Override
    public void E0() {
        super.E0();
        if (this.f7723i) {
            float G10 = this.f7726l + ((1.0f / Nc.b.G(m.V(Q(this.f7721g[2])))) * K8.d.b());
            this.f7726l = G10;
            y0(this.f7722h[0], this.f7724j.f(this.f7725k, G10));
            if (this.f7726l >= 1.0f) {
                this.f7723i = false;
            }
            u(this.f7722h[0]);
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f7721g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f7722h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Color Transition";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 2) {
            return "1.0";
        }
        return null;
    }

    @Override
    public void m0() {
        this.f7726l = 0.0f;
        this.f7723i = true;
        this.f7724j = m.Q(Q(this.f7721g[0]));
        this.f7725k = m.Q(Q(this.f7721g[1]));
    }

    @Override
    public boolean o() {
        if (this.f7723i) {
            return true;
        }
        return super.o();
    }

    @Override
    public H t0(int index, D resolver) {
        return H.FLOAT4;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COLOR_TRANSITION);
    }
}
