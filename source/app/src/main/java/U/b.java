package U;

import U.e;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

public final class b implements e, d {

    public final Object f25592a;

    @Nullable
    public final e f25593b;

    public volatile d f25594c;

    public volatile d f25595d;

    @GuardedBy("requestLock")
    public e.a f25596e;

    @GuardedBy("requestLock")
    public e.a f25597f;

    public b(Object obj, @Nullable e eVar) {
        e.a aVar = e.a.CLEARED;
        this.f25596e = aVar;
        this.f25597f = aVar;
        this.f25592a = obj;
        this.f25593b = eVar;
    }

    @Override
    public boolean a() {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                z10 = this.f25594c.a() || this.f25595d.a();
            } finally {
            }
        }
        return z10;
    }

    @Override
    public boolean b(d dVar) {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                z10 = m() && k(dVar);
            } finally {
            }
        }
        return z10;
    }

    @Override
    public boolean c(d dVar) {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                z10 = l() && k(dVar);
            } finally {
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        synchronized (this.f25592a) {
            try {
                e.a aVar = e.a.CLEARED;
                this.f25596e = aVar;
                this.f25594c.clear();
                if (this.f25597f != aVar) {
                    this.f25597f = aVar;
                    this.f25595d.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void d(d dVar) {
        synchronized (this.f25592a) {
            try {
                if (dVar.equals(this.f25595d)) {
                    this.f25597f = e.a.FAILED;
                    e eVar = this.f25593b;
                    if (eVar != null) {
                        eVar.d(this);
                    }
                    return;
                }
                this.f25596e = e.a.FAILED;
                e.a aVar = this.f25597f;
                e.a aVar2 = e.a.RUNNING;
                if (aVar != aVar2) {
                    this.f25597f = aVar2;
                    this.f25595d.j();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean e() {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                e.a aVar = this.f25596e;
                e.a aVar2 = e.a.CLEARED;
                z10 = aVar == aVar2 && this.f25597f == aVar2;
            } finally {
            }
        }
        return z10;
    }

    @Override
    public boolean f() {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                e.a aVar = this.f25596e;
                e.a aVar2 = e.a.SUCCESS;
                z10 = aVar == aVar2 || this.f25597f == aVar2;
            } finally {
            }
        }
        return z10;
    }

    @Override
    public boolean g(d dVar) {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                z10 = n() && k(dVar);
            } finally {
            }
        }
        return z10;
    }

    @Override
    public e getRoot() {
        e root;
        synchronized (this.f25592a) {
            try {
                e eVar = this.f25593b;
                root = eVar != null ? eVar.getRoot() : this;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return root;
    }

    @Override
    public boolean h(d dVar) {
        if (!(dVar instanceof b)) {
            return false;
        }
        b bVar = (b) dVar;
        return this.f25594c.h(bVar.f25594c) && this.f25595d.h(bVar.f25595d);
    }

    @Override
    public void i(d dVar) {
        synchronized (this.f25592a) {
            try {
                if (dVar.equals(this.f25594c)) {
                    this.f25596e = e.a.SUCCESS;
                } else if (dVar.equals(this.f25595d)) {
                    this.f25597f = e.a.SUCCESS;
                }
                e eVar = this.f25593b;
                if (eVar != null) {
                    eVar.i(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f25592a) {
            try {
                e.a aVar = this.f25596e;
                e.a aVar2 = e.a.RUNNING;
                z10 = aVar == aVar2 || this.f25597f == aVar2;
            } finally {
            }
        }
        return z10;
    }

    @Override
    public void j() {
        synchronized (this.f25592a) {
            try {
                e.a aVar = this.f25596e;
                e.a aVar2 = e.a.RUNNING;
                if (aVar != aVar2) {
                    this.f25596e = aVar2;
                    this.f25594c.j();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @GuardedBy("requestLock")
    public final boolean k(d dVar) {
        return dVar.equals(this.f25594c) || (this.f25596e == e.a.FAILED && dVar.equals(this.f25595d));
    }

    @GuardedBy("requestLock")
    public final boolean l() {
        e eVar = this.f25593b;
        return eVar == null || eVar.c(this);
    }

    @GuardedBy("requestLock")
    public final boolean m() {
        e eVar = this.f25593b;
        return eVar == null || eVar.b(this);
    }

    @GuardedBy("requestLock")
    public final boolean n() {
        e eVar = this.f25593b;
        return eVar == null || eVar.g(this);
    }

    public void o(d dVar, d dVar2) {
        this.f25594c = dVar;
        this.f25595d = dVar2;
    }

    @Override
    public void pause() {
        synchronized (this.f25592a) {
            try {
                e.a aVar = this.f25596e;
                e.a aVar2 = e.a.RUNNING;
                if (aVar == aVar2) {
                    this.f25596e = e.a.PAUSED;
                    this.f25594c.pause();
                }
                if (this.f25597f == aVar2) {
                    this.f25597f = e.a.PAUSED;
                    this.f25595d.pause();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
