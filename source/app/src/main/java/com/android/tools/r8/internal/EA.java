package com.android.tools.r8.internal;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.IA;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Consumer;
import yd.C16181m;

public class EA {

    public static final boolean f39774i = true;

    public final C4724u1 f39775a;

    public final GA f39776b;

    public final FA f39777c;

    public final C5094Ef0 f39778d;

    public final boolean f39779e;

    public final int f39780f;

    public Origin f39781g;

    public C7407gL f39782h;

    public EA(C4724u1 c4724u1, C5094Ef0 c5094Ef0, boolean z10, int i10) {
        this.f39775a = c4724u1;
        this.f39776b = new GA(c4724u1);
        this.f39777c = new FA(c4724u1);
        this.f39778d = c5094Ef0;
        this.f39780f = i10;
        this.f39779e = z10;
    }

    public static void a(InterfaceC10161ws0 interfaceC10161ws0) {
    }

    public final String b(InterfaceC11677v0 interfaceC11677v0) {
        Origin origin = interfaceC11677v0.getOrigin();
        this.f39781g = origin;
        if (!f39774i && origin == null) {
            throw new AssertionError();
        }
        try {
            String a10 = interfaceC11677v0.a();
            this.f39782h = C7741iL.a(a10).d();
            return a10;
        } catch (Exception e10) {
            C5094Ef0 c5094Ef0 = this.f39778d;
            c5094Ef0.a(null, new ExceptionDiagnostic(e10, this.f39781g));
            throw c5094Ef0.f39969c;
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.AbstractCollection, java.util.List] */
    public final SA a(Consumer consumer, String str) {
        RA ra2 = new RA();
        ra2.f43834d = str;
        int b10 = a(this.f39782h, "configuration_format_version").b();
        if (b10 != 101) {
            this.f39778d.warning(new StringDiagnostic("Human desugared library specification format version " + b10 + " mismatches the parser expected version (101). This is allowed and should happen only while extending the specifications.", this.f39781g));
        }
        ra2.f43833c = a(this.f39782h, "identifier").h();
        ra2.f43832b = a(this.f39782h, "synthesized_library_classes_package_prefix").h().replace('.', '/');
        ra2.f43831a = C2.a(a(this.f39782h, "required_compilation_api_level").b());
        if (this.f39782h.f48234b.containsKey("shrinker_config")) {
            C6574bL c10 = ((AbstractC6907dL) this.f39782h.f48234b.get("shrinker_config")).c();
            ArrayList arrayList = new ArrayList(c10.f46749b.size());
            ArrayList arrayList2 = c10.f46749b;
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                arrayList.add(((AbstractC6907dL) obj).h());
            }
            ra2.f43836f = arrayList;
        }
        if (this.f39782h.f48234b.containsKey("support_all_callbacks_from_library")) {
            ra2.f43835e = Boolean.valueOf(((AbstractC6907dL) this.f39782h.f48234b.get("support_all_callbacks_from_library")).a());
        }
        consumer.accept(ra2);
        boolean z10 = RA.f43830g;
        if (!z10 && ra2.f43832b == null) {
            throw new AssertionError();
        }
        if (z10 || ra2.f43835e != null) {
            return new SA(ra2.f43831a, ra2.f43832b, ra2.f43833c, ra2.f43834d, ra2.f43835e.booleanValue(), ra2.f43836f);
        }
        throw new AssertionError();
    }

    public DA a(InterfaceC11677v0 interfaceC11677v0) {
        return a(this.f39781g, b(interfaceC11677v0), this.f39782h, new Consumer() {
            @Override
            public final void accept(Object obj) {
                EA.a((InterfaceC10161ws0) obj);
            }
        });
    }

