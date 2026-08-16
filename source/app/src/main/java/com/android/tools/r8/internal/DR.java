package com.android.tools.r8.internal;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.errors.UnsupportedDesugaredLibraryConfigurationVersionDiagnostic;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.IR;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

public class DR {

    public static final C8304ll0 f39516g = C8304ll0.a(1, 0, 9);

    public static final boolean f39517h = true;

    public final C4724u1 f39518a;

    public final C5094Ef0 f39519b;

    public final boolean f39520c;

    public final int f39521d;

    public Origin f39522e;

    public C7407gL f39523f;

    public DR(C4724u1 c4724u1, C5094Ef0 c5094Ef0, boolean z10, int i10) {
        this.f39518a = c4724u1;
        this.f39519b = c5094Ef0;
        this.f39521d = i10;
        this.f39520c = z10;
    }

    public static void a(InterfaceC10161ws0 interfaceC10161ws0) {
    }

    public final String b(InterfaceC11677v0 interfaceC11677v0) {
        Origin origin = interfaceC11677v0.getOrigin();
        this.f39522e = origin;
        if (!f39517h && origin == null) {
            throw new AssertionError();
        }
        try {
            String a10 = interfaceC11677v0.a();
            this.f39523f = C7741iL.a(a10).d();
            return a10;
        } catch (Exception e10) {
            C5094Ef0 c5094Ef0 = this.f39519b;
            c5094Ef0.a(null, new ExceptionDiagnostic(e10, this.f39522e));
            throw c5094Ef0.f39969c;
        }
    }

    public final MR a(Consumer consumer, String str) {
        int i10 = 0;
        KR kr = new KR();
        kr.f41672d = str;
        if (a(this.f39523f, "configuration_format_version").b() <= 5) {
            String h10 = a(this.f39523f, "version").h();
            C8304ll0 a10 = C8304ll0.a(h10);
            C8304ll0 c8304ll0 = f39516g;
            if (a10.a(c8304ll0)) {
                kr.f41671c = String.join(b3.s.f32937c, a(this.f39523f, "group_id").h(), a(this.f39523f, "artifact_id").h(), h10);
                kr.f41670b = a(this.f39523f, "synthesized_library_classes_package_prefix").h().replace('.', '/');
                kr.f41669a = C2.a(a(this.f39523f, "required_compilation_api_level").b());
                if (this.f39523f.f48234b.containsKey("shrinker_config")) {
                    C6574bL c10 = ((AbstractC6907dL) this.f39523f.f48234b.get("shrinker_config")).c();
                    ArrayList arrayList = new ArrayList(c10.f46749b.size());
                    ArrayList arrayList2 = c10.f46749b;
                    int size = arrayList2.size();
                    while (i10 < size) {
                        Object obj = arrayList2.get(i10);
                        i10++;
                        arrayList.add(((AbstractC6907dL) obj).h());
                    }
                    kr.f41674f = arrayList;
                }
                if (this.f39523f.f48234b.containsKey("support_all_callbacks_from_library")) {
                    kr.f41673e = ((AbstractC6907dL) this.f39523f.f48234b.get("support_all_callbacks_from_library")).a();
                }
                consumer.accept(kr);
                return new MR(kr.f41669a, kr.f41670b, kr.f41671c, kr.f41672d, kr.f41673e, kr.f41674f);
            }
            C5094Ef0 c5094Ef0 = this.f39519b;
            c5094Ef0.a(null, new StringDiagnostic("Unsupported desugared library version: " + h10 + ", please upgrade the desugared library to at least version " + ((Object) c8304ll0) + ".", this.f39522e));
            throw c5094Ef0.f39969c;
        }
        C5094Ef0 c5094Ef02 = this.f39519b;
        c5094Ef02.a(null, new UnsupportedDesugaredLibraryConfigurationVersionDiagnostic(this.f39522e));
        throw c5094Ef02.f39969c;
    }

    public CR a(InterfaceC11677v0 interfaceC11677v0) {
        return a(this.f39522e, b(interfaceC11677v0), this.f39523f, new Consumer() {
            @Override
            public final void accept(Object obj) {
                DR.a((InterfaceC10161ws0) obj);
            }
        });
    }

