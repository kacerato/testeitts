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

public abstract class b extends NoCodeNode {

    public final String f6713g;

    public final String f6714h;

    public final NoCodeSlot[] f6715i;

    public final NoCodeSlot[] f6716j;

    public class a implements m.b {
        public a() {
        }

        @Override
        public float a(float a10, float b10) {
            String str = b.this.f6714h;
            str.hashCode();
            char c10 = '\uffff';
            switch (str.hashCode()) {
                case 107876:
                    if (str.equals("max")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 108114:
                    if (str.equals("min")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 108290:
                    if (str.equals("mod")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 111192:
                    if (str.equals("pow")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return Math.max(a10, b10);
                case 1:
                    return Math.min(a10, b10);
                case 2:
                    if (b10 == 0.0f) {
                        return 0.0f;
                    }
                    return a10 % b10;
                case 3:
                    return (float) Math.pow(a10, b10);
                default:
                    return 0.0f;
            }
        }
    }

    public b(String title, String func) {
        H h10 = H.DYNAMIC;
        this.f6715i = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B))};
        this.f6716j = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.f6713g = title;
        this.f6714h = func;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f6715i;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f6716j;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f6713g;
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f6716j[0], m.a(Q(this.f6715i[0]), Q(this.f6715i[1]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : H.NUMBER, new a()));
        u(this.f6716j[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return C.i(resolver.b(this, 0), resolver.b(this, 1));
    }
}
