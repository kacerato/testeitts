package com.android.tools.r8.kotlin;

import android.provider.Contacts;
import android.speech.RecognizerResultsIntent;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AbstractC10076wL;
import com.android.tools.r8.internal.AbstractC9668tv;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.BQ;
import com.android.tools.r8.internal.C10086wQ;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C10587zQ;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6417aQ;
import com.android.tools.r8.internal.C6917dQ;
import com.android.tools.r8.internal.C7083eQ;
import com.android.tools.r8.internal.C7417gQ;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C7751iQ;
import com.android.tools.r8.internal.C7916jQ;
import com.android.tools.r8.internal.C8584nQ;
import com.android.tools.r8.internal.C8751oQ;
import com.android.tools.r8.internal.C8918pQ;
import com.android.tools.r8.internal.C8998pu;
import com.android.tools.r8.internal.C9251rQ;
import com.android.tools.r8.internal.C9418sQ;
import com.android.tools.r8.internal.C9577tM;
import com.android.tools.r8.internal.C9919vQ;
import com.android.tools.r8.internal.CL;
import com.android.tools.r8.internal.CQ;
import com.android.tools.r8.internal.DQ;
import com.android.tools.r8.internal.EQ;
import com.android.tools.r8.internal.EnumC4899Ax0;
import com.android.tools.r8.internal.EnumC7613hd;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.GP;
import com.android.tools.r8.internal.GQ;
import com.android.tools.r8.internal.HQ;
import com.android.tools.r8.internal.HV;
import com.android.tools.r8.internal.HX;
import com.android.tools.r8.internal.InterfaceC6522b2;
import com.android.tools.r8.internal.InterfaceC7584hQ;
import com.android.tools.r8.internal.JP;
import com.android.tools.r8.internal.NQ;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.PQ;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;
import org.apache.commons.math3.linear.ConjugateGradient;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.openjdk.tools.doclint.DocLint;

public class C10758c0 {

    public static final boolean f55265a = true;

    public static String a(String str, NQ nq) {
        if (nq instanceof NQ.a) {
            return a((NQ.a) nq, str);
        }
        if (nq instanceof NQ.b) {
            return a((NQ.b) nq, str);
        }
        if (nq instanceof NQ.c) {
            return a((NQ.c) nq, str);
        }
        if (nq instanceof NQ.d) {
            return a((NQ.d) nq, str);
        }
        if (nq instanceof PQ) {
            return a((PQ) nq, str);
        }
        throw new C5417Jv0("An error would be thrown before in createKotlinInfo");
    }

