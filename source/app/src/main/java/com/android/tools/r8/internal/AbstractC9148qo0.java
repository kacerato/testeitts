package com.android.tools.r8.internal;

import com.android.tools.r8.TextInputStream;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.HA;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.startup.StartupProfileBuilder;
import com.android.tools.r8.startup.StartupProfileProvider;
import com.android.tools.r8.startup.diagnostic.MissingStartupProfileItemsDiagnostic;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC9148qo0 implements InterfaceC8352m1 {
    public static AbstractC9148qo0 a(ArrayList arrayList) {
        final a aVar = new a();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((AbstractC9148qo0) obj).a(new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj2) {
                    AbstractC9148qo0.a.this.a((AbstractC10483yo0) obj2);
                }
            });
        }
        return aVar.build();
    }

    public static AbstractC9148qo0 b(AbstractC4780x0 abstractC4780x0) {
        C8570nJ c8570nJ = abstractC4780x0.f38366d;
        AbstractC9109qb0 abstractC9109qb0 = c8570nJ.f50596E1;
        if (abstractC9109qb0 != null) {
            C8942pb0 b10 = abstractC9109qb0.b();
            if (!C8942pb0.f51565g && b10.f51570f == null) {
                throw new AssertionError();
            }
            return b10.f51570f;
        }
        return a(c8570nJ, new Function() {
            @Override
            public final Object apply(Object obj) {
                MissingStartupProfileItemsDiagnostic.a b11;
                b11 = MissingStartupProfileItemsDiagnostic.a.b();
                return b11;
            }
        });
    }

    public abstract AbstractC9148qo0 a(com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0);

    public abstract AbstractC9148qo0 a(AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0);

    public abstract <E extends Exception> void a(InterfaceC6160Wr0<? super AbstractC10483yo0, E> interfaceC6160Wr0) throws Exception;

    public abstract AbstractC9148qo0 b(C4798y c4798y);

    public abstract boolean b(com.android.tools.r8.graph.M2 m22);

    public abstract AbstractC9148qo0 c(C4798y c4798y);

    public abstract boolean c();

    public static class a implements InterfaceC8185l1, StartupProfileBuilder {

        public final C4724u1 f51890a;

        public final MissingStartupProfileItemsDiagnostic.a f51891b;

        public C5094Ef0 f51892c;

        public final StartupProfileProvider f51893d;

        public final LinkedHashMap f51894e;

        public a() {
            this.f51890a = null;
            this.f51891b = null;
            this.f51892c = null;
            this.f51894e = new LinkedHashMap();
            this.f51893d = null;
        }

        @Override
        public final InterfaceC8185l1 a(InterfaceC8686o1 interfaceC8686o1) {
            C9648to0 c9648to0 = (C9648to0) interfaceC8686o1;
            this.f51894e.put(c9648to0.c(), c9648to0);
            return this;
        }

        @Override
        public final StartupProfileBuilder addHumanReadableArtProfile(TextInputStream textInputStream, Consumer consumer) {
            HA.a a10 = HA.a().a(this.f51892c).a(C7528h4.a(this));
            consumer.accept(a10);
            a10.a().a(textInputStream, this.f51893d.getOrigin());
            return this;
        }

        @Override
        public final StartupProfileBuilder addStartupClass(Consumer consumer) {
            C9481so0 c9481so0 = new C9481so0(this.f51890a);
            consumer.accept(c9481so0);
            com.android.tools.r8.graph.M2 m22 = c9481so0.f52459b;
            C9648to0 c9648to0 = new C9648to0(m22);
            MissingStartupProfileItemsDiagnostic.a aVar = this.f51891b;
            AbstractC4780x0 abstractC4780x0 = aVar.f58036a;
            if (abstractC4780x0 == null || abstractC4780x0.e(m22)) {
                this.f51894e.put(m22, c9648to0);
                return this;
            }
            com.android.tools.r8.graph.L2 l22 = aVar.f58036a.f38367e.f37896L;
            com.android.tools.r8.graph.L2 v02 = m22.S().v0();
            v02.getClass();
            if (!v02.b(l22.f36562f)) {
                aVar.f58037b.add(m22);
            }
            return this;
        }

        @Override
        public final StartupProfileBuilder addStartupMethod(Consumer consumer) {
            C9815uo0 c9815uo0 = new C9815uo0(this.f51890a);
            consumer.accept(c9815uo0);
            C9982vo0 c9982vo0 = new C9982vo0(c9815uo0.f52954b);
            MissingStartupProfileItemsDiagnostic.a aVar = this.f51891b;
            AbstractC4780x0 abstractC4780x0 = aVar.f58036a;
            if (abstractC4780x0 == null || abstractC4780x0.a(c9982vo0.c())) {
                this.f51894e.put(c9982vo0.c(), c9982vo0);
                return this;
            }
            com.android.tools.r8.graph.A2 c10 = c9982vo0.c();
            com.android.tools.r8.graph.L2 l22 = aVar.f58036a.f38367e.f37896L;
            com.android.tools.r8.graph.L2 v02 = c10.S().v0();
            v02.getClass();
            if (!v02.b(l22.f36562f)) {
                aVar.f58037b.add(c10);
            }
            return this;
        }

        @Override
        public final InterfaceC8185l1 a(InterfaceC9020q1 interfaceC9020q1) {
            C9982vo0 c9982vo0 = (C9982vo0) interfaceC9020q1;
            this.f51894e.put(c9982vo0.c(), c9982vo0);
            return this;
        }

        @Override
        public final InterfaceC8185l1 a(InterfaceC9186r1 interfaceC9186r1) {
            interfaceC9186r1.getClass();
            AbstractC10483yo0 abstractC10483yo0 = (AbstractC10483yo0) interfaceC9186r1;
            this.f51894e.put(abstractC10483yo0.c(), abstractC10483yo0);
            return this;
        }

        public a(int i10) {
            this.f51890a = null;
            this.f51891b = null;
            this.f51892c = null;
            this.f51894e = new LinkedHashMap(i10);
            this.f51893d = null;
        }

        public final a a(AbstractC10483yo0 abstractC10483yo0) {
            this.f51894e.put(abstractC10483yo0.c(), abstractC10483yo0);
            return this;
        }

        @Override
        public final boolean a(com.android.tools.r8.graph.M2 m22) {
            int size = this.f51894e.size();
            C9648to0 c9648to0 = new C9648to0(m22);
            this.f51894e.put(c9648to0.c(), c9648to0);
            return this.f51894e.size() > size;
        }

        public a(C8570nJ c8570nJ, MissingStartupProfileItemsDiagnostic.a aVar, StartupProfileProvider startupProfileProvider) {
            this.f51890a = c8570nJ.m();
            this.f51891b = aVar;
            this.f51892c = c8570nJ.f50691j;
            this.f51894e = new LinkedHashMap();
            this.f51893d = startupProfileProvider;
        }

        @Override
        public AbstractC9148qo0 build() {
            if (this.f51894e.isEmpty()) {
                return AbstractC9148qo0.b();
            }
            return new P00(this.f51894e);
        }
    }

    public static a a(C8570nJ c8570nJ, MissingStartupProfileItemsDiagnostic.a aVar, StartupProfileProvider startupProfileProvider) {
        return new a(c8570nJ, aVar, startupProfileProvider);
    }

    public static AbstractC9148qo0 a(final AbstractC4780x0 abstractC4780x0) {
        return a(abstractC4780x0.f38366d, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9148qo0.a(AbstractC4780x0.this, (Origin) obj);
            }
        });
    }

    public static MissingStartupProfileItemsDiagnostic.a a(AbstractC4780x0 abstractC4780x0, Origin origin) {
        MissingStartupProfileItemsDiagnostic.a aVar = new MissingStartupProfileItemsDiagnostic.a(abstractC4780x0);
        aVar.f58038c = origin;
        return aVar;
    }

    public static AbstractC9148qo0 b() {
        return new C6334Zt();
    }

    public static AbstractC9148qo0 a(C8570nJ c8570nJ, Function function) {
        AbstractC9148qo0 abstractC9148qo0;
        AbstractC9109qb0 abstractC9109qb0;
        Collection collection = c8570nJ.E().f51625h;
        if (collection == null || collection.isEmpty()) {
            abstractC9148qo0 = null;
        } else {
            C8981po0 E10 = c8570nJ.E();
            if (!C8981po0.f51617j && (abstractC9109qb0 = E10.f51626i.f50596E1) != null && !(abstractC9109qb0 instanceof C8775ob0)) {
                throw new AssertionError();
            }
            Collection<StartupProfileProvider> collection2 = E10.f51625h;
            ArrayList arrayList = new ArrayList(collection2.size());
            for (StartupProfileProvider startupProfileProvider : collection2) {
                MissingStartupProfileItemsDiagnostic.a aVar = (MissingStartupProfileItemsDiagnostic.a) function.apply(startupProfileProvider.getOrigin());
                a a10 = a(c8570nJ, aVar, startupProfileProvider);
                startupProfileProvider.getStartupProfile(a10);
                arrayList.add(a10.build());
                if (!aVar.f58037b.isEmpty()) {
                    c8570nJ.f50691j.warning(aVar.a());
                }
            }
            abstractC9148qo0 = a(arrayList);
        }
        return abstractC9148qo0 != null ? abstractC9148qo0 : b();
    }
}
