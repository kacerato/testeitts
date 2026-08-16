package com.android.tools.r8.dex;

import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.dex.C4301a;
import com.android.tools.r8.graph.C4482h4;
import com.android.tools.r8.graph.C4614o4;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4799y0;
import com.android.tools.r8.graph.C4817z;
import com.android.tools.r8.graph.C4818z0;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5496Le;
import com.android.tools.r8.internal.AbstractC6014Ud;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8368m60;
import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.B2;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5759Pt;
import com.android.tools.r8.internal.C5782Qd;
import com.android.tools.r8.internal.C5840Rd;
import com.android.tools.r8.internal.C5956Td;
import com.android.tools.r8.internal.C7719iC;
import com.android.tools.r8.internal.C7948je;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9905vJ;
import com.android.tools.r8.internal.CH;
import com.android.tools.r8.internal.EnumC5583Ms;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.TR;
import com.android.tools.r8.origin.Origin;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.function.Consumer;
import u.C15521i0;

public final class C4301a {

    public static final boolean f35812j = true;

    public final C10325xr0 f35813a;

    public final ConcurrentLinkedQueue f35814b = new ConcurrentLinkedQueue();

    public final ConcurrentLinkedQueue f35815c = new ConcurrentLinkedQueue();

    public final ConcurrentLinkedQueue f35816d = new ConcurrentLinkedQueue();

    public final C4799y0 f35817e;

    public final C4482h4 f35818f;

    public boolean f35819g;

    public boolean f35820h;

    public final C4303c f35821i;

    public C4301a(C4303c c4303c, C10325xr0 c10325xr0) {
        this.f35821i = c4303c;
        C4799y0 c4799y0 = new C4799y0();
        this.f35817e = c4799y0;
        this.f35818f = new C4482h4(c4303c.f35823a, c4799y0);
        this.f35819g = false;
        this.f35820h = false;
        this.f35813a = c10325xr0;
    }

    public final C4818z0 a() {
        C4799y0 c4799y0 = this.f35817e;
        boolean z10 = this.f35820h;
        c4799y0.f38434a = z10;
        boolean z11 = this.f35819g;
        c4799y0.f38435b = z11;
        return new C4818z0(z10, z11, c4799y0.f38436c.a(), c4799y0.f38437d.a(), c4799y0.f38438e.a());
    }

