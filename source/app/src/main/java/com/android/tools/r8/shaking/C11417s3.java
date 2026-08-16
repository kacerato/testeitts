package com.android.tools.r8.shaking;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.InputDependencyGraphConsumer;
import com.android.tools.r8.Version;
import com.android.tools.r8.internal.AbstractC10552zB;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C8091kU;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.CT;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.position.TextRange;
import com.android.tools.r8.shaking.AbstractC11147c3;
import com.android.tools.r8.shaking.AbstractC11198f3;
import com.android.tools.r8.shaking.AbstractC11250i4;
import com.android.tools.r8.shaking.AbstractC11401r4;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.shaking.C11384q3;
import com.android.tools.r8.shaking.K3;
import com.android.tools.r8.shaking.M3;
import com.android.tools.r8.shaking.R3;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.nio.CharBuffer;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public final class C11417s3 {

    public static final boolean f57796j = true;

    public final String f57797a;

    public final String f57798b;

    public int f57799c = 0;

    public int f57800d = 0;

    public int f57801e = 1;

    public int f57802f = 0;

    public Path f57803g;

    public final Origin f57804h;

    public final C11384q3 f57805i;

    public C11417s3(C11384q3 c11384q3, InterfaceC11485w3 interfaceC11485w3) {
        this.f57805i = c11384q3;
        String str = interfaceC11485w3.get();
        char[] cArr = C10656zq0.f54545a;
        if (str.length() > 0 && str.charAt(0) == '\ufeff') {
            str = str.substring(1);
        }
        this.f57798b = str;
        this.f57803g = interfaceC11485w3.a();
        this.f57797a = interfaceC11485w3.getName();
        this.f57804h = interfaceC11485w3.getOrigin();
    }

    public static boolean c(int i10) {
        return AbstractC10552zB.a(i10) || i10 == 33 || i10 == 42 || i10 == 46;
    }

    public final void a(TextPosition textPosition, String str, String str2) {
        C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
        c5094Ef0.a(null, new StringDiagnostic("Unknown option \"-" + str + JavadocConstants.ANCHOR_PREFIX_END + str2, this.f57804h, a(textPosition)));
        throw c5094Ef0.f39969c;
    }

    public final boolean b(int i10) {
        return AbstractC10552zB.a(i10) || i10 == 46 || i10 == 42 || i10 == 63 || i10 == 37 || i10 == 91 || i10 == 93;
    }

    public final boolean d(String str) {
        return a(str);
    }

    public final boolean e(char c10) {
        return c10 == '\'' || c10 == '\"';
    }

    public final boolean f(TextPosition textPosition) {
        String str = (String) AbstractC9907vK.a(C11384q3.f57722m, new Me(this), null);
        if (str == null && (str = (String) AbstractC9907vK.a(C11384q3.f57721l, new Ce(this), null)) == null && (str = (String) AbstractC9907vK.a(C11384q3.f57719j, new Ke(this), null)) == null && (str = (String) AbstractC9907vK.a(C11384q3.f57720k, new Le(this), null)) == null) {
            return false;
        }
        c(str, textPosition);
        return true;
    }

    public final boolean g(String str) {
        if (!a(str)) {
            return false;
        }
        t();
        while (!g() && !Character.isWhitespace(this.f57798b.charAt(this.f57799c))) {
            String str2 = this.f57798b;
            int i10 = this.f57799c;
            this.f57799c = i10 + 1;
            str2.charAt(i10);
        }
        return true;
    }

    public final boolean h(TextPosition textPosition) {
        if (!a("maximumremovedandroidloglevel")) {
            return false;
        }
        t();
        Integer b10 = b();
        if (b10 != null && b10.intValue() >= 1) {
            int i10 = C11399r2.f57762s;
            final C11383q2 c11383q2 = new C11383q2();
            c11383q2.f57714p = b10.intValue();
            c11383q2.f57291a = this.f57804h;
            c11383q2.f57292b = textPosition;
            if (a((AbstractC11198f3.a) c11383q2)) {
                c((AbstractC11198f3.a) c11383q2, false);
            } else {
                a(c11383q2, new InterfaceC5930Sr0() {
                    @Override
                    public final void a() {
                        C11417s3.this.a(c11383q2);
                    }
                }, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C11417s3.this.c((TextPosition) obj);
                    }
                });
            }
            if (c11383q2.f57299i != null) {
                TextPosition h10 = h();
                C11350o3.a aVar = this.f57805i.f57724a;
                c11383q2.f57293c = h10;
                aVar.a(((C11383q2) c11383q2.a(a(this.f57798b, textPosition, h10))).a());
            } else {
                C11350o3.a aVar2 = this.f57805i.f57724a;
                int intValue = b10.intValue();
                aVar2.getClass();
                if (!C11350o3.a.f57623Q && intValue < 1) {
                    throw new AssertionError();
                }
                int i11 = aVar2.f57639P;
                if (i11 == 0) {
                    aVar2.f57639P = intValue;
                } else {
                    aVar2.f57639P = Math.min(i11, intValue);
                }
            }
            return true;
        }
        throw b("Expected integer greater than or equal to 1", h());
    }

    public final boolean i(TextPosition textPosition) {
        String str = (String) AbstractC9907vK.a(C11384q3.f57723n, new Ce(this), null);
        if (str == null) {
            return false;
        }
        this.f57805i.f57727d.error(new StringDiagnostic("Unsupported option: -" + str, this.f57804h, a(textPosition)));
        return true;
    }

    public final void j() {
        do {
            t();
        } while (q());
        this.f57805i.f57724a.f57640a.add("# The proguard configuration file for the following section is " + this.f57804h.toString());
        this.f57805i.f57724a.f57640a.add(this.f57798b.substring(this.f57800d));
        this.f57805i.f57724a.f57640a.add("# End of content from " + ((Object) this.f57804h));
        this.f57805i.f57727d.a();
    }

    public final ArrayList k() {
        ArrayList arrayList = new ArrayList();
        t();
        b('(');
        t();
        if (a(')')) {
            return arrayList;
        }
        if (a("...")) {
            arrayList.add(AbstractC11250i4.a(C11384q3.a.a("..."), AbstractC11250i4.a.f57414c, this.f57805i.f57725b));
        } else {
            C11384q3.a l10 = l();
            while (l10 != null) {
                arrayList.add(AbstractC11250i4.a(l10, AbstractC11250i4.a.f57414c, this.f57805i.f57725b));
                t();
                l10 = a(IIndexConstants.PARAMETER_SEPARATOR) ? l() : null;
            }
        }
        t();
        b(')');
        return arrayList;
    }

    public final C11384q3.a l() {
        C11400r3 a10 = a(2, false);
        if (a10 == null) {
            throw b("Class name expected");
        }
        if (f57796j || !a10.f57765b) {
            return a10.f57764a;
        }
        throw new AssertionError();
    }

    public final AbstractC7552hC m() {
        t();
        if (!a('(')) {
            int i10 = AbstractC7552hC.f48487c;
            return C6190Xe0.f45779e;
        }
        C7051eC c7051eC = new C7051eC();
        c7051eC.a(n());
        t();
        while (a(IIndexConstants.PARAMETER_SEPARATOR)) {
            c7051eC.a(n());
            t();
        }
        if (this.f57798b.charAt(this.f57799c) == ';') {
            throw b("Only class file filters are supported in classpath");
        }
        b(')');
        return c7051eC.a();
    }

    public final String n() {
        TextPosition h10 = h();
        t();
        String a10 = a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return C11417s3.e(i10);
            }
        });
        if (a10 != null) {
            return a10;
        }
        throw b("file filter expected", h10);
    }

    public final void o() {
        TextPosition h10 = h();
        final InputDependencyGraphConsumer inputDependencyGraphConsumer = this.f57805i.f57728e;
        Objects.requireNonNull(inputDependencyGraphConsumer);
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InputDependencyGraphConsumer.this.acceptProguardInclude((Origin) obj, (Path) obj2);
            }
        };
        Path a10 = a(false);
        biConsumer.accept(this.f57804h, a10);
        try {
            new C11417s3(this.f57805i, new C11518y3(a10)).j();
        } catch (FileNotFoundException e10) {
            e = e10;
            C11233h4 c11233h4 = new C11233h4("Included file '" + a10.toString() + "' not found", j(h10), this.f57804h, a(h10));
            c11233h4.initCause(e);
            throw c11233h4;
        } catch (NoSuchFileException e11) {
            e = e11;
            C11233h4 c11233h42 = new C11233h4("Included file '" + a10.toString() + "' not found", j(h10), this.f57804h, a(h10));
            c11233h42.initCause(e);
            throw c11233h42;
        } catch (IOException e12) {
            C11233h4 c11233h43 = new C11233h4("Failed to read included file '" + a10.toString() + "'", j(h10), this.f57804h, a(h10));
            c11233h43.initCause(e12);
            throw c11233h43;
        }
    }

    public final void p() {
        ArrayList arrayList = new ArrayList();
        t();
        char d10 = d();
        String c10 = c();
        if (e(d10)) {
            c(d10);
        }
        while (c10 != null) {
            arrayList.add(c10);
            t();
            if (a(IIndexConstants.PARAMETER_SEPARATOR)) {
                t();
                TextPosition h10 = h();
                char d11 = d();
                String c11 = c();
                if (e(d11)) {
                    c(d11);
                }
                if (c11 == null) {
                    throw b("Expected list element", h10);
                }
                c10 = c11;
            } else {
                c10 = null;
            }
        }
        t();
        if (!g() && !d('-') && !d('@')) {
            throw b("Unexpected attribute");
        }
        if (arrayList.isEmpty()) {
            throw b("Expected attribute pattern list");
        }
        if (!this.f57805i.f57726c.f57850f) {
            I3 a10 = I3.a(arrayList);
            if (a10.f56580l || a10.f56582n || a10.f56584p) {
                this.f57805i.f57727d.error(new StringDiagnostic("Illegal attempt to keep runtime invisible annotations (origin: " + ((Object) this.f57804h) + ")"));
            }
        }
        this.f57805i.f57724a.a(arrayList);
    }

    public final boolean q() {
        String str;
        if (g()) {
            return false;
        }
        if (this.f57798b.length() - this.f57799c >= 2 && a('@')) {
            o();
            return true;
        }
        TextPosition h10 = h();
        b('-');
        if (!e(h10) && !f(h10)) {
            if (a("checkenumunboxed")) {
                int i10 = C11329n.f57548r;
                AbstractC11198f3.a c11312m = new C11312m();
                c11312m.f57291a = this.f57804h;
                c11312m.f57292b = h10;
                a(c11312m);
                c(c11312m, false);
                TextPosition h11 = h();
                c11312m.a(a(this.f57798b, h10, h11));
                c11312m.f57293c = h11;
                C11329n c11329n = new C11329n(c11312m.f57291a, c11312m.b(), c11312m.f57294d, c11312m.f57295e.a(), c11312m.f57296f, c11312m.f57297g, c11312m.f57298h, c11312m.f57299i, c11312m.f57300j, c11312m.f57301k.a(), c11312m.f57302l, c11312m.f57303m, c11312m.f57304n);
                C11384q3 c11384q3 = this.f57805i;
                if (c11384q3.f57726c.f57847c) {
                    c11384q3.f57724a.a(c11329n);
                }
            } else if (a("convertchecknotnull")) {
                int i11 = C11481w.f57936r;
                AbstractC11198f3.a c11464v = new C11464v();
                c11464v.f57291a = this.f57804h;
                c11464v.f57292b = h10;
                a(c11464v);
                c(c11464v, false);
                TextPosition h12 = h();
                c11464v.a(a(this.f57798b, h10, h12));
                c11464v.f57293c = h12;
                C11481w c11481w = new C11481w(c11464v.f57291a, c11464v.b(), c11464v.f57294d, c11464v.f57295e.a(), c11464v.f57296f, c11464v.f57297g, c11464v.f57298h, c11464v.f57299i, c11464v.f57300j, c11464v.f57301k.a(), c11464v.f57302l, c11464v.f57303m, c11464v.f57304n);
                C11384q3 c11384q32 = this.f57805i;
                if (c11384q32.f57726c.f57848d) {
                    c11384q32.f57724a.a(c11481w);
                }
            } else if (this.f57805i.f57726c.f57849e && a("whyareyounotinlining")) {
                C11350o3.a aVar = this.f57805i.f57724a;
                int i12 = C11166d5.f57235r;
                aVar.a(a(h10, new C11149c5()));
            } else {
                if (this.f57805i.f57726c.f57851g) {
                    if (a("assumemayhavesideeffects")) {
                        int i13 = U2.f57018r;
                        AbstractC11198f3.a t22 = new T2();
                        t22.f57291a = this.f57804h;
                        t22.f57292b = h10;
                        a(t22);
                        c(t22, false);
                        TextPosition h13 = h();
                        t22.a(a(this.f57798b, h10, h13));
                        t22.f57293c = h13;
                        this.f57805i.f57724a.a(new U2(t22.f57291a, t22.b(), t22.f57294d, t22.f57295e.a(), t22.f57296f, t22.f57297g, t22.f57298h, t22.f57299i, t22.f57300j, t22.f57301k.a(), t22.f57302l, t22.f57303m, t22.f57304n));
                    } else if (a("keepconstantarguments")) {
                        int i14 = C11331n1.f57550r;
                        this.f57805i.f57724a.a((C11331n1) a(h10, new C11314m1()));
                    } else if (a("keepunusedarguments")) {
                        int i15 = C11146c2.f57208r;
                        this.f57805i.f57724a.a((C11146c2) a(h10, new C11129b2()));
                    } else if (a("keepunusedreturnvalue")) {
                        int i16 = C11180e2.f57252r;
                        this.f57805i.f57724a.a((C11180e2) a(h10, new C11163d2()));
                    } else if (a("alwaysclassinline")) {
                        int i17 = C11413s.f57784s;
                        C11380q c11380q = new C11380q();
                        c11380q.f57705p = r.f57747b;
                        this.f57805i.f57724a.a((C11413s) a(h10, c11380q));
                    } else if (a("neverclassinline")) {
                        int i18 = C11413s.f57784s;
                        C11380q c11380q2 = new C11380q();
                        c11380q2.f57705p = r.f57748c;
                        this.f57805i.f57724a.a((C11413s) a(h10, c11380q2));
                    } else if (a("neverinline")) {
                        int i19 = Y0.f57124s;
                        W0 w02 = new W0();
                        w02.f57084p = X0.f57112c;
                        this.f57805i.f57724a.a((Y0) a(h10, w02));
                    } else if (a("neversinglecallerinline")) {
                        int i20 = Y0.f57124s;
                        W0 w03 = new W0();
                        w03.f57084p = X0.f57113d;
                        this.f57805i.f57724a.a((Y0) a(h10, w03));
                    } else if (a("noaccessmodification")) {
                        int i21 = C11484w2.f57940r;
                        this.f57805i.f57724a.a((C11484w2) a(h10, new C11467v2()));
                    } else if (a("nofieldtypestrengthening")) {
                        int i22 = C11517y2.f57992r;
                        this.f57805i.f57724a.a((C11517y2) a(h10, new C11501x2()));
                    } else if (a("nounusedinterfaceremoval")) {
                        int i23 = M2.f56721r;
                        this.f57805i.f57724a.a((M2) a(h10, new L2()));
                    } else if (a("noverticalclassmerging")) {
                        int i24 = Q2.f56901r;
                        this.f57805i.f57724a.a((Q2) a(h10, new P2()));
                    } else if (a("nohorizontalclassmerging")) {
                        int i25 = A2.f56339r;
                        this.f57805i.f57724a.a((A2) a(h10, new C11533z2()));
                    } else if (a("nomethodstaticizing")) {
                        int i26 = C2.f56371r;
                        this.f57805i.f57724a.a((C2) a(h10, new B2()));
                    } else if (a("noparameterreordering")) {
                        int i27 = E2.f56421r;
                        this.f57805i.f57724a.a((E2) a(h10, new D2()));
                    } else if (a("noparametertypestrengthening")) {
                        int i28 = G2.f56494r;
                        this.f57805i.f57724a.a((G2) a(h10, new F2()));
                    } else if (a("noredundantfieldloadelimination")) {
                        int i29 = I2.f56568r;
                        this.f57805i.f57724a.a((I2) a(h10, new H2()));
                    } else if (a("noreturntypestrengthening")) {
                        int i30 = K2.f56667r;
                        this.f57805i.f57724a.a((K2) a(h10, new J2()));
                    } else if (a("neverpropagatevalue")) {
                        int i31 = O2.f56852r;
                        this.f57805i.f57724a.a((O2) a(h10, new N2()));
                    } else if (a("neverreprocessclassinitializer")) {
                        C11350o3.a aVar2 = this.f57805i.f57724a;
                        int i32 = C11435t4.f57859s;
                        C11418s4 c11418s4 = new C11418s4();
                        c11418s4.f57806p = 2;
                        aVar2.a(a(h10, c11418s4));
                    } else if (a("neverreprocessmethod")) {
                        C11350o3.a aVar3 = this.f57805i.f57724a;
                        int i33 = C11469v4.f57915s;
                        C11452u4 c11452u4 = new C11452u4();
                        c11452u4.f57892p = 2;
                        aVar3.a(a(h10, c11452u4));
                    } else if (a("reprocessclassinitializer")) {
                        C11350o3.a aVar4 = this.f57805i.f57724a;
                        int i34 = C11435t4.f57859s;
                        C11418s4 c11418s42 = new C11418s4();
                        c11418s42.f57806p = 1;
                        aVar4.a(a(h10, c11418s42));
                    } else if (a("reprocessmethod")) {
                        C11350o3.a aVar5 = this.f57805i.f57724a;
                        int i35 = C11469v4.f57915s;
                        C11452u4 c11452u42 = new C11452u4();
                        c11452u42.f57892p = 1;
                        aVar5.a(a(h10, c11452u42));
                    }
                }
                if (!i(h10)) {
                    if (a("keepkotlinmetadata")) {
                        K3 a10 = P3.a(this.f57804h, h10, this.f57805i.f57725b.f37858F3);
                        K3 a11 = P3.a(this.f57804h, h10, this.f57805i.f57725b.f37865G3);
                        a10.f57913o = true;
                        a11.f57913o = true;
                        this.f57805i.f57724a.a(a10);
                        this.f57805i.f57724a.a(a11);
                        this.f57805i.f57724a.a(Collections.singletonList("RuntimeVisibleAnnotations"));
                        this.f57805i.f57724a.a(Collections.singletonList("RuntimeInvisibleAnnotations"));
                    } else {
                        str = "";
                        if (a("renamesourcefileattribute")) {
                            t();
                            if (i()) {
                                this.f57805i.f57724a.a(e());
                            } else {
                                this.f57805i.f57724a.a("");
                            }
                        } else if (a("keepattributes")) {
                            p();
                        } else if (a("keeppackagenames")) {
                            final C11350o3.a aVar6 = this.f57805i.f57724a;
                            Objects.requireNonNull(aVar6);
                            a(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.d((AbstractC11147c3) obj);
                                }
                            });
                        } else if (a("keepparameternames")) {
                            C11350o3.a aVar7 = this.f57805i.f57724a;
                            Origin origin = this.f57804h;
                            Position a12 = a(h10);
                            aVar7.getClass();
                            if (!C11350o3.a.f57623Q && origin == null) {
                                throw new AssertionError();
                            }
                            aVar7.f57628E = true;
                            aVar7.f57629F = origin;
                            aVar7.f57630G = a12;
                        } else if (a("checkdiscard")) {
                            int i36 = C11113a3.f57169r;
                            this.f57805i.f57724a.a((C11113a3) a(h10, new Z2()));
                        } else if (a("checkenumstringsdiscarded")) {
                            int i37 = C11113a3.f57169r;
                            a(h10, new Z2());
                        } else if (a("keepdirectories")) {
                            final C11350o3.a aVar8 = this.f57805i.f57724a;
                            aVar8.f57634K.f57191a = true;
                            Consumer consumer = new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.c((AbstractC11216g4) obj);
                                }
                            };
                            t();
                            if (i()) {
                                consumer.accept(r());
                            } else {
                                consumer.accept(new C11165d4());
                            }
                        } else if (a("keep")) {
                            this.f57805i.f57724a.a(g(h10));
                        } else if (a("whyareyoukeeping")) {
                            int i38 = C11385q4.f57731r;
                            this.f57805i.f57724a.a((C11385q4) a(h10, new C11368p4()));
                        } else if (a("dontoptimize")) {
                            this.f57805i.f57724a.d();
                        } else if (a("optimizationpasses")) {
                            t();
                            if (b() == null) {
                                C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
                                c5094Ef0.a(null, new StringDiagnostic("Missing n of \"-optimizationpasses n\"", this.f57804h, a(h10)));
                                throw c5094Ef0.f39969c;
                            }
                            a("optimizationpasses", h10);
                        } else if (a("dontobfuscate")) {
                            this.f57805i.f57724a.c();
                        } else if (a("dontshrink")) {
                            this.f57805i.f57724a.e();
                        } else if (a("printusage")) {
                            this.f57805i.f57724a.f57653n = true;
                            t();
                            if (i()) {
                                this.f57805i.f57724a.f57654o = a(false);
                            }
                        } else if (a("shrinkunusedprotofields")) {
                            this.f57805i.f57724a.f57638O = true;
                        } else if (a("ignorewarnings")) {
                            this.f57805i.f57724a.a(true);
                        } else if (a("dontwarn")) {
                            final C11350o3.a aVar9 = this.f57805i.f57724a;
                            Objects.requireNonNull(aVar9);
                            a(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.c((AbstractC11147c3) obj);
                                }
                            });
                        } else if (a("dontnote")) {
                            final C11350o3.a aVar10 = this.f57805i.f57724a;
                            Objects.requireNonNull(aVar10);
                            a(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.b((AbstractC11147c3) obj);
                                }
                            });
                        } else if (a("repackageclasses")) {
                            if (this.f57805i.f57724a.f57644e == C8570nJ.m.f50796e) {
                                k(h10);
                            }
                            t();
                            char d10 = d();
                            if (e(d10)) {
                                C11350o3.a aVar11 = this.f57805i.f57724a;
                                String a13 = a();
                                str = a13 != null ? a13 : "";
                                aVar11.f57644e = C8570nJ.m.f50795d;
                                aVar11.f57645f = str;
                                c(d10);
                            } else if (d('-')) {
                                C11350o3.a aVar12 = this.f57805i.f57724a;
                                aVar12.f57644e = C8570nJ.m.f50795d;
                                aVar12.f57645f = "";
                            } else {
                                C11350o3.a aVar13 = this.f57805i.f57724a;
                                String a14 = a();
                                str = a14 != null ? a14 : "";
                                aVar13.f57644e = C8570nJ.m.f50795d;
                                aVar13.f57645f = str;
                            }
                        } else if (a("flattenpackagehierarchy")) {
                            if (this.f57805i.f57724a.f57644e == C8570nJ.m.f50795d) {
                                k(h10);
                                t();
                                if (i()) {
                                    t();
                                    while (!g() && !Character.isWhitespace(this.f57798b.charAt(this.f57799c))) {
                                        String str2 = this.f57798b;
                                        int i39 = this.f57799c;
                                        this.f57799c = i39 + 1;
                                        str2.charAt(i39);
                                    }
                                }
                            } else {
                                t();
                                char d11 = d();
                                if (e(d11)) {
                                    C11350o3.a aVar14 = this.f57805i.f57724a;
                                    String a15 = a();
                                    str = a15 != null ? a15 : "";
                                    aVar14.f57644e = C8570nJ.m.f50796e;
                                    aVar14.f57645f = str;
                                    c(d11);
                                } else if (d('-')) {
                                    C11350o3.a aVar15 = this.f57805i.f57724a;
                                    aVar15.f57644e = C8570nJ.m.f50796e;
                                    aVar15.f57645f = "";
                                } else {
                                    C11350o3.a aVar16 = this.f57805i.f57724a;
                                    String a16 = a();
                                    str = a16 != null ? a16 : "";
                                    aVar16.f57644e = C8570nJ.m.f50796e;
                                    aVar16.f57645f = str;
                                }
                            }
                        } else if (a("allowaccessmodification")) {
                            this.f57805i.f57724a.f57646g = true;
                        } else if (a("printconfiguration")) {
                            this.f57805i.f57724a.f57651l = true;
                            t();
                            if (i()) {
                                C11350o3.a aVar17 = this.f57805i.f57724a;
                                Path a17 = a(false);
                                if (!C11350o3.a.f57623Q && !aVar17.f57651l) {
                                    throw new AssertionError();
                                }
                                aVar17.f57652m = a17;
                            }
                        } else if (a("printmapping")) {
                            this.f57805i.f57724a.b(true);
                            t();
                            if (i()) {
                                this.f57805i.f57724a.a(a(false));
                            }
                        } else if (a("applymapping")) {
                            C11384q3 c11384q33 = this.f57805i;
                            C11350o3.a aVar18 = c11384q33.f57724a;
                            final InputDependencyGraphConsumer inputDependencyGraphConsumer = c11384q33.f57728e;
                            Objects.requireNonNull(inputDependencyGraphConsumer);
                            BiConsumer biConsumer = new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    InputDependencyGraphConsumer.this.acceptProguardApplyMapping((Origin) obj, (Path) obj2);
                                }
                            };
                            Path a18 = a(false);
                            biConsumer.accept(this.f57804h, a18);
                            aVar18.f57657r = a18;
                        } else if (a("assumenosideeffects")) {
                            int i40 = W2.f57085r;
                            V2 v22 = new V2();
                            v22.f57291a = this.f57804h;
                            v22.f57292b = h10;
                            a(v22);
                            c((AbstractC11198f3.a) v22, true);
                            TextPosition h14 = h();
                            v22.a(a(this.f57798b, h10, h14));
                            v22.f57293c = h14;
                            this.f57805i.f57724a.a(v22.a());
                        } else if (a("assumevalues")) {
                            int i41 = Y2.f57127r;
                            AbstractC11198f3.a x22 = new X2();
                            x22.f57291a = this.f57804h;
                            x22.f57292b = h10;
                            a(x22);
                            c(x22, true);
                            TextPosition h15 = h();
                            x22.a(a(this.f57798b, h10, h15));
                            x22.f57293c = h15;
                            this.f57805i.f57724a.a(new Y2(x22.f57291a, x22.b(), x22.f57294d, x22.f57295e.a(), x22.f57296f, x22.f57297g, x22.f57298h, x22.f57299i, x22.f57300j, x22.f57301k.a(), x22.f57302l, x22.f57303m, x22.f57304n));
                        } else if (a("include")) {
                            this.f57805i.f57724a.f57640a.add(this.f57798b.substring(this.f57800d, this.f57799c - 8));
                            t();
                            o();
                            this.f57800d = this.f57799c;
                        } else if (a("basedirectory")) {
                            t();
                            this.f57803g = a(false);
                        } else if (a("injars")) {
                            C11384q3 c11384q34 = this.f57805i;
                            C11350o3.a aVar19 = c11384q34.f57724a;
                            final InputDependencyGraphConsumer inputDependencyGraphConsumer2 = c11384q34.f57728e;
                            Objects.requireNonNull(inputDependencyGraphConsumer2);
                            BiConsumer biConsumer2 = new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    InputDependencyGraphConsumer.this.acceptProguardInJars((Origin) obj, (Path) obj2);
                                }
                            };
                            ArrayList arrayList = new ArrayList();
                            t();
                            TextPosition h16 = h();
                            Path a19 = a(true);
                            biConsumer2.accept(this.f57804h, a19);
                            arrayList.add(new P0(a19, m(), this.f57804h, h16));
                            while (a(File.pathSeparatorChar)) {
                                Path a20 = a(true);
                                biConsumer2.accept(this.f57804h, a20);
                                arrayList.add(new P0(a20, m(), this.f57804h, h16));
                            }
                            aVar19.f57641b.addAll(arrayList);
                        } else if (a("libraryjars")) {
                            C11384q3 c11384q35 = this.f57805i;
                            C11350o3.a aVar20 = c11384q35.f57724a;
                            final InputDependencyGraphConsumer inputDependencyGraphConsumer3 = c11384q35.f57728e;
                            Objects.requireNonNull(inputDependencyGraphConsumer3);
                            BiConsumer biConsumer3 = new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    InputDependencyGraphConsumer.this.acceptProguardLibraryJars((Origin) obj, (Path) obj2);
                                }
                            };
                            ArrayList arrayList2 = new ArrayList();
                            t();
                            TextPosition h17 = h();
                            Path a21 = a(true);
                            biConsumer3.accept(this.f57804h, a21);
                            arrayList2.add(new P0(a21, m(), this.f57804h, h17));
                            while (a(File.pathSeparatorChar)) {
                                Path a22 = a(true);
                                biConsumer3.accept(this.f57804h, a22);
                                arrayList2.add(new P0(a22, m(), this.f57804h, h17));
                            }
                            aVar20.f57642c.addAll(arrayList2);
                        } else if (a("printseeds")) {
                            this.f57805i.f57724a.c(true);
                            t();
                            if (i()) {
                                this.f57805i.f57724a.f57624A = a(false);
                            }
                        } else if (a("obfuscationdictionary")) {
                            C11384q3 c11384q36 = this.f57805i;
                            C11350o3.a aVar21 = c11384q36.f57724a;
                            final InputDependencyGraphConsumer inputDependencyGraphConsumer4 = c11384q36.f57728e;
                            Objects.requireNonNull(inputDependencyGraphConsumer4);
                            BiConsumer biConsumer4 = new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    InputDependencyGraphConsumer.this.acceptProguardObfuscationDictionary((Origin) obj, (Path) obj2);
                                }
                            };
                            Path a23 = a(false);
                            biConsumer4.accept(this.f57804h, a23);
                            aVar21.f57625B = a23;
                        } else if (a("classobfuscationdictionary")) {
                            C11384q3 c11384q37 = this.f57805i;
                            C11350o3.a aVar22 = c11384q37.f57724a;
                            final InputDependencyGraphConsumer inputDependencyGraphConsumer5 = c11384q37.f57728e;
                            Objects.requireNonNull(inputDependencyGraphConsumer5);
                            BiConsumer biConsumer5 = new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    InputDependencyGraphConsumer.this.acceptProguardClassObfuscationDictionary((Origin) obj, (Path) obj2);
                                }
                            };
                            Path a24 = a(false);
                            biConsumer5.accept(this.f57804h, a24);
                            aVar22.f57626C = a24;
                        } else if (a("packageobfuscationdictionary")) {
                            C11384q3 c11384q38 = this.f57805i;
                            C11350o3.a aVar23 = c11384q38.f57724a;
                            final InputDependencyGraphConsumer inputDependencyGraphConsumer6 = c11384q38.f57728e;
                            Objects.requireNonNull(inputDependencyGraphConsumer6);
                            BiConsumer biConsumer6 = new BiConsumer() {
                                @Override
                                public final void accept(Object obj, Object obj2) {
                                    InputDependencyGraphConsumer.this.acceptProguardPackageObfuscationDictionary((Origin) obj, (Path) obj2);
                                }
                            };
                            Path a25 = a(false);
                            biConsumer6.accept(this.f57804h, a25);
                            aVar23.f57627D = a25;
                        } else if (a("alwaysinline")) {
                            int i42 = Y0.f57124s;
                            W0 w04 = new W0();
                            w04.f57084p = X0.f57111b;
                            this.f57805i.f57724a.a((Y0) a(h10, w04));
                        } else if (a("adaptclassstrings")) {
                            final C11350o3.a aVar24 = this.f57805i.f57724a;
                            Objects.requireNonNull(aVar24);
                            a(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.a((AbstractC11147c3) obj);
                                }
                            });
                        } else if (a("adaptresourcefilenames")) {
                            final C11350o3.a aVar25 = this.f57805i.f57724a;
                            Objects.requireNonNull(aVar25);
                            Consumer consumer2 = new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.b((AbstractC11216g4) obj);
                                }
                            };
                            t();
                            if (i()) {
                                consumer2.accept(r());
                            } else {
                                consumer2.accept(new C11165d4());
                            }
                        } else if (a("adaptresourcefilecontents")) {
                            final C11350o3.a aVar26 = this.f57805i.f57724a;
                            Objects.requireNonNull(aVar26);
                            Consumer consumer3 = new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C11350o3.a.this.a((AbstractC11216g4) obj);
                                }
                            };
                            t();
                            if (i()) {
                                consumer3.accept(r());
                            } else {
                                consumer3.accept(new C11165d4());
                            }
                        } else if (a("identifiernamestring")) {
                            C11350o3.a aVar27 = this.f57805i.f57724a;
                            int i43 = D3.f56393r;
                            aVar27.a(a(h10, new C3()));
                        } else if (a("if")) {
                            C11350o3.a aVar28 = this.f57805i.f57724a;
                            boolean z10 = G3.f56495w;
                            F3 f32 = new F3();
                            f32.f57291a = this.f57804h;
                            f32.f57292b = h10;
                            a(f32);
                            c((AbstractC11198f3.a) f32, false);
                            t();
                            TextPosition h18 = h();
                            if (!a("-keep")) {
                                C5094Ef0 c5094Ef02 = this.f57805i.f57727d;
                                c5094Ef02.a(null, new StringDiagnostic("Expecting '-keep' option after '-if' option.", this.f57804h, a(h10)));
                                throw c5094Ef02.f39969c;
                            }
                            f32.f56452r = g(h18);
                            TextPosition h19 = h();
                            f32.a(a(this.f57798b, h10, h19));
                            f32.f57293c = h19;
                            G3 a26 = f32.a();
                            a(a26.v());
                            aVar28.a(a26);
                        } else if (a("addconfigurationdebugging")) {
                            this.f57805i.f57724a.f57636M = true;
                        } else {
                            if (!a("dontusemixedcaseclassnames")) {
                                if (h(h10)) {
                                    return true;
                                }
                                String f10 = f();
                                if (Version.isDevelopmentVersion() && f10 != null && f10.equals("neverinline")) {
                                    str = ", this option needs to be turned on explicitly if used for tests.";
                                }
                                a(h10, f10, str);
                                throw null;
                            }
                            this.f57805i.f57724a.f57637N = true;
                        }
                    }
                }
            }
        }
        return true;
    }

    public final AbstractC11216g4 r() {
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        t();
        boolean a10 = a('!');
        t();
        String a11 = a(new IntPredicate() {
            @Override
            public final boolean test(int i11) {
                return C11417s3.this.a(Integer.valueOf(i11));
            }
        });
        if (a11 == null) {
            throw b("Path filter expected");
        }
        c7051eC.a(new C11182e4(a11, a10));
        t();
        while (a(IIndexConstants.PARAMETER_SEPARATOR)) {
            t();
            boolean a12 = a('!');
            t();
            String a13 = a(new IntPredicate() {
                @Override
                public final boolean test(int i11) {
                    return C11417s3.this.a(Integer.valueOf(i11));
                }
            });
            if (a13 == null) {
                throw b("Path filter expected");
            }
            c7051eC.a(new C11182e4(a13, a12));
            t();
        }
        AbstractC7552hC a14 = c7051eC.a();
        return a14.size() > 0 ? new C11199f4(a14) : new C11165d4();
    }

    public final void s() {
        char d10 = d();
        if (e(d10)) {
            t();
        }
        if (a('!')) {
            t();
        }
        a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return C11417s3.f(i10);
            }
        });
        if (e(d10)) {
            t();
            c(d10);
        }
    }

    public final void t() {
        while (!g() && C10656zq0.a(this.f57798b.charAt(this.f57799c))) {
            if (this.f57798b.charAt(this.f57799c) == '\n') {
                this.f57801e++;
                this.f57802f = this.f57799c + 1;
            }
            this.f57799c++;
        }
        if (!g() && this.f57798b.charAt(this.f57799c) == '#') {
            while (!g() && this.f57798b.charAt(this.f57799c) != '\n') {
                this.f57799c++;
            }
            t();
        }
    }

    public final String u() {
        String[] split = this.f57798b.split("\n", -1);
        int i10 = this.f57799c;
        for (int i11 = 0; i11 < split.length; i11++) {
            String str = split[i11];
            if (i10 <= str.length() || i11 == split.length - 1) {
                String str2 = CharBuffer.allocate(i10).toString().replace((char) 0, C15883c.f126249O) + "^";
                return this.f57797a + b3.s.f32937c + (i11 + 1) + b3.s.f32937c + (i10 + 1) + "\n" + str + "\n" + str2;
            }
            i10 -= str.length() + 1;
        }
        return this.f57797a;
    }

    public final void b(char c10) {
        if (a(c10)) {
            return;
        }
        throw b("Expected char '" + c10 + "'");
    }

    public final void c(TextPosition textPosition) {
        this.f57799c = textPosition.getOffsetAsInt();
    }

    public final void d(TextPosition textPosition) {
        C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
        c5094Ef0.a(null, new StringDiagnostic("Expected [!]interface|@interface|class|enum", this.f57804h, a(textPosition)));
        throw c5094Ef0.f39969c;
    }

    public final boolean e(TextPosition textPosition) {
        if (AbstractC9907vK.b(C11384q3.f57715f, new Ke(this)) || AbstractC9907vK.b(C11384q3.f57716g, new Le(this)) || AbstractC9907vK.b(C11384q3.f57717h, new Ce(this)) || AbstractC9907vK.b(C11384q3.f57718i, new Me(this))) {
            return true;
        }
        if (!a("optimizations")) {
            return false;
        }
        a("optimizations", textPosition);
        do {
            t();
            s();
            t();
        } while (a(IIndexConstants.PARAMETER_SEPARATOR));
        return true;
    }

    public final void c(final AbstractC11198f3.a aVar, final boolean z10) {
        a(aVar, new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C11417s3.this.a(aVar, z10);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11417s3.this.d((TextPosition) obj);
            }
        });
    }

    public final Integer b() {
        String a10 = a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return Character.isDigit(i10);
            }
        });
        if (a10 == null) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(a10));
    }

    public final String c(String str) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        int i11 = -1;
        for (int i12 = 0; i12 < str.length(); i12++) {
            if (str.charAt(i12) == '<') {
                if (i10 < i12) {
                    sb2.append((CharSequence) str, i10, i12);
                    i10 = i12;
                }
                i11 = i12;
            } else if (str.charAt(i12) == '>' && i11 != -1 && i11 < i12) {
                String substring = str.substring(i11 + 1, i12);
                String property = substring.length() > 0 ? System.getProperty(substring) : null;
                if (property == null) {
                    throw b("Value of system property '" + substring + "' not found");
                }
                sb2.append(property);
                i10 = i12 + 1;
                i11 = -1;
            }
        }
        if (i10 == 0) {
            return str;
        }
        sb2.append(str.substring(i10, str.length()));
        return sb2.toString();
    }

    public final AbstractC11468v3 a(TextPosition textPosition, AbstractC11198f3.a aVar) {
        aVar.f57291a = this.f57804h;
        aVar.c().f57292b = textPosition;
        a(aVar);
        c(aVar, false);
        TextPosition h10 = h();
        aVar.a(a(this.f57798b, textPosition, h10));
        aVar.f57293c = h10;
        return (AbstractC11468v3) aVar.a();
    }

    public final boolean i() {
        return (g() || d('-') || d('@')) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x0372, code lost:
    
        throw b("Expected [access-flag]* void <init>");
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x03b3, code lost:
    
        throw b("Expected [access-flag]* void <clinit>");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x05e5  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x05f2 A[LOOP:2: B:37:0x00bb->B:154:0x05f2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05fd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0083 A[EDGE_INSN: B:23:0x0083->B:24:0x0083 BREAK  A[LOOP:1: B:11:0x0051->B:21:0x007f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x05bb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(AbstractC11198f3.a aVar, boolean z10) {
        int i10;
        boolean z11;
        AbstractC11250i4 abstractC11250i4;
        C11384q3.a aVar2;
        C11384q3.a aVar3;
        String str;
        boolean z12;
        int charCount;
        Integer num;
        R3 a10;
        S2 s22;
        boolean a11;
        AbstractC11250i4 abstractC11250i42;
        AbstractC11147c3.a a12 = AbstractC11147c3.a();
        do {
            i10 = 2;
            z11 = 1;
            C11400r3 a13 = a(2, true);
            if (a13 != null) {
                a12.a(a13.f57765b, AbstractC11250i4.a(a13.f57764a, AbstractC11250i4.a.f57413b, this.f57805i.f57725b));
                t();
            } else {
                throw b("Class name expected");
            }
        } while (a(IIndexConstants.PARAMETER_SEPARATOR));
        aVar.a(a12.a());
        t();
        char c10 = '@';
        if (a("implements")) {
            aVar.f57303m = false;
        } else {
            if (a("extends")) {
                aVar.f57303m = true;
            }
            t();
            if (!g() || !a(JavaElement.JEM_COMPILATIONUNIT)) {
            }
            while (true) {
                R3.a a14 = R3.a();
                List list = null;
                while (true) {
                    t();
                    int i11 = this.f57799c;
                    if (a(c10)) {
                        C11384q3.a l10 = l();
                        if (l10.f57729a.equals("interface")) {
                            this.f57799c = i11;
                        } else {
                            abstractC11250i4 = AbstractC11250i4.a(l10, AbstractC11250i4.a.f57413b, this.f57805i.f57725b);
                            if (abstractC11250i4 == null) {
                                if (list == null) {
                                    list = new ArrayList(i10);
                                }
                                list.add(abstractC11250i4);
                            } else {
                                if (list == null) {
                                    list = Collections.EMPTY_LIST;
                                }
                                a14.getClass();
                                if (!R3.a.f56928i && list == null) {
                                    throw new AssertionError();
                                }
                                a14.f56929a = list;
                                boolean z13 = z11;
                                while (z13 && !g()) {
                                    t();
                                    boolean a15 = a('!');
                                    if (a15) {
                                        s22 = a14.f56931c;
                                    } else {
                                        s22 = a14.f56930b;
                                    }
                                    t();
                                    char charAt = this.f57798b.charAt(this.f57799c);
                                    if (charAt == 'f') {
                                        a11 = a("final");
                                        if (a11) {
                                            s22.f56965a |= 16;
                                        }
                                    } else if (charAt == 'n') {
                                        a11 = a("native");
                                        if (a11) {
                                            s22.f56965a |= 256;
                                        }
                                    } else if (charAt == 'p') {
                                        a11 = a("public");
                                        if (a11) {
                                            s22.f56965a |= z11;
                                        } else {
                                            a11 = a("private");
                                            if (a11) {
                                                s22.f56965a |= i10;
                                            } else {
                                                a11 = a("protected");
                                                if (a11) {
                                                    s22.f56965a |= 4;
                                                }
                                            }
                                        }
                                    } else if (charAt == 'v') {
                                        a11 = a("volatile");
                                        if (a11) {
                                            s22.f56965a |= c10;
                                        }
                                    } else if (charAt == 's') {
                                        a11 = a("synchronized");
                                        if (a11) {
                                            s22.f56965a |= 32;
                                        } else {
                                            a11 = a("static");
                                            if (a11) {
                                                s22.f56965a |= 8;
                                            } else {
                                                a11 = a("strictfp");
                                                if (a11) {
                                                    s22.f56965a |= 2048;
                                                } else {
                                                    a11 = a("synthetic");
                                                    if (a11) {
                                                        s22.f56965a |= 4096;
                                                    }
                                                }
                                            }
                                        }
                                    } else if (charAt != 't') {
                                        switch (charAt) {
                                            case 'a':
                                                a11 = a("abstract");
                                                if (a11) {
                                                    s22.f56965a |= 1024;
                                                    break;
                                                }
                                                break;
                                            case 'b':
                                                a11 = a("bridge");
                                                if (a11) {
                                                    s22.f56965a |= c10;
                                                    break;
                                                }
                                                break;
                                            case 'c':
                                                a11 = a("constructor");
                                                if (a11) {
                                                    s22.f56965a |= 65536;
                                                    break;
                                                }
                                                break;
                                            default:
                                                a11 = false;
                                                break;
                                        }
                                    } else {
                                        a11 = a("transient");
                                        if (a11) {
                                            s22.f56965a |= 128;
                                        }
                                    }
                                    if (!a11 && a15) {
                                        h("!");
                                    }
                                    z13 = a11;
                                }
                                t();
                                if (!g() && this.f57798b.charAt(this.f57799c) == '!') {
                                    throw b("Unexpected character '!': The negation character can only be used to negate access flags");
                                }
                                if (a("<methods>")) {
                                    a14.a(U3.f57022e);
                                } else if (a("<fields>")) {
                                    a14.a(U3.f57020c);
                                } else if (a(ConstantDescs.INIT_NAME)) {
                                    a14.a(U3.f57024g);
                                    a14.f56934f = Y3.a(C11384q3.a.a(ConstantDescs.INIT_NAME));
                                    a14.f56935g = k();
                                } else if (a(ConstantDescs.CLASS_INIT_NAME)) {
                                    a14.a(U3.f57023f);
                                    a14.f56934f = Y3.a(C11384q3.a.a(ConstantDescs.CLASS_INIT_NAME));
                                    a14.f56935g = k();
                                } else {
                                    TextPosition h10 = h();
                                    C11400r3 a16 = a(3, false);
                                    if (a16 == null) {
                                        aVar2 = null;
                                    } else {
                                        if (!f57796j && a16.f57765b) {
                                            throw new AssertionError();
                                        }
                                        aVar2 = a16.f57764a;
                                    }
                                    if (aVar2 != null) {
                                        t();
                                        if (aVar2.f57729a.equals("*") && d(';')) {
                                            a14.a(U3.f57021d);
                                        } else {
                                            if (d('(')) {
                                                if (aVar2.f57729a.equals(ConstantDescs.CLASS_INIT_NAME)) {
                                                    this.f57805i.f57727d.warning(new StringDiagnostic("Member rule for <clinit> has no effect.", this.f57804h, h10));
                                                } else if (!aVar2.f57729a.contains("<")) {
                                                    if (aVar2.f57729a.contains(">")) {
                                                        throw b("Unexpected character '>' in method name. The character '>' is only allowed in the method name '<init>'.", h10);
                                                    }
                                                } else {
                                                    throw b("Unexpected character '<' in method name. The character '<' is only allowed in the method name '<init>'.", h10);
                                                }
                                                a14.a(U3.f57025h);
                                                a14.f56934f = Y3.a(aVar2);
                                                a14.f56935g = k();
                                            } else if (a(ConstantDescs.INIT_NAME)) {
                                                AbstractC11250i4 a17 = AbstractC11250i4.a(aVar2, AbstractC11250i4.a.f57414c, this.f57805i.f57725b);
                                                a17.getClass();
                                                if ((a17 instanceof AbstractC11250i4.b) && a17.b().S0()) {
                                                    a14.a(U3.f57024g);
                                                    a14.f56934f = Y3.a(C11384q3.a.a(ConstantDescs.INIT_NAME));
                                                    a14.f56933e = a17;
                                                    a14.f56935g = k();
                                                }
                                            } else if (a(ConstantDescs.CLASS_INIT_NAME)) {
                                                AbstractC11250i4 a18 = AbstractC11250i4.a(aVar2, AbstractC11250i4.a.f57414c, this.f57805i.f57725b);
                                                a18.getClass();
                                                if ((a18 instanceof AbstractC11250i4.b) && a18.b().S0()) {
                                                    a14.a(U3.f57023f);
                                                    a14.f56934f = Y3.a(C11384q3.a.a(ConstantDescs.CLASS_INIT_NAME));
                                                    a14.f56933e = a18;
                                                    a14.f56935g = k();
                                                }
                                            } else {
                                                TextPosition h11 = h();
                                                C11400r3 a19 = a(3, false);
                                                if (a19 == null) {
                                                    aVar3 = null;
                                                } else {
                                                    if (!f57796j && a19.f57765b) {
                                                        throw new AssertionError();
                                                    }
                                                    aVar3 = a19.f57764a;
                                                }
                                                if (aVar3 != null) {
                                                    t();
                                                    if (d('(')) {
                                                        if (!aVar3.a() || aVar3.b()) {
                                                            if (aVar3.f57729a.equals(ConstantDescs.CLASS_INIT_NAME)) {
                                                                this.f57805i.f57727d.warning(new StringDiagnostic("Member rule for <clinit> has no effect.", this.f57804h, h11));
                                                            } else if (!aVar3.f57729a.contains("<")) {
                                                                if (aVar3.f57729a.contains(">")) {
                                                                    throw b("Unexpected character '>' in method name. The character '>' is only allowed in the method name '<init>'.", h11);
                                                                }
                                                            } else {
                                                                throw b("Unexpected character '<' in method name. The character '<' is only allowed in the method name '<init>'.", h11);
                                                            }
                                                        }
                                                        a14.a(U3.f57026i);
                                                        a14.f56934f = Y3.a(aVar3);
                                                        a14.f56933e = AbstractC11250i4.a(aVar2, AbstractC11250i4.a.f57414c, this.f57805i.f57725b);
                                                        a14.f56935g = k();
                                                    } else {
                                                        if (aVar2.b()) {
                                                            b(h10, "type", aVar2.f57729a);
                                                        }
                                                        if (aVar3.b()) {
                                                            b(h11, "field name", aVar3.f57729a);
                                                        }
                                                        a14.a(U3.f57019b);
                                                        a14.f56934f = Y3.a(aVar3);
                                                        a14.f56933e = AbstractC11250i4.a(aVar2, AbstractC11250i4.a.f57414c, this.f57805i.f57725b);
                                                    }
                                                    t();
                                                    TextPosition h12 = h();
                                                    if (a("return")) {
                                                        if (z10) {
                                                            t();
                                                            if (a("true")) {
                                                                a14.f56936h = new T3(true);
                                                            } else if (a("false")) {
                                                                a14.f56936h = new T3(false);
                                                            } else if (a("null")) {
                                                                a14.f56936h = new T3(C8854p10.c());
                                                            } else {
                                                                Integer b10 = b();
                                                                if (b10 != null) {
                                                                    t();
                                                                    if (a(ClasspathEntry.DOT_DOT)) {
                                                                        t();
                                                                        num = b();
                                                                        if (num == null) {
                                                                            throw b("Expected integer value");
                                                                        }
                                                                    } else {
                                                                        num = b10;
                                                                    }
                                                                    a14.f56936h = new T3(new C8091kU(b10.intValue(), num.intValue()));
                                                                } else {
                                                                    C8854p10 h13 = C8854p10.h();
                                                                    if (a("_NONNULL_")) {
                                                                        h13 = C8854p10.b();
                                                                        t();
                                                                        if (a(';')) {
                                                                            a14.f56936h = new T3(h13);
                                                                            z12 = true;
                                                                            a10 = !(a14.f56932d == null ? z12 : false) ? a14.a() : null;
                                                                            if (a10 == null) {
                                                                                aVar.f57304n.add(a10);
                                                                                z11 = z12;
                                                                                i10 = 2;
                                                                                c10 = '@';
                                                                            } else {
                                                                                t();
                                                                                b(JavaElement.JEM_ANNOTATION);
                                                                                return;
                                                                            }
                                                                        }
                                                                    }
                                                                    t();
                                                                    int i12 = this.f57799c;
                                                                    if (!a(i12)) {
                                                                        int codePointAt = this.f57798b.codePointAt(i12);
                                                                        if (AbstractC10552zB.a(this.f57798b.codePointAt(i12))) {
                                                                            int charCount2 = Character.charCount(codePointAt) + i12;
                                                                            while (!a(charCount2)) {
                                                                                int codePointAt2 = this.f57798b.codePointAt(charCount2);
                                                                                if (codePointAt2 == 46) {
                                                                                    charCount2++;
                                                                                    if (!a(charCount2)) {
                                                                                        if (!f57796j && a(charCount2)) {
                                                                                            throw new AssertionError();
                                                                                        }
                                                                                        if (AbstractC10552zB.a(this.f57798b.charAt(charCount2))) {
                                                                                            charCount = Character.charCount(this.f57798b.codePointAt(charCount2));
                                                                                            charCount2 += charCount;
                                                                                        }
                                                                                    }
                                                                                    this.f57799c = charCount2;
                                                                                    str = this.f57798b.substring(i12, charCount2);
                                                                                } else if (AbstractC10552zB.a(codePointAt2)) {
                                                                                    charCount = Character.charCount(codePointAt2);
                                                                                    charCount2 += charCount;
                                                                                } else {
                                                                                    this.f57799c = charCount2;
                                                                                    str = this.f57798b.substring(i12, charCount2);
                                                                                }
                                                                                if (str != null) {
                                                                                    int lastIndexOf = str.lastIndexOf(".");
                                                                                    z12 = true;
                                                                                    a14.f56936h = new T3(this.f57805i.f57725b.d(C4932Bl.H(str.substring(0, lastIndexOf))), this.f57805i.f57725b.b(str.substring(lastIndexOf + 1)), h13);
                                                                                    if (a14.f56932d != null ? z12 : false) {
                                                                                        t();
                                                                                        b(';');
                                                                                    }
                                                                                    if (!(a14.f56932d == null ? z12 : false)) {
                                                                                    }
                                                                                    if (a10 == null) {
                                                                                    }
                                                                                } else {
                                                                                    throw b("Expected qualified field");
                                                                                }
                                                                            }
                                                                            this.f57799c = charCount2;
                                                                            str = this.f57798b.substring(i12, charCount2);
                                                                            if (str != null) {
                                                                            }
                                                                        }
                                                                    }
                                                                    str = null;
                                                                    if (str != null) {
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            throw b("Unexpected value specification", h12);
                                                        }
                                                    }
                                                } else {
                                                    throw b("Expected field or method name");
                                                }
                                            }
                                            z12 = true;
                                            if (a14.f56932d != null ? z12 : false) {
                                            }
                                            if (!(a14.f56932d == null ? z12 : false)) {
                                            }
                                            if (a10 == null) {
                                            }
                                        }
                                    }
                                }
                                z12 = z11;
                                if (a14.f56932d != null ? z12 : false) {
                                }
                                if (!(a14.f56932d == null ? z12 : false)) {
                                }
                                if (a10 == null) {
                                }
                            }
                        }
                    }
                    abstractC11250i4 = null;
                    if (abstractC11250i4 == null) {
                    }
                }
            }
        }
        Collection collection = null;
        while (true) {
            t();
            int i13 = this.f57799c;
            if (a('@')) {
                C11384q3.a l11 = l();
                if (l11.f57729a.equals("interface")) {
                    this.f57799c = i13;
                } else {
                    abstractC11250i42 = AbstractC11250i4.a(l11, AbstractC11250i4.a.f57413b, this.f57805i.f57725b);
                    if (abstractC11250i42 != null) {
                        break;
                    }
                    if (collection == null) {
                        collection = new ArrayList(2);
                    }
                    collection.add(abstractC11250i42);
                }
            }
            abstractC11250i42 = null;
            if (abstractC11250i42 != null) {
            }
        }
        if (collection == null) {
            collection = Collections.EMPTY_LIST;
        }
        if (!AbstractC11198f3.a.f57290o && collection == null) {
            throw new AssertionError();
        }
        aVar.f57301k.b((Iterable) collection);
        aVar.f57302l = AbstractC11250i4.a(l(), AbstractC11250i4.a.f57413b, this.f57805i.f57725b);
        t();
        if (!g()) {
        }
    }

    public final boolean d(char c10) {
        return !g() && this.f57798b.charAt(this.f57799c) == c10;
    }

    public final boolean f(String str) {
        if (!a(str)) {
            return false;
        }
        t();
        if (!i()) {
            return true;
        }
        t();
        while (!g() && !Character.isWhitespace(this.f57798b.charAt(this.f57799c))) {
            String str2 = this.f57798b;
            int i10 = this.f57799c;
            this.f57799c = i10 + 1;
            str2.charAt(i10);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final K3 g(TextPosition textPosition) {
        K3.a E10 = K3.E();
        E10.f57291a = this.f57804h;
        E10.f57292b = textPosition;
        if (a("names")) {
            E10.a(O3.f56853b);
            E10.f56697q.f56735e = true;
        } else if (a("class")) {
            if (a("members")) {
                E10.a(O3.f56854c);
            } else if (a("eswithmembers")) {
                E10.a(O3.f56855d);
            } else if (a("membernames")) {
                E10.a(O3.f56854c);
                E10.f56697q.f56735e = true;
            } else if (a("eswithmembernames")) {
                E10.a(O3.f56855d);
                E10.f56697q.f56735e = true;
            } else {
                h("-keepclass");
                TextPosition h10 = h();
                a("-");
                a(h10, f(), "");
                throw null;
            }
        } else {
            E10.a(O3.f56853b);
        }
        if (!g() && !Character.isWhitespace(this.f57798b.charAt(this.f57799c)) && this.f57798b.charAt(this.f57799c) != ',') {
            h("-keep");
            TextPosition h11 = h();
            a("-");
            a(h11, f(), "");
            throw null;
        }
        t();
        while (a(IIndexConstants.PARAMETER_SEPARATOR)) {
            t();
            TextPosition h12 = h();
            if (a("allow")) {
                if (a("shrinking")) {
                    E10.f56697q.f56735e = true;
                } else if (a("optimization")) {
                    E10.f56697q.f56736f = true;
                } else if (a("obfuscation")) {
                    M3.a aVar = E10.f56697q;
                    aVar.f56737g = true;
                    aVar.f56734d = true;
                } else if (a("accessmodification")) {
                    E10.f56697q.f56731a = true;
                } else if (a("repackage")) {
                    E10.f56697q.f56734d = true;
                } else if (a("permittedsubclassesremoval")) {
                    E10.f56697q.f56739i = true;
                } else if (this.f57805i.f57726c.f57851g) {
                    if (a("annotationremoval")) {
                        E10.f56697q.f56732b = true;
                    } else if (a("codereplacement")) {
                        E10.f56697q.f56733c = true;
                    }
                }
            } else if (a("includedescriptorclasses")) {
                E10.f56697q.f56738h = true;
            } else if (a("includecode")) {
                b(h12);
            }
            t();
        }
        a(E10);
        c((AbstractC11198f3.a) E10, false);
        TextPosition h13 = h();
        K3.a aVar2 = (K3.a) E10.a(a(this.f57798b, textPosition, h13));
        aVar2.f57293c = h13;
        K3 a10 = aVar2.a();
        C11384q3 c11384q3 = this.f57805i;
        C11434t3 c11434t3 = c11384q3.f57726c;
        C11350o3.a aVar3 = c11384q3.f57724a;
        c11434t3.getClass();
        if ((!aVar3.f57635L && !c11434t3.f57845a) || !a10.g().isEmpty() || a10.D() == O3.f56855d) {
            return a10;
        }
        C11384q3 c11384q32 = this.f57805i;
        C11434t3 c11434t32 = c11384q32.f57726c;
        C11350o3.a aVar4 = c11384q32.f57724a;
        if (!C11434t3.f57844h) {
            c11434t32.getClass();
            if (!aVar4.f57635L && !c11434t32.f57845a) {
                throw new AssertionError();
            }
        } else {
            c11434t32.getClass();
        }
        if (!aVar4.f57635L && c11434t32.f57846b) {
            this.f57805i.f57727d.warning(com.android.tools.r8.errors.e.a(a10));
        }
        R3.a a11 = R3.a();
        C11384q3.a a12 = C11384q3.a.a(ConstantDescs.INIT_NAME);
        a11.getClass();
        a11.f56934f = Y3.a(a12);
        R3.a a13 = a11.a(U3.f57024g);
        a13.f56935g = Collections.EMPTY_LIST;
        R3[] r3Arr = {a13.a()};
        ArrayList arrayList = new ArrayList(CT.a(1));
        Collections.addAll(arrayList, r3Arr);
        return ((K3.a) E10.a(arrayList)).a();
    }

    public final char d() {
        if (!(g() ? false : new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11417s3.this.e(((Character) obj).charValue());
            }
        }.test(Character.valueOf(this.f57798b.charAt(this.f57799c))))) {
            return (char) 0;
        }
        String str = this.f57798b;
        int i10 = this.f57799c;
        this.f57799c = i10 + 1;
        return str.charAt(i10);
    }

    public final boolean e(String str) {
        if (!a(str)) {
            return false;
        }
        try {
            K3.a E10 = K3.E();
            a(E10);
            c((AbstractC11198f3.a) E10, true);
            return true;
        } catch (C11233h4 e10) {
            C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
            c5094Ef0.a(null, e10);
            throw c5094Ef0.f39969c;
        }
    }

    public static boolean d(int i10) {
        return !Character.isWhitespace(i10);
    }

    public final String j(TextPosition textPosition) {
        String str = this.f57798b.split("\n", -1)[textPosition.getLine() - 1];
        String str2 = CharBuffer.allocate(textPosition.getColumn() - 1).toString().replace((char) 0, C15883c.f126249O) + "^";
        return this.f57797a + b3.s.f32937c + (textPosition.getLine() + 1) + b3.s.f32937c + textPosition.getColumn() + "\n" + str + "\n" + str2;
    }

    public static boolean f(int i10) {
        return Character.isAlphabetic(i10) || i10 == 47 || i10 == 42;
    }

    public final void a(C11383q2 c11383q2) {
        a((AbstractC11198f3.a) c11383q2, false);
    }

    public final void k(TextPosition textPosition) {
        this.f57805i.f57727d.warning(new StringDiagnostic("Option -repackageclasses overrides -flattenpackagehierarchy", this.f57804h, a(textPosition)));
    }

    public final void a(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            AbstractC11401r4 abstractC11401r4 = (AbstractC11401r4) it.next();
            if (abstractC11401r4.d()) {
                AbstractC11401r4.a a10 = abstractC11401r4.a();
                int size = arrayList.size();
                int i10 = a10.f57767b;
                if (size >= i10) {
                    a10.a((AbstractC11401r4.b) arrayList.get(i10 - 1));
                    z10 = true;
                } else {
                    C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
                    c5094Ef0.a(null, new StringDiagnostic("Wildcard <" + a10.f57767b + "> is invalid (only seen " + arrayList.size() + " at this point).", this.f57804h, h()));
                    throw c5094Ef0.f39969c;
                }
            } else {
                if (!f57796j && !abstractC11401r4.e()) {
                    throw new AssertionError();
                }
                if (!z10) {
                    arrayList.add(abstractC11401r4.b());
                }
            }
        }
    }

    public final void c(char c10) {
        if (!f57796j && !e(c10)) {
            throw new AssertionError();
        }
        if (d(c10)) {
            a(c10);
            return;
        }
        throw b("Missing closing quote");
    }

    public final String f() {
        return a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return C11417s3.d(i10);
            }
        });
    }

    public static boolean e(int i10) {
        return (i10 == 44 || i10 == 59 || i10 == 41 || Character.isWhitespace(i10)) ? false : true;
    }

    public final String c() {
        return a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return C11417s3.c(i10);
            }
        });
    }

    public final String e() {
        final char d10 = d();
        String a10 = a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return C11417s3.a(d10, i10);
            }
        });
        if (e(d10)) {
            c(d10);
        }
        return a10 == null ? "" : a10;
    }

    public final void c(String str, TextPosition textPosition) {
        this.f57805i.f57727d.warning(new StringDiagnostic("Ignoring option: -" + str, this.f57804h, a(textPosition)));
    }

    public final void h(String str) {
        if (!f57796j && this.f57799c < str.length()) {
            throw new AssertionError();
        }
        this.f57799c -= str.length();
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (!f57796j && str.charAt(i10) != this.f57798b.charAt(this.f57799c + i10)) {
                throw new AssertionError();
            }
        }
    }

    public final boolean a(AbstractC11198f3.a aVar) {
        S2 s22;
        boolean z10 = false;
        while (true) {
            t();
            int i10 = this.f57799c;
            AbstractC11250i4 abstractC11250i4 = null;
            if (a('@')) {
                C11384q3.a l10 = l();
                if (l10.f57729a.equals("interface")) {
                    this.f57799c = i10;
                } else {
                    abstractC11250i4 = AbstractC11250i4.a(l10, AbstractC11250i4.a.f57413b, this.f57805i.f57725b);
                }
            }
            if (abstractC11250i4 != null) {
                aVar.f57295e.a(abstractC11250i4);
            } else {
                int i11 = this.f57799c;
                t();
                if (a('!')) {
                    s22 = aVar.f57297g;
                } else {
                    s22 = aVar.f57296f;
                }
                t();
                if (a("public")) {
                    s22.f56965a |= 1;
                } else if (a("final")) {
                    s22.f56965a |= 16;
                } else if (a("abstract")) {
                    s22.f56965a |= 1024;
                } else {
                    this.f57799c = i11;
                    return z10;
                }
            }
            z10 = true;
        }
    }

    public final TextPosition h() {
        int i10 = this.f57799c;
        return new TextPosition(i10, this.f57801e, (i10 - this.f57802f) + 1);
    }

    public final void a(AbstractC11198f3.a aVar, InterfaceC5930Sr0 interfaceC5930Sr0, Consumer consumer) {
        t();
        TextPosition h10 = h();
        if (a('!')) {
            aVar.f57298h = true;
        }
        if (a('@')) {
            t();
            if (a("interface")) {
                aVar.a(EnumC11299l3.f57505b);
            } else {
                consumer.accept(h10);
                return;
            }
        } else if (a("interface")) {
            aVar.a(EnumC11299l3.f57508e);
        } else if (a("class")) {
            aVar.a(EnumC11299l3.f57506c);
        } else if (a("enum")) {
            aVar.a(EnumC11299l3.f57507d);
        } else {
            consumer.accept(h10);
            return;
        }
        interfaceC5930Sr0.a();
    }

    public final Path a(final boolean z10) {
        TextPosition h10 = h();
        t();
        if (this.f57803g != null) {
            final char d10 = d();
            final boolean e10 = e(d10);
            String a10 = a(new IntPredicate() {
                @Override
                public final boolean test(int i10) {
                    return C11417s3.a(e10, d10, z10, i10);
                }
            });
            if (a10 != null) {
                if (e10) {
                    if (!g()) {
                        a(d10);
                    } else {
                        throw b("No closing " + d10 + " quote", h10);
                    }
                }
                return this.f57803g.resolve(c(a10));
            }
            throw b("File name expected", h10);
        }
        throw b("Options with file names are not supported", h10);
    }

    public static boolean a(boolean z10, char c10, boolean z11, int i10) {
        if (z10 && i10 == c10) {
            return false;
        }
        if (!z10 && i10 == File.pathSeparatorChar && z11) {
            return false;
        }
        if (z10 || !Character.isWhitespace(i10)) {
            return z10 || i10 != 40;
        }
        return false;
    }

    public final boolean a(int i10) {
        return i10 == this.f57798b.length();
    }

    public final boolean a(char c10) {
        if (!d(c10)) {
            return false;
        }
        this.f57799c++;
        return true;
    }

    public final boolean a(String str) {
        if (this.f57798b.length() - this.f57799c < str.length()) {
            return false;
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (str.charAt(i10) != this.f57798b.charAt(this.f57799c + i10)) {
                return false;
            }
        }
        this.f57799c = str.length() + this.f57799c;
        return true;
    }

    public static boolean a(char c10, int i10) {
        return (Character.isWhitespace(i10) || i10 == c10) ? false : true;
    }

    public final String a() {
        return a(new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return C11417s3.this.b(i10);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0218 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C11400r3 a(int i10, boolean z10) {
        int charCount;
        int i11 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        t();
        char d10 = d();
        boolean e10 = e(d10);
        boolean a10 = z10 ? a('!') : false;
        int i12 = this.f57799c;
        int i13 = i12;
        StringBuilder sb2 = null;
        StringBuilder sb3 = null;
        int i14 = 0;
        while (!a(i13)) {
            int codePointAt = this.f57798b.codePointAt(i13);
            boolean z11 = f57796j;
            if (!z11 && sb2 != null && sb3 != null) {
                throw new AssertionError();
            }
            if (sb3 == null) {
                if (sb2 != null) {
                    if (codePointAt == 42) {
                        if (i14 >= 3) {
                            c7051eC.a(new AbstractC11401r4.b(sb2.toString()));
                            sb2 = new StringBuilder();
                            i14 = 0;
                        }
                        sb2.append((char) codePointAt);
                        i14++;
                        charCount = Character.charCount(codePointAt);
                        i13 += charCount;
                    } else {
                        c7051eC.a(new AbstractC11401r4.b(sb2.toString()));
                        sb2 = null;
                        i14 = 0;
                    }
                }
                if (z11) {
                }
                if (codePointAt != 42) {
                }
                i13 += charCount;
            } else if (codePointAt == 62) {
                try {
                    int parseUnsignedInt = Integer.parseUnsignedInt(sb3.toString());
                    if (parseUnsignedInt > 0) {
                        c7051eC.a(new AbstractC11401r4.a(parseUnsignedInt));
                        try {
                            i13 += Character.charCount(codePointAt);
                            sb3 = null;
                        } catch (NumberFormatException unused) {
                            sb3 = null;
                            C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
                            c5094Ef0.a(null, new StringDiagnostic("Wildcard <" + sb3.toString() + "> is invalid.", this.f57804h, h()));
                            throw c5094Ef0.f39969c;
                        }
                    } else {
                        C5094Ef0 c5094Ef02 = this.f57805i.f57727d;
                        c5094Ef02.a(null, new StringDiagnostic("Wildcard <" + parseUnsignedInt + "> is invalid.", this.f57804h, h()));
                        throw c5094Ef02.f39969c;
                    }
                } catch (NumberFormatException unused2) {
                }
            } else if ((48 <= codePointAt && codePointAt <= 57) || (codePointAt == 45 && sb3.length() == 0)) {
                sb3.append((char) codePointAt);
                charCount = Character.charCount(codePointAt);
                i13 += charCount;
            } else {
                if (i10 == 2) {
                    C5094Ef0 c5094Ef03 = this.f57805i.f57727d;
                    c5094Ef03.a(null, new StringDiagnostic("Use of generics not allowed for java type.", this.f57804h, h()));
                    throw c5094Ef03.f39969c;
                }
                sb3 = null;
                if (z11 && (sb2 != null || sb3 != null)) {
                    throw new AssertionError();
                }
                if (codePointAt != 42) {
                    if (i10 == 2) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append((char) codePointAt);
                        sb2 = sb4;
                        i14 = 1;
                    } else {
                        c7051eC.a(new AbstractC11401r4.b(String.valueOf((char) codePointAt)));
                    }
                    charCount = Character.charCount(codePointAt);
                } else if (codePointAt != 63 && codePointAt != 37) {
                    if (i10 != 1 ? b(codePointAt) || codePointAt == 62 : AbstractC10552zB.a(codePointAt) || codePointAt == 46 || codePointAt == 42 || codePointAt == 63) {
                        charCount = Character.charCount(codePointAt);
                    } else if (i10 != 1 && codePointAt == 60) {
                        sb3 = new StringBuilder();
                        charCount = Character.charCount(codePointAt);
                    } else {
                        if (e10 && d10 != codePointAt) {
                            C5094Ef0 c5094Ef04 = this.f57805i.f57727d;
                            c5094Ef04.a(null, new StringDiagnostic("Invalid character '" + ((char) codePointAt) + "', expected end-quote.", this.f57804h, h()));
                            throw c5094Ef04.f39969c;
                        }
                        this.f57799c = !e10 ? i13 + 1 : i13;
                        if (sb2 != null) {
                            c7051eC.a(new AbstractC11401r4.b(sb2.toString()));
                        }
                        if (i10 == 2 || sb3 == null) {
                            if (i12 != i13) {
                                return null;
                            }
                            return new C11400r3(this.f57798b.substring(i12, i13), c7051eC.a(), a10);
                        }
                        C5094Ef0 c5094Ef05 = this.f57805i.f57727d;
                        c5094Ef05.a(null, new StringDiagnostic("Missing closing angular bracket", this.f57804h, h()));
                        throw c5094Ef05.f39969c;
                    }
                } else {
                    c7051eC.a(new AbstractC11401r4.b(String.valueOf((char) codePointAt)));
                    charCount = Character.charCount(codePointAt);
                }
                i13 += charCount;
            }
        }
        this.f57799c = !e10 ? i13 + 1 : i13;
        if (sb2 != null) {
        }
        if (i10 == 2) {
        }
        if (i12 != i13) {
        }
    }

    public final boolean g() {
        return this.f57799c == this.f57798b.length();
    }

    public final String a(IntPredicate intPredicate) {
        int i10 = this.f57799c;
        int i11 = i10;
        while (!a(i11)) {
            int codePointAt = this.f57798b.codePointAt(i11);
            if (!intPredicate.test(codePointAt)) {
                break;
            }
            i11 += Character.charCount(codePointAt);
        }
        if (i10 == i11) {
            return null;
        }
        this.f57799c = i11;
        return this.f57798b.substring(i10, i11);
    }

    public final void a(Consumer consumer) {
        t();
        if (i()) {
            AbstractC11147c3.a a10 = AbstractC11147c3.a();
            do {
                C11400r3 a11 = a(2, true);
                if (a11 != null) {
                    a10.a(a11.f57765b, AbstractC11250i4.a(a11.f57764a, AbstractC11250i4.a.f57413b, this.f57805i.f57725b));
                    t();
                } else {
                    throw b("Class name expected");
                }
            } while (a(IIndexConstants.PARAMETER_SEPARATOR));
            consumer.accept(a10.a());
            return;
        }
        boolean z10 = AbstractC11250i4.f57412a;
        consumer.accept(AbstractC11147c3.a(C11266j4.f57449c));
    }

    public final boolean a(Integer num) {
        return (num.intValue() == 44 || Character.isWhitespace(num.intValue())) ? false : true;
    }

    public final void a(String str, TextPosition textPosition) {
        C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
        StringDiagnostic stringDiagnostic = new StringDiagnostic("Ignoring option: -" + str, this.f57804h, a(textPosition));
        synchronized (c5094Ef0) {
            c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
        }
    }

    public final Position a(TextPosition textPosition) {
        return textPosition.getOffset() == ((long) this.f57799c) ? textPosition : new TextRange(textPosition, h());
    }

    public final String a(String str, Position position, TextPosition textPosition) {
        if (position instanceof TextPosition) {
            TextPosition textPosition2 = (TextPosition) position;
            this.f57805i.getClass();
            long offset = textPosition.getOffset() - textPosition2.getOffset();
            if (textPosition2.getOffset() >= 0 && textPosition.getOffset() >= 0 && textPosition2.getOffset() < str.length() && textPosition.getOffset() <= str.length() && offset > 0) {
                return str.substring(textPosition2.getOffsetAsInt(), textPosition.getOffsetAsInt());
            }
        }
        return null;
    }

    public final C11233h4 b(String str) {
        return new C11233h4(str, u(), this.f57804h, h());
    }

    public final C11233h4 b(String str, TextPosition textPosition) {
        return new C11233h4(str, j(textPosition), this.f57804h, a(textPosition));
    }

    public final void b(TextPosition textPosition, String str, String str2) {
        this.f57805i.f57727d.warning(new StringDiagnostic("The " + str + " \"" + str2 + "\" is used in a field rule. The characters in this " + str + " are legal for the JVM, but unlikely to originate from a source language. Maybe this is not the rule you are looking for.", this.f57804h, a(textPosition)));
    }

    public final void b(TextPosition textPosition) {
        C5094Ef0 c5094Ef0 = this.f57805i.f57727d;
        StringDiagnostic stringDiagnostic = new StringDiagnostic("Ignoring modifier: includecode", this.f57804h, a(textPosition));
        synchronized (c5094Ef0) {
            c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
        }
    }
}
