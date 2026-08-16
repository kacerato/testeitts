package B4;

import F7.e;
import F7.i;
import G7.f;
import G7.g;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import g6.C13295c;
import gb.C13317e;
import java.lang.ref.WeakReference;

public class b extends i {

    public static final int f1482n = 1;

    public static final e f1483o = new e();

    public WeakReference<B4.a> f1484m;

    public class a implements g {
        public a() {
        }

        @Override
        public void a(boolean value) {
            F7.c cVar;
            B4.a u10 = b.this.u();
            if (u10 != null) {
                u10.f1480a = value;
                b bVar = b.this;
                if (bVar.f6690l == null || (cVar = bVar.f6688j) == null) {
                    return;
                }
                Context context = bVar.f6689k.getContext();
                e eVar = b.f1483o;
                cVar.a(bVar, context, eVar);
                b.this.f6690l.f6696a.setTextColor(eVar.f6655a);
            }
        }

        @Override
        public boolean isChecked() {
            B4.a u10 = b.this.u();
            if (u10 != null) {
                return u10.f1480a;
            }
            return false;
        }
    }

    public class C0027b implements F7.c {
        public C0027b() {
        }

        @Override
        public void a(i eElement, Context context, e textViewAppearance) {
            B4.a u10;
            if (!(eElement instanceof b) || (u10 = ((b) eElement).u()) == null) {
                textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
            } else if (u10.f1480a) {
                textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
            } else {
                textViewAppearance.f6655a = Theme.i(Theme.T.BACKGROUND);
            }
        }
    }

    public b(B4.a gameObject) {
        super(gameObject.f1481b.getName(), new C13295c());
        super.a(new f(new a()));
        this.f6688j = new C0027b();
        this.f1484m = new WeakReference<>(gameObject);
    }

    @Override
    public String g() {
        if (this.f1484m.get() == null) {
            return null;
        }
        B4.a aVar = this.f1484m.get();
        if (C13317e.J(aVar.f1481b)) {
            return aVar.f1481b.getName();
        }
        return null;
    }

    public B4.a u() {
        B4.a aVar;
        if (this.f1484m.get() == null || (aVar = this.f1484m.get()) == null) {
            return null;
        }
        return aVar;
    }
}
