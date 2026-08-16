package Wa;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ga.C;
import ga.C13303A;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class d extends NoCodeNode {

    public static final String f27358i = "Dot";

    public final NoCodeSlot[] f27359g;

    public final NoCodeSlot[] f27360h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return "Dot";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Dot";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public d() {
        H h10 = H.DYNAMIC;
        this.f27359g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B))};
        this.f27360h = new NoCodeSlot[]{new NoCodeSlot("Out", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Dot";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27359g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27360h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Dot";
    }

    @Override
    public void m0() {
        float x10;
        float f10;
        float f11;
        float f12;
        NoCodeData noCodeData = this.f79021a;
        H i10 = noCodeData != null ? C.i(new C13303A(noCodeData).b(this, 0), new C13303A(this.f79021a).b(this, 1)) : H.NUMBER;
        if (i10 == H.FLOAT4 || i10 == H.QUATERNION) {
            Vector4 p02 = m.p0(Q(this.f27359g[0]));
            Vector4 p03 = m.p0(Q(this.f27359g[1]));
            x10 = (p02.getX() * p03.getX()) + (p02.getY() * p03.getY()) + (p02.getZ() * p03.getZ());
            f10 = p02.f();
            f11 = p03.f();
        } else if (i10 == H.FLOAT3) {
            Vector3 n02 = m.n0(Q(this.f27359g[0]));
            Vector3 n03 = m.n0(Q(this.f27359g[1]));
            x10 = (n02.getX() * n03.getX()) + (n02.getY() * n03.getY());
            f10 = n02.getZ();
            f11 = n03.getZ();
        } else if (i10 != H.FLOAT2) {
            f12 = m.V(Q(this.f27359g[0])) * m.V(Q(this.f27359g[1]));
            y0(this.f27360h[0], Float.valueOf(f12));
            u(this.f27360h[0]);
        } else {
            Vector2 l02 = m.l0(Q(this.f27359g[0]));
            Vector2 l03 = m.l0(Q(this.f27359g[1]));
            x10 = l02.f79838x * l03.f79838x;
            f10 = l02.f79839y;
            f11 = l03.f79839y;
        }
        f12 = x10 + (f10 * f11);
        y0(this.f27360h[0], Float.valueOf(f12));
        u(this.f27360h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.NUMBER;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_DOT);
    }
}
