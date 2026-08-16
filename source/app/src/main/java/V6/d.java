package V6;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

public class d {

    public c f26627a;

    public void a(int id2) {
        c cVar = this.f26627a;
        if (cVar != null) {
            cVar.d(id2);
        }
    }

    public void b() {
    }

    public Activity c() {
        return N7.c.o();
    }

    public Context d() {
        return N7.c.t();
    }

    public LayoutInflater e() {
        return N7.c.B();
    }

    public View f() {
        throw new RuntimeException("Override this method at " + getClass().getSimpleName());
    }

    public void g() {
    }

    public void h(b nextListener) {
        nextListener.b();
    }

    public void i() {
        try {
            c cVar = this.f26627a;
            if (cVar != null) {
                cVar.b();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j(c panelConnector) {
        this.f26627a = panelConnector;
    }

    public void k() {
    }

    public void l() {
    }
}
