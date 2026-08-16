package Ic;

import java.util.ConcurrentModificationException;
import java.util.List;
import java.util.function.Consumer;

@Deprecated
public class z {

    public int f9221a;

    public boolean f9222b;

    public int f9223c;

    public int f9224d;

    public z() {
        this.f9221a = 3;
        this.f9223c = 0;
        this.f9224d = 0;
    }

    public final Object c(List list, int index, int tryies) {
        if (list != null && index >= 0) {
            try {
                return list.get(index);
            } catch (Exception unused) {
                if (this.f9222b) {
                    System.out.println("ListInterator: Interate Exception();");
                }
                if (tryies < this.f9221a) {
                    return c(list, index, tryies + 1);
                }
            }
        }
        return null;
    }

    public Object d(List list, L listener) {
        if (list == null || listener == null) {
            return null;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object c10 = c(list, i10, 0);
            if (c10 != null) {
                Object b10 = listener.b(c10, i10);
                if (b10 != null) {
                    return b10;
                }
            } else {
                Object a10 = listener.a(i10);
                if (a10 != null) {
                    return a10;
                }
            }
        }
        return null;
    }

    public void e(List list, InterfaceC2628g listener) {
        if (list == null || listener == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object c10 = c(list, i10, 0);
            if (c10 != null) {
                if (listener.b(c10, i10)) {
                    return;
                }
            } else if (listener.a(i10)) {
                return;
            }
        }
    }

    public void f(List list, InterfaceC2640t listener) {
        if (list == null || listener == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object c10 = c(list, i10, 0);
            if (c10 != null) {
                listener.b(c10, i10);
            } else {
                listener.a(i10);
            }
        }
    }

    public void g(List list, Object pack, G listener) {
        if (list == null || listener == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object c10 = c(list, i10, 0);
            if (c10 != null) {
                listener.b(c10, pack, i10);
            } else {
                listener.a(i10);
            }
        }
    }

    public final void h(InterfaceC2640t interfaceC2640t, int[] iArr, Object obj) {
        int i10 = iArr[0];
        iArr[0] = i10 + 1;
        l(obj, interfaceC2640t, i10);
    }

    public final void i(Object obj, G g10, int[] iArr, Object obj2) {
        int i10 = iArr[0];
        iArr[0] = i10 + 1;
        m(obj2, obj, g10, i10);
    }

    public void j(List list, final InterfaceC2640t listener) {
        if (list == null || listener == null || this.f9224d >= this.f9221a) {
            return;
        }
        final int[] iArr = {0};
        try {
            list.parallelStream().forEachOrdered(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    z.this.h(listener, iArr, obj);
                }
            });
            this.f9223c = 0;
            this.f9224d = 0;
        } catch (ConcurrentModificationException unused) {
            if (this.f9222b) {
                System.out.println("ListInterator: ConcurrentModificationException();");
            }
            this.f9223c = iArr[0];
            this.f9224d++;
            j(list, listener);
        }
    }

    public void k(List list, final Object pack, final G listener) {
        if (list == null || listener == null || this.f9224d >= this.f9221a) {
            return;
        }
        final int[] iArr = {0};
        try {
            list.parallelStream().forEachOrdered(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    z.this.i(pack, listener, iArr, obj);
                }
            });
            this.f9223c = 0;
            this.f9224d = 0;
        } catch (ConcurrentModificationException unused) {
            if (this.f9222b) {
                System.out.println("ListInterator: ConcurrentModificationException();");
            }
            this.f9223c = iArr[0];
            this.f9224d++;
            k(list, pack, listener);
        }
    }

    public final void l(Object o10, InterfaceC2640t listener, int idx) {
        int i10 = this.f9223c;
        if (idx >= i10) {
            if (o10 != null) {
                listener.b(o10, i10);
            } else {
                listener.a(i10);
            }
        }
    }

    public final void m(Object o10, Object pack, G listener, int idx) {
        int i10 = this.f9223c;
        if (idx >= i10) {
            if (o10 != null) {
                listener.b(o10, pack, i10);
            } else {
                listener.a(i10);
            }
        }
    }

    public z(boolean debug) {
        this.f9221a = 3;
        this.f9223c = 0;
        this.f9224d = 0;
        this.f9222b = debug;
    }

    public z(int MAX_TRYIES) {
        this.f9223c = 0;
        this.f9224d = 0;
        this.f9221a = MAX_TRYIES;
    }
}
