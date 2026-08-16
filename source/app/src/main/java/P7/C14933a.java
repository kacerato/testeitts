package p7;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import java.util.LinkedList;
import java.util.List;
import kd.C13965a;
import kd.InterfaceC13966b;

@Deprecated
public class C14933a extends C14935c {

    public final Context f103622c;

    public InterfaceC14934b f103623d;

    public List<InterfaceC14934b> f103624e;

    public boolean f103625f;

    public String f103626g;

    public class ViewOnClickListenerC1943a implements View.OnClickListener {
        public ViewOnClickListenerC1943a() {
        }

        @Override
        public void onClick(View v10) {
            C14933a.this.l();
            C14933a.this.k();
            if (C14933a.this.f103625f || C14933a.this.f103626g == null || C14933a.this.f103626g.isEmpty()) {
                return;
            }
            Toast.makeText(C14933a.this.f103622c, C14933a.this.f103626g, 0).show();
            C14933a.this.f103625f = true;
        }
    }

    public class b implements InterfaceC13966b {
        public b() {
        }

        @Override
        public void run() {
            C14933a c14933a = C14933a.this;
            Vc.e.y(c14933a.f103629a, c14933a.f103622c, new ColorINT(Theme.i(Theme.T.HIGH_ICON_TINT)));
        }
    }

    public C14933a(ImageView icon, Context context, String activeMessage, InterfaceC14934b listener) {
        super(icon);
        this.f103624e = new LinkedList();
        this.f103625f = false;
        this.f103622c = context;
        this.f103623d = listener;
        this.f103626g = activeMessage;
        n();
    }

    public void j(InterfaceC14934b listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        this.f103624e.add(listener);
    }

    public final void k() {
        InterfaceC14934b interfaceC14934b = this.f103623d;
        if (interfaceC14934b != null) {
            interfaceC14934b.a(this.f103622c, this.f103629a);
        }
        for (int i10 = 0; i10 < this.f103624e.size(); i10++) {
            InterfaceC14934b interfaceC14934b2 = this.f103624e.get(i10);
            if (interfaceC14934b2 != null) {
                interfaceC14934b2.a(this.f103622c, this.f103629a);
            }
        }
    }

    public final void l() {
        Vc.e.y(this.f103629a, this.f103622c, new ColorINT(Theme.i(Theme.T.PRIMARY)));
        new C13965a().a(200, new b());
    }

    public InterfaceC14934b m() {
        return this.f103623d;
    }

    public final void n() {
        this.f103629a.setOnClickListener(new ViewOnClickListenerC1943a());
        Vc.e.y(this.f103629a, this.f103622c, new ColorINT(Theme.i(Theme.T.HIGH_ICON_TINT)));
    }

    public void o(InterfaceC14934b listener) {
        this.f103624e.remove(listener);
    }

    public void p(InterfaceC14934b listener) {
        this.f103623d = listener;
    }

    public C14933a(ImageView icon, Context context, String activeMessage) {
        super(icon);
        this.f103624e = new LinkedList();
        this.f103625f = false;
        this.f103622c = context;
        this.f103626g = activeMessage;
        n();
    }

    public C14933a(ImageView icon, Context context, InterfaceC14934b listener) {
        super(icon);
        this.f103624e = new LinkedList();
        this.f103625f = false;
        this.f103622c = context;
        this.f103623d = listener;
        n();
    }

    public C14933a(ImageView icon, Context context) {
        super(icon);
        this.f103624e = new LinkedList();
        this.f103625f = false;
        this.f103622c = context;
        n();
    }
}
