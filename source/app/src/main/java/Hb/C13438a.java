package hb;

import K8.f;
import Nc.d;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.ObjectLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public class C13438a extends f {

    public static final GameObject.e f90471g = new C1743a();

    public final String f90472b;

    public GameObject f90474d;

    public final Object f90473c = new Object();

    public int f90475e = 0;

    public class C1743a implements GameObject.e {
        @Override
        public boolean a(Component component) {
            return ((component instanceof ObjectLink) || (component instanceof PrefabLink)) ? false : true;
        }
    }

    public C13438a(String path) {
        this.f90472b = path;
        j();
    }

    public String d() {
        return this.f90472b;
    }

    public int e() {
        synchronized (this.f90473c) {
            try {
                if (C13317e.J(this.f90474d)) {
                    return this.f90475e;
                }
                i();
                return this.f90475e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public GameObject f() {
        return this.f90474d;
    }

    public GameObject h() {
        synchronized (this.f90473c) {
            try {
                if (C13317e.J(this.f90474d)) {
                    return this.f90474d.clone();
                }
                i();
                GameObject gameObject = this.f90474d;
                if (gameObject == null) {
                    return null;
                }
                return gameObject.clone();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i() {
        this.f90474d = GameObject.U(X7.a.s(d(), N7.c.t()), false, false, f90471g);
        int c10 = d.c();
        while (true) {
            if (c10 != this.f90475e && c10 != 0) {
                this.f90475e = c10;
                return;
            }
            c10 = d.c();
        }
    }

    public final void j() {
        synchronized (this.f90473c) {
            try {
                if (C13317e.J(this.f90474d)) {
                    return;
                }
                i();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void reload() {
        synchronized (this.f90473c) {
            this.f90474d = null;
            j();
        }
    }
}
