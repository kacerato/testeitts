package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.retrace.RetraceFrameElement;
import com.android.tools.r8.retrace.RetraceFrameResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Stream;

public final class C5972Tj0 implements RetraceFrameResult {

    public static final boolean f44556f = true;

    public final JW f44557a;

    public final ArrayList f44558b;

    public final C10137wk0 f44559c;

    public final C6315Zj0 f44560d;

    public AbstractC9530t40 f44561e = AbstractC9530t40.f52519c;

    public C5972Tj0(ArrayList arrayList, JW jw, C10137wk0 c10137wk0, C6315Zj0 c6315Zj0) {
        this.f44557a = jw;
        this.f44558b = arrayList;
        this.f44559c = c10137wk0;
        this.f44560d = c6315Zj0;
        if (!f44556f && arrayList.isEmpty()) {
            throw new AssertionError();
        }
    }

    public final Stream a(C5798Qj0 c5798Qj0) {
        AbstractC9302rk0 c9136qk0;
        C5566Mj0 c5566Mj0 = c5798Qj0.f43695a;
        List<JV> list = c5798Qj0.f43696b;
        OptionalInt optionalInt = c5798Qj0.f43697c;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (JV jv : list) {
                List<C10957k.b> a10 = jv.f41409a.a();
                com.android.tools.r8.naming.V v10 = jv.f41410b;
                if (a10.isEmpty()) {
                    if (!f44556f && v10 == null) {
                        throw new AssertionError();
                    }
                    arrayList.add(a(Collections.singletonList(C5914Sj0.a(new C10957k.b(null, v10.a().b(), null, v10.c()))), Optional.of(v10), c5566Mj0, optionalInt));
                } else {
                    C10957k.b bVar = a10.get(0);
                    com.android.tools.r8.naming.M0 m02 = bVar.f55969b;
                    ArrayList arrayList2 = new ArrayList(CT.a(1));
                    Collections.addAll(arrayList2, bVar);
                    ArrayList arrayList3 = arrayList2;
                    for (int i10 = 1; i10 < a10.size(); i10++) {
                        C10957k.b bVar2 = a10.get(i10);
                        if (m02 == null || !m02.equals(bVar2.f55969b)) {
                            a(c5566Mj0, Optional.ofNullable(v10), arrayList3, arrayList, optionalInt);
                            arrayList3 = new ArrayList();
                            m02 = bVar2.f55969b;
                        }
                        arrayList3.add(bVar2);
                    }
                    a(c5566Mj0, Optional.ofNullable(v10), arrayList3, arrayList, optionalInt);
                }
            }
            return arrayList.stream();
        }
        JW a11 = this.f44557a.a(c5566Mj0.f42356b.f50088a);
        Comparator comparator = AbstractC9302rk0.f52122c;
        if (a11 instanceof IW) {
            c9136qk0 = new C8969pk0(a11.a().f41114a, OptionalInt.empty());
        } else {
            c9136qk0 = new C9136qk0(a11, OptionalInt.empty());
        }
        int i11 = AbstractC7552hC.f48487c;
        return Stream.of(new C5856Rj0(this, c5566Mj0, c9136qk0, C6190Xe0.f45779e, Optional.empty(), optionalInt, this.f44559c));
    }

    @Override
    public final boolean isAmbiguous() {
        com.android.tools.r8.naming.M0 m02;
        com.android.tools.r8.naming.M0 m03;
        if (this.f44561e.e()) {
            boolean z10 = true;
            if (this.f44558b.size() <= 1) {
                C5798Qj0 c5798Qj0 = (C5798Qj0) this.f44558b.get(0);
                List list = c5798Qj0.f43696b;
                if (list != null) {
                    if (list.size() <= 1) {
                        if (!C5798Qj0.f43694d && c5798Qj0.f43696b.isEmpty()) {
                            throw new AssertionError();
                        }
                        List<C10957k.b> a10 = ((JV) c5798Qj0.f43696b.get(0)).f41409a.a();
                        if (a10 != null && !a10.isEmpty()) {
                            C10957k.b bVar = a10.get(0);
                            for (C10957k.b bVar2 : a10) {
                                com.android.tools.r8.naming.M0 m04 = bVar2.f55971d;
                                if ((m04 != null && m04.a() != 1 && ((m03 = bVar2.f55969b) == null || m03.a() != bVar2.f55971d.a())) || (bVar2 != bVar && ((m02 = bVar2.f55969b) == null || !m02.equals(bVar.f55969b)))) {
                                    break;
                                }
                            }
                        }
                    }
                }
                z10 = false;
            }
            AbstractC9530t40 a11 = AbstractC9530t40.a(z10);
            this.f44561e = a11;
            if (!f44556f && a11.e()) {
                throw new AssertionError();
            }
        }
        return this.f44561e.d();
    }

    @Override
    public final boolean isEmpty() {
        List list = ((C5798Qj0) this.f44558b.get(0)).f43696b;
        return list == null || list.isEmpty();
    }

    @Override
    public final Stream<RetraceFrameElement> stream() {
        return this.f44558b.stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5972Tj0.this.a((C5798Qj0) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final C5566Mj0 c5566Mj0, final Optional optional, ArrayList arrayList, final ArrayList arrayList2, final OptionalInt optionalInt) {
        C10957k.b bVar;
        com.android.tools.r8.naming.M0 m02;
        com.android.tools.r8.naming.M0 m03;
        if (isAmbiguous() && (m02 = (bVar = (C10957k.b) arrayList.get(0)).f55971d) != null && m02.a() != 1 && ((m03 = bVar.f55969b) == null || m03.a() != bVar.f55971d.a())) {
            boolean z10 = f44556f;
            if (!z10 && arrayList.size() <= 0) {
                throw new AssertionError();
            }
            if (!z10 && (((C10957k.b) arrayList.get(0)).f55971d == null || ((C10957k.b) arrayList.get(0)).f55971d.f55703b <= ((C10957k.b) arrayList.get(0)).f55971d.f55702a)) {
                throw new AssertionError();
            }
            final ArrayList arrayList3 = new ArrayList();
            AT.a(arrayList, new InterfaceC10593zT() {
                @Override
                public final void accept(Object obj, int i10) {
                    C5972Tj0.a(List.this, (C10957k.b) obj, i10);
                }
            });
            arrayList3.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5972Tj0.this.a(arrayList2, optional, c5566Mj0, optionalInt, (List) obj);
                }
            });
            return;
        }
        arrayList2.add(a(AT.a((Collection) arrayList, new Function() {
            @Override
            public final Object apply(Object obj) {
                C5914Sj0 a10;
                a10 = C5914Sj0.a((C10957k.b) obj);
                return a10;
            }
        }), optional, c5566Mj0, optionalInt));
    }

    public static void a(List list, final C10957k.b bVar, int i10) {
        if (i10 == 0) {
            for (int i11 = bVar.f55971d.f55702a; i11 <= bVar.f55971d.f55703b; i11++) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new C5914Sj0(bVar, OptionalInt.of(i11)));
                list.add(arrayList);
            }
            return;
        }
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((List) obj).add(C5914Sj0.a(C10957k.b.this));
            }
        });
    }

    public final void a(List list, Optional optional, C5566Mj0 c5566Mj0, OptionalInt optionalInt, List list2) {
        list.add(a(list2, optional, c5566Mj0, optionalInt));
    }

    public final C5856Rj0 a(List list, Optional optional, C5566Mj0 c5566Mj0, OptionalInt optionalInt) {
        C5914Sj0 c5914Sj0 = (C5914Sj0) list.get(0);
        C10957k.b bVar = c5914Sj0.f44290a;
        ClassReference classReference = c5566Mj0.f42356b.f50088a;
        HashSet hashSet = C8134kk0.f49747a;
        return new C5856Rj0(this, c5566Mj0, a(C8134kk0.a(bVar.f55970c, classReference), c5914Sj0, optionalInt), list, optional, optionalInt, this.f44559c);
    }

    public final C8969pk0 a(MethodReference methodReference, C5914Sj0 c5914Sj0, final OptionalInt optionalInt) {
        com.android.tools.r8.naming.M0 m02;
        final C10957k.b bVar = c5914Sj0.f44290a;
        OptionalInt optionalInt2 = c5914Sj0.f44291b;
        if (!isAmbiguous() && (bVar.f55969b == null || optionalInt.orElse(-1) == -1)) {
            Supplier supplier = new Supplier() {
                @Override
                public final Object get() {
                    return C5972Tj0.a(C10957k.b.this);
                }
            };
            if (!optionalInt2.isPresent()) {
                optionalInt2 = (OptionalInt) supplier.get();
            }
            Comparator comparator = AbstractC9302rk0.f52122c;
            return new C8969pk0(methodReference, optionalInt2);
        }
        if (!DX0.a(optionalInt) && (m02 = bVar.f55969b) != null && m02.a(optionalInt.getAsInt())) {
            Supplier supplier2 = new Supplier() {
                @Override
                public final Object get() {
                    OptionalInt of2;
                    of2 = OptionalInt.of(C10957k.b.this.a(optionalInt.getAsInt()));
                    return of2;
                }
            };
            if (!optionalInt2.isPresent()) {
                optionalInt2 = (OptionalInt) supplier2.get();
            }
            Comparator comparator2 = AbstractC9302rk0.f52122c;
            return new C8969pk0(methodReference, optionalInt2);
        }
        Comparator comparator3 = AbstractC9302rk0.f52122c;
        return new C8969pk0(methodReference, optionalInt2);
    }

    public static OptionalInt a(C10957k.b bVar) {
        int i10;
        com.android.tools.r8.naming.M0 m02 = bVar.f55971d;
        if (m02 == null) {
            com.android.tools.r8.naming.M0 m03 = bVar.f55969b;
            i10 = m03 != null ? m03.f55702a : 0;
        } else {
            i10 = m02.f55702a;
        }
        if (i10 > 0) {
            return OptionalInt.of(i10);
        }
        return OptionalInt.empty();
    }
}
