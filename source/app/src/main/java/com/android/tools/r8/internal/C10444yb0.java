package com.android.tools.r8.internal;

import android.content.Context;
import android.provider.Telephony;
import com.android.apksig.apk.ApkUtils;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.origin.PathOrigin;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public final class C10444yb0 {

    public static final QC f54052q = QC.a("provider", Context.ACTIVITY_SERVICE, "service", "receiver", "instrumentation", "process", F2.i.f6413l);

    public static final QC f54053r = QC.a(3, 3, "backupAgent", "appComponentFactory", "zygotePreloadName");

    public static final boolean f54054s = true;

    public final Function f54055a;

    public final C10277xb0 f54056b;

    public final InterfaceC5976Tl0 f54063i;

    public InterfaceC9943vb0 f54064j;

    public InterfaceC10110wb0 f54065k;

    public HashMap f54066l;

    public HashSet f54067m;

    public final HashMap f54057c = new HashMap();

    public final HashSet f54058d = new HashSet();

    public final ArrayList f54059e = new ArrayList();

    public final ArrayList f54060f = new ArrayList();

    public final HashMap f54061g = new HashMap();

    public final HashMap f54062h = new HashMap();

    public final HashSet f54068n = new HashSet();

    public final HashSet f54069o = new HashSet();

    public final ConcurrentHashMap f54070p = new ConcurrentHashMap();

    public C10444yb0(Function function, InterfaceC5976Tl0 interfaceC5976Tl0) {
        this.f54056b = new C10277xb0(interfaceC5976Tl0);
        this.f54063i = interfaceC5976Tl0;
        this.f54055a = function;
    }

    public static C6795ci0 a(C6795ci0 c6795ci0, AbstractC5963Tf0 abstractC5963Tf0) {
        return c6795ci0;
    }

    public final void b(int i10, String str) {
        for (Map.Entry entry : ((HashMap) a()).entrySet()) {
            if (((Set) entry.getValue()).contains(str) && ((Integer) entry.getKey()).intValue() != i10) {
                a(((Integer) entry.getKey()).intValue(), "Duplicated xmlfile " + str);
            }
        }
    }

    public final void c() {
        for (final C6795ci0 c6795ci0 : this.f54062h.values()) {
            new C5600Na0(new InterfaceC5210Gf0() {
                @Override
                public final byte[] a(String str) {
                    return C10444yb0.this.a(str);
                }
            }, new InterfaceC8676ny() {
                @Override
                public final Object a(Object obj) {
                    return C10444yb0.a(C6795ci0.this, (AbstractC5963Tf0) obj);
                }
            }).a(this.f54056b);
        }
    }

    public final void d(C8623ng0 c8623ng0) {
        a(c8623ng0.f51025f, "keep xml file");
    }

    public final void e() {
        byte[] readAllBytes;
        try {
            ArrayList arrayList = this.f54059e;
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                readAllBytes = ((InputStream) ((Supplier) obj).get()).readAllBytes();
                AbstractC9827us0.a(HR.a(readAllBytes), this.f54056b);
            }
            this.f54056b.f44525b.b().forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C10444yb0.this.d((C8623ng0) obj2);
                }
            });
            ArrayList arrayList2 = this.f54060f;
            int size2 = arrayList2.size();
            while (i10 < size2) {
                Object obj2 = arrayList2.get(i10);
                i10++;
                a(ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME, (InputStream) ((Supplier) obj2).get());
            }
        } catch (IOException e10) {
            throw ((RuntimeException) this.f54055a.apply(e10));
        }
    }

    public final void a(int i10, final String str) {
        C8623ng0 c8623ng0;
        if (this.f54069o.add(Integer.valueOf(i10)) && (c8623ng0 = (C8623ng0) this.f54056b.f44525b.f49014d.get(Integer.valueOf(i10))) != null) {
            if (!f54054s && str == null) {
                throw new AssertionError();
            }
            this.f54070p.compute(c8623ng0, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C10444yb0.a(String.this, (C8623ng0) obj, (String) obj2);
                }
            });
            AbstractC8957pg0.a(c8623ng0);
            Set<String> set = (Set) ((HashMap) a()).get(Integer.valueOf(i10));
            if (set != null) {
                for (String str2 : set) {
                    a(str2, (InputStream) ((Supplier) this.f54057c.get(str2)).get());
                    if (this.f54058d.contains(str2)) {
                        b(i10, str2);
                    }
                }
            }
            ArrayList arrayList = c8623ng0.f51026g;
            if (arrayList != null) {
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    C8623ng0 c8623ng02 = (C8623ng0) obj;
                    if (!c8623ng02.b()) {
                        a(c8623ng02.f51025f, c8623ng02.toString());
                    }
                }
            }
        }
    }

    public final GR d() {
        byte[] readAllBytes;
        ArrayList arrayList = this.f54060f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            E80.a(C9800uj0.a((InputStream) ((Supplier) obj).get()), this.f54056b);
        }
        ArrayList arrayList2 = this.f54059e;
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            readAllBytes = ((InputStream) ((Supplier) obj2).get()).readAllBytes();
            AbstractC9827us0.a(HR.a(readAllBytes), this.f54056b);
        }
        C7789ig0 c7789ig0 = this.f54056b.f44525b;
        c7789ig0.b();
        PC pc2 = KC.f41616c;
        Iterator it = AbstractC6114Vx.b(this.f54057c.o(), this.f54061g.o()).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                break;
            }
            String str = (String) gk2.next();
            if (AbstractC5905Sf0.a(c7789ig0, str)) {
                Objects.requireNonNull(pc2);
                pc2 = pc2.a(str);
            }
        }
        Objects.requireNonNull(pc2);
        QC a10 = pc2.c().a();
        final List b10 = b();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f54062h.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj3, Object obj4) {
                Map.this.put((FeatureSplit) obj3, AbstractC8122kg0.a((C6795ci0) obj4, b10, true));
            }
        });
        for (final Map.Entry entry : this.f54070p.entrySet()) {
            this.f54063i.a(new Supplier() {
                @Override
                public final Object get() {
                    return C10444yb0.a(Map.Entry.this);
                }
            });
        }
        return new GR(a10, identityHashMap);
    }

    public static boolean c(C8623ng0 c8623ng0) {
        return c8623ng0.f51022c != EnumC8289lg0.ID;
    }

    public final List b() {
        List unmodifiableList = Collections.unmodifiableList(this.f54056b.f44525b.f49012b);
        GJ.b(unmodifiableList, "unmodifiableList(_resources)");
        return (List) unmodifiableList.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10444yb0.b((C8623ng0) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10444yb0.c((C8623ng0) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(((C8623ng0) obj).f51025f);
                return valueOf;
            }
        }).collect(Collectors.toList());
    }

    public static boolean b(C8623ng0 c8623ng0) {
        return !c8623ng0.b() && (c8623ng0.f51021b & 4) == 0;
    }

    public static String a(String str, C8623ng0 c8623ng0, String str2) {
        return (str2 == null || str2.compareTo(str) > 0) ? str : str2;
    }

    public final byte[] a(String str) {
        byte[] readAllBytes;
        if (!f54054s && str.startsWith("res/")) {
            throw new AssertionError();
        }
        String str2 = "res/" + str;
        Supplier supplier = (Supplier) this.f54057c.get(str2);
        if (supplier == null) {
            supplier = (Supplier) this.f54061g.get(str2);
        }
        if (supplier == null) {
            return null;
        }
        try {
            readAllBytes = ((InputStream) supplier.get()).readAllBytes();
            return readAllBytes;
        } catch (IOException e10) {
            throw ((RuntimeException) this.f54055a.apply(e10));
        }
    }

    public static String a(Map.Entry entry) {
        return ((C8623ng0) entry.getKey()).toString() + " reachable from " + ((String) entry.getValue());
    }

    public final void a(final String str, InputStream inputStream) {
        try {
            C9800uj0 a10 = C9800uj0.a(inputStream);
            a(a10, str, (String) null);
            E80.a(a10, this.f54056b).iterator().forEachRemaining(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10444yb0.this.a(str, (C8623ng0) obj);
                }
            });
        } catch (IOException e10) {
            this.f54055a.apply(e10);
        }
    }

    public final void a(String str, C8623ng0 c8623ng0) {
        a(c8623ng0.f51025f, str);
    }

    public final void a(String str, String str2) {
        if (this.f54068n.contains(str) || this.f54064j.a(str, new PathOrigin(Paths.get(str2, new String[0])))) {
            return;
        }
        this.f54068n.add(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C9800uj0 c9800uj0, final String str, String str2) {
        HashSet hashSet;
        C8799oj0 a10 = c9800uj0.a();
        String name = a10.getName();
        a(name, str);
        for (C8298lj0 c8298lj0 : a10.f51332e) {
            if (c8298lj0.getName().equals(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME) && name.equals("manifest")) {
                str2 = c8298lj0.a();
            }
            final String a11 = c8298lj0.a();
            a(a11, str);
            if (a11.startsWith(".")) {
                synchronized (this) {
                    try {
                        if (this.f54067m == null) {
                            this.f54067m = new HashSet();
                            Iterator it = this.f54062h.values().iterator();
                            while (it.hasNext()) {
                                Iterator it2 = ((C6795ci0) it.next()).f47139c.iterator();
                                while (it2.hasNext()) {
                                    this.f54067m.add(((C10629zh0) it2.next()).b());
                                }
                            }
                        }
                        hashSet = this.f54067m;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                hashSet.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C10444yb0.this.a(a11, str, (String) obj);
                    }
                });
            }
            if (str2 != null && f54052q.contains(a10.getName())) {
                if (c8298lj0.getName().equals("name")) {
                    a(a(str2, c8298lj0), str);
                }
                if (a10.getName().equals(F2.i.f6413l) && f54053r.contains(c8298lj0.getName())) {
                    a(a(str2, c8298lj0), str);
                }
            }
            if (c8298lj0.getName().equals("onClick")) {
                String str3 = c8298lj0.f50077b;
                String str4 = str3;
                if (str3 == 0) {
                    String c10 = ((AbstractC8373m8) str3).c();
                    c8298lj0.f50077b = c10;
                    str4 = c10;
                }
                if (str4.equals("http://schemas.android.com/apk/res/android")) {
                    this.f54065k.a(c8298lj0.a(), new PathOrigin(Paths.get(str, new String[0])));
                }
            }
        }
        Iterator it3 = a10.f51333f.iterator();
        while (it3.hasNext()) {
            a((C9800uj0) it3.next(), str, str2);
        }
    }

    public final void a(String str, String str2, String str3) {
        a(str3 + str, str2);
    }

    public static String a(String str, C8298lj0 c8298lj0) {
        return str + "." + c8298lj0.a();
    }

    public final Map a() {
        EnumC6459ah0 enumC6459ah0;
        if (this.f54066l == null) {
            this.f54066l = new HashMap();
            Iterator it = this.f54062h.values().iterator();
            while (it.hasNext()) {
                for (C10629zh0 c10629zh0 : ((C6795ci0) it.next()).f47139c) {
                    for (C6085Vi0 c6085Vi0 : c10629zh0.f54454d) {
                        for (C6024Ug0 c6024Ug0 : c6085Vi0.f45133d) {
                            for (C5676Og0 c5676Og0 : c6024Ug0.f44833g) {
                                if (c5676Og0.a()) {
                                    C7131ej0 c7131ej0 = c5676Og0.f42952c;
                                    if (c7131ej0 == null) {
                                        c7131ej0 = C7131ej0.f47760h;
                                    }
                                    if (c7131ej0.f47762b == 4) {
                                        C7626hh0 a10 = c7131ej0.a();
                                        if (a10.f48678b == 5) {
                                            C6626bh0 a11 = a10.a();
                                            int i10 = a11.f46830c;
                                            if (i10 == 0) {
                                                enumC6459ah0 = EnumC6459ah0.f46580c;
                                            } else if (i10 == 1) {
                                                enumC6459ah0 = EnumC6459ah0.f46581d;
                                            } else if (i10 != 2) {
                                                enumC6459ah0 = i10 != 3 ? null : EnumC6459ah0.f46583f;
                                            } else {
                                                enumC6459ah0 = EnumC6459ah0.f46582e;
                                            }
                                            if (enumC6459ah0 == null) {
                                                enumC6459ah0 = EnumC6459ah0.f46584g;
                                            }
                                            if (enumC6459ah0 == EnumC6459ah0.f46583f) {
                                                ((Set) this.f54066l.computeIfAbsent(Integer.valueOf(AbstractC8122kg0.a(c10629zh0, c6085Vi0, c6024Ug0)), new Function() {
                                                    @Override
                                                    public final Object apply(Object obj) {
                                                        return C10444yb0.a((Integer) obj);
                                                    }
                                                })).add(a11.a());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return this.f54066l;
    }

    public static Set a(Integer num) {
        return new HashSet();
    }
}
