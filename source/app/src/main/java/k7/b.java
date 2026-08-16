package K7;

import Ic.C2630i;
import K7.c;
import Vc.e;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;

public class b {

    public final Context f10935a;

    public c f10936b;

    public final K7.c f10937c;

    public class a implements TextView.OnEditorActionListener {
        public a() {
        }

        @Override
        public boolean onEditorAction(TextView view, int actionId, KeyEvent event) {
            if (actionId != 3 && actionId != 6) {
                return false;
            }
            b.this.f10937c.h().clearFocus();
            C2630i.b();
            b.this.f10936b.b().onClick(view);
            return true;
        }
    }

    public class C0364b extends AbstractViewOnClickListenerC12733a {
        public C0364b() {
        }

        @Override
        public void click(View view) {
            b.this.f10937c.h().clearFocus();
            C2630i.b();
            b.this.f10936b.b().onClick(view);
        }
    }

    public static class c {

        public d f10940a;

        public d f10941b;

        public c() {
        }

        public d a() {
            return this.f10940a;
        }

        public d b() {
            return this.f10941b;
        }

        public void c(d filter) {
            this.f10940a = filter;
        }

        public void d(d search) {
            this.f10941b = search;
        }

        public c(d filter, d search) {
            this.f10940a = filter;
            this.f10941b = search;
        }
    }

    public interface d {
        void onClick(View view);
    }

    public b(Context c10) {
        this.f10935a = c10;
        this.f10937c = new K7.c(c10, false);
    }

    public final void c() {
        c.a aVar = new c.a();
        aVar.f10950c = c.a.EnumC0365a.RIGHT;
        ImageView imageView = new ImageView(this.f10935a);
        imageView.setOnClickListener(new C0364b());
        e.V(imageView, R.drawable.search_store_icon_v2, this.f10935a);
        imageView.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
        aVar.f10952e = imageView;
        this.f10937c.a(aVar, c.b.RIGHT);
    }

    public View d() {
        return this.f10937c.i();
    }

    public String e() {
        return this.f10937c.j();
    }

    public void f(c l10) {
        this.f10936b = l10;
        this.f10937c.l(new a());
        c();
    }

    public void g(String s10) {
        this.f10937c.n(s10);
    }

    public b(Context c10, boolean enableFreePackageFilter, CompoundButton.OnCheckedChangeListener listenerFreePackageFilter) {
        this.f10935a = c10;
        K7.c cVar = new K7.c(c10, enableFreePackageFilter);
        this.f10937c = cVar;
        cVar.m(listenerFreePackageFilter);
    }
}
