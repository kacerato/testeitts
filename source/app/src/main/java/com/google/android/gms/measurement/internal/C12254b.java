package com.google.android.gms.measurement.internal;

import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12030b7;
import com.google.android.gms.internal.measurement.C12062f3;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

public final class C12254b extends AbstractC12262c {

    public final com.google.android.gms.internal.measurement.M1 f63013g;

    public final C12278e f63014h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12254b(C12278e c12278e, String str, int i10, com.google.android.gms.internal.measurement.M1 m12) {
        super(str, i10);
        Objects.requireNonNull(c12278e);
        this.f63014h = c12278e;
        this.f63013g = m12;
    }

    @Override
    public final int a() {
        return this.f63013g.F();
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final boolean c() {
        return this.f63013g.K();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x035f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0357  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(Long l10, Long l11, C12026b3 c12026b3, long j10, E e10, boolean z10) {
        Boolean i10;
        C12030b7.a();
        C12278e c12278e = this.f63014h;
        C12370p3 c12370p3 = c12278e.f62917a;
        C12342m w10 = c12370p3.w();
        String str = this.f63050a;
        boolean H10 = w10.H(str, C12281e2.f63149G0);
        com.google.android.gms.internal.measurement.M1 m12 = this.f63013g;
        long j11 = m12.P() ? e10.f62604e : j10;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        r9 = null;
        Boolean bool = null;
        if (Log.isLoggable(c12370p3.a().z(), 2)) {
            c12370p3.a().w().d("Evaluating filter. audience, filter, event", Integer.valueOf(this.f63051b), m12.E() ? Integer.valueOf(m12.F()) : null, c12370p3.D().a(m12.G()));
            c12370p3.a().w().b("Filter definition", c12278e.f62657b.K0().L(m12));
        }
        if (!m12.E() || m12.F() > 256) {
            c12370p3.a().r().c("Invalid event filter ID. appId, id", B2.x(str), String.valueOf(m12.E() ? Integer.valueOf(m12.F()) : null));
            return false;
        }
        Object[] objArr = m12.M() || m12.N() || m12.P();
        if (z10 && objArr != true) {
            c12370p3.a().w().c("Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f63051b), m12.E() ? Integer.valueOf(m12.F()) : null);
            return true;
        }
        String H11 = c12026b3.H();
        if (m12.K()) {
            Boolean g10 = AbstractC12262c.g(j11, m12.L());
            if (g10 != null) {
                if (!g10.booleanValue()) {
                    bool = Boolean.FALSE;
                }
            }
            c12370p3.a().w().b("Event filter result", bool != null ? "null" : bool);
            if (bool != null) {
                return false;
            }
            Boolean bool2 = Boolean.TRUE;
            this.f63052c = bool2;
            if (!bool.booleanValue()) {
                return true;
            }
            this.f63053d = bool2;
            if (objArr != false && c12026b3.I()) {
                Long valueOf = Long.valueOf(c12026b3.J());
                if (m12.N()) {
                    if (H10 && m12.K()) {
                        valueOf = l10;
                    }
                    this.f63055f = valueOf;
                } else {
                    if (H10 && m12.K()) {
                        valueOf = l11;
                    }
                    this.f63054e = valueOf;
                }
            }
            return true;
        }
        HashSet hashSet = new HashSet();
        Iterator it = m12.H().iterator();
        while (true) {
            if (!it.hasNext()) {
                ArrayMap arrayMap = new ArrayMap();
                Iterator it2 = c12026b3.E().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        Iterator it3 = m12.H().iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                bool = Boolean.TRUE;
                                break;
                            }
                            com.google.android.gms.internal.measurement.O1 o12 = (com.google.android.gms.internal.measurement.O1) it3.next();
                            boolean z11 = o12.I() && o12.J();
                            String L10 = o12.L();
                            if (L10.isEmpty()) {
                                c12370p3.a().r().b("Event has empty param name. event", c12370p3.D().a(H11));
                                break;
                            }
                            V v10 = arrayMap.get(L10);
                            if (v10 instanceof Long) {
                                if (!o12.G()) {
                                    c12370p3.a().r().c("No number filter for long param. event, param", c12370p3.D().a(H11), c12370p3.D().b(L10));
                                    break;
                                }
                                Boolean g11 = AbstractC12262c.g(((Long) v10).longValue(), o12.H());
                                if (g11 == null) {
                                    break;
                                }
                                if (g11.booleanValue() == z11) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (v10 instanceof Double) {
                                if (!o12.G()) {
                                    c12370p3.a().r().c("No number filter for double param. event, param", c12370p3.D().a(H11), c12370p3.D().b(L10));
                                    break;
                                }
                                Boolean h10 = AbstractC12262c.h(((Double) v10).doubleValue(), o12.H());
                                if (h10 == null) {
                                    break;
                                }
                                if (h10.booleanValue() == z11) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (v10 instanceof String) {
                                if (!o12.E()) {
                                    if (!o12.G()) {
                                        c12370p3.a().r().c("No filter for String param. event, param", c12370p3.D().a(H11), c12370p3.D().b(L10));
                                        break;
                                    }
                                    String str2 = (String) v10;
                                    if (!h7.O(str2)) {
                                        c12370p3.a().r().c("Invalid param value for number filter. event, param", c12370p3.D().a(H11), c12370p3.D().b(L10));
                                        break;
                                    }
                                    i10 = AbstractC12262c.i(str2, o12.H());
                                } else {
                                    i10 = AbstractC12262c.f((String) v10, o12.F(), c12370p3.a());
                                }
                                if (i10 == null) {
                                    break;
                                }
                                if (i10.booleanValue() == z11) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (v10 == 0) {
                                c12370p3.a().w().c("Missing param for filter. event, param", c12370p3.D().a(H11), c12370p3.D().b(L10));
                                bool = Boolean.FALSE;
                            } else {
                                c12370p3.a().r().c("Unknown param type. event, param", c12370p3.D().a(H11), c12370p3.D().b(L10));
                            }
                        }
                    } else {
                        C12062f3 c12062f3 = (C12062f3) it2.next();
                        if (hashSet.contains(c12062f3.F())) {
                            if (!c12062f3.I()) {
                                if (!c12062f3.M()) {
                                    if (!c12062f3.G()) {
                                        c12370p3.a().r().c("Unknown value for param. event, param", c12370p3.D().a(H11), c12370p3.D().b(c12062f3.F()));
                                        break;
                                    }
                                    arrayMap.put(c12062f3.F(), c12062f3.H());
                                } else {
                                    arrayMap.put(c12062f3.F(), c12062f3.M() ? Double.valueOf(c12062f3.N()) : null);
                                }
                            } else {
                                arrayMap.put(c12062f3.F(), c12062f3.I() ? Long.valueOf(c12062f3.J()) : null);
                            }
                        }
                    }
                }
            } else {
                com.google.android.gms.internal.measurement.O1 o13 = (com.google.android.gms.internal.measurement.O1) it.next();
                if (o13.L().isEmpty()) {
                    c12370p3.a().r().b("null or empty param name in filter. event", c12370p3.D().a(H11));
                    break;
                }
                hashSet.add(o13.L());
            }
        }
        c12370p3.a().w().b("Event filter result", bool != null ? "null" : bool);
        if (bool != null) {
        }
    }
}
