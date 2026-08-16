package Wa;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ga.C13303A;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import java.util.List;
import org.eclipse.jdt.core.Signature;

public class k extends NoCodeNode {

    public static final String f27384i = "VectorDecompose";

    public static final int f27385j = 0;

    public final NoCodeSlot[] f27386g = {new NoCodeSlot("Vector", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_VECTOR))};

    public final NoCodeSlot[] f27387h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return "VectorDecompose";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "Vector";
        }

        @Override
        public String f() {
            return "Vector Decompose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public k() {
        H h10 = H.NUMBER;
        this.f27387h = new NoCodeSlot[]{new NoCodeSlot("X", h10).c(Lang.l(Lang.T.NOCODE_SLOT_X)), new NoCodeSlot("Y", h10).c(Lang.l(Lang.T.NOCODE_SLOT_Y)), new NoCodeSlot(Signature.SIG_BOOLEAN, h10).c(Lang.l(Lang.T.NOCODE_SLOT_Z)), new NoCodeSlot(ExifInterface.LONGITUDE_WEST, h10).c(Lang.l(Lang.T.NOCODE_SLOT_W))};
        this.serializedNodeType = "VectorDecompose";
    }

    private int H0() {
        int i10;
        int i11;
        if (this.f79021a == null) {
            return 0;
        }
        String B10 = B();
        List<NoCodeBranchConnection> list = this.f79021a.branchConnections;
        if (list != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list) {
                if (noCodeBranchConnection != null && B10.equals(noCodeBranchConnection.fromNodeId) && (i11 = noCodeBranchConnection.fromSlot) >= 0 && i11 < this.f27387h.length) {
                    return i11;
                }
            }
        }
        List<NoCodeNodeConnection> list2 = this.f79021a.connections;
        if (list2 != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list2) {
                if (noCodeNodeConnection != null && B10.equals(noCodeNodeConnection.fromNodeId) && (i10 = noCodeNodeConnection.fromSlot) >= 0 && i10 < this.f27387h.length) {
                    return i10;
                }
            }
        }
        return 0;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f27386g;
    }

    public final H G0(H t10) {
        return t10 == H.NUMBER01 ? H.NUMBER : t10;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f27387h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Vector Decompose";
    }

    @Override
    public void m0() {
        float V10;
        float f10;
        float f11;
        float f12;
        float x10;
        float y10;
        float z10;
        float y11;
        float f13;
        float f14;
        Object Q10 = Q(this.f27386g[0]);
        NoCodeData noCodeData = this.f79021a;
        H G02 = noCodeData != null ? G0(new C13303A(noCodeData).b(this, 0)) : H.DYNAMIC;
        float f15 = 0.0f;
        if (G02 != H.NUMBER && G02 != H.NUMBER01) {
            if (G02 != H.FLOAT2) {
                if (G02 != H.FLOAT3 && G02 != H.DIRECTION) {
                    if (G02 == H.FLOAT4 || G02 == H.QUATERNION) {
                        Vector4 p02 = m.p0(Q10);
                        f15 = p02.getX();
                        y11 = p02.getY();
                        f11 = p02.getZ();
                        f13 = p02.f();
                    } else if (Q10 instanceof Number) {
                        V10 = m.V(Q10);
                    } else if (Q10 instanceof Vector2) {
                        Vector2 vector2 = (Vector2) Q10;
                        f14 = vector2.f79838x;
                        f12 = vector2.f79839y;
                    } else if (Q10 instanceof Vector3) {
                        Vector3 vector3 = (Vector3) Q10;
                        x10 = vector3.getX();
                        y10 = vector3.getY();
                        z10 = vector3.getZ();
                    } else {
                        if (!(Q10 instanceof Vector4)) {
                            f12 = 0.0f;
                            f10 = 0.0f;
                            f11 = 0.0f;
                            y0(this.f27387h[0], Float.valueOf(f15));
                            y0(this.f27387h[1], Float.valueOf(f12));
                            y0(this.f27387h[2], Float.valueOf(f11));
                            y0(this.f27387h[3], Float.valueOf(f10));
                            u(this.f27387h[H0()]);
                        }
                        Vector4 vector4 = (Vector4) Q10;
                        f15 = vector4.getX();
                        y11 = vector4.getY();
                        f11 = vector4.getZ();
                        f13 = vector4.f();
                    }
                    float f16 = y11;
                    f10 = f13;
                    f12 = f16;
                    y0(this.f27387h[0], Float.valueOf(f15));
                    y0(this.f27387h[1], Float.valueOf(f12));
                    y0(this.f27387h[2], Float.valueOf(f11));
                    y0(this.f27387h[3], Float.valueOf(f10));
                    u(this.f27387h[H0()]);
                }
                Vector3 n02 = m.n0(Q10);
                x10 = n02.getX();
                y10 = n02.getY();
                z10 = n02.getZ();
                float f17 = y10;
                f11 = z10;
                f12 = f17;
                f15 = x10;
                f10 = 0.0f;
                y0(this.f27387h[0], Float.valueOf(f15));
                y0(this.f27387h[1], Float.valueOf(f12));
                y0(this.f27387h[2], Float.valueOf(f11));
                y0(this.f27387h[3], Float.valueOf(f10));
                u(this.f27387h[H0()]);
            }
            Vector2 l02 = m.l0(Q10);
            f14 = l02.f79838x;
            f12 = l02.f79839y;
            f11 = 0.0f;
            f15 = f14;
            f10 = 0.0f;
            y0(this.f27387h[0], Float.valueOf(f15));
            y0(this.f27387h[1], Float.valueOf(f12));
            y0(this.f27387h[2], Float.valueOf(f11));
            y0(this.f27387h[3], Float.valueOf(f10));
            u(this.f27387h[H0()]);
        }
        V10 = m.V(Q10);
        f10 = 0.0f;
        f11 = 0.0f;
        f15 = V10;
        f12 = 0.0f;
        y0(this.f27387h[0], Float.valueOf(f15));
        y0(this.f27387h[1], Float.valueOf(f12));
        y0(this.f27387h[2], Float.valueOf(f11));
        y0(this.f27387h[3], Float.valueOf(f10));
        u(this.f27387h[H0()]);
    }

    @Override
    public H t0(int index, D resolver) {
        return H.NUMBER;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_DECOMPOSE);
    }
}
