package kotlin.jvm.internal;

import java.io.Serializable;
import nf.InterfaceC14422l0;

@InterfaceC14422l0(version = "1.4")
public class C14004a implements F, Serializable {

    public final Object f95715b;

    public final Class f95716c;

    public final String f95717d;

    public final String f95718e;

    public final boolean f95719f;

    public final int f95720g;

    public final int f95721h;

    public C14004a(int i10, Class cls, String str, String str2, int i11) {
        this(i10, r.NO_RECEIVER, cls, str, str2, i11);
    }

    public Wf.g b() {
        Class cls = this.f95716c;
        if (cls == null) {
            return null;
        }
        return this.f95719f ? n0.g(cls) : n0.d(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14004a)) {
            return false;
        }
        C14004a c14004a = (C14004a) obj;
        return this.f95719f == c14004a.f95719f && this.f95720g == c14004a.f95720g && this.f95721h == c14004a.f95721h && M.g(this.f95715b, c14004a.f95715b) && M.g(this.f95716c, c14004a.f95716c) && this.f95717d.equals(c14004a.f95717d) && this.f95718e.equals(c14004a.f95718e);
    }

    @Override
    public int getArity() {
        return this.f95720g;
    }

    public int hashCode() {
        Object obj = this.f95715b;
        int hashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Class cls = this.f95716c;
        return ((((((((((hashCode + (cls != null ? cls.hashCode() : 0)) * 31) + this.f95717d.hashCode()) * 31) + this.f95718e.hashCode()) * 31) + (this.f95719f ? 1231 : 1237)) * 31) + this.f95720g) * 31) + this.f95721h;
    }

    public String toString() {
        return n0.w(this);
    }

    public C14004a(int i10, Object obj, Class cls, String str, String str2, int i11) {
        this.f95715b = obj;
        this.f95716c = cls;
        this.f95717d = str;
        this.f95718e = str2;
        this.f95719f = (i11 & 1) == 1;
        this.f95720g = i10;
        this.f95721h = i11 >> 1;
    }
}
