package j1;

import com.google.firebase.analytics.FirebaseAnalytics;

public final class C13799x extends AbstractC13796u {

    public static final AbstractC13796u f92543g = new C13799x(new Object[0], 0);

    public final transient Object[] f92544e;

    public final transient int f92545f;

    public C13799x(Object[] objArr, int i10) {
        this.f92544e = objArr;
        this.f92545f = i10;
    }

    @Override
    public final int a(Object[] objArr, int i10) {
        System.arraycopy(this.f92544e, 0, objArr, 0, this.f92545f);
        return this.f92545f;
    }

    @Override
    public final int b() {
        return this.f92545f;
    }

    @Override
    public final int c() {
        return 0;
    }

    @Override
    public final Object[] g() {
        return this.f92544e;
    }

    @Override
    public final Object get(int i10) {
        C13790n.a(i10, this.f92545f, FirebaseAnalytics.d.f67690b0);
        Object obj = this.f92544e[i10];
        obj.getClass();
        return obj;
    }

    @Override
    public final int size() {
        return this.f92545f;
    }
}
