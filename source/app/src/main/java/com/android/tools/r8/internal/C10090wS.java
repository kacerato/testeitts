package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class C10090wS extends S0 implements InterfaceC10259xT, Serializable {

    public transient C9589tS f53505f;

    public transient C9589tS f53506g;

    public final transient HashMap f53507h;

    public transient int f53508i;

    public transient int f53509j;

    public C10090wS() {
        int i10 = AbstractC8368m60.f50199a;
        this.f53507h = new HashMap(AbstractC9595tV.a(12));
    }

    public static void a(C10090wS c10090wS, C9589tS c9589tS) {
        c10090wS.getClass();
        C9589tS c9589tS2 = c9589tS.f52608e;
        if (c9589tS2 != null) {
            c9589tS2.f52607d = c9589tS.f52607d;
        } else {
            c10090wS.f53505f = c9589tS.f52607d;
        }
        C9589tS c9589tS3 = c9589tS.f52607d;
        if (c9589tS3 != null) {
            c9589tS3.f52608e = c9589tS2;
        } else {
            c10090wS.f53506g = c9589tS2;
        }
        if (c9589tS.f52610g == null && c9589tS.f52609f == null) {
            C9422sS c9422sS = (C9422sS) c10090wS.f53507h.remove(c9589tS.f52605b);
            Objects.requireNonNull(c9422sS);
            c9422sS.f52362c = 0;
            c10090wS.f53509j++;
        } else {
            C9422sS c9422sS2 = (C9422sS) c10090wS.f53507h.get(c9589tS.f52605b);
            Objects.requireNonNull(c9422sS2);
            c9422sS2.f52362c--;
            C9589tS c9589tS4 = c9589tS.f52610g;
            if (c9589tS4 == null) {
                C9589tS c9589tS5 = c9589tS.f52609f;
                Objects.requireNonNull(c9589tS5);
                c9422sS2.f52360a = c9589tS5;
            } else {
                c9589tS4.f52609f = c9589tS.f52609f;
            }
            C9589tS c9589tS6 = c9589tS.f52609f;
            if (c9589tS6 == null) {
                C9589tS c9589tS7 = c9589tS.f52610g;
                Objects.requireNonNull(c9589tS7);
                c9422sS2.f52361b = c9589tS7;
            } else {
                c9589tS6.f52610g = c9589tS.f52610g;
            }
        }
        c10090wS.f53508i--;
    }

    @Override
    public final Map c() {
        return new HY(this);
    }

    @Override
    public final void clear() {
        this.f53505f = null;
        this.f53506g = null;
        this.f53507h.clear();
        this.f53508i = 0;
        this.f53509j++;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f53507h.containsKey(obj);
    }

    @Override
    public final Set d() {
        return new C9089qS(this);
    }

    @Override
    public final LY e() {
        return new KY(this);
    }

    public final Collection g() {
        return new C8922pS(this);
    }

    @Override
    public final List get(Object obj) {
        return new C8755oS(this, obj);
    }

    @Override
    public final int size() {
        return this.f53508i;
    }

    @Override
    public final Collection a() {
        Collection collection = this.f44052b;
        if (collection == null) {
            collection = g();
            this.f44052b = collection;
        }
        return (List) collection;
    }

    public final C9589tS a(Object obj, Object obj2, C9589tS c9589tS) {
        C9589tS c9589tS2 = new C9589tS(obj, obj2);
        if (this.f53505f == null) {
            this.f53506g = c9589tS2;
            this.f53505f = c9589tS2;
            this.f53507h.put(obj, new C9422sS(c9589tS2));
            this.f53509j++;
        } else if (c9589tS == null) {
            C9589tS c9589tS3 = this.f53506g;
            Objects.requireNonNull(c9589tS3);
            c9589tS3.f52607d = c9589tS2;
            c9589tS2.f52608e = this.f53506g;
            this.f53506g = c9589tS2;
            C9422sS c9422sS = (C9422sS) this.f53507h.get(obj);
            if (c9422sS == null) {
                this.f53507h.put(obj, new C9422sS(c9589tS2));
                this.f53509j++;
            } else {
                c9422sS.f52362c++;
                C9589tS c9589tS4 = c9422sS.f52361b;
                c9589tS4.f52609f = c9589tS2;
                c9589tS2.f52610g = c9589tS4;
                c9422sS.f52361b = c9589tS2;
            }
        } else {
            C9422sS c9422sS2 = (C9422sS) this.f53507h.get(obj);
            Objects.requireNonNull(c9422sS2);
            c9422sS2.f52362c++;
            c9589tS2.f52608e = c9589tS.f52608e;
            c9589tS2.f52610g = c9589tS.f52610g;
            c9589tS2.f52607d = c9589tS;
            c9589tS2.f52609f = c9589tS;
            C9589tS c9589tS5 = c9589tS.f52610g;
            if (c9589tS5 == null) {
                c9422sS2.f52360a = c9589tS2;
            } else {
                c9589tS5.f52609f = c9589tS2;
            }
            C9589tS c9589tS6 = c9589tS.f52608e;
            if (c9589tS6 == null) {
                this.f53505f = c9589tS2;
            } else {
                c9589tS6.f52607d = c9589tS2;
            }
            c9589tS.f52608e = c9589tS2;
            c9589tS.f52610g = c9589tS2;
        }
        this.f53508i++;
        return c9589tS2;
    }
}
