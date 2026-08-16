package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@B
public final class C12656a2 implements Z0 {

    public final EnumC12729y1 f69038a;

    public final boolean f69039b;

    public final int[] f69040c;

    public final C12684j0[] f69041d;

    public final InterfaceC12659b1 f69042e;

    public C12656a2(EnumC12729y1 syntax, boolean messageSetWireFormat, int[] checkInitialized, C12684j0[] fields, Object defaultInstance) {
        this.f69038a = syntax;
        this.f69039b = messageSetWireFormat;
        this.f69040c = checkInitialized;
        this.f69041d = fields;
        this.f69042e = (InterfaceC12659b1) D0.e(defaultInstance, "defaultInstance");
    }

    public static a e() {
        return new a();
    }

    public static a f(int numFields) {
        return new a(numFields);
    }

    @Override
    public boolean a() {
        return this.f69039b;
    }

    @Override
    public InterfaceC12659b1 b() {
        return this.f69042e;
    }

    public int[] c() {
        return this.f69040c;
    }

    public C12684j0[] d() {
        return this.f69041d;
    }

    @Override
    public EnumC12729y1 m() {
        return this.f69038a;
    }

    public static final class a {

        public final List<C12684j0> f69043a;

        public EnumC12729y1 f69044b;

        public boolean f69045c;

        public boolean f69046d;

        public int[] f69047e;

        public Object f69048f;

        public a() {
            this.f69047e = null;
            this.f69043a = new ArrayList();
        }

        public C12656a2 a() {
            if (this.f69045c) {
                throw new IllegalStateException("Builder can only build once");
            }
            if (this.f69044b == null) {
                throw new IllegalStateException("Must specify a proto syntax");
            }
            this.f69045c = true;
            Collections.sort(this.f69043a);
            return new C12656a2(this.f69044b, this.f69046d, this.f69047e, (C12684j0[]) this.f69043a.toArray(new C12684j0[0]), this.f69048f);
        }

        public void b(int[] checkInitialized) {
            this.f69047e = checkInitialized;
        }

        public void c(Object defaultInstance) {
            this.f69048f = defaultInstance;
        }

        public void d(C12684j0 field) {
            if (this.f69045c) {
                throw new IllegalStateException("Builder can only build once");
            }
            this.f69043a.add(field);
        }

        public void e(boolean messageSetWireFormat) {
            this.f69046d = messageSetWireFormat;
        }

        public void f(EnumC12729y1 syntax) {
            this.f69044b = (EnumC12729y1) D0.e(syntax, "syntax");
        }

        public a(int numFields) {
            this.f69047e = null;
            this.f69043a = new ArrayList(numFields);
        }
    }
}
