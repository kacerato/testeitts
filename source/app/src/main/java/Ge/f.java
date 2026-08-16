package Ge;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class f implements De.c, c {

    public List<De.c> f7791b;

    public volatile boolean f7792c;

    public f() {
    }

    @Override
    public boolean a(De.c cVar) {
        He.b.g(cVar, "d is null");
        if (!this.f7792c) {
            synchronized (this) {
                try {
                    if (!this.f7792c) {
                        List list = this.f7791b;
                        if (list == null) {
                            list = new LinkedList();
                            this.f7791b = list;
                        }
                        list.add(cVar);
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
    public boolean b(De.c cVar) {
        He.b.g(cVar, "Disposable item is null");
        if (this.f7792c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f7792c) {
                    return false;
                }
                List<De.c> list = this.f7791b;
                if (list != null && list.remove(cVar)) {
                    return true;
                }
                return false;
            } finally {
            }
        }
    }

    @Override
    public boolean c(De.c cVar) {
        if (!b(cVar)) {
            return false;
        }
        cVar.dispose();
        return true;
    }

    @Override
    public boolean d() {
        return this.f7792c;
    }

    @Override
    public void dispose() {
        if (this.f7792c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f7792c) {
                    return;
                }
                this.f7792c = true;
                List<De.c> list = this.f7791b;
                this.f7791b = null;
                g(list);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean e(De.c... cVarArr) {
        He.b.g(cVarArr, "ds is null");
        if (!this.f7792c) {
            synchronized (this) {
                try {
                    if (!this.f7792c) {
                        List list = this.f7791b;
                        if (list == null) {
                            list = new LinkedList();
                            this.f7791b = list;
                        }
                        for (De.c cVar : cVarArr) {
                            He.b.g(cVar, "d is null");
                            list.add(cVar);
                        }
                        return true;
                    }
                } finally {
                }
            }
        }
        for (De.c cVar2 : cVarArr) {
            cVar2.dispose();
        }
        return false;
    }

    public void f() {
        if (this.f7792c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f7792c) {
                    return;
                }
                List<De.c> list = this.f7791b;
                this.f7791b = null;
                g(list);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void g(List<De.c> list) {
        if (list == null) {
            return;
        }
        Iterator<De.c> it = list.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            try {
                it.next().dispose();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th2);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw ExceptionHelper.f((Throwable) arrayList.get(0));
        }
    }

    public f(De.c... cVarArr) {
        He.b.g(cVarArr, "resources is null");
        this.f7791b = new LinkedList();
        for (De.c cVar : cVarArr) {
            He.b.g(cVar, "Disposable item is null");
            this.f7791b.add(cVar);
        }
    }

    public f(Iterable<? extends De.c> iterable) {
        He.b.g(iterable, "resources is null");
        this.f7791b = new LinkedList();
        for (De.c cVar : iterable) {
            He.b.g(cVar, "Disposable item is null");
            this.f7791b.add(cVar);
        }
    }
}
