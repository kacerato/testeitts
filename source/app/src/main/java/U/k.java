package U;

import U.e;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

public class k implements e, d {

    @Nullable
    public final e f25649a;

    public final Object f25650b;

    public volatile d f25651c;

    public volatile d f25652d;

    @GuardedBy("requestLock")
    public e.a f25653e;

    @GuardedBy("requestLock")
    public e.a f25654f;

    @GuardedBy("requestLock")
    public boolean f25655g;

    public k(Object obj, @Nullable e eVar) {
        e.a aVar = e.a.CLEARED;
        this.f25653e = aVar;
        this.f25654f = aVar;
        this.f25650b = obj;
        this.f25649a = eVar;
    }

    @GuardedBy("requestLock")
    private boolean k() {
        e eVar = this.f25649a;
        return eVar == null || eVar.c(this);
    }

    @GuardedBy("requestLock")
    private boolean l() {
        e eVar = this.f25649a;
        return eVar == null || eVar.b(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        e eVar = this.f25649a;
        return eVar == null || eVar.g(this);
    }

    @Override
    public boolean a() {
        boolean z10;
        synchronized (this.f25650b) {
            try {
                z10 = this.f25652d.a() || this.f25651c.a();
            } finally {
            }
        }
        return z10;
    }

    @Override
    public boolean b(d dVar) {
        boolean z10;
        synchronized (this.f25650b) {
            try {
                z10 = l() && dVar.equals(this.f25651c) && !a();
            } finally {
            }
        }
        return z10;
    }

    @Override
    public boolean c(d dVar) {
        boolean z10;
        synchronized (this.f25650b) {
            try {
                z10 = k() && dVar.equals(this.f25651c) && this.f25653e != e.a.PAUSED;
            } finally {
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        synchronized (this.f25650b) {
            this.f25655g = false;
            e.a aVar = e.a.CLEARED;
            this.f25653e = aVar;
            this.f25654f = aVar;
            this.f25652d.clear();
            this.f25651c.clear();
        }
    }

    @Override
    public void d(d dVar) {
        synchronized (this.f25650b) {
            try {
                if (!dVar.equals(this.f25651c)) {
                    this.f25654f = e.a.FAILED;
                    return;
                }
                this.f25653e = e.a.FAILED;
                e eVar = this.f25649a;
                if (eVar != null) {
                    eVar.d(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean e() {
        boolean z10;
        synchronized (this.f25650b) {
            z10 = this.f25653e == e.a.CLEARED;
        }
        return z10;
    }

    @Override
    public boolean f() {
        boolean z10;
        synchronized (this.f25650b) {
            z10 = this.f25653e == e.a.SUCCESS;
        }
        return z10;
    }

    @Override
    public boolean g(d dVar) {
        boolean z10;
        synchronized (this.f25650b) {
            try {
                z10 = m() && (dVar.equals(this.f25651c) || this.f25653e != e.a.SUCCESS);
            } finally {
            }
        }
        return z10;
    }

    @Override
    public e getRoot() {
        e root;
        synchronized (this.f25650b) {
            try {
                e eVar = this.f25649a;
                root = eVar != null ? eVar.getRoot() : this;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return root;
    }

    @Override
    public boolean h(d dVar) {
        if (!(dVar instanceof k)) {
            return false;
        }
        k kVar = (k) dVar;
        if (this.f25651c == null) {
            if (kVar.f25651c != null) {
                return false;
            }
        } else if (!this.f25651c.h(kVar.f25651c)) {
            return false;
        }
        if (this.f25652d == null) {
            if (kVar.f25652d != null) {
                return false;
            }
        } else if (!this.f25652d.h(kVar.f25652d)) {
            return false;
        }
        return true;
    }

    @Override
    public void i(d dVar) {
        synchronized (this.f25650b) {
            try {
                if (dVar.equals(this.f25652d)) {
                    this.f25654f = e.a.SUCCESS;
                    return;
                }
                this.f25653e = e.a.SUCCESS;
                e eVar = this.f25649a;
                if (eVar != null) {
                    eVar.i(this);
                }
                if (!this.f25654f.a()) {
                    this.f25652d.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f25650b) {
            z10 = this.f25653e == e.a.RUNNING;
        }
        return z10;
    }

    @Override
    public void j() {
        synchronized (this.f25650b) {
            try {
                this.f25655g = true;
                try {
                    if (this.f25653e != e.a.SUCCESS) {
                        e.a aVar = this.f25654f;
                        e.a aVar2 = e.a.RUNNING;
                        if (aVar != aVar2) {
                            this.f25654f = aVar2;
                            this.f25652d.j();
                        }
                    }
                    if (this.f25655g) {
                        e.a aVar3 = this.f25653e;
                        e.a aVar4 = e.a.RUNNING;
                        if (aVar3 != aVar4) {
                            this.f25653e = aVar4;
                            this.f25651c.j();
                        }
                    }
                    this.f25655g = false;
                } catch (Throwable th2) {
                    this.f25655g = false;
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void n(d dVar, d dVar2) {
        this.f25651c = dVar;
        this.f25652d = dVar2;
    }

    @Override
    public void pause() {
        synchronized (this.f25650b) {
            try {
                if (!this.f25654f.a()) {
                    this.f25654f = e.a.PAUSED;
                    this.f25652d.pause();
                }
                if (!this.f25653e.a()) {
                    this.f25653e = e.a.PAUSED;
                    this.f25651c.pause();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
