package com.android.tools.r8.graph;

import android.security.keystore.KeyProperties;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.Z60;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.origin.Origin;
import java.lang.reflect.GenericSignatureFormatError;
import java.util.AbstractCollection;
import java.util.List;
import java.util.function.Predicate;

public class H3 {

    public static final C6190Xe0 f36372a;

    public static final C6190Xe0 f36373b;

    public static final C6190Xe0 f36374c;

    public static final C6190Xe0 f36375d;

    public static final c f36376e;

    public static class c extends e {

        public static final boolean f36384e = true;

        final M2 f36385b;

        final List<e> f36386c;

        final c f36387d;

        public c(M2 m22) {
            this(m22, H3.f36373b, null, k.f36403b);
        }

        @Override
        public final c a(k kVar) {
            boolean z10 = f36384e;
            if (!z10 && kVar == k.f36403b) {
                throw new AssertionError();
            }
            if (z10 || b()) {
                return new c(this.f36385b, this.f36386c, this.f36387d, kVar);
            }
            throw new AssertionError();
        }

        @Override
        public final a f() {
            return new a(this, k.f36403b);
        }

        @Override
        public final c h() {
            return this;
        }

        @Override
        public final boolean m() {
            return true;
        }

        public final M2 q() {
            return this.f36385b;
        }

        public List<e> r() {
            return this.f36386c;
        }

        public final c a(InterfaceC4368b4 interfaceC4368b4) {
            if (!a()) {
                M2 a10 = interfaceC4368b4.a(this.f36385b);
                if (a10 == null) {
                    return null;
                }
                List<e> a11 = interfaceC4368b4.a(this.f36385b, a10, this.f36386c);
                c cVar = this.f36387d;
                c a12 = cVar != null ? interfaceC4368b4.a(cVar, this) : null;
                if (this.f36385b != a10 || this.f36386c != a11 || this.f36387d != a12) {
                    return new c(a10, a11, a12, j());
                }
            }
            return this;
        }

