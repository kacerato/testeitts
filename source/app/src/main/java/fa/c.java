package Fa;

import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C;
import ga.C13303A;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import org.eclipse.jdt.core.Signature;

public abstract class c extends NoCodeNode {

    public final String f6718g;

    public final NoCodeSlot[] f6719h;

    public final NoCodeSlot[] f6720i;

    public class a implements m.b {
        public a() {
        }

        @Override
        public float a(float a10, float b10) {
            return c.this.G0(a10, b10);
        }
    }

    public c(String title) {
        H h10 = H.DYNAMIC;
        this.f6719h = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B))};
        this.f6720i = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.f6718g = title;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f6719h;
    }

    public abstract float G0(float a10, float b10);

    @Override
    public NoCodeSlot[] J() {
        return this.f6720i;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f6718g;
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f6720i[0], m.a(Q(this.f6719h[0]), Q(this.f6719h[1]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : H.NUMBER, new a()));
        u(this.f6720i[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return C.i(resolver.b(this, 0), resolver.b(this, 1));
    }
}