    public final void b(ArrayList arrayList, final ConcurrentLinkedQueue concurrentLinkedQueue) {
        C2 c22;
        if (arrayList.isEmpty()) {
            return;
        }
        int i10 = 1;
        this.f35820h = true;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        C2 z10 = this.f35821i.f35823a.z();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            ProgramResource programResource = (ProgramResource) obj;
            D d10 = new D(programResource);
            C4303c c4303c = this.f35821i;
            C8570nJ c8570nJ = c4303c.f35823a;
            if (c8570nJ.f50736y) {
                boolean z11 = c8570nJ.f50599F1.f50892m;
                if (!z11) {
                    EnumC5583Ms enumC5583Ms = d10.f35682d;
                    if (!z11 && enumC5583Ms.f42433b == C8570nJ.f50580g2) {
                        c4303c.a(enumC5583Ms);
                        throw null;
                    }
                    if (c8570nJ.z() == C2.b()) {
                        switch (B2.f38776a[enumC5583Ms.ordinal()]) {
                            case 1:
                                c22 = C2.B;
                                break;
                            case 2:
                                c22 = C2.N;
                                break;
                            case 3:
                                c22 = C2.O;
                                break;
                            case 4:
                                c22 = C2.P;
                                break;
                            case 5:
                                c22 = C2.R;
                                break;
                            case 6:
                                c22 = C2.MAIN;
                                break;
                            default:
                                throw new C5417Jv0();
                        }
                        z10 = z10.c(c22);
                    } else {
                        C2 z12 = c4303c.f35823a.z();
                        enumC5583Ms.getClass();
                        if (EnumC5583Ms.c(z12).f42433b < enumC5583Ms.f42433b) {
                            c4303c.a(enumC5583Ms);
                            throw null;
                        }
                    }
                } else if (!f35812j && d10.f35682d != EnumC5583Ms.V41) {
                    throw new AssertionError();
                }
            }
            if (!this.f35821i.f35823a.f50599F1.f50892m) {
                if (!d10.f35682d.b()) {
                    arrayList2.add(new C(d10, com.android.tools.r8.graph.V.f36877c, this.f35821i.f35823a, 0, null));
                } else {
                    throw new ResourceException(programResource.getOrigin(), "Experimental container DEX version " + ((Object) d10.f35682d) + " is not supported");
                }
            } else {
                CH ch2 = new CH(16);
                d10.f35894b.a(ByteOrder.LITTLE_ENDIAN);
                int b10 = d10.f35894b.b(40);
                if (b10 == 2018915346) {
                    d10.f35894b.a(ByteOrder.BIG_ENDIAN);
                } else if (b10 != 305419896) {
                    throw new C5325If("Unable to determine endianess for reading dex file.");
                }
                int i12 = 0;
                while (i12 < d10.f35894b.b()) {
                    ch2.add(i12);
                    D d11 = new D(Origin.unknown(), d10.f35894b.a().array(), i12);
                    boolean z13 = f35812j;
                    if (!z13 && d11.f35682d != EnumC5583Ms.V41) {
                        throw new AssertionError();
                    }
                    if (!z13 && d10.a(i12 + 36) != 120) {
                        throw new AssertionError();
                    }
                    if (!z13 && d10.a(i12 + 116) != i12) {
                        throw new AssertionError();
                    }
                    int a10 = d10.a(i12 + 104);
                    int a11 = d10.a(i12 + 108);
                    int a12 = d10.a(i12 + 32);
                    if (!z13 && a11 != 0) {
                        throw new AssertionError();
                    }
                    if (!z13 && a10 != 0) {
                        throw new AssertionError();
                    }
                    i12 += a12;
                }
                if (!f35812j && i12 != d10.f35894b.b()) {
                    throw new AssertionError();
                }
                C c10 = new C(d10, com.android.tools.r8.graph.V.f36877c, this.f35821i.f35823a, ch2.c(ch2.f39177c - i10), null);
                int i13 = 0;
                while (i13 < ch2.f39177c - i10) {
                    arrayList2.add(new C(d10, com.android.tools.r8.graph.V.f36877c, this.f35821i.f35823a, ch2.c(i13), c10));
                    i13++;
                    i10 = 1;
                }
                arrayList2.add(c10);
            }
            i10 = 1;
        }
        this.f35821i.f35823a.d(z10);
        int size2 = arrayList2.size();
        int i14 = 0;
        while (i14 < size2) {
            Object obj2 = arrayList2.get(i14);
            i14++;
            ((C) obj2).k();
        }
        C8570nJ c8570nJ2 = this.f35821i.f35823a;
        if (c8570nJ2.f50626O1) {
            return;
        }
        final com.android.tools.r8.graph.B c4817z = new C4817z();
        if (AbstractC8737oJ.a(c8570nJ2.k()) && !c8570nJ2.f50599F1.f50919z0) {
            c4817z = new com.android.tools.r8.graph.A(c8570nJ2.m());
        }
        if (!this.f35821i.f35823a.f50599F1.f50892m) {
            int size3 = arrayList2.size();
            int i15 = 0;
            while (i15 < size3) {
                Object obj3 = arrayList2.get(i15);
                i15++;
                final C c11 = (C) obj3;
                this.f35813a.b(new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        C4301a.a(com.android.tools.r8.dex.C.this, concurrentLinkedQueue, c4817z);
                    }
                });
            }
            return;
        }
        for (int i16 = 0; i16 < arrayList2.size(); i16++) {
            C c12 = (C) arrayList2.get(i16);
            Objects.requireNonNull(concurrentLinkedQueue);
            c12.a(new C15521i0(concurrentLinkedQueue), c4817z);
        }
    }

    public static void a(C c10, Queue queue, com.android.tools.r8.graph.B b10) {
        Objects.requireNonNull(queue);
        c10.a(new C15521i0(queue), b10);
    }

    public final void a(ArrayList arrayList, final ConcurrentLinkedQueue concurrentLinkedQueue) {
        if (arrayList.isEmpty()) {
            return;
        }
        this.f35819g = true;
        final C4614o4 c4614o4 = new C4614o4(this.f35818f, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4301a.this.a(concurrentLinkedQueue, (H2) obj);
            }
        }, com.android.tools.r8.graph.V.f36877c);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            final ProgramResource programResource = (ProgramResource) obj;
            this.f35813a.b(new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    C4301a.a(C4614o4.this, programResource);
                }
            });
        }
    }

    public static void a(C4614o4 c4614o4, ProgramResource programResource) {
        c4614o4.getClass();
        c4614o4.b(programResource.getOrigin(), programResource.getBytes());
    }

    public final void a(C9905vJ c9905vJ) {
        this.f35814b.addAll(c9905vJ.f53076a);
    }

    public static AbstractC6014Ud a(com.android.tools.r8.graph.V v10, ConcurrentLinkedQueue concurrentLinkedQueue, List list, C4482h4 c4482h4) {
        C7719iC c7719iC;
        ArrayList arrayList = new ArrayList();
        if (!concurrentLinkedQueue.isEmpty()) {
            int i10 = AbstractC8368m60.f50199a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = concurrentLinkedQueue.iterator();
            while (it.hasNext()) {
                E0 e02 = (E0) it.next();
                M2 m22 = e02.f36245e;
                AbstractC5496Le.a(m22, e02);
                Collection collection = (Collection) linkedHashMap.get(m22);
                if (collection == null) {
                    collection = new ArrayList();
                    linkedHashMap.put(m22, collection);
                }
                collection.add(e02);
            }
            Set<Map.Entry> entrySet = linkedHashMap.entrySet();
            if (entrySet.isEmpty()) {
                c7719iC = C5759Pt.f43400h;
            } else {
                C8051kC c8051kC = new C8051kC(entrySet.size());
                int i11 = 0;
                for (Map.Entry entry : entrySet) {
                    Object key = entry.getKey();
                    AbstractC7552hC a10 = AbstractC7552hC.a((Collection) entry.getValue());
                    if (!a10.isEmpty()) {
                        c8051kC.a(key, a10);
                        i11 += a10.size();
                    }
                }
                c7719iC = new C7719iC(i11, c8051kC.b());
            }
            arrayList.add(new C5956Td(v10, c7719iC));
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new C5782Qd(v10, (ClassFileResourceProvider) it2.next(), c4482h4));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.size() == 1 ? (AbstractC6014Ud) arrayList.get(0) : new C5840Rd(v10, arrayList);
    }

    public final void a(C4765w4.a aVar) {
        Iterator it = this.f35814b.iterator();
        while (it.hasNext()) {
            H2 d02 = ((H2) it.next()).d0();
            synchronized (aVar) {
                aVar.f38316a.add(d02);
            }
        }
        AbstractC6014Ud a10 = a(com.android.tools.r8.graph.V.f36878d, this.f35815c, this.f35821i.f35826d.d(), this.f35818f);
        if (a10 != null) {
            aVar.f38330h = new C7948je(a10);
        }
        AbstractC6014Ud a11 = a(com.android.tools.r8.graph.V.f36879e, this.f35816d, this.f35821i.f35826d.g(), this.f35818f);
        if (a11 != null) {
            aVar.f38331i = new TR(a11);
        }
        aVar.f38332j = this.f35818f.f37273g;
    }

    public final void a(Queue queue, H2 h22) {
        boolean contains;
        if (h22.f36246f.H()) {
            if (this.f35821i.f35823a.f50607I0) {
                C4666r0 a10 = h22.k0().a(this.f35821i.f35824b.f38149s3);
                if (a10 == null) {
                    contains = C4666r0.a(this.f35818f.f37267a, h22.getType());
                } else {
                    contains = a10.f37693c.toString().contains("RUNTIME");
                }
            } else {
                contains = true;
            }
            if (!contains) {
                return;
            }
        }
        queue.add(h22);
    }

    public final void b() {
        ArrayList a10 = this.f35821i.f35826d.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4301a.this.a((C9905vJ) obj);
            }
        });
        ArrayList arrayList = new ArrayList(a10.size());
        ArrayList arrayList2 = new ArrayList(a10.size());
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            ProgramResource programResource = (ProgramResource) obj;
            if (programResource.getKind() == ProgramResource.Kind.DEX) {
                arrayList.add(programResource);
            } else {
                if (!f35812j && programResource.getKind() != ProgramResource.Kind.CF) {
                    throw new AssertionError();
                }
                arrayList2.add(programResource);
            }
        }
        b(arrayList, this.f35814b);
        a(arrayList2, this.f35814b);
    }
}
