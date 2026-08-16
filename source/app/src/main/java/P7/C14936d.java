package p7;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public class C14936d extends C14935c {

    public boolean f103631c;

    public final Context f103632d;

    public f f103633e;

    public List<f> f103634f;

    public boolean f103635g;

    public boolean f103636h;

    public String f103637i;

    public String f103638j;

    public int f103639k;

    public int f103640l;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View v10) {
            C14936d.this.f103631c = !r4.f103631c;
            C14936d.this.z();
            C14936d.this.p();
            if (C14936d.this.f103631c) {
                if (C14936d.this.f103635g || C14936d.this.f103637i == null || C14936d.this.f103637i.isEmpty()) {
                    return;
                }
                Toast.makeText(C14936d.this.f103632d, C14936d.this.f103637i, 0).show();
                C14936d.this.f103635g = true;
                return;
            }
            if (C14936d.this.f103636h || C14936d.this.f103638j == null || C14936d.this.f103638j.isEmpty()) {
                return;
            }
            Toast.makeText(C14936d.this.f103632d, C14936d.this.f103638j, 0).show();
            C14936d.this.f103636h = true;
        }
    }

    public C14936d(boolean a10, ImageView icon, Context context, String activeMessage, String disabledMessage, f listener) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103631c = a10;
        this.f103632d = context;
        this.f103633e = listener;
        this.f103637i = activeMessage;
        this.f103638j = disabledMessage;
        t();
    }

    public void p() {
        f fVar = this.f103633e;
        if (fVar != null) {
            fVar.a(this.f103631c);
        }
        for (int i10 = 0; i10 < this.f103634f.size(); i10++) {
            f fVar2 = this.f103634f.get(i10);
            if (fVar2 != null) {
                fVar2.a(this.f103631c);
            }
        }
    }

    private void t() {
        this.f103629a.setOnClickListener(new a());
        z();
    }

    public void A(int disabledColor) {
        this.f103640l = disabledColor;
    }

    public void B(f listener) {
        this.f103633e = listener;
    }

    public void o(f listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        this.f103634f.add(listener);
    }

    public int q() {
        return this.f103639k;
    }

    public int r() {
        return this.f103640l;
    }

    public f s() {
        return this.f103633e;
    }

    public boolean u() {
        return this.f103631c;
    }

    public void v(f listener) {
        this.f103634f.remove(listener);
    }

    public void w(boolean active) {
        x(active, true);
    }

    public void x(boolean active, boolean callListeners) {
        this.f103631c = active;
        z();
        if (callListeners) {
            p();
        }
    }

    public void y(int activeColor) {
        this.f103639k = activeColor;
    }

    public final void z() {
        if (this.f103631c) {
            Vc.e.x(this.f103629a, this.f103632d, this.f103639k);
        } else {
            Vc.e.x(this.f103629a, this.f103632d, this.f103640l);
        }
    }

    public C14936d(boolean a10, ImageView icon, Context context, String activeMessage, String disabledMessage) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103631c = a10;
        this.f103632d = context;
        this.f103637i = activeMessage;
        this.f103638j = disabledMessage;
        t();
    }

    public C14936d(boolean a10, ImageView icon, Context context) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103631c = a10;
        this.f103632d = context;
        t();
    }

    public C14936d(ImageView icon, Context context, String activeMessage, String disabledMessage, f listener) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103632d = context;
        this.f103633e = listener;
        this.f103637i = activeMessage;
        this.f103638j = disabledMessage;
        t();
    }

    public C14936d(ImageView icon, Context context, String activeMessage, String disabledMessage) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103632d = context;
        this.f103637i = activeMessage;
        this.f103638j = disabledMessage;
        t();
    }

    public C14936d(ImageView icon, Context context, f listener) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103632d = context;
        this.f103633e = listener;
        t();
    }

    public C14936d(ImageView icon, Context context) {
        super(icon);
        this.f103634f = new LinkedList();
        this.f103635g = false;
        this.f103636h = false;
        this.f103639k = Theme.i(Theme.T.PRIMARY);
        this.f103640l = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f103632d = context;
        t();
    }
}