    public final DA a(Origin origin, String str, C7407gL c7407gL, Consumer consumer) {
        if (!C10142wm.a(c7407gL, this.f39778d, origin)) {
            this.f39778d.a("Attempt to parse a non desugared library human specification as a human specification.");
        }
        this.f39781g = origin;
        this.f39782h = c7407gL;
        SA a10 = a(consumer, str);
        IA.a a11 = IA.a(this.f39778d, this.f39781g);
        AbstractC6907dL a12 = a(this.f39782h, "common_flags");
        AbstractC6907dL a13 = a(this.f39782h, "library_flags");
        AbstractC6907dL a14 = a(this.f39782h, "program_flags");
        a(a12.c(), a11);
        a(this.f39779e ? a13.c() : a14.c(), a11);
        DA da2 = new DA(a10, a11.a(), this.f39779e);
        this.f39781g = null;
        return da2;
    }

    public final AbstractC6907dL a(C7407gL c7407gL, String str) {
        if (c7407gL.f48234b.containsKey(str)) {
            return (AbstractC6907dL) c7407gL.f48234b.get(str);
        }
        C5094Ef0 c5094Ef0 = this.f39778d;
        c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Expected required key '" + str + "'", this.f39781g));
        throw c5094Ef0.f39969c;
    }

    public final void a(C6574bL c6574bL, IA.a aVar) {
        ArrayList arrayList = c6574bL.f46749b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7407gL d10 = ((AbstractC6907dL) obj).d();
            if (this.f39780f <= a(d10, "api_level_below_or_equal").b()) {
                if (d10.f48234b.containsKey("api_level_greater_or_equal")) {
                    if (this.f39780f >= ((AbstractC6907dL) d10.f48234b.get("api_level_greater_or_equal")).b()) {
                        a(d10, aVar);
                    }
                } else {
                    a(d10, aVar);
                }
            }
        }
    }

    public final void a(C7407gL c7407gL, IA.a aVar) {
        ES es;
        if (c7407gL.f48234b.containsKey("rewrite_prefix")) {
            FS fs = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("rewrite_prefix")).d().f48234b.entrySet()).f38616b;
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
                        aVar.a((String) es2.f39869g, ((AbstractC6907dL) es2.f39871i).h());
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
        if (c7407gL.f48234b.containsKey("maintain_prefix")) {
            ArrayList arrayList = ((AbstractC6907dL) c7407gL.f48234b.get("maintain_prefix")).c().f46749b;
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                aVar.b(((AbstractC6907dL) obj).h());
            }
        }
        if (c7407gL.f48234b.containsKey("dont_rewrite_prefix")) {
            ArrayList arrayList2 = ((AbstractC6907dL) c7407gL.f48234b.get("dont_rewrite_prefix")).c().f46749b;
            int size2 = arrayList2.size();
            int i13 = 0;
            while (i13 < size2) {
                Object obj2 = arrayList2.get(i13);
                i13++;
                aVar.f41013d.add(((AbstractC6907dL) obj2).h());
            }
        }
        if (c7407gL.f48234b.containsKey("never_outline_api")) {
            ArrayList arrayList3 = ((AbstractC6907dL) c7407gL.f48234b.get("never_outline_api")).c().f46749b;
            int size3 = arrayList3.size();
            int i14 = 0;
            while (i14 < size3) {
                Object obj3 = arrayList3.get(i14);
                i14++;
                this.f39776b.b(((AbstractC6907dL) obj3).h());
                aVar.f41028s.add(this.f39776b.a());
            }
        }
        if (c7407gL.f48234b.containsKey("api_generic_types_conversion")) {
            FS fs2 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("api_generic_types_conversion")).d().f48234b.entrySet()).f38616b;
            ES es5 = fs2.f40207g.f39867e;
            int i15 = fs2.f40206f;
            while (true) {
                ES es6 = fs2.f40207g;
                if (es5 == es6) {
                    break;
                }
                if (es5 != es6) {
                    if (fs2.f40206f == i15) {
                        ES es7 = es5.f39867e;
                        C6574bL c10 = ((AbstractC6907dL) es5.f39871i).c();
                        for (int i16 = 0; i16 < c10.f46749b.size(); i16 += 2) {
                            this.f39776b.b((String) es5.f39869g);
                            com.android.tools.r8.graph.A2 a10 = this.f39776b.a();
                            int b10 = ((AbstractC6907dL) c10.f46749b.get(i16)).b();
                            this.f39776b.b(((AbstractC6907dL) c10.f46749b.get(i16 + 1)).h());
                            aVar.a(a10, b10, this.f39776b.a());
                        }
                        es5 = es7;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("rewrite_derived_prefix")) {
            FS fs3 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("rewrite_derived_prefix")).d().f48234b.entrySet()).f38616b;
            ES es8 = fs3.f40207g.f39867e;
            int i17 = fs3.f40206f;
            while (true) {
                ES es9 = fs3.f40207g;
                if (es8 == es9) {
                    break;
                }
                if (es8 != es9) {
                    if (fs3.f40206f == i17) {
                        es = es8.f39867e;
                        FS fs4 = ((AS) ((AbstractC6907dL) es8.f39871i).d().f48234b.entrySet()).f38616b;
                        ES es10 = fs4.f40207g.f39867e;
                        int i18 = fs4.f40206f;
                        while (true) {
                            ES es11 = fs4.f40207g;
                            if (es10 != es11) {
                                if (es10 != es11) {
                                    if (fs4.f40206f == i18) {
                                        ES es12 = es10.f39867e;
                                        aVar.a((String) es8.f39869g, (String) es10.f39869g, ((AbstractC6907dL) es10.f39871i).h());
                                        es10 = es12;
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
                es8 = es;
            }
        }
        if (c7407gL.f48234b.containsKey("retarget_static_field")) {
            FS fs5 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("retarget_static_field")).d().f48234b.entrySet()).f38616b;
            ES es13 = fs5.f40207g.f39867e;
            int i19 = fs5.f40206f;
            while (true) {
                ES es14 = fs5.f40207g;
                if (es13 == es14) {
                    break;
                }
                if (es13 != es14) {
                    if (fs5.f40206f == i19) {
                        ES es15 = es13.f39867e;
                        this.f39777c.b((String) es13.f39869g);
                        C4554l1 a11 = this.f39777c.a();
                        this.f39777c.b(((AbstractC6907dL) es13.f39871i).h());
                        aVar.a(a11, this.f39777c.a());
                        es13 = es15;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("retarget_method")) {
            FS fs6 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("retarget_method")).d().f48234b.entrySet()).f38616b;
            ES es16 = fs6.f40207g.f39867e;
            int i20 = fs6.f40206f;
            while (true) {
                ES es17 = fs6.f40207g;
                if (es16 == es17) {
                    break;
                }
                if (es16 != es17) {
                    if (fs6.f40206f == i20) {
                        ES es18 = es16.f39867e;
                        String str = (String) es16.f39869g;
                        String h10 = ((AbstractC6907dL) es16.f39871i).h();
                        if (h10.contains(C16181m.f130230g)) {
                            this.f39776b.b(str);
                            com.android.tools.r8.graph.A2 a12 = this.f39776b.a();
                            this.f39776b.b(h10);
                            aVar.a(aVar.f41021l, a12, this.f39776b.a(), "retarget_method");
                        } else {
                            this.f39776b.b(str);
                            aVar.a(aVar.f41019j, this.f39776b.a(), this.f39775a.d(C4932Bl.H(h10)), "retarget_method");
                        }
                        es16 = es18;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("retarget_method_with_emulated_dispatch")) {
            FS fs7 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("retarget_method_with_emulated_dispatch")).d().f48234b.entrySet()).f38616b;
            ES es19 = fs7.f40207g.f39867e;
            int i21 = fs7.f40206f;
            while (true) {
                ES es20 = fs7.f40207g;
                if (es19 == es20) {
                    break;
                }
                if (es19 != es20) {
                    if (fs7.f40206f == i21) {
                        ES es21 = es19.f39867e;
                        String str2 = (String) es19.f39869g;
                        String h11 = ((AbstractC6907dL) es19.f39871i).h();
                        if (h11.contains(C16181m.f130230g)) {
                            this.f39776b.b(str2);
                            com.android.tools.r8.graph.A2 a13 = this.f39776b.a();
                            this.f39776b.b(h11);
                            aVar.a(aVar.f41022m, a13, this.f39776b.a(), "retarget_method_with_emulated_dispatch");
                        } else {
                            this.f39776b.b(str2);
                            aVar.a(aVar.f41020k, this.f39776b.a(), this.f39775a.d(C4932Bl.H(h11)), "retarget_method_with_emulated_dispatch");
                        }
                        es19 = es21;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("covariant_retarget_method")) {
            FS fs8 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("covariant_retarget_method")).d().f48234b.entrySet()).f38616b;
            ES es22 = fs8.f40207g.f39867e;
            int i22 = fs8.f40206f;
            while (true) {
                ES es23 = fs8.f40207g;
                if (es22 == es23) {
                    break;
                }
                if (es22 != es23) {
                    if (fs8.f40206f == i22) {
                        ES es24 = es22.f39867e;
                        this.f39776b.b((String) es22.f39869g);
                        aVar.a(aVar.f41018i, this.f39776b.a(), this.f39775a.d(C4932Bl.H(((AbstractC6907dL) es22.f39871i).h())), "covariant_retarget_method");
                        es22 = es24;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("backport")) {
            FS fs9 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("backport")).d().f48234b.entrySet()).f38616b;
            ES es25 = fs9.f40207g.f39867e;
            int i23 = fs9.f40206f;
            while (true) {
                ES es26 = fs9.f40207g;
                if (es25 == es26) {
                    break;
                }
                if (es25 != es26) {
                    if (fs9.f40206f == i23) {
                        ES es27 = es25.f39867e;
                        aVar.a(aVar.f41024o, this.f39775a.d(C4932Bl.H((String) es25.f39869g)), this.f39775a.d(C4932Bl.H(((AbstractC6907dL) es25.f39871i).h())), "backport");
                        es25 = es27;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("emulate_interface")) {
            FS fs10 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("emulate_interface")).d().f48234b.entrySet()).f38616b;
            ES es28 = fs10.f40207g.f39867e;
            int i24 = fs10.f40206f;
            while (true) {
                ES es29 = fs10.f40207g;
                if (es28 == es29) {
                    break;
                }
                if (es28 != es29) {
                    if (fs10.f40206f == i24) {
                        ES es30 = es28.f39867e;
                        AbstractC6907dL abstractC6907dL = (AbstractC6907dL) es28.f39871i;
                        abstractC6907dL.getClass();
                        if (abstractC6907dL instanceof C7906jL) {
                            aVar.a(aVar.f41016g, this.f39775a.d(C4932Bl.H((String) es28.f39869g)), new KA(this.f39775a.d(C4932Bl.H(((AbstractC6907dL) es28.f39871i).h()))), "emulate_interface");
                        } else {
                            com.android.tools.r8.graph.M2 d10 = this.f39775a.d(C4932Bl.H((String) es28.f39869g));
                            C7407gL d11 = ((AbstractC6907dL) es28.f39871i).d();
                            com.android.tools.r8.graph.M2 d12 = this.f39775a.d(C4932Bl.H(a(d11, "rewrittenType").h()));
                            Set c11 = AbstractC5513Ll0.c();
                            if (d11.f48234b.containsKey("emulatedMethods")) {
                                ArrayList arrayList4 = ((AbstractC6907dL) d11.f48234b.get("emulatedMethods")).c().f46749b;
                                int size4 = arrayList4.size();
                                int i25 = 0;
                                while (i25 < size4) {
                                    Object obj4 = arrayList4.get(i25);
                                    i25++;
                                    this.f39776b.b(((AbstractC6907dL) obj4).h());
                                    c11.add(this.f39776b.a());
                                }
                            }
                            aVar.a(d10, new JA(d12, c11));
                        }
                        es28 = es30;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("custom_conversion")) {
            FS fs11 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("custom_conversion")).d().f48234b.entrySet()).f38616b;
            ES es31 = fs11.f40207g.f39867e;
            int i26 = fs11.f40206f;
            while (true) {
                ES es32 = fs11.f40207g;
                if (es31 == es32) {
                    break;
                }
                if (es31 != es32) {
                    if (fs11.f40206f == i26) {
                        ES es33 = es31.f39867e;
                        aVar.a(aVar.f41025p, this.f39775a.d(C4932Bl.H((String) es31.f39869g)), this.f39775a.d(C4932Bl.H(((AbstractC6907dL) es31.f39871i).h())), "custom_conversion");
                        es31 = es33;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("wrapper_conversion")) {
            ArrayList arrayList5 = ((AbstractC6907dL) c7407gL.f48234b.get("wrapper_conversion")).c().f46749b;
            int size5 = arrayList5.size();
            int i27 = 0;
            while (i27 < size5) {
                Object obj5 = arrayList5.get(i27);
                i27++;
                com.android.tools.r8.graph.M2 d13 = this.f39775a.d(C4932Bl.H(((AbstractC6907dL) obj5).h()));
                aVar.getClass();
                aVar.f41027r.put(d13, Collections.EMPTY_SET);
            }
        }
        if (c7407gL.f48234b.containsKey("wrapper_conversion_excluding")) {
            FS fs12 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("wrapper_conversion_excluding")).d().f48234b.entrySet()).f38616b;
            ES es34 = fs12.f40207g.f39867e;
            int i28 = fs12.f40206f;
            while (true) {
                ES es35 = fs12.f40207g;
                if (es34 == es35) {
                    break;
                }
                if (es34 != es35) {
                    if (fs12.f40206f == i28) {
                        ES es36 = es34.f39867e;
                        com.android.tools.r8.graph.M2 d14 = this.f39775a.d(C4932Bl.H((String) es34.f39869g));
                        C6574bL c12 = ((AbstractC6907dL) es34.f39871i).c();
                        Set c13 = AbstractC5513Ll0.c();
                        ArrayList arrayList6 = c12.f46749b;
                        int size6 = arrayList6.size();
                        int i29 = 0;
                        while (i29 < size6) {
                            Object obj6 = arrayList6.get(i29);
                            i29++;
                            this.f39776b.b(((AbstractC6907dL) obj6).h());
                            c13.add(this.f39776b.a());
                        }
                        aVar.f41027r.put(d14, c13);
                        es34 = es36;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("dont_retarget")) {
            ArrayList arrayList7 = ((AbstractC6907dL) c7407gL.f48234b.get("dont_retarget")).c().f46749b;
            int size7 = arrayList7.size();
            int i30 = 0;
            while (i30 < size7) {
                Object obj7 = arrayList7.get(i30);
                i30++;
                aVar.f41026q.add(this.f39775a.d(C4932Bl.H(((AbstractC6907dL) obj7).h())));
            }
        }
        if (c7407gL.f48234b.containsKey("amend_library_method")) {
            ArrayList arrayList8 = ((AbstractC6907dL) c7407gL.f48234b.get("amend_library_method")).c().f46749b;
            int size8 = arrayList8.size();
            int i31 = 0;
            while (i31 < size8) {
                Object obj8 = arrayList8.get(i31);
                i31++;
                this.f39776b.b(((AbstractC6907dL) obj8).h());
                com.android.tools.r8.graph.A2 a14 = this.f39776b.a();
                GA ga2 = this.f39776b;
                if (!GA.f40411j && !ga2.b()) {
                    throw new AssertionError();
                }
                aVar.f41029t.put(a14, ga2.f40418i);
            }
        }
        if (c7407gL.f48234b.containsKey("amend_library_field")) {
            ArrayList arrayList9 = ((AbstractC6907dL) c7407gL.f48234b.get("amend_library_field")).c().f46749b;
            int size9 = arrayList9.size();
            while (i11 < size9) {
                Object obj9 = arrayList9.get(i11);
                i11++;
                this.f39777c.b(((AbstractC6907dL) obj9).h());
                C4554l1 a15 = this.f39777c.a();
                FA fa2 = this.f39777c;
                if (!FA.f40127h && !fa2.b()) {
                    throw new AssertionError();
                }
                aVar.a(a15, fa2.f40132g);
            }
        }
    }
}