    public final CR a(Origin origin, String str, C7407gL c7407gL, Consumer consumer) {
        if (C10142wm.a(c7407gL, this.f39519b, origin)) {
            this.f39519b.a("Attempt to parse a desugared library human specification as a legacy specification.");
        }
        this.f39522e = origin;
        this.f39523f = c7407gL;
        MR a10 = a(consumer, str);
        IR.a a11 = IR.a(this.f39518a, this.f39519b, this.f39522e);
        AbstractC6907dL a12 = a(this.f39523f, "common_flags");
        AbstractC6907dL a13 = a(this.f39523f, "library_flags");
        AbstractC6907dL a14 = a(this.f39523f, "program_flags");
        ArrayList arrayList = a12.c().f46749b;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C7407gL d10 = ((AbstractC6907dL) obj).d();
            if (this.f39521d <= a(d10, "api_level_below_or_equal").b()) {
                a(d10, a11);
            }
        }
        ArrayList arrayList2 = (this.f39520c ? a13.c() : a14.c()).f46749b;
        int size2 = arrayList2.size();
        while (i10 < size2) {
            Object obj2 = arrayList2.get(i10);
            i10++;
            C7407gL d11 = ((AbstractC6907dL) obj2).d();
            if (this.f39521d <= a(d11, "api_level_below_or_equal").b()) {
                a(d11, a11);
            }
        }
        CR cr = new CR(a10, a11.a(), this.f39520c);
        this.f39522e = null;
        return cr;
    }

    public final AbstractC6907dL a(C7407gL c7407gL, String str) {
        if (c7407gL.f48234b.containsKey(str)) {
            return (AbstractC6907dL) c7407gL.f48234b.get(str);
        }
        C5094Ef0 c5094Ef0 = this.f39519b;
        c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Expected required key '" + str + "'", this.f39522e));
        throw c5094Ef0.f39969c;
    }

    public static void a(C7407gL c7407gL, IR.a aVar) {
        if (c7407gL.f48234b.containsKey("rewrite_prefix")) {
            FS fs = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("rewrite_prefix")).d().f48234b.entrySet()).f38616b;
            ES es = fs.f40207g.f39867e;
            int i10 = fs.f40206f;
            while (true) {
                ES es2 = fs.f40207g;
                if (es == es2) {
                    break;
                }
                if (es != es2) {
                    if (fs.f40206f == i10) {
                        ES es3 = es.f39867e;
                        aVar.c((String) es.f39869g, ((AbstractC6907dL) es.f39871i).h());
                        es = es3;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("retarget_lib_member")) {
            FS fs2 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("retarget_lib_member")).d().f48234b.entrySet()).f38616b;
            ES es4 = fs2.f40207g.f39867e;
            int i11 = fs2.f40206f;
            while (true) {
                ES es5 = fs2.f40207g;
                if (es4 == es5) {
                    break;
                }
                if (es4 != es5) {
                    if (fs2.f40206f == i11) {
                        ES es6 = es4.f39867e;
                        aVar.b((String) es4.f39869g, ((AbstractC6907dL) es4.f39871i).h());
                        es4 = es6;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("backport")) {
            FS fs3 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("backport")).d().f48234b.entrySet()).f38616b;
            ES es7 = fs3.f40207g.f39867e;
            int i12 = fs3.f40206f;
            while (true) {
                ES es8 = fs3.f40207g;
                if (es7 == es8) {
                    break;
                }
                if (es7 != es8) {
                    if (fs3.f40206f == i12) {
                        ES es9 = es7.f39867e;
                        aVar.a((String) es7.f39869g, ((AbstractC6907dL) es7.f39871i).h());
                        es7 = es9;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("emulate_interface")) {
            FS fs4 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("emulate_interface")).d().f48234b.entrySet()).f38616b;
            ES es10 = fs4.f40207g.f39867e;
            int i13 = fs4.f40206f;
            while (true) {
                ES es11 = fs4.f40207g;
                if (es10 == es11) {
                    break;
                }
                if (es10 != es11) {
                    if (fs4.f40206f == i13) {
                        ES es12 = es10.f39867e;
                        aVar.a(aVar.f41095e, aVar.f41091a.d(C4932Bl.H((String) es10.f39869g)), aVar.f41091a.d(C4932Bl.H(((AbstractC6907dL) es10.f39871i).h())), "emulate_interface");
                        es10 = es12;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        if (c7407gL.f48234b.containsKey("custom_conversion")) {
            FS fs5 = ((AS) ((AbstractC6907dL) c7407gL.f48234b.get("custom_conversion")).d().f48234b.entrySet()).f38616b;
            ES es13 = fs5.f40207g.f39867e;
            int i14 = fs5.f40206f;
            while (true) {
                ES es14 = fs5.f40207g;
                if (es13 == es14) {
                    break;
                }
                if (es13 != es14) {
                    if (fs5.f40206f == i14) {
                        ES es15 = es13.f39867e;
                        aVar.a(aVar.f41098h, aVar.f41091a.d(C4932Bl.H((String) es13.f39869g)), aVar.f41091a.d(C4932Bl.H(((AbstractC6907dL) es13.f39871i).h())), "custom_conversion");
                        es13 = es15;
                    } else {
                        throw new ConcurrentModificationException();
                    }
                } else {
                    throw new NoSuchElementException();
                }
            }
        }
        int i15 = 0;
        if (c7407gL.f48234b.containsKey("wrapper_conversion")) {
            ArrayList arrayList = ((AbstractC6907dL) c7407gL.f48234b.get("wrapper_conversion")).c().f46749b;
            int size = arrayList.size();
            int i16 = 0;
            while (i16 < size) {
                Object obj = arrayList.get(i16);
                i16++;
                aVar.f41101k.add(aVar.f41091a.d(C4932Bl.H(((AbstractC6907dL) obj).h())));
            }
        }
        if (c7407gL.f48234b.containsKey("dont_rewrite")) {
            ArrayList arrayList2 = ((AbstractC6907dL) c7407gL.f48234b.get("dont_rewrite")).c().f46749b;
            int size2 = arrayList2.size();
            int i17 = 0;
            while (i17 < size2) {
                Object obj2 = arrayList2.get(i17);
                i17++;
                String h10 = ((AbstractC6907dL) obj2).h();
                aVar.getClass();
                int d10 = IR.a.d(h10, "don't rewrite");
                aVar.f41099i.add(new C8699o50(aVar.f41091a.d(C4932Bl.H(h10.substring(0, d10))), aVar.f41091a.b(h10.substring(d10 + 1))));
            }
        }
        if (c7407gL.f48234b.containsKey("dont_retarget_lib_member")) {
            ArrayList arrayList3 = ((AbstractC6907dL) c7407gL.f48234b.get("dont_retarget_lib_member")).c().f46749b;
            int size3 = arrayList3.size();
            while (i15 < size3) {
                Object obj3 = arrayList3.get(i15);
                i15++;
                aVar.f41100j.add(aVar.f41091a.d(C4932Bl.H(((AbstractC6907dL) obj3).h())));
            }
        }
    }
}
