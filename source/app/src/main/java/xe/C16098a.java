package xe;

import Um.r;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import androidx.annotation.NonNull;
import androidx.core.text.util.LinkifyCompat;
import qe.AbstractC15072a;
import qe.C15097z;
import qe.InterfaceC15080i;
import qe.InterfaceC15084m;
import qe.InterfaceC15093v;
import qe.InterfaceC15096y;
import re.AbstractC15172b;
import re.C15171a;

public class C16098a extends AbstractC15072a {

    public final int f128136a;

    public final boolean f128137b;

    public class C2204a implements InterfaceC15080i.a<C15171a> {
        public C2204a() {
        }

        @Override
        public void a(@NonNull C15171a c15171a) {
            c15171a.o(C16098a.this.f128137b ? new b(C16098a.this.f128136a) : new c(C16098a.this.f128136a));
        }
    }

    public static class b extends c {
        public b(int i10) {
            super(i10);
        }

        @Override
        public boolean b(@NonNull Spannable spannable, int i10) {
            return LinkifyCompat.addLinks(spannable, i10);
        }
    }

    public static class c implements C15171a.p {

        public final int f128139a;

        public c(int i10) {
            this.f128139a = i10;
        }

        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull String str, int i10) {
            InterfaceC15096y a10 = interfaceC15084m.o().f().a(r.class);
            if (a10 == null) {
                return;
            }
            Spannable spannableStringBuilder = new SpannableStringBuilder(str);
            if (b(spannableStringBuilder, this.f128139a)) {
                URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class);
                if (uRLSpanArr == null || uRLSpanArr.length <= 0) {
                    return;
                }
                InterfaceC15093v h10 = interfaceC15084m.h();
                C15097z w10 = interfaceC15084m.w();
                for (URLSpan uRLSpan : uRLSpanArr) {
                    AbstractC15172b.f108900e.h(h10, uRLSpan.getURL());
                    C15097z.o(w10, a10.a(interfaceC15084m.o(), h10), spannableStringBuilder.getSpanStart(uRLSpan) + i10, spannableStringBuilder.getSpanEnd(uRLSpan) + i10);
                }
            }
        }

        public boolean b(@NonNull Spannable spannable, int i10) {
            return Linkify.addLinks(spannable, i10);
        }
    }

    public C16098a(int i10, boolean z10) {
        this.f128136a = i10;
        this.f128137b = z10;
    }

    @NonNull
    public static C16098a n() {
        return q(false);
    }

    @NonNull
    public static C16098a o(int i10) {
        return new C16098a(i10, false);
    }

    @NonNull
    public static C16098a p(int i10, boolean z10) {
        return new C16098a(i10, z10);
    }

    @NonNull
    public static C16098a q(boolean z10) {
        return p(7, z10);
    }

    @Override
    public void a(@NonNull InterfaceC15080i.b bVar) {
        bVar.c(C15171a.class, new C2204a());
    }
}
