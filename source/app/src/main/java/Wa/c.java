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
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class c extends NoCodeNode {

    public static final String f27355i = "Distance";

    public final NoCodeSlot[] f27356g;

    public final NoCodeSlot[] f27357h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return "Distance";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Distance";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public c() {
        H h10 = H.DYNAMIC;
        this.f27356g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B))};
        this.f27357h = new NoCodeSlot[]{new NoCodeSlot("Out", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.serializedNodeType = "Distance";
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27356g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27357h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Distance";
    }

    @Override
    public void m0() {
        double sqrt;
        float f10;
        NoCodeData noCodeData = this.f79021a;
        H i10 = noCodeData != null ? C.i(new C13303A(noCodeData).b(this, 0), new C13303A(this.f79021a).b(this, 1)) : H.NUMBER;
        if (i10 == H.FLOAT4 || i10 == H.QUATERNION) {
            Vector4 p02 = m.p0(Q(this.f27356g[0]));
            Vector4 p03 = m.p0(Q(this.f27356g[1]));
            float x10 = p02.getX() - p03.getX();
            float y10 = p02.getY() - p03.getY();
            float z10 = p02.getZ() - p03.getZ();
            float f11 = p02.f() - p03.f();
            sqrt = Math.sqrt((x10 * x10) + (y10 * y10) + (z10 * z10) + (f11 * f11));
        } else if (i10 == H.FLOAT3) {
            Vector3 n02 = m.n0(Q(this.f27356g[0]));
            Vector3 n03 = m.n0(Q(this.f27356g[1]));
            float x11 = n02.getX() - n03.getX();
            float y11 = n02.getY() - n03.getY();
            float z11 = n02.getZ() - n03.getZ();
            sqrt = Math.sqrt((x11 * x11) + (y11 * y11) + (z11 * z11));
        } else if (i10 != H.FLOAT2) {
            f10 = Math.abs(m.V(Q(this.f27356g[0])) - m.V(Q(this.f27356g[1])));
            y0(this.f27357h[0], Float.valueOf(f10));
            u(this.f27357h[0]);
        } else {
            Vector2 l02 = m.l0(Q(this.f27356g[0]));
            Vector2 l03 = m.l0(Q(this.f27356g[1]));
            float f12 = l02.f79838x - l03.f79838x;
            float f13 = l02.f79839y - l03.f79839y;
            sqrt = Math.sqrt((f12 * f12) + (f13 * f13));
        }
        f10 = (float) sqrt;
        y0(this.f27357h[0], Float.valueOf(f10));
        u(this.f27357h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_DISTANCE);
    }
}
