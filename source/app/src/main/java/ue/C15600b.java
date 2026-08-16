package ue;

import Nm.c;
import Um.AbstractC3152a;
import android.text.Spanned;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;
import qe.AbstractC15076e;

public class C15600b {

    public final List<d> f120475a;

    public enum a {
        LEFT,
        CENTER,
        RIGHT
    }

    public static class C2045b {

        public final a f120476a;

        public final Spanned f120477b;

        public C2045b(@NonNull a aVar, @NonNull Spanned spanned) {
            this.f120476a = aVar;
            this.f120477b = spanned;
        }

        @NonNull
        public a a() {
            return this.f120476a;
        }

        @NonNull
        public Spanned b() {
            return this.f120477b;
        }

        public String toString() {
            return "Column{alignment=" + ((Object) this.f120476a) + ", content=" + ((Object) this.f120477b) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class c extends AbstractC3152a {

        public final AbstractC15076e f120478a;

        public List<d> f120479b;

        public List<C2045b> f120480c;

        public boolean f120481d;

        public c(@NonNull AbstractC15076e abstractC15076e) {
            this.f120478a = abstractC15076e;
        }

        @NonNull
        public static a N(@NonNull c.a aVar) {
            return c.a.RIGHT == aVar ? a.RIGHT : c.a.CENTER == aVar ? a.CENTER : a.LEFT;
        }

        @Override
        public void J(Um.g gVar) {
            if (gVar instanceof Nm.c) {
                Nm.c cVar = (Nm.c) gVar;
                if (this.f120480c == null) {
                    this.f120480c = new ArrayList(2);
                }
                this.f120480c.add(new C2045b(N(cVar.p()), this.f120478a.i(cVar)));
                this.f120481d = cVar.q();
                return;
            }
            if (!(gVar instanceof Nm.d) && !(gVar instanceof Nm.e)) {
                i(gVar);
                return;
            }
            i(gVar);
            List<C2045b> list = this.f120480c;
            if (list != null && list.size() > 0) {
                if (this.f120479b == null) {
                    this.f120479b = new ArrayList(2);
                }
                this.f120479b.add(new d(this.f120481d, this.f120480c));
            }
            this.f120480c = null;
            this.f120481d = false;
        }

        @Nullable
        public List<d> O() {
            return this.f120479b;
        }
    }

    public static class d {

        public final boolean f120482a;

        public final List<C2045b> f120483b;

        public d(boolean z10, @NonNull List<C2045b> list) {
            this.f120482a = z10;
            this.f120483b = list;
        }

        @NonNull
        public List<C2045b> a() {
            return this.f120483b;
        }

        public boolean b() {
            return this.f120482a;
        }

        public String toString() {
            return "Row{isHeader=" + this.f120482a + ", columns=" + ((Object) this.f120483b) + JavaElement.JEM_ANNOTATION;
        }
    }

    public C15600b(@NonNull List<d> list) {
        this.f120475a = list;
    }

    @Nullable
    public static C15600b a(@NonNull AbstractC15076e abstractC15076e, @NonNull Nm.a aVar) {
        c cVar = new c(abstractC15076e);
        aVar.c(cVar);
        List<d> O10 = cVar.O();
        if (O10 == null) {
            return null;
        }
        return new C15600b(O10);
    }

    @NonNull
    public List<d> b() {
        return this.f120475a;
    }

    public String toString() {
        return "Table{rows=" + ((Object) this.f120475a) + JavaElement.JEM_ANNOTATION;
    }
}
