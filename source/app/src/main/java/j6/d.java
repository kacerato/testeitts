package j6;

import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;

public abstract class d {

    public InterfaceC13809a f92627a;

    public int f92628b;

    public class a implements Runnable {

        public final j6.b f92629b;

        public a(final j6.b val$elementList) {
            this.f92629b = val$elementList;
        }

        @Override
        public void run() {
            if (d.this.f92627a != null) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(this.f92629b);
                d.this.f92627a.c(steppedArrayList);
            }
        }
    }

    public class b implements Runnable {

        public final List f92631b;

        public b(final List val$elementList) {
            this.f92631b = val$elementList;
        }

        @Override
        public void run() {
            if (d.this.f92627a != null) {
                d.this.f92627a.c(this.f92631b);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            if (d.this.f92627a != null) {
                d.this.f92627a.d();
            }
        }
    }

    public d() {
        this.f92628b = R.drawable.cube_shadow;
    }

    public void b() {
    }

    public int c() {
        return this.f92628b;
    }

    public int d() {
        InterfaceC13809a interfaceC13809a = this.f92627a;
        if (interfaceC13809a != null) {
            return interfaceC13809a.b();
        }
        return 0;
    }

    public View e() {
        InterfaceC13809a interfaceC13809a = this.f92627a;
        if (interfaceC13809a != null) {
            return interfaceC13809a.e();
        }
        return null;
    }

    public String f() {
        return "";
    }

    public boolean g() {
        return this.f92627a != null;
    }

    public void h(j6.b elementList) {
        N7.c.j0(new a(elementList));
    }

    public void i(List<j6.b> elementList) {
        N7.c.j0(new b(elementList));
    }

    public void j() {
        N7.c.j0(new c());
    }

    public abstract void k();

    public final void l(InterfaceC13809a connector) {
        this.f92627a = connector;
    }

    public void m() {
    }

    public final void n() {
        this.f92627a = null;
    }

    public d(int icon) {
        this.f92628b = icon;
    }
}
