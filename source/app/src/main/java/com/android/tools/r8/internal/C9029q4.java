package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.profile.art.ArtProfileMethodRuleBuilder;
import com.android.tools.r8.references.MethodReference;
import java.io.OutputStreamWriter;
import java.util.function.Consumer;

public class C9029q4 extends AbstractC10531z4 implements InterfaceC9020q1 {

    public static final boolean f51706d = true;

    public final com.android.tools.r8.graph.A2 f51707b;

    public final C9195r4 f51708c;

    public C9029q4(com.android.tools.r8.graph.A2 a22, C9195r4 c9195r4) {
        if (!f51706d && c9195r4.f51960a == 0) {
            throw new AssertionError();
        }
        this.f51707b = a22;
        this.f51708c = c9195r4;
    }

    public static a d() {
        return new a();
    }

    @Override
    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02) {
        interfaceC6160Wr02.accept(this);
    }

    @Override
    public final com.android.tools.r8.graph.J2 c() {
        return e();
    }

    public com.android.tools.r8.graph.A2 e() {
        return this.f51707b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            C9029q4 c9029q4 = (C9029q4) obj;
            if (this.f51707b.equals(c9029q4.f51707b) && this.f51708c.equals(c9029q4.f51708c)) {
                return true;
            }
        }
        return false;
    }

    public C9195r4 f() {
        return this.f51708c;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c() {
        return e();
    }

    public final int hashCode() {
        return this.f51707b.hashCode();
    }

    public final String toString() {
        return this.f51708c.toString() + this.f51707b.i0();
    }

    @Override
    public final Object a(InterfaceC6217Xr0 interfaceC6217Xr0, InterfaceC6217Xr0 interfaceC6217Xr02) {
        return interfaceC6217Xr02.apply(this);
    }

    public static class a extends AbstractC10364y4 implements ArtProfileMethodRuleBuilder, InterfaceC8853p1 {

        public static final boolean f51709d = true;

        public final C4724u1 f51710a;

        public com.android.tools.r8.graph.A2 f51711b;

        public final C9195r4.a f51712c;

        public a() {
            this.f51712c = C9195r4.a();
            this.f51710a = null;
        }

        @Override
        public final InterfaceC8853p1 a(InterfaceC8853p1 interfaceC8853p1) {
            C9195r4.a aVar = this.f51712c;
            aVar.f51962a = ((a) interfaceC8853p1).f51712c.f51962a | aVar.f51962a;
            return this;
        }

        @Override
        public C9029q4 build() {
            return new C9029q4(this.f51711b, this.f51712c.a());
        }

        @Override
        public final ArtProfileMethodRuleBuilder setMethodReference(MethodReference methodReference) {
            if (!f51709d && this.f51710a == null) {
                throw new AssertionError();
            }
            this.f51711b = C7598hX.a(methodReference, this.f51710a);
            return this;
        }

        @Override
        public final ArtProfileMethodRuleBuilder setMethodRuleInfo(Consumer consumer) {
            this.f51712c.f51962a = 0;
            return a((Consumer<? super C9195r4.a>) consumer);
        }

        public a(C4724u1 c4724u1) {
            this.f51712c = C9195r4.a();
            this.f51710a = c4724u1;
        }

        @Override
        public final InterfaceC8853p1 a(InterfaceC8853p1 interfaceC8853p1, Runnable runnable) {
            C9195r4.a aVar = this.f51712c;
            int i10 = aVar.f51962a;
            int i11 = ((a) interfaceC8853p1).f51712c.f51962a | i10;
            aVar.f51962a = i11;
            if (i11 != i10) {
                runnable.run();
            }
            return this;
        }

        @Override
        public final InterfaceC8853p1 a(InterfaceC9020q1 interfaceC9020q1) {
            C9195r4.a aVar = this.f51712c;
            C9195r4 f10 = ((C9029q4) interfaceC9020q1).f();
            aVar.f51962a = f10.f51960a | aVar.f51962a;
            return this;
        }

        @Override
        public final InterfaceC8853p1 a() {
            this.f51712c.d();
            return this;
        }

        @Override
        public final InterfaceC8853p1 a(com.android.tools.r8.graph.A2 a22) {
            this.f51711b = a22;
            return this;
        }

        public a a(Consumer<? super C9195r4.a> consumer) {
            consumer.accept(this.f51712c);
            return this;
        }
    }

    @Override
    public final void a(OutputStreamWriter outputStreamWriter) {
        C9195r4 c9195r4 = this.f51708c;
        if (c9195r4.isHot()) {
            outputStreamWriter.write(72);
        }
        if (c9195r4.isStartup()) {
            outputStreamWriter.write(83);
        }
        if (c9195r4.isPostStartup()) {
            outputStreamWriter.write(80);
        }
        outputStreamWriter.write(this.f51707b.i0());
    }
}
