package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.errors.UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Function;

public class C10428yU {

    public static final boolean f54021j = true;

    public final C4724u1 f54022a;

    public final AU f54023b;

    public final C10595zU f54024c;

    public final C5094Ef0 f54025d;

    public final boolean f54026e;

    public final int f54027f;

    public Origin f54028g;

    public C7407gL f54029h;

    public VB f54030i;

    public C10428yU(C4724u1 c4724u1, C5094Ef0 c5094Ef0, boolean z10, int i10) {
        this.f54022a = c4724u1;
        this.f54023b = new AU(c4724u1, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10428yU.this.a((String) obj);
            }
        });
        this.f54024c = new C10595zU(c4724u1, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10428yU.this.a((String) obj);
            }
        });
        this.f54025d = c5094Ef0;
        this.f54027f = i10;
        this.f54026e = z10;
    }

    public final C10261xU a(Origin origin, String str, C7407gL c7407gL) {
        this.f54028g = origin;
        this.f54029h = c7407gL;
        int b10 = a(c7407gL, "configuration_format_version").b();
        if (b10 >= 200 && b10 <= 200) {
            String h10 = a(this.f54029h, "identifier").h();
            String h11 = a(this.f54029h, "synthesized_library_classes_package_prefix").h();
            int b11 = a(this.f54029h, "required_compilation_api_level").b();
            String h12 = a(this.f54029h, "shrinker_config").h();
            boolean a10 = ((AbstractC6907dL) this.f54029h.f48234b.get("support_all_callbacks_from_library")).a();
            C2 a11 = C2.a(b11);
            int i10 = AbstractC7552hC.f48487c;
            EU eu = new EU(a11, h11, h10, str, a10, new C5920Sm0(h12));
            a();
            boolean z10 = CU.f39231s;
            BU bu = new BU();
            AbstractC6907dL a12 = a(this.f54029h, "common_flags");
            AbstractC6907dL a13 = a(this.f54029h, "library_flags");
            AbstractC6907dL a14 = a(this.f54029h, "program_flags");
            a(a12.c(), bu);
            a(this.f54026e ? a13.c() : a14.c(), bu);
            C10261xU c10261xU = new C10261xU(this.f54026e, eu, bu.a());
            this.f54028g = null;
            return c10261xU;
        }
        C5094Ef0 c5094Ef0 = this.f54025d;
        c5094Ef0.a(null, new UnsupportedDesugaredLibraryConfigurationVersionDiagnostic(origin));
        throw c5094Ef0.f39969c;
    }

    public final C6830cu b(C6574bL c6574bL) {
        a(c6574bL, 4, "emulated dispatch descriptor");
        C6257Yj a10 = a(((AbstractC6907dL) c6574bL.f46749b.get(0)).c());
        C6257Yj a11 = a(((AbstractC6907dL) c6574bL.f46749b.get(1)).c());
        C6257Yj a12 = a(((AbstractC6907dL) c6574bL.f46749b.get(2)).c());
        C7407gL d10 = ((AbstractC6907dL) c6574bL.f46749b.get(3)).d();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FS fs = ((AS) d10.f48234b.entrySet()).f38616b;
        ES es = fs.f40207g.f39867e;
        int i10 = fs.f40206f;
        while (true) {
            ES es2 = fs.f40207g;
            if (es == es2) {
                return new C6830cu(a10, a11, a12, linkedHashMap);
            }
            if (es == es2) {
                throw new NoSuchElementException();
            }
            if (fs.f40206f != i10) {
                throw new ConcurrentModificationException();
            }
            ES es3 = es.f39867e;
            linkedHashMap.put(a((String) es.f39869g), a(((AbstractC6907dL) es.f39871i).c()));
            es = es3;
        }
    }

    public final void a() {
        C7407gL d10 = a(this.f54029h, "package_map").d();
        final UB ub2 = new UB();
        d10.f48234b.entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                UB.this.a(((AbstractC6907dL) r2.getValue()).h(), (String) ((Map.Entry) obj).getKey());
            }
        });
        this.f54030i = ub2.b();
    }

    public C10261xU a(InterfaceC11677v0 interfaceC11677v0) {
        Origin origin = interfaceC11677v0.getOrigin();
        this.f54028g = origin;
        if (!f54021j && origin == null) {
            throw new AssertionError();
        }
        try {
            String a10 = interfaceC11677v0.a();
            C7407gL d10 = C7741iL.a(a10).d();
            this.f54029h = d10;
            return a(this.f54028g, a10, d10);
        } catch (Exception e10) {
            C5094Ef0 c5094Ef0 = this.f54025d;
            c5094Ef0.a(null, new ExceptionDiagnostic(e10, this.f54028g));
            throw c5094Ef0.f39969c;
        }
    }

    public final AbstractC6907dL a(C7407gL c7407gL, String str) {
        if (c7407gL.f48234b.containsKey(str)) {
            return (AbstractC6907dL) c7407gL.f48234b.get(str);
        }
        C5094Ef0 c5094Ef0 = this.f54025d;
        c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Expected required key '" + str + "'", this.f54028g));
        throw c5094Ef0.f39969c;
    }

    public final void a(C6574bL c6574bL, int i10, String str) {
        if (c6574bL.f46749b.size() == i10) {
            return;
        }
        throw this.f54025d.b("Invalid desugared library specification: " + str + "(Json array of size " + c6574bL.f46749b.size() + ")");
    }

    public final void a(C6574bL c6574bL, BU bu) {
        ArrayList arrayList = c6574bL.f46749b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7407gL d10 = ((AbstractC6907dL) obj).d();
            if (this.f54027f <= a(d10, "api_level_below_or_equal").b()) {
                if (d10.f48234b.containsKey("api_level_greater_or_equal")) {
                    if (this.f54027f >= ((AbstractC6907dL) d10.f48234b.get("api_level_greater_or_equal")).b()) {
                        a(d10, bu);
                    }
                } else {
                    a(d10, bu);
                }
            }
        }
    }

    public final void a(C7407gL c7407gL, BU bu) {
        ES es;
        com.android.tools.r8.graph.M2 a10;
        com.android.tools.r8.graph.M2 a11;
        IdentityHashMap identityHashMap;
        com.android.tools.r8.graph.A2 a12;
        if (c7407gL.f48234b.containsKey("rewrite_type")) {
            FS fs = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("rewrite_type")).d().f48234b.entrySet()).f38616b;
            ES es2 = fs.f40207g.f39867e;
            int i10 = fs.f40206f;
            while (true) {
                ES es3 = fs.f40207g;
                if (es2 == es3) {
                    break;
                }
                if (es2 != es3) {
                    if (fs.f40206f == i10) {
                        ES es4 = es2.f39867e;
                        bu.b(a((String) es2.f39869g), a(((AbstractC6907dL) es2.f39871i).h()));
                        es2 = es4;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        int i11 = 0;
        if (c7407gL.f48234b.containsKey("maintain_type")) {
            ArrayList arrayList = ((AbstractC6907dL) c7407gL.f48234b.get("maintain_type")).c().f46749b;
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                com.android.tools.r8.graph.M2 a13 = a(((AbstractC6907dL) obj).h());
                if (!BU.f38908s && a13 == null) {
                    throw new AssertionError();
                }
                bu.f38910b.a(a13);
            }
        }
        if (c7407gL.f48234b.containsKey("rewrite_derived_type_only")) {
            FS fs2 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("rewrite_derived_type_only")).d().f48234b.entrySet()).f38616b;
            ES es5 = fs2.f40207g.f39867e;
            int i13 = fs2.f40206f;
            while (true) {
                ES es6 = fs2.f40207g;
                if (es5 == es6) {
                    break;
                }
                if (es5 != es6) {
                    if (fs2.f40206f == i13) {
                        ES es7 = es5.f39867e;
                        bu.f38911c.put(a((String) es5.f39869g), a(((AbstractC6907dL) es5.f39871i).h()));
                        es5 = es7;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("static_field_retarget")) {
            FS fs3 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("static_field_retarget")).d().f48234b.entrySet()).f38616b;
            ES es8 = fs3.f40207g.f39867e;
            int i14 = fs3.f40206f;
            while (true) {
                ES es9 = fs3.f40207g;
                if (es8 == es9) {
                    break;
                }
                if (es8 != es9) {
                    if (fs3.f40206f == i14) {
                        ES es10 = es8.f39867e;
                        this.f54024c.b((String) es8.f39869g);
                        C4554l1 a14 = this.f54024c.a();
                        this.f54024c.b(((AbstractC6907dL) es8.f39871i).h());
                        bu.f38912d.a(a14, this.f54024c.a());
                        es8 = es10;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("covariant_retarget")) {
            FS fs4 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("covariant_retarget")).d().f48234b.entrySet()).f38616b;
            ES es11 = fs4.f40207g.f39867e;
            int i15 = fs4.f40206f;
            while (true) {
                ES es12 = fs4.f40207g;
                if (es11 == es12) {
                    break;
                }
                if (es11 != es12) {
                    if (fs4.f40206f == i15) {
                        ES es13 = es11.f39867e;
                        this.f54023b.b((String) es11.f39869g);
                        com.android.tools.r8.graph.A2 a15 = this.f54023b.a();
                        this.f54023b.b(((AbstractC6907dL) es11.f39871i).h());
                        bu.f38913e.a(a15, this.f54023b.a());
                        es11 = es13;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("static_retarget")) {
            FS fs5 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("static_retarget")).d().f48234b.entrySet()).f38616b;
            ES es14 = fs5.f40207g.f39867e;
            int i16 = fs5.f40206f;
            while (true) {
                ES es15 = fs5.f40207g;
                if (es14 == es15) {
                    break;
                }
                if (es14 != es15) {
                    if (fs5.f40206f == i16) {
                        ES es16 = es14.f39867e;
                        this.f54023b.b((String) es14.f39869g);
                        com.android.tools.r8.graph.A2 a16 = this.f54023b.a();
                        this.f54023b.b(((AbstractC6907dL) es14.f39871i).h());
                        bu.f38914f.a(a16, this.f54023b.a());
                        es14 = es16;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("non_emulated_virtual_retarget")) {
            FS fs6 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("non_emulated_virtual_retarget")).d().f48234b.entrySet()).f38616b;
            ES es17 = fs6.f40207g.f39867e;
            int i17 = fs6.f40206f;
            while (true) {
                ES es18 = fs6.f40207g;
                if (es17 == es18) {
                    break;
                }
                if (es17 != es18) {
                    if (fs6.f40206f == i17) {
                        ES es19 = es17.f39867e;
                        this.f54023b.b((String) es17.f39869g);
                        com.android.tools.r8.graph.A2 a17 = this.f54023b.a();
                        this.f54023b.b(((AbstractC6907dL) es17.f39871i).h());
                        bu.f38915g.a(a17, this.f54023b.a());
                        es17 = es19;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("emulated_virtual_retarget")) {
            FS fs7 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("emulated_virtual_retarget")).d().f48234b.entrySet()).f38616b;
            ES es20 = fs7.f40207g.f39867e;
            int i18 = fs7.f40206f;
            while (true) {
                ES es21 = fs7.f40207g;
                if (es20 == es21) {
                    break;
                }
                if (es20 != es21) {
                    if (fs7.f40206f == i18) {
                        ES es22 = es20.f39867e;
                        this.f54023b.b((String) es20.f39869g);
                        bu.f38916h.a(this.f54023b.a(), b(((AbstractC6907dL) es20.f39871i).c()));
                        es20 = es22;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("emulated_virtual_retarget_through_emulated_interface")) {
            FS fs8 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("emulated_virtual_retarget_through_emulated_interface")).d().f48234b.entrySet()).f38616b;
            ES es23 = fs8.f40207g.f39867e;
            int i19 = fs8.f40206f;
            while (true) {
                ES es24 = fs8.f40207g;
                if (es23 == es24) {
                    break;
                }
                if (es23 != es24) {
                    if (fs8.f40206f == i19) {
                        ES es25 = es23.f39867e;
                        this.f54023b.b((String) es23.f39869g);
                        com.android.tools.r8.graph.A2 a18 = this.f54023b.a();
                        this.f54023b.b(((AbstractC6907dL) es23.f39871i).h());
                        bu.f38917i.a(a18, this.f54023b.a());
                        es23 = es25;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("api_generic_types_conversion")) {
            FS fs9 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("api_generic_types_conversion")).d().f48234b.entrySet()).f38616b;
            ES es26 = fs9.f40207g.f39867e;
            int i20 = fs9.f40206f;
            while (true) {
                ES es27 = fs9.f40207g;
                if (es26 == es27) {
                    break;
                }
                if (es26 != es27) {
                    if (fs9.f40206f == i20) {
                        ES es28 = es26.f39867e;
                        this.f54023b.b((String) es26.f39869g);
                        com.android.tools.r8.graph.A2 a19 = this.f54023b.a();
                        C6574bL c10 = ((AbstractC6907dL) es26.f39871i).c();
                        com.android.tools.r8.graph.A2[] a2Arr = new com.android.tools.r8.graph.A2[c10.f46749b.size()];
                        for (int i21 = 0; i21 < c10.f46749b.size(); i21++) {
                            String h10 = ((AbstractC6907dL) c10.f46749b.get(i21)).h();
                            if (h10.isEmpty()) {
                                a12 = null;
                            } else {
                                this.f54023b.b(h10);
                                a12 = this.f54023b.a();
                            }
                            a2Arr[i21] = a12;
                        }
                        bu.f38918j.a(a19, a2Arr);
                        es26 = es28;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        int i22 = 2;
        int i23 = 1;
        if (c7407gL.f48234b.containsKey("emulated_interface")) {
            FS fs10 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("emulated_interface")).d().f48234b.entrySet()).f38616b;
            ES es29 = fs10.f40207g.f39867e;
            int i24 = fs10.f40206f;
            while (true) {
                ES es30 = fs10.f40207g;
                if (es29 == es30) {
                    break;
                }
                if (es29 != es30) {
                    if (fs10.f40206f == i24) {
                        es = es29.f39867e;
                        a10 = a((String) es29.f39869g);
                        C6574bL c11 = ((AbstractC6907dL) es29.f39871i).c();
                        a(c11, i22, "emulated interface descriptor");
                        a11 = a(((AbstractC6907dL) c11.f46749b.get(0)).h());
                        C7407gL d10 = ((AbstractC6907dL) c11.f46749b.get(i23)).d();
                        identityHashMap = new IdentityHashMap();
                        FS fs11 = ((AS) d10.f48234b.entrySet()).f38616b;
                        ES es31 = fs11.f40207g.f39867e;
                        int i25 = fs11.f40206f;
                        while (true) {
                            ES es32 = fs11.f40207g;
                            if (es31 != es32) {
                                if (es31 != es32) {
                                    if (fs11.f40206f == i25) {
                                        ES es33 = es31.f39867e;
                                        this.f54023b.b((String) es31.f39869g);
                                        identityHashMap.put(this.f54023b.a(), b(((AbstractC6907dL) es31.f39871i).c()));
                                        es31 = es33;
                                    } else {
                                        throw new ConcurrentModificationException();
                                    }
                                } else {
                                    throw new NoSuchElementException();
                                }
                            }
                        }
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
                bu.f38919k.a(a10, new C7163eu(a11, identityHashMap));
                es29 = es;
                i22 = 2;
                i23 = 1;
            }
        }
        if (c7407gL.f48234b.containsKey("wrapper")) {
            FS fs12 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("wrapper")).d().f48234b.entrySet()).f38616b;
            ES es34 = fs12.f40207g.f39867e;
            int i26 = fs12.f40206f;
            while (true) {
                ES es35 = fs12.f40207g;
                if (es34 == es35) {
                    break;
                }
                if (es34 != es35) {
                    if (fs12.f40206f == i26) {
                        ES es36 = es34.f39867e;
                        com.android.tools.r8.graph.M2 a20 = a((String) es34.f39869g);
                        C6574bL c12 = ((AbstractC6907dL) es34.f39871i).c();
                        C6574bL c13 = ((AbstractC6907dL) c12.f46749b.get(0)).c();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = c13.f46749b;
                        int size2 = arrayList3.size();
                        int i27 = 0;
                        while (i27 < size2) {
                            Object obj2 = arrayList3.get(i27);
                            i27++;
                            this.f54023b.b(((AbstractC6907dL) obj2).h());
                            arrayList2.add(this.f54023b.a());
                        }
                        boolean a21 = ((AbstractC6907dL) c12.f46749b.get(1)).a();
                        C6574bL c14 = ((AbstractC6907dL) c12.f46749b.get(2)).c();
                        ArrayList arrayList4 = new ArrayList();
                        ArrayList arrayList5 = c14.f46749b;
                        int size3 = arrayList5.size();
                        int i28 = 0;
                        while (i28 < size3) {
                            Object obj3 = arrayList5.get(i28);
                            i28++;
                            arrayList4.add(a(((AbstractC6907dL) obj3).h()));
                        }
                        bu.f38920l.put(a20, new C6510ay0(arrayList2, arrayList4, a21));
                        es34 = es36;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("legacy_backport")) {
            FS fs13 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("legacy_backport")).d().f48234b.entrySet()).f38616b;
            ES es37 = fs13.f40207g.f39867e;
            int i29 = fs13.f40206f;
            while (true) {
                ES es38 = fs13.f40207g;
                if (es37 == es38) {
                    break;
                }
                if (es37 != es38) {
                    if (fs13.f40206f == i29) {
                        ES es39 = es37.f39867e;
                        bu.f38921m.a(a((String) es37.f39869g), a(((AbstractC6907dL) es37.f39871i).h()));
                        es37 = es39;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("dont_retarget")) {
            ArrayList arrayList6 = ((AbstractC6907dL) c7407gL.f48234b.get("dont_retarget")).c().f46749b;
            int size4 = arrayList6.size();
            int i30 = 0;
            while (i30 < size4) {
                Object obj4 = arrayList6.get(i30);
                i30++;
                bu.f38922n.a(a(((AbstractC6907dL) obj4).h()));
            }
        }
        if (c7407gL.f48234b.containsKey("custom_conversion")) {
            FS fs14 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("custom_conversion")).d().f48234b.entrySet()).f38616b;
            ES es40 = fs14.f40207g.f39867e;
            int i31 = fs14.f40206f;
            while (true) {
                ES es41 = fs14.f40207g;
                if (es40 == es41) {
                    break;
                }
                if (es40 != es41) {
                    if (fs14.f40206f == i31) {
                        ES es42 = es40.f39867e;
                        com.android.tools.r8.graph.M2 a22 = a((String) es40.f39869g);
                        C6574bL c15 = ((AbstractC6907dL) es40.f39871i).c();
                        this.f54023b.b(((AbstractC6907dL) c15.f46749b.get(0)).h());
                        com.android.tools.r8.graph.A2 a23 = this.f54023b.a();
                        this.f54023b.b(((AbstractC6907dL) c15.f46749b.get(1)).h());
                        bu.f38923o.a(a22, new C9796ui(a23, this.f54023b.a()));
                        es40 = es42;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("amend_library_method")) {
            ArrayList arrayList7 = ((AbstractC6907dL) c7407gL.f48234b.get("amend_library_method")).c().f46749b;
            int size5 = arrayList7.size();
            int i32 = 0;
            while (i32 < size5) {
                Object obj5 = arrayList7.get(i32);
                i32++;
                this.f54023b.b(((AbstractC6907dL) obj5).h());
                com.android.tools.r8.graph.A2 a24 = this.f54023b.a();
                AU au = this.f54023b;
                if (!GA.f40411j && !au.b()) {
                    throw new AssertionError();
                }
                bu.f38925q.a(a24, au.f40418i);
            }
        }
        if (c7407gL.f48234b.containsKey("amend_library_field")) {
            ArrayList arrayList8 = ((AbstractC6907dL) c7407gL.f48234b.get("amend_library_field")).c().f46749b;
            int size6 = arrayList8.size();
            while (i11 < size6) {
                Object obj6 = arrayList8.get(i11);
                i11++;
                this.f54024c.b(((AbstractC6907dL) obj6).h());
                C4554l1 a25 = this.f54024c.a();
                C10595zU c10595zU = this.f54024c;
                if (!FA.f40127h && !c10595zU.b()) {
                    throw new AssertionError();
                }
                bu.f38926r.a(a25, c10595zU.f40132g);
            }
        }
    }

    public final C6257Yj a(C6574bL c6574bL) {
        a(c6574bL, 2, "derived method");
        int i10 = 0;
        this.f54023b.b(((AbstractC6907dL) c6574bL.f46749b.get(0)).h());
        com.android.tools.r8.graph.A2 a10 = this.f54023b.a();
        int b10 = ((AbstractC6907dL) c6574bL.f46749b.get(1)).b();
        if (b10 == -1) {
            return new C6257Yj(a10);
        }
        int[] c10 = AbstractC4291c.c(4);
        int length = c10.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                break;
            }
            int i12 = c10[i11];
            if (DU.a(i12) == b10) {
                i10 = i12;
                break;
            }
            i11++;
        }
        return new C6257Yj(i10, a10);
    }

    public final com.android.tools.r8.graph.M2 a(String str) {
        if (str.charAt(1) != '$') {
            return this.f54022a.d(C4932Bl.H(str));
        }
        String substring = str.substring(2);
        String str2 = (String) this.f54030i.get(str.substring(0, 2));
        if (str2 != null) {
            return this.f54022a.d(C4932Bl.H(str2 + "." + substring));
        }
        throw this.f54025d.b("Invalid desugared library specification: Missing package mapping for " + str.substring(0, 2));
    }
}
