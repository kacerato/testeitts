package com.android.tools.r8.graph;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import mg.C14254o;

public final class C4533k implements DataResourceProvider.Visitor {

    public final FeatureSplit f37405a;

    public final C4552l.a f37406b;

    public C4533k(C4552l.a aVar, FeatureSplit featureSplit) {
        this.f37406b = aVar;
        this.f37405a = featureSplit;
    }

    public static Map a(M2 m22) {
        return new LinkedHashMap();
    }

    public final String b(String str) {
        int indexOf = str.indexOf(35);
        return indexOf > -1 ? str.substring(0, indexOf) : str;
    }

    @Override
    public final void visit(DataDirectoryResource dataDirectoryResource) {
    }

    public static List a(FeatureSplit featureSplit) {
        return new ArrayList();
    }

    @Override
    public final void visit(DataEntryResource dataEntryResource) {
        try {
            String name = dataEntryResource.getName();
            if (name.startsWith(C14254o.f97090b)) {
                String substring = name.substring(18);
                if (C4932Bl.E(substring)) {
                    M2 d10 = this.f37406b.f37443a.b().d(C4932Bl.H(substring));
                    if (this.f37406b.f37443a.m() && this.f37406b.f37443a.f().c(d10) == null) {
                        String str = "Unexpected reference to missing service class: META-INF/services/" + d10.j0() + ".";
                        Origin origin = dataEntryResource.getOrigin();
                        if (!this.f37406b.f37443a.f38413f.a(d10)) {
                            this.f37406b.f37444b.f50691j.warning(new StringDiagnostic(str, origin));
                        }
                    }
                    a(new String(AbstractC6706c8.a(dataEntryResource.getByteStream()), Charset.defaultCharset()), dataEntryResource.getOrigin(), d10, (List) ((Map) this.f37406b.f37445c.computeIfAbsent(d10, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return C4533k.a((M2) obj);
                        }
                    })).computeIfAbsent(this.f37405a, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return C4533k.a((FeatureSplit) obj);
                        }
                    }));
                }
            }
        } catch (ResourceException e10) {
            e = e10;
            throw new C5325If(e.getMessage(), e);
        } catch (IOException e11) {
            e = e11;
            throw new C5325If(e.getMessage(), e);
        }
    }

    public final void a(String str, final Origin origin, final M2 m22, final List list) {
        Stream map = C10656zq0.c(str).stream().map(new C4624oe()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4533k.this.b((String) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4533k.a((String) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4932Bl.E((String) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4932Bl.H((String) obj);
            }
        });
        final C4724u1 b10 = this.f37406b.f37443a.b();
        Objects.requireNonNull(b10);
        Stream filter = map.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.this.d((String) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4533k.this.a(m22, origin, list, (M2) obj);
            }
        });
        Objects.requireNonNull(list);
        filter.forEach(new u.I0(list));
    }

    public static boolean a(String str) {
        return !str.isEmpty();
    }

    public final boolean a(M2 m22, Origin origin, List list, M2 m23) {
        if (!m23.I0()) {
            String str = "Unexpected service implementation found in META-INF/services/" + m22.j0() + ": " + m23.j0() + ".";
            if (this.f37406b.f37443a.f38413f.a(m23)) {
                return false;
            }
            this.f37406b.f37444b.f50691j.warning(new StringDiagnostic(str, origin));
            return false;
        }
        if (this.f37406b.f37443a.m() && this.f37406b.f37443a.f().c(m23) == null) {
            String str2 = "Unexpected reference to missing service implementation class in META-INF/services/" + m22.j0() + ": " + m23.j0() + ".";
            if (!this.f37406b.f37443a.f38413f.a(m23)) {
                this.f37406b.f37444b.f50691j.warning(new StringDiagnostic(str2, origin));
            }
        }
        return !list.contains(m23);
    }
}
