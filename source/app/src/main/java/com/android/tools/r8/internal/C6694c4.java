package com.android.tools.r8.internal;

import com.android.tools.r8.TextInputStream;
import com.android.tools.r8.TextOutputStream;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C6694c4;
import com.android.tools.r8.internal.C9029q4;
import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.internal.HA;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.C10983p0;
import com.android.tools.r8.profile.art.ArtProfileBuilder;
import com.android.tools.r8.profile.art.ArtProfileConsumer;
import com.android.tools.r8.profile.art.ArtProfileProvider;
import com.android.tools.r8.profile.art.ArtProfileRuleConsumer;
import com.android.tools.r8.profile.art.diagnostic.HumanReadableArtProfileParserErrorDiagnostic;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.synthesis.S;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UncheckedIOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public class C6694c4 implements InterfaceC8352m1 {

    public static final boolean f46953b = true;

    public final LinkedHashMap f46954a;

    public static class a implements ArtProfileBuilder, InterfaceC8185l1 {

        public final ArtProfileProvider f46955a;

        public final C4724u1 f46956b;

        public final C5094Ef0 f46957c;

        public final LinkedHashMap f46958d;

        public a(LinkedHashMap linkedHashMap) {
            this.f46955a = null;
            this.f46956b = null;
            this.f46957c = null;
            this.f46958d = linkedHashMap;
        }

        @Override
        public final ArtProfileBuilder addClassRule(Consumer consumer) {
            C7695i4 c7695i4 = new C7695i4(this.f46956b);
            consumer.accept(c7695i4);
            com.android.tools.r8.graph.M2 m22 = c7695i4.f48774b;
            this.f46958d.put(m22, new C7860j4(m22));
            return this;
        }

        @Override
        public final ArtProfileBuilder addMethodRule(Consumer consumer) {
            C4724u1 c4724u1 = this.f46956b;
            boolean z10 = C9029q4.f51706d;
            C9029q4.a aVar = new C9029q4.a(c4724u1);
            consumer.accept(aVar);
            return a(aVar.build());
        }

        @Override
        public final a addHumanReadableArtProfile(TextInputStream textInputStream, Consumer consumer) {
            HA.a a10 = HA.a();
            final C5094Ef0 c5094Ef0 = this.f46957c;
            Objects.requireNonNull(c5094Ef0);
            a10.f40702a = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5094Ef0.this.info((HumanReadableArtProfileParserErrorDiagnostic) obj);
                }
            };
            HA.a a11 = a10.a(this.f46957c).a(this);
            consumer.accept(a11);
            a11.a().a(textInputStream, this.f46955a.getOrigin());
            return this;
        }

        @Override
        public final InterfaceC8185l1 a(InterfaceC9186r1 interfaceC9186r1) {
            interfaceC9186r1.getClass();
            return a((AbstractC10531z4) interfaceC9186r1);
        }

        public a(ArtProfileProvider artProfileProvider, C8570nJ c8570nJ) {
            this.f46955a = artProfileProvider;
            this.f46956b = c8570nJ.m();
            this.f46957c = c8570nJ.f50691j;
            this.f46958d = new LinkedHashMap();
        }

        @Override
        public final a a(C7860j4 c7860j4) {
            this.f46958d.put(c7860j4.f49145b, c7860j4);
            return this;
        }

        @Override
        public final a a(final C9029q4 c9029q4) {
            this.f46958d.compute(c9029q4.e(), new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C6694c4.a.a(C9029q4.this, (com.android.tools.r8.graph.J2) obj, (AbstractC10531z4) obj2);
                }
            });
            return this;
        }

        public static AbstractC10531z4 a(C9029q4 c9029q4, com.android.tools.r8.graph.J2 j22, AbstractC10531z4 abstractC10531z4) {
            if (abstractC10531z4 == null) {
                return c9029q4;
            }
            C9029q4.a d10 = C9029q4.d();
            d10.f51711b = c9029q4.e();
            C9195r4.a aVar = d10.f51712c;
            C9195r4 f10 = c9029q4.f();
            aVar.f51962a = f10.f51960a | aVar.f51962a;
            C9195r4.a aVar2 = d10.f51712c;
            C9195r4 f11 = ((C9029q4) abstractC10531z4).f();
            aVar2.f51962a = f11.f51960a | aVar2.f51962a;
            return d10.build();
        }

        public final a a(AbstractC10531z4 abstractC10531z4) {
            return (a) abstractC10531z4.a(new InterfaceC6217Xr0() {
                @Override
                public final Object apply(Object obj) {
                    return C6694c4.a.this.a((C7860j4) obj);
                }
            }, new InterfaceC6217Xr0() {
                @Override
                public final Object apply(Object obj) {
                    return C6694c4.a.this.a((C9029q4) obj);
                }
            });
        }

        @Override
        public C6694c4 build() {
            return new C6694c4(this.f46958d);
        }

        @Override
        public final boolean a(com.android.tools.r8.graph.M2 m22) {
            int size = this.f46958d.size();
            this.f46958d.put(m22, new C7860j4(m22));
            return this.f46958d.size() > size;
        }
    }

    public C6694c4(LinkedHashMap linkedHashMap) {
        this.f46954a = linkedHashMap;
    }

    public static void a(AbstractC10992r0 abstractC10992r0, C4724u1 c4724u1, C7860j4 c7860j4, a aVar) {
        com.android.tools.r8.graph.M2 a10 = abstractC10992r0.a(c4724u1, c7860j4.f49145b);
        aVar.f46958d.put(a10, new C7860j4(a10));
    }

    @Override
    public final InterfaceC9020q1 b(com.android.tools.r8.graph.A2 a22) {
        return (C9029q4) this.f46954a.get(a22);
    }

    public int b() {
        return this.f46954a.size();
    }

    public final C6694c4 b(C4798y c4798y) {
        final C4477h f10 = c4798y.f();
        return (C6694c4) a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6694c4.this.a(f10, (C7860j4) obj, (C6694c4.a) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6694c4.this.a(f10, (C9029q4) obj, (C6694c4.a) obj2);
            }
        });
    }

    public static a a(ArtProfileProvider artProfileProvider, C8570nJ c8570nJ) {
        return new a(artProfileProvider, c8570nJ);
    }

    public static void a(ArtProfileRuleConsumer artProfileRuleConsumer, C7860j4 c7860j4) {
        artProfileRuleConsumer.acceptClassRule(Reference.classFromDescriptor(c7860j4.f49145b.V0()), C8027k4.f49477a);
    }

    public static void a(ArtProfileRuleConsumer artProfileRuleConsumer, C9029q4 c9029q4) {
        artProfileRuleConsumer.acceptMethodRule(c9029q4.f51707b.v0(), c9029q4.f());
    }

    @Override
    public final InterfaceC8185l1 a() {
        return new a(new LinkedHashMap(this.f46954a.size()));
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return this.f46954a.containsKey(m22);
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, C7860j4 c7860j4, a aVar) {
        com.android.tools.r8.graph.M2 m22 = c7860j4.f49145b;
        abstractC5308Hz.getClass();
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(AbstractC5308Hz.g(), m22);
        if (!f46953b && !c10.I0()) {
            throw new AssertionError();
        }
        aVar.f46958d.put(c10, new C7860j4(c10));
    }

    public static void a(C5645Nu c5645Nu, C7860j4 c7860j4, a aVar) {
        com.android.tools.r8.graph.M2 m22 = c7860j4.f49145b;
        c5645Nu.getClass();
        com.android.tools.r8.graph.M2 c10 = c5645Nu.c(AbstractC5308Hz.g(), m22);
        if (c10.I0()) {
            aVar.f46958d.put(c10, new C7860j4(c10));
        } else if (!f46953b && !c10.L0()) {
            throw new AssertionError();
        }
    }

    public final void a(C4477h c4477h, C7860j4 c7860j4, a aVar) {
        AbstractC9109qb0 abstractC9109qb0;
        com.android.tools.r8.graph.M2 m22 = c7860j4.f49145b;
        c4477h.getClass();
        m22.getClass();
        if (c4477h.c(m22.o0()) == null && !((abstractC9109qb0 = c4477h.j().f50596E1) != null && (abstractC9109qb0 instanceof C8942pb0) && abstractC9109qb0.b().a(m22))) {
            return;
        }
        com.android.tools.r8.graph.M2 m23 = c7860j4.f49145b;
        aVar.f46958d.put(m23, new C7860j4(m23));
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return this.f46954a.containsKey(a22);
    }

    @Override
    public <E1 extends Exception, E2 extends Exception> void a(InterfaceC6160Wr0<? super C7860j4, E1> interfaceC6160Wr0, InterfaceC6160Wr0<? super C9029q4, E2> interfaceC6160Wr02) throws Exception, Exception {
        Iterator it = this.f46954a.values().iterator();
        while (it.hasNext()) {
            ((AbstractC10531z4) it.next()).a(interfaceC6160Wr0, interfaceC6160Wr02);
        }
    }

    public final C6694c4 a(C4798y c4798y, final AbstractC5308Hz abstractC5308Hz) {
        abstractC5308Hz.getClass();
        if (abstractC5308Hz instanceof C5645Nu) {
            return a(c4798y, abstractC5308Hz.a());
        }
        return (C6694c4) a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6694c4.a(AbstractC5308Hz.this, (C7860j4) obj, (C6694c4.a) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6694c4.a(AbstractC5308Hz.this, (C9029q4) obj, (C6694c4.a) obj2);
            }
        });
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, final C9029q4 c9029q4, a aVar) {
        C9029q4.a d10 = C9029q4.d();
        com.android.tools.r8.graph.A2 e10 = c9029q4.e();
        abstractC5308Hz.getClass();
        d10.f51711b = abstractC5308Hz.d(AbstractC5308Hz.g(), e10);
        aVar.a(d10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9195r4.a) obj).a(C9029q4.this.f());
            }
        }).build());
    }

    public final C6694c4 a(final C4798y c4798y, final C5645Nu c5645Nu) {
        return (C6694c4) a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6694c4.a(C5645Nu.this, (C7860j4) obj, (C6694c4.a) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6694c4.a(C5645Nu.this, c4798y, (C9029q4) obj, (C6694c4.a) obj2);
            }
        });
    }

    public static void a(C5645Nu c5645Nu, C4798y c4798y, final C9029q4 c9029q4, a aVar) {
        com.android.tools.r8.graph.A2 e10 = c9029q4.e();
        c5645Nu.getClass();
        com.android.tools.r8.graph.A2 d10 = c5645Nu.d(AbstractC5308Hz.g(), e10);
        if (d10.s0() != c9029q4.e().s0()) {
            if (!f46953b && !c4798y.f38408a.g().a(d10.s0(), new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58181h;
                    return bVar;
                }
            })) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.M2 s02 = d10.s0();
            aVar.f46958d.put(s02, new C7860j4(s02));
        }
        C9029q4.a d11 = C9029q4.d();
        d11.f51711b = d10;
        aVar.a(d11.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9195r4.a) obj).a(C9029q4.this.f());
            }
        }).build());
    }

    public final C6694c4 a(C4798y c4798y, final AbstractC10992r0 abstractC10992r0) {
        abstractC10992r0.getClass();
        boolean z10 = abstractC10992r0 instanceof C10983p0;
        if (z10) {
            return this;
        }
        final C4724u1 b10 = c4798y.b();
        if (f46953b || !z10) {
            return (C6694c4) a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C6694c4.a(AbstractC10992r0.this, b10, (C7860j4) obj, (C6694c4.a) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C6694c4.a(AbstractC10992r0.this, b10, (C9029q4) obj, (C6694c4.a) obj2);
                }
            });
        }
        throw new AssertionError();
    }

    public static void a(AbstractC10992r0 abstractC10992r0, C4724u1 c4724u1, final C9029q4 c9029q4, a aVar) {
        C9029q4.a d10 = C9029q4.d();
        d10.f51711b = abstractC10992r0.a(c4724u1, c9029q4.e());
        aVar.a(d10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9195r4.a) obj).a(C9029q4.this.f());
            }
        }).build());
    }

    public final void a(C4477h c4477h, final C9029q4 c9029q4, a aVar) {
        AbstractC9109qb0 abstractC9109qb0;
        com.android.tools.r8.graph.A2 e10 = c9029q4.e();
        c4477h.getClass();
        e10.getClass();
        AbstractC4744v2 m02 = e10.m0();
        if (m02.b(c4477h.c(m02.s0())) == null && !((abstractC9109qb0 = c4477h.j().f50596E1) != null && (abstractC9109qb0 instanceof C8942pb0) && abstractC9109qb0.b().a(e10))) {
            return;
        }
        C9029q4.a d10 = C9029q4.d();
        d10.f51711b = c9029q4.e();
        aVar.a(d10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9195r4.a) obj).a(C9029q4.this.f());
            }
        }).build());
    }

    public final void a(com.android.tools.r8.graph.O5 o52) {
        Set o10 = this.f46954a.o();
        Objects.requireNonNull(o52);
        o10.removeIf(new A61(o52));
    }

    public void a(ArtProfileConsumer artProfileConsumer, C5094Ef0 c5094Ef0) {
        if (artProfileConsumer != null) {
            TextOutputStream humanReadableArtProfileConsumer = artProfileConsumer.getHumanReadableArtProfileConsumer();
            if (humanReadableArtProfileConsumer != null) {
                a(humanReadableArtProfileConsumer);
            }
            ArtProfileRuleConsumer ruleConsumer = artProfileConsumer.getRuleConsumer();
            if (ruleConsumer != null) {
                a(ruleConsumer);
            }
            artProfileConsumer.finished(c5094Ef0);
        }
    }

    public final void a(TextOutputStream textOutputStream) {
        try {
            final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(textOutputStream.getOutputStream(), textOutputStream.getCharset());
            try {
                InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                    @Override
                    public final void accept(Object obj) {
                        C6694c4.a(OutputStreamWriter.this, (AbstractC10531z4) obj);
                    }
                };
                Iterator it = this.f46954a.values().iterator();
                while (it.hasNext()) {
                    interfaceC6160Wr0.accept((AbstractC10531z4) it.next());
                }
                outputStreamWriter.close();
            } catch (Throwable th2) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public static void a(OutputStreamWriter outputStreamWriter, AbstractC10531z4 abstractC10531z4) {
        abstractC10531z4.a(outputStreamWriter);
        outputStreamWriter.write(10);
    }

    public final void a(final ArtProfileRuleConsumer artProfileRuleConsumer) {
        a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C6694c4.a(ArtProfileRuleConsumer.this, (C7860j4) obj);
            }
        }, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C6694c4.a(ArtProfileRuleConsumer.this, (C9029q4) obj);
            }
        });
    }
}
