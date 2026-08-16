package Fa;

import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
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
import ga.InterfaceC13307c;
import ga.m;
import org.eclipse.jdt.core.Signature;

public abstract class d extends NoCodeNode implements InterfaceC13307c {

    public static final String f6722j = "0.0001";

    public final String f6723g;

    public final NoCodeSlot[] f6724h;

    public final NoCodeSlot[] f6725i;

    public d(String title) {
        H h10 = H.NUMBER;
        this.f6724h = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B))};
        H h11 = H.BRANCH;
        this.f6725i = new NoCodeSlot[]{new NoCodeSlot("True", h11).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h11).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.f6723g = title;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f6724h;
    }

    public boolean G0(boolean current, boolean componentResult) {
        return current && componentResult;
    }

    public abstract boolean H0(float a10, float b10);

    public boolean I0(Object aValue, Object bValue, H compareType) {
        if (compareType == H.COLOR) {
            ColorINT Q10 = m.Q(aValue);
            ColorINT Q11 = m.Q(bValue);
            boolean K02 = K0();
            for (int i10 = 0; i10 < 4; i10++) {
                K02 = G0(K02, H0(m.h(Q10, i10), m.h(Q11, i10)));
            }
            return K02;
        }
        if (compareType == H.FLOAT4 || compareType == H.QUATERNION) {
            Vector4 p02 = m.p0(aValue);
            Vector4 p03 = m.p0(bValue);
            return G0(G0(G0(G0(K0(), H0(p02.getX(), p03.getX())), H0(p02.getY(), p03.getY())), H0(p02.getZ(), p03.getZ())), H0(p02.f(), p03.f()));
        }
        if (compareType == H.FLOAT3) {
            Vector3 n02 = m.n0(aValue);
            Vector3 n03 = m.n0(bValue);
            return G0(G0(G0(K0(), H0(n02.getX(), n03.getX())), H0(n02.getY(), n03.getY())), H0(n02.getZ(), n03.getZ()));
        }
        if (compareType != H.FLOAT2) {
            return H0(m.V(aValue), m.V(bValue));
        }
        Vector2 l02 = m.l0(aValue);
        Vector2 l03 = m.l0(bValue);
        return G0(G0(K0(), H0(l02.f79838x, l03.f79838x)), H0(l02.f79839y, l03.f79839y));
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f6725i;
    }

    public abstract String J0(String a10, String b10);

    public boolean K0() {
        return true;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f6723g;
    }

    @Override
    public void m0() {
        Object Q10 = Q(this.f6724h[0]);
        Object Q11 = Q(this.f6724h[1]);
        NoCodeData noCodeData = this.f79021a;
        if (I0(Q10, Q11, noCodeData != null ? C.i(new C13303A(noCodeData).b(this, 0), new C13303A(this.f79021a).b(this, 1)) : H.NUMBER)) {
            u(this.f6725i[0]);
        } else {
            u(this.f6725i[1]);
        }
    }
}
