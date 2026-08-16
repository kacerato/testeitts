package com.android.tools.r8.internal;

import com.android.tools.r8.TextInputStream;
import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.profile.art.ArtProfileBuilder;
import com.android.tools.r8.profile.art.ArtProfileClassRuleBuilder;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleBuilder;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleInfoBuilder;
import com.android.tools.r8.profile.art.ArtProfileRulePredicate;
import com.android.tools.r8.profile.art.HumanReadableArtProfileParserBuilder;
import com.android.tools.r8.profile.art.diagnostic.HumanReadableArtProfileParserErrorDiagnostic;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UncheckedIOException;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;

public class HA {

    public static final boolean f40697e = true;

    public final Consumer f40698a;

    public final ArtProfileBuilder f40699b;

    public final ArtProfileRulePredicate f40700c;

    public final C5094Ef0 f40701d;

    public static class a implements HumanReadableArtProfileParserBuilder {

        public Consumer f40702a;

        public ArtProfileBuilder f40703b;

        public ArtProfileRulePredicate f40704c = new C8522n2();

        public C5094Ef0 f40705d;

        public a a(C5094Ef0 c5094Ef0) {
            this.f40705d = c5094Ef0;
            return this;
        }

        @Override
        public final HumanReadableArtProfileParserBuilder setRulePredicate(ArtProfileRulePredicate artProfileRulePredicate) {
            this.f40704c = artProfileRulePredicate;
            return this;
        }

        public a a(ArtProfileBuilder artProfileBuilder) {
            this.f40703b = artProfileBuilder;
            return this;
        }

        public HA a() {
            final C5094Ef0 c5094Ef0;
            if (this.f40702a == null && (c5094Ef0 = this.f40705d) != null) {
                this.f40702a = new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C5094Ef0.this.error((HumanReadableArtProfileParserErrorDiagnostic) obj);
                    }
                };
            }
            return new HA(this.f40702a, this.f40703b, this.f40704c, this.f40705d);
        }
    }

    public HA(Consumer consumer, ArtProfileBuilder artProfileBuilder, ArtProfileRulePredicate artProfileRulePredicate, C5094Ef0 c5094Ef0) {
        this.f40698a = consumer;
        this.f40699b = artProfileBuilder;
        this.f40700c = artProfileRulePredicate;
        this.f40701d = c5094Ef0;
    }

    public static a a() {
        return new a();
    }

    public boolean b(String str) {
        String a10;
        C9195r4 a11;
        int indexOf;
        try {
            C9195r4.a a12 = C9195r4.a();
            a10 = a(str, a12);
            a11 = a12.a();
            indexOf = a10.indexOf("->");
        } catch (Throwable unused) {
        }
        if (indexOf >= 0) {
            return a(a10, a11, indexOf);
        }
        if (a11.f51960a == 0) {
            return a(a10);
        }
        return false;
    }

    public void a(TextInputStream textInputStream, Origin origin) {
        Consumer consumer;
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(textInputStream.getInputStream(), textInputStream.getCharset());
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                int i10 = 1;
                while (bufferedReader.ready()) {
                    try {
                        String readLine = bufferedReader.readLine();
                        int indexOf = readLine.indexOf(35);
                        int i11 = 0;
                        String a10 = indexOf >= 0 ? GG0.a(readLine.substring(0, indexOf)) : readLine;
                        while (true) {
                            if (i11 >= a10.length()) {
                                break;
                            }
                            if (Character.isWhitespace(a10.charAt(i11))) {
                                i11++;
                            } else if (!b(a10) && (consumer = this.f40698a) != null) {
                                consumer.accept(new HumanReadableArtProfileParserErrorDiagnostic(readLine, i10, origin));
                            }
                        }
                        i10++;
                    } finally {
                    }
                }
                bufferedReader.close();
                inputStreamReader.close();
                C5094Ef0 c5094Ef0 = this.f40701d;
                if (c5094Ef0 != null) {
                    c5094Ef0.a();
                }
            } catch (Throwable th2) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public static String a(String str, final C9195r4.a aVar) {
        String str2;
        C5544Mb c5544Mb = new C5544Mb();
        while (true) {
            Objects.requireNonNull(aVar);
            InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
                @Override
                public final void a() {
                    C9195r4.a.this.b();
                }
            };
            if (!str.isEmpty() && str.charAt(0) == 'H' && c5544Mb.a('H')) {
                interfaceC6522b2.a();
                str2 = str.substring(1);
            } else {
                str2 = str;
            }
            InterfaceC6522b2 interfaceC6522b22 = new InterfaceC6522b2() {
                @Override
                public final void a() {
                    C9195r4.a.this.d();
                }
            };
            if (!str2.isEmpty() && str2.charAt(0) == 'S' && c5544Mb.a('S')) {
                interfaceC6522b22.a();
                str2 = str2.substring(1);
            }
            InterfaceC6522b2 interfaceC6522b23 = new InterfaceC6522b2() {
                @Override
                public final void a() {
                    C9195r4.a.this.c();
                }
            };
            if (!str2.isEmpty() && str2.charAt(0) == 'P' && c5544Mb.a('P')) {
                interfaceC6522b23.a();
                str2 = str2.substring(1);
            }
            if (str2.equals(str)) {
                return str2;
            }
            str = str2;
        }
    }

    public final boolean a(String str) {
        int i10;
        AbstractC8552nC abstractC8552nC = C4932Bl.f39005a;
        int i11 = -1;
        while (true) {
            i10 = i11 + 1;
            if (i10 >= str.length() || str.charAt(i10) != '[') {
                break;
            }
            i11 = i10;
        }
        if (i11 >= 0) {
            str = str.substring(i10);
        }
        if (!C4932Bl.B(str)) {
            return false;
        }
        TypeReference typeFromDescriptor = Reference.typeFromDescriptor(str);
        boolean z10 = f40697e;
        if (!z10 && typeFromDescriptor == null) {
            throw new AssertionError();
        }
        if (!z10 && !typeFromDescriptor.isClass()) {
            throw new AssertionError();
        }
        final ClassReference asClass = typeFromDescriptor.asClass();
        if (!this.f40700c.testClassRule(asClass, C8027k4.f49477a)) {
            return true;
        }
        this.f40699b.addClassRule(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((ArtProfileClassRuleBuilder) obj).setClassReference(ClassReference.this);
            }
        });
        return true;
    }

    public final boolean a(String str, final C9195r4 c9195r4, int i10) {
        int indexOf = str.indexOf(43, i10 + 2);
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        final MethodReference a10 = C7598hX.a(i10, str);
        if (a10 == null || !C4932Bl.B(a10.getHolderClass().getDescriptor())) {
            return false;
        }
        Iterator<TypeReference> it = a10.getFormalTypes().iterator();
        while (it.hasNext()) {
            if (!C4932Bl.C(it.next().getDescriptor())) {
                return false;
            }
        }
        if (a10.getReturnType() != null && !C4932Bl.C(a10.getReturnType().getDescriptor())) {
            return false;
        }
        if (!this.f40700c.testMethodRule(a10, c9195r4)) {
            return true;
        }
        this.f40699b.addMethodRule(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((ArtProfileMethodRuleBuilder) obj).setMethodReference(MethodReference.this).setMethodRuleInfo(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        ((ArtProfileMethodRuleInfoBuilder) obj2).setIsHot(r0.isHot()).setIsStartup(r0.isStartup()).setIsPostStartup(C9195r4.this.isPostStartup());
                    }
                });
            }
        });
        return true;
    }
}
