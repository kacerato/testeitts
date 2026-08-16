package De;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.r;
import java.util.ArrayList;

public final class b implements c, Ge.c {

    public r<c> f5157b;

    public volatile boolean f5158c;

    public b() {
    }

    @Override
    public boolean a(@Ce.f c cVar) {
        He.b.g(cVar, "disposable is null");
        if (!this.f5158c) {
            synchronized (this) {
                try {
                    if (!this.f5158c) {
                        r<c> rVar = this.f5157b;
                        if (rVar == null) {
                            rVar = new r<>();
                            this.f5157b = rVar;
                        }
                        rVar.a(cVar);
                        return true;
                    }
                } finally {
                }
            }
        }
        cVar.dispose();
        return false;
    }

    @Override
    public boolean b(@Ce.f c cVar) {
        He.b.g(cVar, "disposables is null");
        if (this.f5158c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f5158c) {
                    return false;
                }
                r<c> rVar = this.f5157b;
                if (rVar != null && rVar.e(cVar)) {
                    return true;
                }
                return false;
            } finally {
            }
        }
    }

    @Override
    public boolean c(@Ce.f c cVar) {
        if (!b(cVar)) {
            return false;
        }
        cVar.dispose();
        return true;
    }

    @Override
    public boolean d() {
        return this.f5158c;
    }

    @Override
    public void dispose() {
        if (this.f5158c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f5158c) {
                    return;
                }
                this.f5158c = true;
                r<c> rVar = this.f5157b;
                this.f5157b = null;
                g(rVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean e(@Ce.f c... cVarArr) {
        He.b.g(cVarArr, "disposables is null");
        if (!this.f5158c) {
            synchronized (this) {
                try {
                    if (!this.f5158c) {
                        r<c> rVar = this.f5157b;
                        if (rVar == null) {
                            rVar = new r<>(cVarArr.length + 1);
                            this.f5157b = rVar;
                        }
                        for (c cVar : cVarArr) {
                            He.b.g(cVar, "A Disposable in the disposables array is null");
                            rVar.a(cVar);
                        }
                        return true;
                    }
                } finally {
                }
            }
        }
        for (c cVar2 : cVarArr) {
            cVar2.dispose();
        }
        return false;
    }

    public void f() {
        if (this.f5158c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f5158c) {
                    return;
                }
                r<c> rVar = this.f5157b;
                this.f5157b = null;
                g(rVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void g(r<c> rVar) {
        if (rVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : rVar.b()) {
            if (obj instanceof c) {
                try {
                    ((c) obj).dispose();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th2);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw ExceptionHelper.f((Throwable) arrayList.get(0));
        }
    }

    public int h() {
        if (this.f5158c) {
            return 0;
        }
        synchronized (this) {
            try {
                if (this.f5158c) {
                    return 0;
                }
                r<c> rVar = this.f5157b;
                return rVar != null ? rVar.g() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public b(@Ce.f c... cVarArr) {
        He.b.g(cVarArr, "disposables is null");
        this.f5157b = new r<>(cVarArr.length + 1);
        for (c cVar : cVarArr) {
            He.b.g(cVar, "A Disposable in the disposables array is null");
            this.f5157b.a(cVar);
        }
    }

    public b(@Ce.f Iterable<? extends c> iterable) {
        He.b.g(iterable, "disposables is null");
        this.f5157b = new r<>();
        for (c cVar : iterable) {
            He.b.g(cVar, "A Disposable item in the disposables sequence is null");
            this.f5157b.a(cVar);
        }
    }
}
