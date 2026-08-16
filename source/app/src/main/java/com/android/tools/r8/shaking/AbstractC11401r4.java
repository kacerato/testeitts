package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C5417Jv0;

public abstract class AbstractC11401r4 {

    public static class a extends AbstractC11401r4 {

        b f57766a;

        final int f57767b;

        public a(int i10) {
            this.f57767b = i10;
        }

        @Override
        public final a a() {
            return this;
        }

        @Override
        public final void c() {
        }

        @Override
        public final boolean d() {
            return true;
        }

        @Override
        public final AbstractC11401r4 f() {
            String str;
            b bVar = this.f57766a;
            if (bVar != null) {
                synchronized (bVar) {
                    str = bVar.f57769b;
                }
                if (str != null) {
                    a aVar = new a(this.f57767b);
                    aVar.a(this.f57766a.f());
                    return aVar;
                }
            }
            return this;
        }

        public final String g() {
            String str;
            b bVar = this.f57766a;
            if (bVar == null) {
                return null;
            }
            synchronized (bVar) {
                str = bVar.f57769b;
            }
            return str;
        }

        public final String toString() {
            return "<" + this.f57767b + ">";
        }

        public void a(b bVar) {
            this.f57766a = bVar;
        }

        @Override
        public final void a(String str) {
            throw new C5417Jv0("A back reference refers back to a previously matched wildcard.");
        }
    }

    public static class b extends AbstractC11401r4 {

        public final String f57768a;

        public String f57769b = null;

        public b(String str) {
            this.f57768a = str;
        }

        @Override
        public final synchronized void a(String str) {
            this.f57769b = str;
        }

        @Override
        public final b b() {
            return this;
        }

        @Override
        public final synchronized void c() {
            this.f57769b = null;
        }

        @Override
        public final boolean e() {
            return true;
        }

        @Override
        public final b f() {
            if (this.f57769b == null) {
                return this;
            }
            b bVar = new b(this.f57768a);
            String str = this.f57769b;
            synchronized (bVar) {
                bVar.f57769b = str;
            }
            return bVar;
        }

        public final String toString() {
            return this.f57768a;
        }
    }

    public a a() {
        return null;
    }

    public abstract void a(String str);

    public b b() {
        return null;
    }

    public abstract void c();

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public abstract AbstractC11401r4 f();
}