    public static void b(final String str, String str2, StringBuilder sb2, final Consumer consumer) {
        InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
            @Override
            public final void a() {
                Consumer.this.accept(str + GlideException.a.f59088e);
            }
        };
        String str3 = "{" + C10656zq0.f54547c;
        String str4 = str + VectorFormat.DEFAULT_SUFFIX;
        sb2.append(str2);
        sb2.append(str3);
        interfaceC6522b2.a();
        sb2.append(str4);
    }

    public static void c(StringBuilder sb2, C7916jQ c7916jQ, String str) {
        a(sb2, c7916jQ.f49231d, str);
    }

    public static void e(StringBuilder sb2, C9919vQ c9919vQ, String str) {
        a(sb2, c9919vQ.f53108i, str);
    }

    public static void f(final StringBuilder sb2, C6417aQ c6417aQ, String str) {
        a(str, "KmType", sb2, c6417aQ.f46527o, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C10420yQ) obj2, (String) obj);
            }
        });
    }

    public static void c(StringBuilder sb2, C6417aQ c6417aQ, String str) {
        a(sb2, c6417aQ.f46526n, str);
    }

    public static void f(final StringBuilder sb2, C8918pQ c8918pQ, String str) {
        a(str, "KmType", sb2, c8918pQ.f51519e, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C10420yQ) obj2, (String) obj);
            }
        });
    }

    public static void d(StringBuilder sb2, C9919vQ c9919vQ, String str) {
        a(sb2, c9919vQ.f53105f, str);
    }

    public static void d(final StringBuilder sb2, C6417aQ c6417aQ, String str) {
        GJ.c(c6417aQ, "<this>");
        a(str, "KmProperty", sb2, AL.a(c6417aQ).f53737a, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C9919vQ) obj2, (String) obj);
            }
        });
    }

    public static void f(final StringBuilder sb2, C9919vQ c9919vQ, String str) {
        a(str, "KmType", sb2, c9919vQ.f53107h, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C10420yQ) obj2, (String) obj);
            }
        });
    }

    public static void f(final StringBuilder sb2, final C10587zQ c10587zQ, String str) {
        a(str, "annotations", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmAnnotation", r0, c10587zQ.a(), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a((GP) obj3, StringBuilder.this, (String) obj2);
                    }
                });
            }
        });
        a(str, "expandedType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c10587zQ.f54378e, (String) obj);
            }
        });
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c10587zQ, "<this>");
        hashMap.put("hasAnnotations", Boolean.valueOf(C7698i5.f48817h.a(c10587zQ, xyArr[6])));
        hashMap.put("visibility", (EnumC4899Ax0) C7698i5.f48804Z.a(c10587zQ, xyArr[50]));
        a(str, sb2, hashMap, "flags");
        a(str, "name", sb2, c10587zQ.b());
        a(str, "typeParameters", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c10587zQ.c(), (String) obj);
            }
        });
        a(str, "underlyingType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c10587zQ.f54377d, (String) obj);
            }
        });
        a(str, sb2, c10587zQ.f54380g);
    }

    public static void e(final StringBuilder sb2, C7916jQ c7916jQ, String str) {
        a(str, "KmEffectExpression", sb2, c7916jQ.f49233f, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C7916jQ) obj2, (String) obj);
            }
        });
    }

    public static String a(final NQ.a aVar, String str) {
        final StringBuilder sb2 = new StringBuilder(str);
        b(str, "Metadata.Class", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, StringBuilder.this, aVar.c());
            }
        });
        return sb2.toString();
    }

    public static void d(final StringBuilder sb2, final C10420yQ c10420yQ, final String str) {
        a(str, sb2, I.a(c10420yQ), "flags");
        a(str, "classifier", sb2, c10420yQ.f54009b.toString());
        a(str, IJavaModelMarker.ARGUMENTS, sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmTypeProjection", r0, c10420yQ.b(), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (DQ) obj3, (String) obj2);
                    }
                });
            }
        });
        a(str, "abbreviatedType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(sb2, c10420yQ.a(), String.this);
            }
        });
        a(str, "outerType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(sb2, c10420yQ.e(), String.this);
            }
        });
        final C8751oQ d10 = c10420yQ.d();
        if (d10 != null) {
            a(str, "flexibleTypeUpperBound", sb2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10758c0.b(String.this, "FlexibleTypeUpperBound", r1, new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            C10758c0.b(StringBuilder.this, r2, (String) obj2);
                        }
                    });
                }
            });
        }
        boolean b10 = BL.b(c10420yQ);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(b10);
        a(str, "raw", sb2, sb3.toString());
        a(str, "annotations", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmAnnotion", r0, BL.a(c10420yQ), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a((GP) obj3, StringBuilder.this, (String) obj2);
                    }
                });
            }
        });
    }

    public static String a(final NQ.b bVar, String str) {
        final StringBuilder sb2 = new StringBuilder(str);
        b(str, "Metadata.FileFacade", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, StringBuilder.this, bVar.c());
            }
        });
        return sb2.toString();
    }

    public static void c(final StringBuilder sb2, final DQ dq, String str) {
        a(str, "type", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, dq.a(), (String) obj);
            }
        });
        if (dq.b() != null) {
            a(str, "variance", sb2, dq.b().name());
        }
    }

    public static String a(NQ.c cVar, String str) {
        return str + "MetaData.MultiFileClassFacade(" + C10656zq0.a(", ", (Iterable) cVar.c()) + ")";
    }

    public static void c(final StringBuilder sb2, BQ bq, String str) {
        GJ.c(bq, "<this>");
        C8584nQ c8584nQ = C9577tM.f52588b;
        GJ.c(c8584nQ, "type");
        a(str, "KmAnnotation", sb2, ((C9577tM) ((CQ) AbstractC9668tv.a(bq.f38900f, c8584nQ))).f52589a, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a((GP) obj2, StringBuilder.this, (String) obj);
            }
        });
    }

    public static String a(final NQ.d dVar, String str) {
        final StringBuilder sb2 = new StringBuilder(str);
        b(str, "Metadata.MultiFileClassPart", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, dVar, (String) obj);
            }
        });
        return sb2.toString();
    }

    public static void b(final StringBuilder sb2, final C8751oQ c8751oQ, String str) {
        a(str, "typeFlexibilityId", sb2, c8751oQ.b());
        a(str, "type", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c8751oQ.a(), (String) obj);
            }
        });
    }

    public static void a(StringBuilder sb2, NQ.d dVar, String str) {
        a(str, "facadeClassName", sb2, dVar.f42591c);
        a(str, sb2, dVar.c());
    }

    public static void d(final StringBuilder sb2, final EQ eq, String str) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(eq, "<this>");
        hashMap.put("hasAnnotations", Boolean.valueOf(C7698i5.f48816g.a(eq, xyArr[5])));
        hashMap.put("declaresDefaultValue", Boolean.valueOf(C7698i5.a(eq)));
        hashMap.put("crossInline", Boolean.valueOf(C7698i5.f48808b0.a(eq, xyArr[52])));
        hashMap.put("noInline", Boolean.valueOf(C7698i5.f48810c0.a(eq, xyArr[53])));
        a(str, sb2, hashMap, "flags");
        a(str, "name", sb2, eq.f39850b);
        a(str, "type", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, eq.a(), (String) obj);
            }
        });
        a(str, "varargElementType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, eq.b(), (String) obj);
            }
        });
    }

    public static void b(final StringBuilder sb2, List list, String str) {
        a(str, "KmValueParameter", sb2, list, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (EQ) obj2, (String) obj);
            }
        });
    }

    public static String a(final PQ pq, String str) {
        final StringBuilder sb2 = new StringBuilder(str);
        b(str, "Metadata.SyntheticClass", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(PQ.this, sb2, (String) obj);
            }
        });
        return sb2.toString();
    }

    public static void a(PQ pq, final StringBuilder sb2, String str) {
        try {
            final C9251rQ c9251rQ = pq.f43202b;
            if (c9251rQ != null) {
                a(str, "function", sb2, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C10758c0.a(StringBuilder.this, c9251rQ.f52036a, (String) obj);
                    }
                });
            } else {
                a(str, "function", sb2, "null");
            }
        } catch (Exception e10) {
            a(str, "function", sb2, e10.getMessage());
        }
    }

    public static void b(GP gp, final StringBuilder sb2, String str) {
        final Map<String, JP> a10 = gp.a();
        a(str, "{ key: String, value: KmAnnotationArgument<?> }", sb2, a10.o(), new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.b((String) obj, "", r0, new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        C10758c0.a(r4, r0, r1, new Consumer() {
                            @Override
                            public final void accept(Object obj4) {
                                C10758c0.a(r2, String.this, (JP) r3.get(r4));
                            }
                        });
                    }
                });
            }
        });
    }

    public static void c(final StringBuilder sb2, final C7751iQ c7751iQ, String str) {
        String str2;
        String str3;
        int i10 = c7751iQ.f48935a;
        if (i10 == 1) {
            str2 = "RETURNS_CONSTANT";
        } else if (i10 == 2) {
            str2 = "CALLS";
        } else {
            if (i10 != 3) {
                throw null;
            }
            str2 = "RETURNS_NOT_NULL";
        }
        a(str, "type", sb2, str2);
        int i11 = c7751iQ.f48936b;
        if (i11 == 0) {
            str3 = "null";
        } else if (i11 == 1) {
            str3 = "AT_MOST_ONCE";
        } else if (i11 == 2) {
            str3 = "EXACTLY_ONCE";
        } else {
            if (i11 != 3) {
                throw null;
            }
            str3 = "AT_LEAST_ONCE";
        }
        a(str, "invocationKind", sb2, str3);
        a(str, "constructorArguments", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.b(StringBuilder.this, c7751iQ, (String) obj);
            }
        });
        final C7916jQ c7916jQ = c7751iQ.f48938d;
        if (c7916jQ == null) {
            a(str, "conclusion", sb2, "null");
        } else {
            a(str, "conclusion", sb2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10758c0.a(StringBuilder.this, c7916jQ, (String) obj);
                }
            });
        }
    }

    public static void a(final String str, String str2, final StringBuilder sb2, final Collection collection, final BiConsumer biConsumer) {
        if (collection.isEmpty()) {
            sb2.append(str2);
            sb2.append(okhttp3.v.f99450n);
            return;
        }
        InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
            @Override
            public final void a() {
                C10758c0.a(Collection.this, sb2, str, biConsumer);
            }
        };
        String str3 = "[" + C10656zq0.f54547c;
        sb2.append(str2);
        sb2.append(str3);
        interfaceC6522b2.a();
        sb2.append(str + "]");
    }

    public static void b(final StringBuilder sb2, C7417gQ c7417gQ, String str) {
        a(str, "KmEffect", sb2, c7417gQ.f48260a, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C7751iQ) obj2, (String) obj);
            }
        });
    }

    public static void d(final StringBuilder sb2, final BQ bq, String str) {
        int a10 = bq.a();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(a10);
        a(str, "id", sb2, sb3.toString());
        a(str, sb2, I.a(bq), "flags");
        a(str, "name", sb2, bq.b());
        a(str, "variance", sb2, bq.d().name());
        a(str, "upperBounds", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmType", r0, bq.c(), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (C10420yQ) obj3, (String) obj2);
                    }
                });
            }
        });
        a(str, Contacts.People.Extensions.CONTENT_DIRECTORY, sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.c(StringBuilder.this, bq, (String) obj);
            }
        });
    }

    public static void b(final StringBuilder sb2, C7751iQ c7751iQ, String str) {
        a(str, "KmEffectExpression", sb2, c7751iQ.f48937c, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C7916jQ) obj2, (String) obj);
            }
        });
    }

    public static void a(Collection collection, StringBuilder sb2, String str, BiConsumer biConsumer) {
        for (Object obj : collection) {
            sb2.append(str);
            sb2.append(GlideException.a.f59088e);
            biConsumer.accept(str + GlideException.a.f59088e, obj);
            sb2.append(C10656zq0.f54547c);
        }
    }

    public static void a(final String str, String str2, StringBuilder sb2, final Consumer consumer) {
        sb2.append(str);
        InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
            @Override
            public final void a() {
                Consumer.this.accept(str);
            }
        };
        String str3 = DocLint.SEPARATOR + C10656zq0.f54547c;
        sb2.append(str2);
        sb2.append(": ");
        interfaceC6522b2.a();
        sb2.append(str3);
    }

    public static void d(final StringBuilder sb2, C7916jQ c7916jQ, String str) {
        a(str, "KmEffectExpression", sb2, c7916jQ.f49232e, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C7916jQ) obj2, (String) obj);
            }
        });
    }

    public static void a(String str, String str2, final StringBuilder sb2, final String str3) {
        sb2.append(str);
        InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
            @Override
            public final void a() {
                StringBuilder.this.append(str3);
            }
        };
        String str4 = DocLint.SEPARATOR + C10656zq0.f54547c;
        sb2.append(str2);
        sb2.append(": ");
        interfaceC6522b2.a();
        sb2.append(str4);
    }

    public static void a(final StringBuilder sb2, final InterfaceC7584hQ interfaceC7584hQ, String str) {
        a(str, "functions", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmFunction", r0, (Collection) interfaceC7584hQ.a().stream().sorted(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        String objects;
                        objects = Objects.toString(BL.a((C8918pQ) obj2));
                        return objects;
                    }
                })).collect(Collectors.toList()), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (C8918pQ) obj3, (String) obj2);
                    }
                });
            }
        });
        a(str, "properties", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmProperty", r0, (Collection) interfaceC7584hQ.b().stream().sorted(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return C10758c0.a((C9919vQ) obj2);
                    }
                })).collect(Collectors.toList()), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (C9919vQ) obj3, (String) obj2);
                    }
                });
            }
        });
        a(str, "typeAliases", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmTypeAlias", r0, (Collection) interfaceC7584hQ.c().stream().sorted(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return ((C10587zQ) obj2).b();
                    }
                })).collect(Collectors.toList()), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (C10587zQ) obj3, (String) obj2);
                    }
                });
            }
        });
    }

    public static String a(C9919vQ c9919vQ) {
        OL b10 = BL.b(c9919vQ);
        if (b10 != null) {
            return b10.toString();
        }
        OL c10 = BL.c(c9919vQ);
        if (c10 != null) {
            return c10.toString();
        }
        CL a10 = BL.a(c9919vQ);
        if (a10 != null) {
            return a10.toString();
        }
        return c9919vQ.b();
    }

    public static void a(String str, final StringBuilder sb2, final C9418sQ c9418sQ) {
        a(sb2, (InterfaceC7584hQ) c9418sQ, str);
        GJ.c(c9418sQ, "<this>");
        a(str, "moduleName", sb2, AL.a(c9418sQ).f45371b);
        a(str, "localDelegatedProperties", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c9418sQ, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, C9418sQ c9418sQ, String str) {
        GJ.c(c9418sQ, "<this>");
        a(str, "KmProperty", sb2, AL.a(c9418sQ).f45370a, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (C9919vQ) obj2, (String) obj);
            }
        });
    }

    public static void a(final String str, final StringBuilder sb2, Map map, String str2) {
        sb2.append(str);
        sb2.append(str2);
        sb2.append(": [");
        sb2.append(C10656zq0.f54547c);
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, str, (String) obj, obj2);
            }
        });
        sb2.append(str);
        sb2.append("]");
    }

    public static void a(StringBuilder sb2, String str, String str2, Object obj) {
        sb2.append(str);
        sb2.append(GlideException.a.f59088e);
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(C10656zq0.f54547c);
    }

    public static void a(String str, final StringBuilder sb2, final C6417aQ c6417aQ) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c6417aQ, "<this>");
        hashMap.put("hasAnnotations", Boolean.valueOf(C7698i5.f48807b.a(c6417aQ, xyArr[0])));
        hashMap.put("visibility", (EnumC4899Ax0) C7698i5.f48819j.a(c6417aQ, xyArr[8]));
        hashMap.put("modality", (HX) C7698i5.f48818i.a(c6417aQ, xyArr[7]));
        hashMap.put("kind", (EnumC7613hd) C7698i5.f48820k.a(c6417aQ, xyArr[9]));
        hashMap.put("inner", Boolean.valueOf(C7698i5.f48821l.a(c6417aQ, xyArr[10])));
        hashMap.put("data", Boolean.valueOf(C7698i5.f48822m.a(c6417aQ, xyArr[11])));
        hashMap.put("external", Boolean.valueOf(C7698i5.f48823n.a(c6417aQ, xyArr[12])));
        hashMap.put("expect", Boolean.valueOf(C7698i5.f48824o.a(c6417aQ, xyArr[13])));
        hashMap.put("value", Boolean.valueOf(C7698i5.f48825p.a(c6417aQ, xyArr[14])));
        hashMap.put("funInterface", Boolean.valueOf(C7698i5.f48826q.a(c6417aQ, xyArr[15])));
        hashMap.put("enumEntries", Boolean.valueOf(C7698i5.f48827r.a(c6417aQ, xyArr[16])));
        Y6 y62 = AbstractC10076wL.f53479d;
        XY[] xyArr2 = AbstractC10076wL.f53476a;
        hashMap.put("compiledInCompatibilityMode", Boolean.valueOf(y62.a(c6417aQ, xyArr2[2])));
        hashMap.put("hasMethodBodiesInInterface", Boolean.valueOf(AbstractC10076wL.f53478c.a(c6417aQ, xyArr2[1])));
        a(str, sb2, hashMap, "flags");
        a(str, "name", sb2, c6417aQ.g());
        a(str, "typeParameters", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c6417aQ.k(), (String) obj);
            }
        });
        a(str, "superTypes", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmType", r0, c6417aQ.j(), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (C10420yQ) obj3, (String) obj2);
                    }
                });
            }
        });
        String str2 = c6417aQ.f46525m;
        if (str2 != null) {
            a(str, "inlineClassUnderlyingPropertyName", sb2, str2);
        }
        if (c6417aQ.f46526n != null) {
            a(str, "inlineClassUnderlyingType", sb2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10758c0.c(StringBuilder.this, c6417aQ, (String) obj);
                }
            });
        }
        String d10 = c6417aQ.d();
        a(str, "enumEntries", sb2, "[" + C10656zq0.a(DocLint.SEPARATOR, (Iterable) c6417aQ.f()) + "]");
        if (d10 == null) {
            d10 = "null";
        }
        a(str, "companionObject", sb2, d10);
        a(str, "sealedSubclasses", sb2, "[" + C10656zq0.a(DocLint.SEPARATOR, (Iterable) c6417aQ.i()) + "]");
        a(str, "nestedClasses", sb2, "[" + C10656zq0.a(DocLint.SEPARATOR, (Iterable) c6417aQ.h()) + "]");
        a(str, "anonymousObjectOriginName", sb2, AL.a(c6417aQ).f53739c);
        a(str, "moduleName", sb2, AL.a(c6417aQ).f53738b);
        a(str, "localDelegatedProperties", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.d(StringBuilder.this, c6417aQ, (String) obj);
            }
        });
        a(str, sb2, c6417aQ.f46528p);
        a(str, "constructors", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmConstructor", r0, (Collection) c6417aQ.e().stream().sorted(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        String objects;
                        objects = Objects.toString(BL.a((C7083eQ) obj2));
                        return objects;
                    }
                })).collect(Collectors.toList()), new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.a(StringBuilder.this, (C7083eQ) obj3, (String) obj2);
                    }
                });
            }
        });
        a(str, "contextReceiverTypes", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.f(StringBuilder.this, c6417aQ, (String) obj);
            }
        });
        a(sb2, (InterfaceC7584hQ) c6417aQ, str);
    }

    public static void a(final StringBuilder sb2, final C7083eQ c7083eQ, final String str) {
        b(str, "KmConstructor", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(String.this, sb2, c7083eQ, (String) obj);
            }
        });
    }

    public static void a(String str, final StringBuilder sb2, final C7083eQ c7083eQ, String str2) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c7083eQ, "<this>");
        hashMap.put("hasAnnotations", Boolean.valueOf(C7698i5.f48809c.a(c7083eQ, xyArr[1])));
        hashMap.put("visibility", (EnumC4899Ax0) C7698i5.f48828s.a(c7083eQ, xyArr[17]));
        hashMap.put("secondary", Boolean.valueOf(C7698i5.f48829t.a(c7083eQ, xyArr[18])));
        hashMap.put("nonStableParameterNames", Boolean.valueOf(C7698i5.f48830u.a(c7083eQ, xyArr[19])));
        a(str, sb2, hashMap, "flags");
        a(str2, "valueParameters", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.b(StringBuilder.this, c7083eQ.a(), (String) obj);
            }
        });
        a(str2, "signature", sb2, Objects.toString(BL.a(c7083eQ)));
        a(str2, sb2, c7083eQ.f47676c);
    }

    public static void a(final StringBuilder sb2, final C8918pQ c8918pQ, final String str) {
        b(str, "KmFunction", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(String.this, sb2, c8918pQ, (String) obj);
            }
        });
    }

    public static void a(String str, final StringBuilder sb2, final C8918pQ c8918pQ, String str2) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c8918pQ, "<this>");
        hashMap.put("hasAnnotations", Boolean.valueOf(C7698i5.f48811d.a(c8918pQ, xyArr[2])));
        hashMap.put("kind", (HV) C7698i5.f48831v.a(c8918pQ, xyArr[20]));
        hashMap.put("modality", (HX) C7698i5.f48833x.a(c8918pQ, xyArr[22]));
        hashMap.put(ConjugateGradient.OPERATOR, Boolean.valueOf(C7698i5.f48834y.a(c8918pQ, xyArr[23])));
        hashMap.put("infix", Boolean.valueOf(C7698i5.f48835z.a(c8918pQ, xyArr[24])));
        hashMap.put(RecognizerResultsIntent.URI_SCHEME_INLINE, Boolean.valueOf(C7698i5.f48779A.a(c8918pQ, xyArr[25])));
        hashMap.put("tailRec", Boolean.valueOf(C7698i5.f48780B.a(c8918pQ, xyArr[26])));
        hashMap.put("external", Boolean.valueOf(C7698i5.f48781C.a(c8918pQ, xyArr[27])));
        hashMap.put("suspend", Boolean.valueOf(C7698i5.f48782D.a(c8918pQ, xyArr[28])));
        hashMap.put("expect", Boolean.valueOf(C7698i5.f48783E.a(c8918pQ, xyArr[29])));
        hashMap.put("visibility", (EnumC4899Ax0) C7698i5.f48832w.a(c8918pQ, xyArr[21]));
        hashMap.put("nonStableParameterNames", Boolean.valueOf(C7698i5.f48784F.a(c8918pQ, xyArr[30])));
        a(str, sb2, hashMap, "flags");
        a(str2, "name", sb2, c8918pQ.a());
        a(str2, "receiverParameterType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c8918pQ.b(), (String) obj);
            }
        });
        a(str2, "returnType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c8918pQ.c(), (String) obj);
            }
        });
        a(str2, "typeParameters", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c8918pQ.d(), (String) obj);
            }
        });
        a(str2, "valueParameters", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.b(StringBuilder.this, c8918pQ.e(), (String) obj);
            }
        });
        a(str2, sb2, c8918pQ.f51522h);
        final C7417gQ c7417gQ = c8918pQ.f51523i;
        if (c7417gQ == null) {
            a(str2, "contract", sb2, "null");
        } else {
            a(str2, "contract", sb2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10758c0.a(StringBuilder.this, c7417gQ, (String) obj);
                }
            });
        }
        a(str2, "contextReceiverTypes", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.f(StringBuilder.this, c8918pQ, (String) obj);
            }
        });
        a(str2, "signature", sb2, Objects.toString(BL.a(c8918pQ)));
        a(str2, "lambdaClassOriginName", sb2, AL.a(c8918pQ).f39835b);
    }

    public static void a(final StringBuilder sb2, final C9919vQ c9919vQ, final String str) {
        b(str, "KmProperty", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(String.this, sb2, c9919vQ, (String) obj);
            }
        });
    }

    public static void a(String str, final StringBuilder sb2, final C9919vQ c9919vQ, String str2) {
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c9919vQ, "<this>");
        hashMap.put("hasAnnotations", Boolean.valueOf(C7698i5.f48813e.a(c9919vQ, xyArr[3])));
        hashMap.put("visibility", (EnumC4899Ax0) C7698i5.f48785G.a(c9919vQ, xyArr[31]));
        hashMap.put("modality", (HX) C7698i5.f48786H.a(c9919vQ, xyArr[32]));
        hashMap.put("kind", (HV) C7698i5.f48787I.a(c9919vQ, xyArr[33]));
        hashMap.put("var", Boolean.valueOf(C7698i5.f48788J.a(c9919vQ, xyArr[34])));
        hashMap.put("const", Boolean.valueOf(C7698i5.f48789K.a(c9919vQ, xyArr[35])));
        hashMap.put("lateInit", Boolean.valueOf(C7698i5.f48790L.a(c9919vQ, xyArr[36])));
        hashMap.put("hasConstant", Boolean.valueOf(C7698i5.f48791M.a(c9919vQ, xyArr[37])));
        hashMap.put("external", Boolean.valueOf(C7698i5.f48792N.a(c9919vQ, xyArr[38])));
        hashMap.put("delegated", Boolean.valueOf(C7698i5.f48793O.a(c9919vQ, xyArr[39])));
        hashMap.put("expect", Boolean.valueOf(C7698i5.f48794P.a(c9919vQ, xyArr[40])));
        hashMap.put("movedFromInterfaceCompanion", Boolean.valueOf(AbstractC10076wL.f53477b.a(c9919vQ, AbstractC10076wL.f53476a[0])));
        a(str, sb2, hashMap, "flags");
        a(str2, "name", sb2, c9919vQ.b());
        a(str2, "receiverParameterType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c9919vQ.c(), (String) obj);
            }
        });
        a(str2, "returnType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, c9919vQ.d(), (String) obj);
            }
        });
        a(str2, "typeParameters", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.d(StringBuilder.this, c9919vQ, (String) obj);
            }
        });
        C10086wQ c10086wQ = c9919vQ.f53103d;
        HashMap hashMap2 = new HashMap();
        GJ.c(c10086wQ, "<this>");
        Y6 y62 = C7698i5.f48815f;
        hashMap2.put("hasAnnotations", Boolean.valueOf(y62.a(c10086wQ, xyArr[4])));
        C8998pu c8998pu = C7698i5.f48795Q;
        hashMap2.put("visibility", (EnumC4899Ax0) c8998pu.a(c10086wQ, xyArr[41]));
        C8998pu c8998pu2 = C7698i5.f48796R;
        hashMap2.put("modality", (HX) c8998pu2.a(c10086wQ, xyArr[42]));
        Y6 y63 = C7698i5.f48797S;
        hashMap2.put("notDefault", Boolean.valueOf(y63.a(c10086wQ, xyArr[43])));
        Y6 y64 = C7698i5.f48798T;
        hashMap2.put("external", Boolean.valueOf(y64.a(c10086wQ, xyArr[44])));
        Y6 y65 = C7698i5.f48799U;
        hashMap2.put(RecognizerResultsIntent.URI_SCHEME_INLINE, Boolean.valueOf(y65.a(c10086wQ, xyArr[45])));
        a(str, sb2, hashMap2, "getterFlags");
        C10086wQ c10086wQ2 = c9919vQ.f53104e;
        if (c10086wQ2 != null) {
            HashMap hashMap3 = new HashMap();
            hashMap3.put("hasAnnotations", Boolean.valueOf(y62.a(c10086wQ2, xyArr[4])));
            hashMap3.put("visibility", (EnumC4899Ax0) c8998pu.a(c10086wQ2, xyArr[41]));
            hashMap3.put("modality", (HX) c8998pu2.a(c10086wQ2, xyArr[42]));
            hashMap3.put("notDefault", Boolean.valueOf(y63.a(c10086wQ2, xyArr[43])));
            hashMap3.put("external", Boolean.valueOf(y64.a(c10086wQ2, xyArr[44])));
            hashMap3.put(RecognizerResultsIntent.URI_SCHEME_INLINE, Boolean.valueOf(y65.a(c10086wQ2, xyArr[45])));
            a(str, sb2, hashMap3, "setterFlags");
        }
        a(str2, "setterParameter", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.e(StringBuilder.this, c9919vQ, (String) obj);
            }
        });
        a(str2, sb2, c9919vQ.f53110k);
        a(str2, "contextReceiverTypes", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.f(StringBuilder.this, c9919vQ, (String) obj);
            }
        });
        a(str2, "fieldSignature", sb2, Objects.toString(BL.a(c9919vQ)));
        a(str2, "getterSignature", sb2, Objects.toString(BL.b(c9919vQ)));
        a(str2, "setterSignature", sb2, Objects.toString(BL.c(c9919vQ)));
        a(str2, "syntheticMethodForAnnotations", sb2, Objects.toString(AL.a(c9919vQ).a()));
        a(str2, "syntheticMethodForDelegate", sb2, Objects.toString(AL.a(c9919vQ).a()));
    }

    public static void a(final StringBuilder sb2, final C10420yQ c10420yQ, String str) {
        if (c10420yQ == null) {
            sb2.append("null");
        } else {
            b(str, "KmType", sb2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10758c0.d(StringBuilder.this, c10420yQ, (String) obj);
                }
            });
        }
    }

    public static void a(final StringBuilder sb2, final DQ dq, String str) {
        b(str, "KmTypeProjection", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.c(StringBuilder.this, dq, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, final EQ eq, String str) {
        if (eq == null) {
            sb2.append("null");
        } else {
            b(str, "KmValueParameter", sb2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10758c0.d(StringBuilder.this, eq, (String) obj);
                }
            });
        }
    }

    public static void a(final StringBuilder sb2, List list, String str) {
        a(str, "KmTypeParameter", sb2, list, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10758c0.a(StringBuilder.this, (BQ) obj2, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, final BQ bq, String str) {
        b(str, "KmTypeParameter", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.d(StringBuilder.this, bq, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, final C10587zQ c10587zQ, String str) {
        b(str, "KmTypeAlias", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.f(StringBuilder.this, c10587zQ, (String) obj);
            }
        });
    }

    public static void a(final GP gp, final StringBuilder sb2, String str) {
        b(str, "KmAnnotation", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(StringBuilder.this, gp, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, final GP gp, String str) {
        a(str, "className", sb2, gp.b());
        a(str, IJavaModelMarker.ARGUMENTS, sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.b(GP.this, sb2, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, String str, JP jp2) {
        if (jp2 instanceof JP.a) {
            a(str, "ArrayValue", sb2, ((JP.a) jp2).a(), new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10758c0.a(StringBuilder.this, (String) obj, (JP) obj2);
                }
            });
        } else {
            sb2.append(jp2.toString());
        }
    }

    public static void a(String str, final StringBuilder sb2, final ArrayList arrayList) {
        a(str, "versionRequirements", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "KmVersionRequirement", r0, arrayList, new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C10758c0.b((String) obj2, "KmVersionRequirement", r0, new Consumer() {
                            @Override
                            public final void accept(Object obj4) {
                                C10758c0.a(StringBuilder.this, r2, (String) obj4);
                            }
                        });
                    }
                });
            }
        });
    }

    public static void a(StringBuilder sb2, HQ hq, String str) {
        String str2;
        String str3;
        String num;
        int i10 = hq.f40755a;
        if (i10 == 1) {
            str2 = "LANGUAGE_VERSION";
        } else if (i10 == 2) {
            str2 = "COMPILER_VERSION";
        } else if (i10 == 3) {
            str2 = "API_VERSION";
        } else {
            if (i10 != 4) {
                throw null;
            }
            str2 = "UNKNOWN";
        }
        a(str, "kind", sb2, str2);
        int i11 = hq.f40756b;
        if (i11 == 1) {
            str3 = "WARNING";
        } else if (i11 == 2) {
            str3 = "ERROR";
        } else {
            if (i11 != 3) {
                throw null;
            }
            str3 = "HIDDEN";
        }
        a(str, "level", sb2, str3);
        Integer num2 = hq.f40757c;
        if (num2 == null) {
            num = "null";
        } else {
            num = num2.toString();
        }
        a(str, "errorCode", sb2, num);
        a(str, "message", sb2, hq.f40758d);
        GQ gq = hq.f40759e;
        if (gq != null) {
            a(str, "version", sb2, gq.toString());
        } else {
            GJ.a("version");
            throw null;
        }
    }

    public static void a(final StringBuilder sb2, final C7417gQ c7417gQ, String str) {
        b(str, "KmContract", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a((String) obj, "effects", r0, new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C10758c0.b(StringBuilder.this, r2, (String) obj2);
                    }
                });
            }
        });
    }

    public static void a(final StringBuilder sb2, final C7751iQ c7751iQ, String str) {
        b(str, "KmEffect", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.c(StringBuilder.this, c7751iQ, (String) obj);
            }
        });
    }

    public static void a(final StringBuilder sb2, final C7916jQ c7916jQ, final String str) {
        b(str, "KmEffectExpression", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.a(String.this, sb2, c7916jQ, (String) obj);
            }
        });
    }

    public static void a(String str, final StringBuilder sb2, final C7916jQ c7916jQ, String str2) {
        String sb3;
        HashMap hashMap = new HashMap();
        XY[] xyArr = C7698i5.f48805a;
        GJ.c(c7916jQ, "<this>");
        hashMap.put("negated", Boolean.valueOf(C7698i5.f48812d0.a(c7916jQ, xyArr[54])));
        hashMap.put("nullCheckPredicate", Boolean.valueOf(C7698i5.f48814e0.a(c7916jQ, xyArr[55])));
        a(str, sb2, hashMap, "flags");
        Integer num = c7916jQ.f49229b;
        if (num == null) {
            sb3 = "null";
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append((Object) num);
            sb3 = sb4.toString();
        }
        a(str2, "foo", sb2, sb3);
        C6917dQ c6917dQ = c7916jQ.f49230c;
        a(str2, "constantValue", sb2, c6917dQ != null ? c6917dQ.toString() : "null");
        a(str2, "isInstanceType", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.c(StringBuilder.this, c7916jQ, (String) obj);
            }
        });
        a(str2, "andArguments", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.d(StringBuilder.this, c7916jQ, (String) obj);
            }
        });
        a(str2, "orArguments", sb2, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10758c0.e(StringBuilder.this, c7916jQ, (String) obj);
            }
        });
    }
}