        public c(M2 m22, List list, c cVar, k kVar) {
            super(kVar);
            boolean z10 = f36384e;
            if (!z10 && m22 == null) {
                throw new AssertionError();
            }
            if (!z10 && list == null) {
                throw new AssertionError();
            }
            this.f36385b = m22;
            this.f36386c = list;
            this.f36387d = cVar;
            if (!z10 && m22 == C4724u1.f37808E6 && kVar != k.f36403b) {
                throw new AssertionError();
            }
            if (!z10 && !list.stream().allMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((H3.e) obj).k();
                }
            })) {
                throw new AssertionError();
            }
            if (!z10 && !list.stream().allMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((H3.e) obj).b();
                }
            })) {
                throw new AssertionError();
            }
        }
    }

    public interface d<T extends AbstractC4365b1> {
        default boolean a() {
            return !b();
        }

        boolean b();
    }

    public static abstract class e extends i implements d<C4460g1> {

        public final k f36388a;

        public e(k kVar) {
            this.f36388a = kVar;
        }

        public static e p() {
            return H3.f36376e;
        }

        public abstract e a(k kVar);

        @Override
        public boolean b() {
            return this != H3.f36376e;
        }

        @Override
        public final e d() {
            return this;
        }

        @Override
        public final boolean e() {
            return true;
        }

        public a g() {
            return null;
        }

        public c h() {
            return null;
        }

        public j i() {
            return null;
        }

        public k j() {
            return this.f36388a;
        }

        public final boolean k() {
            return this.f36388a != k.f36403b;
        }

        public boolean l() {
            return false;
        }

        public boolean m() {
            return false;
        }

        public boolean n() {
            return false;
        }

        public boolean o() {
            return false;
        }

        public String toString() {
            AbstractC10992r0 a10 = AbstractC10992r0.a();
            Z60 z60 = EnumC6871d70.f47286b;
            if (a()) {
                return null;
            }
            V3 v32 = new V3(a10, z60);
            v32.a((i) this);
            return v32.toString();
        }
    }

    public static class f {

        public static final boolean f36389d = true;

        final String f36390a;

        final e f36391b;

        final List<e> f36392c;

        public f(String str, e eVar, List list) {
            this.f36390a = str;
            this.f36391b = eVar;
            this.f36392c = list;
            boolean z10 = f36389d;
            if (!z10 && eVar == null) {
                throw new AssertionError();
            }
            if (!z10 && list == null) {
                throw new AssertionError();
            }
        }

        public final String a() {
            return this.f36390a;
        }

        public final f a(InterfaceC4368b4 interfaceC4368b4) {
            e a10 = interfaceC4368b4.a(this.f36391b);
            List<e> a11 = interfaceC4368b4.a(this.f36392c);
            if (this.f36391b == a10 && this.f36392c == a11) {
                return this;
            }
            String str = this.f36390a;
            if (a10 == null) {
                a10 = e.p();
            }
            return new f(str, a10, a11);
        }
    }

    public static class h {

        public static final h f36399b = new h(null);

        final i f36400a;

        public h(i iVar) {
            this.f36400a = iVar;
        }

        public boolean a() {
            return this.f36400a == null;
        }

        public i b() {
            return this.f36400a;
        }
    }

    public static abstract class i {
        public I3 c() {
            return null;
        }

        public e d() {
            return null;
        }

        public boolean e() {
            return false;
        }

        public a f() {
            return null;
        }
    }

    public static class j extends e {

        public static final boolean f36401c = true;

        final String f36402b;

        public j(String str, k kVar) {
            super(kVar);
            if (!f36401c && str == null) {
                throw new AssertionError();
            }
            this.f36402b = str;
        }

        @Override
        public final e a(k kVar) {
            if (f36401c || kVar != k.f36403b) {
                return new j(this.f36402b, kVar);
            }
            throw new AssertionError();
        }

        @Override
        public final a f() {
            return new a(this, k.f36403b);
        }

        @Override
        public final j i() {
            return this;
        }

        @Override
        public final boolean o() {
            return true;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class k {

        public static final k f36403b = new k(0, "NOT_AN_ARGUMENT");

        public static final k f36404c = new k(1, KeyProperties.DIGEST_NONE);

        public static final k f36405d = new k(2, "NEGATIVE");

        public static final k f36406e = new k(3, "POSITIVE");

        public k(int i10, String str) {
        }
    }

    static {
        int i10 = AbstractC7552hC.f48487c;
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        f36372a = c6190Xe0;
        f36373b = c6190Xe0;
        f36374c = c6190Xe0;
        f36375d = c6190Xe0;
        f36376e = new c(C4724u1.f37808E6, c6190Xe0, null, k.f36403b);
    }

    public static b a(String str, String str2, Origin origin, C4724u1 c4724u1, DiagnosticsHandler diagnosticsHandler) {
        if (str2 == null || str2.isEmpty()) {
            return b.f();
        }
        try {
            return new K3(c4724u1).a(str2);
        } catch (GenericSignatureFormatError e10) {
            diagnosticsHandler.warning(T3.a(str2, "class", str, origin, e10));
            return b.f();
        }
    }

    public static e b(String str, String str2, Origin origin, C4724u1 c4724u1, DiagnosticsHandler diagnosticsHandler) {
        if (str2 == null || str2.isEmpty()) {
            return f36376e;
        }
        try {
            return new K3(c4724u1).b(str2);
        } catch (GenericSignatureFormatError e10) {
            diagnosticsHandler.warning(T3.a(str2, "field", str, origin, e10));
            return f36376e;
        }
    }

    public static g c(String str, String str2, Origin origin, C4724u1 c4724u1, DiagnosticsHandler diagnosticsHandler) {
        if (str2 == null || str2.isEmpty()) {
            return g.f36393e;
        }
        try {
            return new K3(c4724u1).c(str2);
        } catch (GenericSignatureFormatError e10) {
            diagnosticsHandler.warning(T3.a(str2, "method", str, origin, e10));
            return g.f36393e;
        }
    }

    public static class a extends e {

        public static final boolean f36377c = true;

        final i f36378b;

        public a(i iVar, k kVar) {
            super(kVar);
            if (!f36377c && iVar == null) {
                throw new AssertionError();
            }
            this.f36378b = iVar;
        }

        @Override
        public final e a(k kVar) {
            if (f36377c || kVar != k.f36403b) {
                return new a(this.f36378b, kVar);
            }
            throw new AssertionError();
        }

        @Override
        public final a f() {
            return new a(this, k.f36403b);
        }

        @Override
        public final a g() {
            return this;
        }

        @Override
        public final boolean l() {
            return true;
        }

        public final a a(InterfaceC4368b4 interfaceC4368b4) {
            i a10 = interfaceC4368b4.a(this.f36378b);
            if (a10 == null) {
                return null;
            }
            return this.f36378b == a10 ? this : new a(a10, j());
        }
    }

    public static class g implements d<C4516j1> {

        public static final g f36393e;

        public static final boolean f36394f = true;

        final List<f> f36395a;

        final List<i> f36396b;

        final h f36397c;

        public final List f36398d;

        static {
            C6190Xe0 c6190Xe0 = H3.f36372a;
            C6190Xe0 c6190Xe02 = H3.f36375d;
            f36393e = new g(c6190Xe0, c6190Xe02, h.f36399b, c6190Xe02);
        }

        public g(List list, List list2, h hVar, List list3) {
            boolean z10 = f36394f;
            if (!z10 && list == null) {
                throw new AssertionError();
            }
            if (!z10 && list2 == null) {
                throw new AssertionError();
            }
            if (!z10 && hVar == null) {
                throw new AssertionError();
            }
            if (!z10 && list3 == null) {
                throw new AssertionError();
            }
            this.f36395a = list;
            this.f36396b = list2;
            this.f36397c = hVar;
            this.f36398d = list3;
        }

        public static g d() {
            return f36393e;
        }

        public i a(int i10) {
            if (this.f36396b.isEmpty() || i10 < 0 || i10 >= this.f36396b.size()) {
                return null;
            }
            return this.f36396b.get(i10);
        }

        @Override
        public boolean b() {
            return this != f36393e;
        }

        public final List c() {
            return this.f36395a;
        }

        public h e() {
            return this.f36397c;
        }

        public String toString() {
            AbstractC10992r0 a10 = AbstractC10992r0.a();
            Z60 z60 = EnumC6871d70.f47286b;
            if (a()) {
                return null;
            }
            V3 v32 = new V3(a10, z60);
            v32.a(this);
            return v32.toString();
        }

        public final g a(InterfaceC4368b4 interfaceC4368b4) {
            if (!a()) {
                List<f> c10 = interfaceC4368b4.c(this.f36395a);
                List<i> d10 = interfaceC4368b4.d(this.f36396b);
                h a10 = interfaceC4368b4.a(this.f36397c);
                List b10 = interfaceC4368b4.b(this.f36398d);
                if (this.f36395a != c10 || this.f36396b != d10 || this.f36397c != a10 || this.f36398d != b10) {
                    return new g(c10, d10, a10, b10);
                }
            }
            return this;
        }
    }

    public static class b implements d<E0> {

        public static final b f36379d = new b(H3.f36372a, null, H3.f36374c);

        public static final boolean f36380e = true;

        public final AbstractCollection f36381a;

        public final c f36382b;

        public final AbstractCollection f36383c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(List list, c cVar, List list2) {
            boolean z10 = f36380e;
            if (!z10 && list == 0) {
                throw new AssertionError();
            }
            if (!z10 && list2 == 0) {
                throw new AssertionError();
            }
            this.f36381a = (AbstractCollection) list;
            this.f36382b = cVar;
            this.f36383c = (AbstractCollection) list2;
        }

        public static b f() {
            return f36379d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.List] */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.AbstractCollection, java.util.List] */
        public final b a(InterfaceC4368b4 interfaceC4368b4, C4724u1 c4724u1) {
            if (!a()) {
                List c10 = interfaceC4368b4.c(this.f36381a);
                c a10 = interfaceC4368b4.a(this.f36382b);
                List e10 = interfaceC4368b4.e(this.f36383c);
                if (this.f36381a != c10 || this.f36382b != a10 || this.f36383c != e10) {
                    J3 j32 = new J3();
                    j32.f36497a.addAll(c10);
                    j32.f36498b = a10;
                    j32.f36499c.addAll(e10);
                    return j32.a(c4724u1);
                }
            }
            return this;
        }

        @Override
        public boolean b() {
            return this != f();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List<com.android.tools.r8.graph.H3$f>] */
        public List<f> c() {
            return this.f36381a;
        }

        public c d() {
            return this.f36382b;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<com.android.tools.r8.graph.H3$c>, java.util.AbstractCollection] */
        public List<c> e() {
            return this.f36383c;
        }

        public String toString() {
            AbstractC10992r0 a10 = AbstractC10992r0.a();
            Z60 z60 = EnumC6871d70.f47286b;
            if (a()) {
                return null;
            }
            V3 v32 = new V3(a10, z60);
            v32.a(this);
            return v32.toString();
        }

        /* JADX WARN: Type inference failed for: r3v2, types: [java.util.AbstractCollection, java.util.List] */
        public final List a(C4724u1 c4724u1, M2 m22) {
            if (!f36380e && !b()) {
                throw new AssertionError();
            }
            c cVar = this.f36382b;
            if (cVar == null) {
                cVar = new c(c4724u1.f38068i2);
            }
            if (cVar.f36385b == m22) {
                return cVar.f36386c;
            }
            for (c cVar2 : this.f36383c) {
                if (cVar2.f36385b == m22) {
                    return cVar2.f36386c;
                }
            }
            return null;
        }
    }
}
