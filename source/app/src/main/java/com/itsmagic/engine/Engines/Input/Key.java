package com.itsmagic.engine.Engines.Input;

import Ac.b;
import K8.a;
import Mc.i;
import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.List;
import rc.C15169a;

public class Key implements Serializable {

    public boolean f81405e;

    public boolean f81406f;

    public boolean f81407g;

    public boolean f81408h;

    @Expose
    private final String name;

    public JAVARuntime.Key f81415o;

    public boolean f81402b = false;

    public boolean f81403c = false;

    public boolean f81404d = false;

    public boolean f81409i = false;

    public boolean f81410j = false;

    public boolean f81411k = false;

    public int f81412l = -1;

    public final i<WeakReference<Object>> f81413m = new i<>();

    public final List<WeakReference<Object>> f81414n = new SteppedArrayList();

    public Key(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("Name can't be null or empty");
        }
        this.name = name;
        m();
    }

    public void a(Object object) {
        if (object == null) {
            throw new NullPointerException("solid reference can`t be null");
        }
        synchronized (this.f81413m) {
            for (int i10 = 0; i10 < this.f81413m.size(); i10++) {
                try {
                    if (this.f81413m.get(i10).get() == object) {
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f81413m.add(new WeakReference<>(object));
            n();
        }
    }

    public boolean b(b name) {
        if (name == null || name.g0()) {
            return false;
        }
        return name.Z(this.name);
    }

    public boolean c(String name) {
        if (name == null || name.isEmpty()) {
            return false;
        }
        return this.name.equalsIgnoreCase(name);
    }

    public void d(Key key) {
        this.f81402b = key.f81402b;
        this.f81403c = key.f81403c;
        this.f81404d = key.f81404d;
        this.f81407g = key.f81407g;
        this.f81408h = key.f81408h;
    }

    public void e(boolean down, boolean pressed, boolean up) {
        this.f81402b = pressed;
        this.f81403c = down;
        this.f81404d = up;
    }

    public boolean f() {
        n();
        return this.f81403c;
    }

    public boolean g() {
        n();
        return this.f81402b;
    }

    public String getName() {
        return this.name;
    }

    public boolean h() {
        n();
        return this.f81404d;
    }

    public void i(Object object) {
        if (object == null) {
            throw new NullPointerException("solid reference can`t be null");
        }
        synchronized (this.f81413m) {
            for (int i10 = 0; i10 < this.f81413m.size(); i10++) {
                try {
                    WeakReference<Object> weakReference = this.f81413m.get(i10);
                    if (weakReference.get() == object) {
                        this.f81413m.remove(weakReference);
                        n();
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void j() {
        if (!this.f81407g) {
            if (this.f81408h) {
                this.f81402b = false;
                this.f81408h = false;
                this.f81403c = false;
                return;
            }
            return;
        }
        if (this.f81402b) {
            return;
        }
        this.f81402b = true;
        this.f81408h = true;
        this.f81407g = false;
        this.f81403c = true;
    }

    public final void k() {
        if (this.f81403c && !this.f81405e) {
            C15169a.t(this);
            return;
        }
        if (this.f81402b) {
            C15169a.u(this);
        } else {
            if (!this.f81404d || this.f81406f) {
                return;
            }
            C15169a.v(this);
        }
    }

    public void l(JAVARuntime.Key run) {
        this.f81415o = run;
    }

    public JAVARuntime.Key m() {
        JAVARuntime.Key key = this.f81415o;
        if (key != null) {
            return key;
        }
        JAVARuntime.Key key2 = new JAVARuntime.Key(this);
        this.f81415o = key2;
        return key2;
    }

    public final void n() {
        synchronized (this.f81413m) {
            try {
                if (this.f81412l == a.k()) {
                    return;
                }
                this.f81412l = a.k();
                p();
                if (this.f81413m.isEmpty()) {
                    this.f81402b = false;
                } else {
                    this.f81402b = true;
                }
                o();
                j();
                k();
                this.f81405e = this.f81403c;
                this.f81406f = this.f81404d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void o() {
        if (this.f81403c) {
            this.f81403c = false;
        }
        if (this.f81404d) {
            this.f81404d = false;
        }
        if (this.f81402b) {
            this.f81411k = true;
            this.f81410j = false;
            if (this.f81403c || this.f81409i) {
                return;
            }
            this.f81403c = true;
            this.f81409i = true;
            return;
        }
        this.f81409i = false;
        if (this.f81404d || this.f81410j || !this.f81411k) {
            return;
        }
        this.f81404d = true;
        this.f81411k = false;
        this.f81410j = true;
    }

    public final void p() {
        if (this.f81413m.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.f81413m.size(); i10++) {
            WeakReference<Object> weakReference = this.f81413m.get(i10);
            if (weakReference.get() == null) {
                this.f81414n.add(weakReference);
            }
        }
        if (this.f81414n.isEmpty()) {
            return;
        }
        this.f81413m.removeAll(this.f81414n);
        this.f81414n.clear();
    }

    @NonNull
    public String toString() {
        return "(key:" + this.name.toString() + ", pressed:" + this.f81402b + ", down:" + this.f81403c + ", up:" + this.f81404d + ")";
    }
}
