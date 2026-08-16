package Xg;

import java.util.Objects;

public final class h implements B {

    public String f28894a;

    public Boolean f28895b;

    public Boolean f28896c;

    public Boolean f28897d;

    public Float f28898e;

    public i f28899f;

    public i f28900g;

    public i f28901h;

    public i f28902i;

    public Float f28903j;

    public Boolean f28904k;

    public Float f28905l;

    public String f28906m;

    public String f28907n;

    @Override
    public void a(Float u10, Float v10, Float w10) {
        this.f28901h = C.b(u10, v10, w10, 1.0f);
    }

    @Override
    public void b(Float base, Float gain) {
        if (base == null && gain == null) {
            this.f28899f = null;
        }
        this.f28899f = j.c(base == null ? 0.0f : base.floatValue(), gain == null ? 1.0f : gain.floatValue());
    }

    @Override
    public void c(Float u10, Float v10, Float w10) {
        this.f28900g = C.b(u10, v10, w10, 0.0f);
    }

    @Override
    public void d(Float boost) {
        this.f28898e = boost;
    }

    @Override
    public Boolean e() {
        return this.f28904k;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null || !(object instanceof B)) {
            return false;
        }
        B b10 = (B) object;
        return Objects.equals(q(), b10.q()) && Objects.equals(o(), b10.o()) && Objects.equals(p(), b10.p()) && Objects.equals(m(), b10.m()) && Objects.equals(r(), b10.r()) && Objects.equals(e(), b10.e()) && Objects.equals(getFileName(), b10.getFileName()) && Objects.equals(w(), b10.w()) && Objects.equals(n(), b10.n()) && Objects.equals(u(), b10.u()) && Objects.equals(getS(), b10.getS()) && Objects.equals(j(), b10.j()) && Objects.equals(v(), b10.v()) && Objects.equals(getType(), b10.getType());
    }

    @Override
    public void f(String imfchan) {
        this.f28906m = imfchan;
    }

    @Override
    public void g(Float u10, Float v10, Float w10) {
        this.f28902i = C.b(u10, v10, w10, 0.0f);
    }

    @Override
    public String getFileName() {
        return this.f28894a;
    }

    @Override
    public i getS() {
        return this.f28901h;
    }

    @Override
    public String getType() {
        return this.f28907n;
    }

    @Override
    public void h(String fileName) {
        this.f28894a = fileName;
    }

    public int hashCode() {
        return Objects.hash(this.f28895b, this.f28896c, this.f28897d, this.f28905l, this.f28898e, this.f28904k, this.f28894a, this.f28906m, this.f28899f, this.f28900g, this.f28901h, this.f28902i, this.f28903j, this.f28907n);
    }

    @Override
    public void i(Boolean blendu) {
        this.f28895b = blendu;
    }

    @Override
    public i j() {
        return this.f28902i;
    }

    @Override
    public void k(Boolean cc2) {
        this.f28897d = cc2;
    }

    @Override
    public void l(Boolean blendv) {
        this.f28896c = blendv;
    }

    @Override
    public Float m() {
        return this.f28905l;
    }

    @Override
    public i n() {
        return this.f28899f;
    }

    @Override
    public Boolean o() {
        return this.f28896c;
    }

    @Override
    public Boolean p() {
        return this.f28897d;
    }

    @Override
    public Boolean q() {
        return this.f28895b;
    }

    @Override
    public Float r() {
        return this.f28898e;
    }

    @Override
    public void s(Float texres) {
        this.f28903j = texres;
    }

    @Override
    public void setType(String type) {
        this.f28907n = type;
    }

    @Override
    public void t(Float bm2) {
        this.f28905l = bm2;
    }

    public String toString() {
        return "TextureOptions[" + m.f(this) + "]";
    }

    @Override
    public i u() {
        return this.f28900g;
    }

    @Override
    public Float v() {
        return this.f28903j;
    }

    @Override
    public String w() {
        return this.f28906m;
    }

    @Override
    public void x(Boolean clamp) {
        this.f28904k = clamp;
    }
}
