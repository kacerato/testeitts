package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Function;

public class C9289rg extends O50 {

    public static final boolean f52097c = true;

    public Map f52098b;

    public C9289rg() {
        this.f52098b = Collections.EMPTY_MAP;
    }

    public static R50 a(R50 r50) {
        return r50;
    }

    public final boolean b(C9289rg c9289rg) {
        if (this.f52098b.size() < c9289rg.f52098b.size()) {
            return false;
        }
        Iterator it = c9289rg.f52098b.o().iterator();
        while (it.hasNext()) {
            if (!this.f52098b.containsKey((InterfaceC6078Vf) it.next())) {
                return false;
            }
        }
        for (Map.Entry entry : this.f52098b.entrySet()) {
            InterfaceC6078Vf interfaceC6078Vf = (InterfaceC6078Vf) entry.getKey();
            R50 r50 = (R50) entry.getValue();
            R50 r502 = (R50) c9289rg.f52098b.get(interfaceC6078Vf);
            r50.getClass();
            if (r50 != ((r502 == null || r50 == r502) ? r50 : R50.f43797d)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final C9289rg d() {
        return this;
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C9289rg) {
            return this.f52098b.equals(((C9289rg) obj).f52098b);
        }
        return false;
    }

    public final void f() {
        if (this.f52098b.isEmpty()) {
            if (!f52097c && this.f52098b != Collections.EMPTY_MAP) {
                throw new AssertionError();
            }
            return;
        }
        Map map = this.f52098b;
        if (map instanceof HashMap) {
            return;
        }
        if (!f52097c && !(map instanceof IdentityHashMap)) {
            throw new AssertionError();
        }
        this.f52098b = TU.a(map, new Yr1(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9289rg.a((InterfaceC6078Vf) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9289rg.a((R50) obj);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C9289rg.a((InterfaceC6078Vf) obj, (R50) obj2, (R50) obj3);
            }
        });
    }

    public Map<InterfaceC6078Vf, R50> g() {
        return this.f52098b;
    }

    public final int hashCode() {
        return this.f52098b.hashCode();
    }

    public static InterfaceC6078Vf a(InterfaceC6078Vf interfaceC6078Vf) {
        return interfaceC6078Vf;
    }

    public C9289rg(Map map) {
        this.f52098b = map;
    }

    @Override
    public final boolean a(C4798y c4798y, D1 d12) {
        O50 o50 = (O50) d12;
        if (o50.e()) {
            return b(o50.d());
        }
        return equals(b(c4798y, o50));
    }

    @Override
    public final O50 a(InterfaceC6078Vf interfaceC6078Vf, boolean z10) {
        R50 r50;
        R50 r502 = (R50) this.f52098b.get(interfaceC6078Vf);
        if (r502 != null) {
            r50 = R50.f43797d;
            if (r502 == r50) {
                return this;
            }
        } else {
            r50 = z10 ? R50.f43796c : R50.f43795b;
        }
        IdentityHashMap identityHashMap = new IdentityHashMap(this.f52098b.size() + 1);
        identityHashMap.putAll(this.f52098b);
        identityHashMap.put(interfaceC6078Vf, r50);
        return new C9289rg(identityHashMap);
    }

    public static R50 a(InterfaceC6078Vf interfaceC6078Vf, R50 r50, R50 r502) {
        r50.getClass();
        if (!R50.f43799f && r502 == null) {
            throw new AssertionError();
        }
        if (r50 != r502) {
            R50 r503 = R50.f43797d;
            if (r50 == r503) {
                return r502;
            }
            if (r502 != r503) {
                return r503;
            }
        }
        return r50;
    }

    public final InterfaceC6078Vf a(C9289rg c9289rg) {
        R50 r50;
        for (Map.Entry entry : this.f52098b.entrySet()) {
            InterfaceC6078Vf interfaceC6078Vf = (InterfaceC6078Vf) entry.getKey();
            R50 r502 = (R50) entry.getValue();
            if (r502 != R50.f43797d && (r50 = (R50) c9289rg.f52098b.get(interfaceC6078Vf)) != null) {
                r502.getClass();
                int i10 = Q50.f43448a[r502.ordinal()];
                if (i10 != 1) {
                    if (i10 == 2 && r50 == R50.f43795b) {
                        return interfaceC6078Vf;
                    }
                } else if (r50 == R50.f43796c) {
                    return interfaceC6078Vf;
                }
            }
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
