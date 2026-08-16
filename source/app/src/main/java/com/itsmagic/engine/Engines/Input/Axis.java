package com.itsmagic.engine.Engines.Input;

import androidx.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.List;
import rc.C15169a;

public class Axis implements Serializable {

    public final Vector2 f81396b = new Vector2();

    public final List<b> f81397c = new SteppedArrayList();

    public final List<b> f81398d = new SteppedArrayList();

    public JAVARuntime.Axis f81399e;

    @Expose
    private final String name;

    public static final class b {

        public final WeakReference<Object> f81400a;

        public final Vector2 f81401b;

        public final Object d() {
            return this.f81400a.get();
        }

        public final Vector2 e() {
            return this.f81401b;
        }

        public final void f(Vector2 value) {
            this.f81401b.x0(value);
        }

        public b(Object source, Vector2 value) {
            Vector2 vector2 = new Vector2();
            this.f81401b = vector2;
            this.f81400a = new WeakReference<>(source);
            vector2.x0(value);
        }
    }

    public Axis(String name) {
        if (name == null || name.isEmpty()) {
            throw new NullPointerException("Name can't be null or empty");
        }
        this.name = name;
        i();
    }

    public void a(Object source, Vector2 value) {
        if (source == null) {
            throw new NullPointerException("source can't be null");
        }
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        synchronized (this.f81397c) {
            for (int i10 = 0; i10 < this.f81397c.size(); i10++) {
                try {
                    b bVar = this.f81397c.get(i10);
                    if (bVar.d() == source) {
                        bVar.f(value);
                        j();
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f81397c.add(new b(source, value));
            j();
        }
    }

    public boolean b(Ac.b name) {
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

    public Vector2 d() {
        j();
        return this.f81396b;
    }

    public void e(Object source) {
        if (source == null) {
            throw new NullPointerException("source can't be null");
        }
        synchronized (this.f81397c) {
            for (int i10 = 0; i10 < this.f81397c.size(); i10++) {
                try {
                    b bVar = this.f81397c.get(i10);
                    if (bVar.d() == source) {
                        this.f81398d.add(bVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!this.f81398d.isEmpty()) {
                this.f81397c.removeAll(this.f81398d);
                this.f81398d.clear();
                j();
            }
        }
    }

    public void f(JAVARuntime.Axis run) {
        this.f81399e = run;
    }

    public void g(Vector2 value) {
        a(this, value);
    }

    public String getName() {
        return this.name;
    }

    public void h(Object source, Vector2 value) {
        a(source, value);
    }

    public JAVARuntime.Axis i() {
        JAVARuntime.Axis axis = this.f81399e;
        if (axis != null) {
            return axis;
        }
        JAVARuntime.Axis axis2 = new JAVARuntime.Axis(this);
        this.f81399e = axis2;
        return axis2;
    }

    public void j() {
        C15169a.M(this);
    }

    public void k() {
        synchronized (this.f81397c) {
            try {
                this.f81396b.w0(0.0f, 0.0f);
                for (int i10 = 0; i10 < this.f81397c.size(); i10++) {
                    b bVar = this.f81397c.get(i10);
                    if (bVar.d() == null) {
                        this.f81398d.add(bVar);
                    } else {
                        Vector2 e10 = bVar.e();
                        if (Math.abs(e10.getX()) >= Math.abs(this.f81396b.getX())) {
                            this.f81396b.B0(e10.getX());
                        }
                        if (Math.abs(e10.getY()) >= Math.abs(this.f81396b.getY())) {
                            this.f81396b.C0(e10.getY());
                        }
                    }
                }
                if (!this.f81398d.isEmpty()) {
                    this.f81397c.removeAll(this.f81398d);
                    this.f81398d.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    public String toString() {
        return this.name + " " + this.f81396b.toString(2);
    }
}
